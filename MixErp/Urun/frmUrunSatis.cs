using MixErp.Data;
using MixErp.Fonksiyonlar;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MixErp.Urun
{
    public partial class frmUrunSatis : Form
    {

        MixErpDbEntities db = new MixErpDbEntities();
        Numaralar N = new Numaralar();
        int secimId = -1;
        bool edit = false;

        int UrnSatisId = -1;
        public string[] MyArray { get; set; }


        public frmUrunSatis()
        {
            InitializeComponent();
        }

        private void frmUrunSatis_Load(object sender, EventArgs e)
        {
            txtSatisGrupNo.Text = N.SatisGrupNo();
            Combo();
            txtKarOrani.SelectedIndex = 0;
        }

        private void Combo()
        {
            txtCari.AutoCompleteSource = AutoCompleteSource.CustomSource;
            txtCari.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
            AutoCompleteStringCollection veri = new AutoCompleteStringCollection();
            var lst = db.tblCaris.Select(x => x.CariAdi).Distinct();
            foreach (var cari in lst)
            {
                veri.Add(cari);
                txtCari.Items.Add(cari);
            }
            txtCari.AutoCompleteCustomSource = veri;

            txtOdeme.DataSource = db.bOdemeTurleris.ToList();
            txtOdeme.ValueMember = "Id";
            txtOdeme.DisplayMember = "OdemeTipi";

            var srg = db.tblUrunlers.Select(x => x.UrunKodu);

            foreach (var k in srg)
            {
                txtUKod.Items.Add(k);
            }

            int dgv;
            dgv = txtUKod.Items.Count;
            MyArray = new string[dgv];
            for (int i = 0; i < dgv; i++)
            {
                MyArray[i] = txtUKod.Items[i].ToString();
            }
        }

        private void liste_EditingControlShowing(object sender, DataGridViewEditingControlShowingEventArgs e)
        {
            TextBox txt = e.Control as TextBox;
            if (liste.CurrentCell.ColumnIndex == 0 && txt != null)
            {
                txt.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
                txt.AutoCompleteSource = AutoCompleteSource.CustomSource;
                txt.AutoCompleteCustomSource.AddRange(MyArray);


            }
            else if (liste.CurrentCell.ColumnIndex != 0 && txt != null)
            {
                txt.AutoCompleteMode = AutoCompleteMode.None;
            }
        }

        private void liste_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 0)
            {
                string a = liste.CurrentRow.Cells[0].Value.ToString();
                var lst = (from s in db.tblUrunlers
                           where s.UrunKodu == a
                           select s).First();
                liste.CurrentRow.Cells[1].Value = lst.UrunAciklama;
                liste.CurrentRow.Cells[2].Value = lst.bBirim.BirimAdi;
                liste.CurrentRow.Cells[3].Value = db.tblStokDurums.First(x=>x.UrunId==lst.Id).OBFiyat;
                liste.CurrentRow.Cells[8].Value = db.tblStokDurums.First(x=>x.UrunId==lst.Id).Raf;


                decimal bFyt = Convert.ToDecimal(liste.CurrentRow.Cells[3].Value);
                int karOrani = Convert.ToInt32(txtKarOrani.Text);
            
                liste.CurrentRow.Cells[4].Value = bFyt + (bFyt * karOrani) / 100;


            }
            // 13. işlem
            if (e.ColumnIndex == 4)
            {
                if (liste.CurrentRow.Cells[5].Value != null)
                {
                    RHesapla();

                }
            }
            if (e.ColumnIndex == 5)
            {
                if (liste.CurrentRow.Cells[4].Value != null)
                {
                    RHesapla();
                }
                
            }
        }

        private void RHesapla()
        {
            decimal a, b;
            decimal atop = 0;
            decimal ktop = 0;
            decimal gtop = 0;
            //var koran = txtKdvOrani.SelectedItem;

            if (liste.CurrentRow.Cells[4].Value != null && liste.CurrentRow.Cells[4].Value != null)
            {
                a = Convert.ToDecimal(liste.CurrentRow.Cells[4].Value.ToString());
                b = Convert.ToDecimal(liste.CurrentRow.Cells[5].Value.ToString());
                liste.CurrentRow.Cells[6].Value = a * b * 0.18M;// Convert.ToDecimal(koran); // double dan decimal e çevirir.


                for (int i = 0; i < liste.RowCount - 1; i++)
                {
                    atop += (Convert.ToDecimal(liste.Rows[i].Cells[4].Value) * Convert.ToDecimal(liste.Rows[i].Cells[5].Value));
                    ktop += Convert.ToDecimal(liste.Rows[i].Cells[6].Value);
                }

                txtAraToplam.Text = atop.ToString();
                txtKdvToplam.Text = ktop.ToString();
                gtop = atop + ktop;
                txtGenelToplam.Text = gtop.ToString();
            }
            else
            {
                MessageBox.Show("Adam gibi bir değer gir");
                liste.CurrentRow.Cells[6].Value = "";
            }
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            if (edit && UrnSatisId > 0)
            {
                Guncelle();
            }
            else if (!edit)
            {
                YeniKaydet();
            }
        }

        private void Guncelle()
        {
            var srch = db.tblUrunSatisUsts.First(x => x.SatisGrupNo == txtSatisGrupNo.Text);
            srch.SatisGrupNo = txtSatisGrupNo.Text;
            srch.AraToplam = Convert.ToDecimal(txtAraToplam.Text);
            srch.STarih = Convert.ToDateTime(txtSTarih.Text);
            srch.CariId = db.tblCaris.First(x => x.CariAdi == txtCari.Text).Id;
            srch.Vade = Convert.ToInt32(txtVade.Text);
            srch.OdemeId = db.bOdemeTurleris.First(x => x.OdemeTipi == txtOdeme.Text).Id;
            srch.KdvToplam = Convert.ToDecimal(txtKdvToplam.Text);
            srch.Durum = false;

            db.SaveChanges();

            liste.AllowUserToAddRows = false;

            tblUrunSatisAlt[] ualt = new tblUrunSatisAlt[liste.RowCount];
            for (int i = 0; i < liste.RowCount; i++)
            {
                var altId = Convert.ToInt32(liste.Rows[i].Cells[7].Value);

                ualt[i] = db.tblUrunSatisAlts.First(x => x.SatisGrupNo == txtSatisGrupNo.Text && x.Id == altId);
                ualt[i].Miktar = Convert.ToInt32(liste.Rows[i].Cells[5].Value.ToString());
                ualt[i].SatisGrupNo = txtSatisGrupNo.Text;
                ualt[i].BFiyat = Convert.ToDecimal(liste.Rows[i].Cells[3].Value.ToString());
                ualt[i].SFiyat = Convert.ToDecimal(liste.Rows[i].Cells[4].Value.ToString());
                string brm = liste.Rows[i].Cells[2].Value.ToString();
                ualt[i].BirimId = db.bBirims.First(x => x.BirimAdi == brm).Id;
                string urn = liste.Rows[i].Cells[1].Value.ToString();
                ualt[i].UrunId = db.tblUrunlers.First(x => x.UrunAciklama == urn).Id;
                ualt[i].AToplam = Convert.ToDecimal(liste.Rows[i].Cells[4].Value) * Convert.ToDecimal(liste.Rows[i].Cells[5].Value);
                ualt[i].Kdv = Convert.ToDecimal(liste.Rows[i].Cells[6].Value);

               

            }
            db.SaveChanges();


            MessageBox.Show("Başarıyla güncellendi.");
        }
        bool KayitKont = false;
        private void YeniKaydet()
        {
            for (int i = 0; i < liste.RowCount; i++)
            {
                if (Convert.ToInt32(liste.Rows[i].Cells[5].Value) > Convert.ToInt32(liste.Rows[i].Cells[8].Value))
                {
                    MessageBox.Show("Yeterli ürün adedi yoktur. Stok adedini kontrol ediniz.");
                    KayitKont = true;
                    liste.Rows[i].Cells[5].Style.BackColor = Color.Red;
                    liste.Rows[i].Cells[5].Style.ForeColor = Color.White;
                }
                else
                {
                    liste.Rows[i].Cells[5].Style.BackColor = Color.Empty;
                    liste.Rows[i].Cells[5].Style.ForeColor = Color.Black;
                }
            }
            if (KayitKont)
            {
                KayitKont = false;
                return;
            }
            var srch = new tblUrunSatisUst();
            srch.SatisGrupNo = txtSatisGrupNo.Text;
            srch.AraToplam = Convert.ToDecimal(txtAraToplam.Text);
            srch.STarih = Convert.ToDateTime(txtSTarih.Text);
            srch.CariId = db.tblCaris.First(x => x.CariAdi == txtCari.Text).Id;
            srch.Vade = Convert.ToInt32(txtVade.Text);
            srch.OdemeId = db.bOdemeTurleris.First(x => x.OdemeTipi == txtOdeme.Text).Id;
            srch.KdvToplam = Convert.ToDecimal(txtKdvToplam.Text);
            srch.Durum = false;

            db.tblUrunSatisUsts.Add(srch);
            db.SaveChanges();

            liste.AllowUserToAddRows = false;

            tblUrunSatisAlt[] ualt = new tblUrunSatisAlt[liste.RowCount];
            for (int i = 0; i < liste.RowCount; i++)
            {
                ualt[i] = new tblUrunSatisAlt();
                ualt[i].Miktar = Convert.ToInt32(liste.Rows[i].Cells[5].Value.ToString());
                ualt[i].SatisGrupNo = txtSatisGrupNo.Text;
                ualt[i].BFiyat = Convert.ToDecimal(liste.Rows[i].Cells[3].Value.ToString());
                ualt[i].SFiyat = Convert.ToDecimal(liste.Rows[i].Cells[4].Value.ToString());
                string brm = liste.Rows[i].Cells[2].Value.ToString();
                ualt[i].BirimId = db.bBirims.First(x => x.BirimAdi == brm).Id;
                string urn = liste.Rows[i].Cells[1].Value.ToString();
                ualt[i].UrunId = db.tblUrunlers.First(x => x.UrunAciklama == urn).Id;
                ualt[i].AToplam = Convert.ToDecimal(liste.Rows[i].Cells[4].Value) * Convert.ToDecimal(liste.Rows[i].Cells[5].Value);
                ualt[i].Kdv = Convert.ToDecimal(liste.Rows[i].Cells[6].Value);

                db.tblUrunSatisAlts.Add(ualt[i]);

                string uBarkod = liste.Rows[i].Cells[0].Value.ToString() + "/" + liste.Rows[i].Cells[1].Value.ToString();
                var sKontrol = db.tblStokDurums.First(x => x.Barkod == uBarkod);
                sKontrol.Ambar += 0;
                sKontrol.Depo -= Convert.ToInt32(liste.Rows[i].Cells[5].Value);
                sKontrol.Raf -= Convert.ToInt32(liste.Rows[i].Cells[5].Value);

            }
            db.SaveChanges();


            MessageBox.Show("Başarıyla kaydedildi.");
        }

        protected override void OnLoad(EventArgs e) // Buraya yazılan kod bir kontrolümün üzerine yazılarak onu değiştirecek.
        {

            var btnUrunSatisNo = new Button();
            btnUrunSatisNo.Size = new Size(25, txtSatisGrupNo.ClientSize.Height + 2);
            btnUrunSatisNo.Location = new Point(txtSatisGrupNo.ClientSize.Width - btnUrunSatisNo.Width, -1);
            btnUrunSatisNo.Cursor = Cursors.Default;
            btnUrunSatisNo.Image = Properties.Resources.arrow_curved_red_right;
            btnUrunSatisNo.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
            txtSatisGrupNo.Controls.Add(btnUrunSatisNo);


            base.OnLoad(e);

            btnUrunSatisNo.Click += btnUrunSatisNo_Click;
        }

        private void btnUrunSatisNo_Click(object sender, EventArgs e)
        {
            int id = F.UrunSatisNo(true);

            if (id > 0)
            {
                Ac(id);
            }
            frmAnasayfa.AktarmaInt = -1;
        }

        Formlar F = new Formlar();

        private void Ac(int id)
        {
            edit = true;
            UrnSatisId = id;
            string ustNo = id.ToString().PadLeft(7, '0');
            tblUrunSatisUst ust = db.tblUrunSatisUsts.First(x => x.SatisGrupNo == ustNo);
            txtSatisGrupNo.Text = ust.SatisGrupNo;
            txtAraToplam.Text = ust.AraToplam.ToString();
            txtSTarih.Text = ust.STarih.ToString();
            txtCari.Text = ust.tblCari.CariAdi;
            txtGenelToplam.Text = ust.GenelToplam.ToString();
            txtKdvToplam.Text = ust.KdvToplam.ToString();
            txtOdeme.Text = ust.bOdemeTurleri.OdemeTipi;
            txtVade.Text = ust.Vade.ToString();


            liste.Rows.Clear();
            liste.AllowUserToAddRows = false;
            var alt = (from s in db.tblUrunSatisAlts
                       where s.SatisGrupNo == ustNo
                       select s).ToList();
            int i = 0;
            foreach (var k in alt)
            {
                liste.Rows.Add();
                liste.Rows[i].Cells[0].Value = k.tblUrunler.UrunKodu;
                liste.Rows[i].Cells[1].Value = k.tblUrunler.UrunAciklama;
                liste.Rows[i].Cells[2].Value = k.bBirim.BirimAdi;
                liste.Rows[i].Cells[3].Value = k.BFiyat;
                liste.Rows[i].Cells[4].Value = k.SFiyat;
                liste.Rows[i].Cells[5].Value = k.Miktar;
                liste.Rows[i].Cells[6].Value = k.Kdv;
                liste.Rows[i].Cells[7].Value = k.Id;
                i++;
            }
        }

        private void txtKarOrani_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (liste.RowCount>1)
            {
                liste.AllowUserToAddRows = false;
                decimal a, b;
                decimal atop = 0;
                decimal ktop = 0;
                decimal gtop = 0;
                for (int i = 0; i < liste.Rows.Count; i++)
                {
                    decimal bFyt = Convert.ToDecimal(liste.Rows[i].Cells[3].Value);
                    int karOrani = Convert.ToInt32(txtKarOrani.Text);

                    liste.Rows[i].Cells[4].Value = bFyt + (bFyt * karOrani) / 100;               
                    a = Convert.ToDecimal(liste.Rows[i].Cells[4].Value.ToString());
                    b = Convert.ToDecimal(liste.Rows[i].Cells[5].Value.ToString());

                    liste.Rows[i].Cells[6].Value = a * b * 0.18M;// Convert.ToDecima(koran); doubledandecimal e çevirir.     
                    atop += (Convert.ToDecimal(liste.Rows[i].Cells[4].Value) *Convert.ToDecimal(liste.Rows[i].Cells[5].Value));
                    ktop += Convert.ToDecimal(liste.Rows[i].Cells[6].Value);
 
                    txtAraToplam.Text = atop.ToString();
                    txtKdvToplam.Text = ktop.ToString();
                    gtop = atop + ktop;
                    txtGenelToplam.Text = gtop.ToString();
                }
                liste.AllowUserToAddRows = true;
            }
        }
    }
}
