using MixErp.Data;
using MixErp.Fonksiyonlar;
using MixErp.Print;
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
    public partial class frmUrunAlis : Form
    {
        // 2. işlem: global alana db bağlantısı ve gerekli olacak property ve field larımızı ekleriz. Word wrap ı unutma :D
        MixErpDbEntities db = new MixErpDbEntities();
        //3. işlem: Numaralar sınıfında gerekli metodu oluştur.
        Numaralar N = new Numaralar();
        int secimId = -1;
        bool edit = false;
        // 9. işlem
        int UrnAlisId = -1;
        public string[] MyArray { get; set; }
        public frmUrunAlis()
        {
            InitializeComponent();
        }

        private void frmUrunAlis_Load(object sender, EventArgs e)
        {
            // 1. işlem: Load event i oluşturulur.

            // 4. işlem: Numaralar sınıfında oluşturduğum metodu burada ilgili textbox için çalıştır
            txtAlisGrupNo.Text = N.AlisGrupNo();

            // 5. işlem: combobox lar için combo adında metot yaz ve bunu generate et.
            Combo();

        }

        private void Combo()
        {

            // 6. işlem: Cari adları için autocomplate özelliğini açtığımız bir combobox doldurma yöntemi
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

            // 7. işlem: Ödeme tipi için combobox ı doldur.
            txtOdeme.DataSource = db.bOdemeTurleris.ToList();
            txtOdeme.ValueMember = "Id";
            txtOdeme.DisplayMember = "OdemeTipi";

            // 8. işlem: 

            var srg = db.tblUrunlers.Select(x => x.UrunKodu);
            foreach (var k in srg)
            {
                txtUKod.Items.Add(k);

            }

            // 10. işlem

            int dgv;
            dgv = txtUKod.Items.Count;
            MyArray = new string[dgv];
            for (int i = 0; i < dgv; i++)
            {
                MyArray[i] = txtUKod.Items[i].ToString();
            }
        }

        // 11. işlem
        private void liste_EditingControlShowing(object sender, DataGridViewEditingControlShowingEventArgs e)
        {
            TextBox txt = e.Control as TextBox;
            if (liste.CurrentCell.ColumnIndex==0 && txt!=null)
            {
                txt.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
                txt.AutoCompleteSource = AutoCompleteSource.CustomSource;
                txt.AutoCompleteCustomSource.AddRange(MyArray);


            }
            else if (liste.CurrentCell.ColumnIndex!=0 && txt!=null)
            {
                txt.AutoCompleteMode = AutoCompleteMode.None;
            }
        }

        // 12. işlem
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
            }
            // 13. işlem
            if (e.ColumnIndex==4)
            {
                if (liste.CurrentRow.Cells[3].Value!=null )
                {
                    RHesapla();

                }
            }
            if (e.ColumnIndex==3)
            {
                if (liste.CurrentRow.Cells[4].Value!=null )
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

            if (liste.CurrentRow.Cells[3].Value!=null && liste.CurrentRow.Cells[4].Value!=null)
            {
                a = Convert.ToDecimal(liste.CurrentRow.Cells[3].Value.ToString());
                b = Convert.ToDecimal(liste.CurrentRow.Cells[4].Value.ToString());
                liste.CurrentRow.Cells[5].Value = a * b * 0.18M; // double dan decimal e çevirir.


                for (int i = 0; i < liste.RowCount-1; i++)
                {
                    atop += (Convert.ToDecimal(liste.Rows[i].Cells[3].Value) * Convert.ToDecimal(liste.Rows[i].Cells[4].Value));
                    ktop += Convert.ToDecimal(liste.Rows[i].Cells[5].Value);
                }

                txtAraToplam.Text = atop.ToString();
                txtKdvToplam.Text = ktop.ToString();
                gtop = atop + ktop;
                txtGenelToplam.Text = gtop.ToString();
            }
            else
            {
                MessageBox.Show("Adam gibi bir değer gir");
                liste.CurrentRow.Cells[3].Value = "";
            }

         

                  
           
        }

        void YeniKaydet()
        {
            
            var srch = new tblUrunAlisUst();
            srch.AlisGrupNo = txtAlisGrupNo.Text;
            srch.AraToplam = Convert.ToDecimal(txtAraToplam.Text);
            srch.ATarih = Convert.ToDateTime(txtATarih.Text);
            srch.FaturaNo = txtFaturaNo.Text;
            srch.CariId = db.tblCaris.First(x => x.CariAdi == txtCari.Text).Id;
            srch.Vade = Convert.ToInt32(txtVade.Text);
            srch.OdemeId = db.bOdemeTurleris.First(x => x.OdemeTipi == txtOdeme.Text).Id;
            srch.KdvToplam = Convert.ToDecimal(txtKdvToplam.Text);
            srch.GenelToplam= Convert.ToDecimal(txtGenelToplam.Text);

            db.tblUrunAlisUsts.Add(srch);
            db.SaveChanges();

            liste.AllowUserToAddRows = false;

            tblUrunAlisAlt[] ualt = new tblUrunAlisAlt[liste.RowCount];
            for (int i = 0; i < liste.RowCount; i++)
            {
                ualt[i] = new tblUrunAlisAlt();
                ualt[i].Miktar = Convert.ToInt32(liste.Rows[i].Cells[4].Value.ToString());
                ualt[i].AlisGrupNo = txtAlisGrupNo.Text;
                ualt[i].BFiyat = Convert.ToDecimal(liste.Rows[i].Cells[3].Value.ToString());
                string brm = liste.Rows[i].Cells[2].Value.ToString();
                ualt[i].BirimId = db.bBirims.First(x => x.BirimAdi == brm).Id;                
                string urn = liste.Rows[i].Cells[1].Value.ToString();
                ualt[i].UrunId = db.tblUrunlers.First(x => x.UrunAciklama == urn).Id;
                ualt[i].AToplam = Convert.ToDecimal(liste.Rows[i].Cells[3].Value) * Convert.ToDecimal(liste.Rows[i].Cells[4].Value);
                ualt[i].Kdv = Convert.ToDecimal(liste.Rows[i].Cells[5].Value);

                db.tblUrunAlisAlts.Add(ualt[i]);

                string uBarkod = liste.Rows[i].Cells[0].Value.ToString() + "/" + liste.Rows[i].Cells[1].Value.ToString();
                var sKontrol = db.tblStokDurums.First(x => x.Barkod == uBarkod);
              

                decimal obFiyat;
                decimal ETopObFiyat;
                decimal YTopObFiyat;
                if (sKontrol.OBFiyat==null)
                {
                    obFiyat = 0;
                    ETopObFiyat = 0;

                }
                else
                {
                    obFiyat = sKontrol.OBFiyat.Value;
                    ETopObFiyat = obFiyat * sKontrol.Depo.Value;
                }

                YTopObFiyat = (Convert.ToDecimal(liste.Rows[i].Cells[3].Value) * Convert.ToInt32(liste.Rows[i].Cells[4].Value));

                decimal TopEYFiyat = ETopObFiyat + YTopObFiyat;
                int EAdet = sKontrol.Depo.Value;
                int YAdet = Convert.ToInt32(liste.Rows[i].Cells[4].Value);
                int TopEYAdet = EAdet + YAdet;

                decimal SonucBFiyat = TopEYFiyat / TopEYAdet;

                sKontrol.Ambar += 0;
                sKontrol.Depo += Convert.ToInt32(liste.Rows[i].Cells[4].Value);
                sKontrol.Raf += Convert.ToInt32(liste.Rows[i].Cells[4].Value);

                sKontrol.OBFiyat = SonucBFiyat;

            }
            db.SaveChanges();


            MessageBox.Show("Başarıyla kaydedildi.");
        }

        void Guncelle()
        {
            var srch = db.tblUrunAlisUsts.First(x => x.AlisGrupNo == txtAlisGrupNo.Text); 
            srch.AlisGrupNo = txtAlisGrupNo.Text;
            srch.AraToplam = Convert.ToDecimal(txtAraToplam.Text);
            srch.ATarih = Convert.ToDateTime(txtATarih.Text);
            srch.FaturaNo = txtFaturaNo.Text;
            srch.CariId = db.tblCaris.First(x => x.CariAdi == txtCari.Text).Id;
            srch.Vade = Convert.ToInt32(txtVade.Text);
            srch.OdemeId = db.bOdemeTurleris.First(x => x.OdemeTipi == txtOdeme.Text).Id;
            srch.KdvToplam = Convert.ToDecimal(txtKdvToplam.Text);

            db.SaveChanges();

            liste.AllowUserToAddRows = false;

            tblUrunAlisAlt[] ualt = new tblUrunAlisAlt[liste.RowCount];
            for (int i = 0; i < liste.RowCount; i++)
            {
                var altId = Convert.ToInt32(liste.Rows[i].Cells[6].Value);
                ualt[i] = db.tblUrunAlisAlts.First(x => x.AlisGrupNo == txtAlisGrupNo.Text && x.Id==altId);
                ualt[i].Miktar = Convert.ToInt32(liste.Rows[i].Cells[4].Value.ToString());
                ualt[i].AlisGrupNo = txtAlisGrupNo.Text;
                ualt[i].BFiyat = Convert.ToDecimal(liste.Rows[i].Cells[3].Value.ToString());
                string brm = liste.Rows[i].Cells[2].Value.ToString();
                ualt[i].BirimId = db.bBirims.First(x => x.BirimAdi == brm).Id;
                string urn = liste.Rows[i].Cells[1].Value.ToString();
                ualt[i].UrunId = db.tblUrunlers.First(x => x.UrunAciklama == urn).Id;
                ualt[i].AToplam = Convert.ToDecimal(liste.Rows[i].Cells[3].Value) * Convert.ToDecimal(liste.Rows[i].Cells[4].Value);
                ualt[i].Kdv = Convert.ToDecimal(liste.Rows[i].Cells[5].Value);

                
            }
            db.SaveChanges();
            MessageBox.Show("Başarıyla güncellendi.");
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            if (edit && UrnAlisId>0)
            {
                Guncelle();
            }
            else if (!edit)
            {
                YeniKaydet();
            }
            
        }

        protected override void OnLoad(EventArgs e) // Buraya yazılan kod bir kontrolümün üzerine yazılarak onu değiştirecek.
        {

            var btnUrunAlisNo = new Button();
            btnUrunAlisNo.Size = new Size(25, txtAlisGrupNo.ClientSize.Height + 2);
            btnUrunAlisNo.Location = new Point(txtAlisGrupNo.ClientSize.Width - btnUrunAlisNo.Width, -1);
            btnUrunAlisNo.Cursor = Cursors.Default;
            btnUrunAlisNo.Image = Properties.Resources.arrow_curved_red_right;
            btnUrunAlisNo.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
            txtAlisGrupNo.Controls.Add(btnUrunAlisNo);


            base.OnLoad(e);

            btnUrunAlisNo.Click += btnUrunAlisNo_Click;
        }

        Formlar F = new Formlar();
        private void btnUrunAlisNo_Click(object sender, EventArgs e)
        {
            int id = F.UrunAlisNo(true);

            if (id>0)
            {
                Ac(id);
            }
            frmAnasayfa.AktarmaInt = -1;
        }

        private void Ac(int id)
        {
            edit = true;
            UrnAlisId = id;
            string ustNo = id.ToString().PadLeft(7, '0');
            tblUrunAlisUst ust = db.tblUrunAlisUsts.First(x => x.AlisGrupNo == ustNo);
            txtAlisGrupNo.Text = ust.AlisGrupNo;
            txtAraToplam.Text = ust.AraToplam.ToString();
            txtATarih.Text = ust.ATarih.ToString();
            txtCari.Text = ust.tblCari.CariAdi;
            txtFaturaNo.Text = ust.FaturaNo;
            txtGenelToplam.Text = ust.GenelToplam.ToString();
            txtKdvToplam.Text = ust.KdvToplam.ToString();
            txtOdeme.Text = ust.bOdemeTurleri.OdemeTipi;
            txtVade.Text = ust.Vade.ToString();


            liste.Rows.Clear();
            liste.AllowUserToAddRows = false;
            var alt = (from s in db.tblUrunAlisAlts
                                  where s.AlisGrupNo == ustNo
                                  select s).ToList();
            int i = 0;
            foreach (var k in alt)
            {
                liste.Rows.Add();
                liste.Rows[i].Cells[0].Value = k.tblUrunler.UrunKodu;
                liste.Rows[i].Cells[1].Value = k.tblUrunler.UrunAciklama;
                liste.Rows[i].Cells[2].Value = k.bBirim.BirimAdi;
                liste.Rows[i].Cells[3].Value = k.BFiyat;
                liste.Rows[i].Cells[4].Value = k.Miktar;
                liste.Rows[i].Cells[5].Value = k.Kdv;
                liste.Rows[i].Cells[6].Value = k.Id;
                i++;
            }            

        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            Yaz();
        }

        private void Yaz()
        {
            frmPrint pr = new frmPrint();
            pr.GrupNo = txtAlisGrupNo.Text;
            pr.HangiListe = "UrunAlis";
            pr.Show();
        }
    }
}
