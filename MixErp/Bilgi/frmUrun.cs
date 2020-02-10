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

namespace MixErp.Bilgi
{
    public partial class frmUrun : Form
    {

        MixErpDbEntities db = new MixErpDbEntities();
        Numaralar N = new Numaralar();
        int secimId = -1;
        bool edit = false;

        public frmUrun()
        {
            InitializeComponent();
        }

        private void frmUrun_Load(object sender, EventArgs e)
        {
            Combo();
            Listele();
        }

        private void Listele()
        {
            liste.Rows.Clear();
            int i = 0;
            var srg = (from s in db.tblUrunlers
                       where s.UrunKodu.Contains(txtBul.Text) || s.UrunAciklama.Contains(txtBul.Text) || s.bKategori.KategoriAdi.Contains(txtBul.Text) || s.tblCari.CariAdi.Contains(txtBul.Text)   // contains: içermek 
                       select s).ToList();        // sorgu sonucunu liste haline getirip srg nesnesinin içine atar.
            foreach (var k in srg)
            {
                liste.Rows.Add();   // her döngüye girdiğinde bir satır oluşturur.
                liste.Rows[i].Cells[0].Value = k.Id;
                liste.Rows[i].Cells[1].Value = k.UrunKodu;
                liste.Rows[i].Cells[2].Value = k.UrunAciklama;
                liste.Rows[i].Cells[3].Value = k.tblCari.CariAdi;
                liste.Rows[i].Cells[4].Value = k.bKategori.KategoriAdi;
                i++;
            }
            // kullanıcı yeni bir satır eklemesin
            liste.AllowUserToAddRows = false;
        }

        private void Combo()
        {
            txtCariId.Items.Clear();
            txtCariId.DataSource = db.tblCaris.ToList();
            txtCariId.ValueMember = "Id";
            txtCariId.DisplayMember = "CariAdi";
            txtCariId.SelectedIndex = 0;

            txtMenseiId.Items.Clear();
            txtMenseiId.DataSource = db.bMenseis.ToList();
            txtMenseiId.ValueMember = "Id";
            txtMenseiId.DisplayMember = "MenseiAdi";
            txtMenseiId.SelectedIndex = 0;

            txtKategoriId.Items.Clear();
            txtKategoriId.DataSource = db.bKategoris.ToList();
            txtKategoriId.ValueMember = "Id";
            txtKategoriId.DisplayMember = "KategoriAdi";
            txtKategoriId.SelectedIndex = 0;

            txtBirimId.Items.Clear();
            txtBirimId.DataSource = db.bBirims.ToList();
            txtBirimId.ValueMember = "Id";
            txtBirimId.DisplayMember = "BirimAdi";
            txtBirimId.SelectedIndex = 0;

        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            if (edit && secimId > 0)
            {
                Guncelle();
            }
            else if (edit == false)
            {
                YeniKaydet();
            }
        }

        private void YeniKaydet()
        {
            var uKontrol = db.tblUrunlers.Where(x => x.UrunKodu.ToLower() == txtUrunKodu.Text.ToLower()).ToList();

            if (uKontrol.Count()==0)
            {
                tblUrunler urn = new tblUrunler();   // nesne oluşturduk.
                urn.UrunKodu = txtUrunKodu.Text;
                urn.UrunAciklama = txtUrunAciklama.Text;

                urn.CariId = db.tblCaris.First(x => x.CariAdi == txtCariId.Text).Id;  // x artık departman tablosundaki id ve adına ulaşabiliyor. First tek kayıt getir demek. landa experision
                urn.MenseiId = db.bMenseis.First(x => x.MenseiAdi == txtMenseiId.Text).Id;
                urn.KategoriId = db.bKategoris.First(x => x.KategoriAdi == txtKategoriId.Text).Id;
                urn.BirimId = db.bBirims.First(x => x.BirimAdi == txtBirimId.Text).Id;


                // db de oluşturduğum nesneyi doldurdum
                db.tblUrunlers.Add(urn);
                db.SaveChanges();

                tblStokDurum stk = new tblStokDurum();
                stk.Ambar = 0;
                stk.Barkod = txtUrunKodu.Text + "/" + txtUrunAciklama.Text;
                stk.Depo = 0;
                stk.Raf = 0;
                stk.StokKodu = N.StokKod();
                stk.UrunId = db.tblUrunlers.First(x => x.UrunKodu == txtUrunKodu.Text).Id;
                db.tblStokDurums.Add(stk);
                db.SaveChanges();

                MessageBox.Show("Kayıt Başarılı");
                Listele();
                Temizle(); 
            }
            else
            {
                MessageBox.Show("Bu ürün daha önce kaydedilmiş.Lütfen kontrol ediniz.");
                txtUrunKodu.Text = "";
                return;

            }
        }

        private void Temizle()
        {
            foreach (Control con in splitContainer2.Panel1.Controls) // textbox lar control sınıfının elemanıdır. Control sınıfından bir nesne türettik. Hangi alandaki kontrollerde işlem yapacağımızı belirttik. 
            {
                if (con is TextBox || con is ComboBox)
                {
                    con.Text = "";
                }
            }
            secimId = -1;
            edit = false;
            txtCariId.SelectedIndex = 0;
            txtBirimId.SelectedIndex = 0;
            txtKategoriId.SelectedIndex = 0;
            txtMenseiId.SelectedIndex = 0;
        }

        private void Guncelle()
        {
            tblUrunler urn = new tblUrunler();   // nesne oluşturduk.
            urn.UrunKodu = txtUrunKodu.Text;
            urn.UrunAciklama = txtUrunAciklama.Text;

            urn.CariId = db.tblCaris.First(x => x.CariAdi == txtCariId.Text).Id;  // x artık departman tablosundaki id ve adına ulaşabiliyor. First tek kayıt getir demek. landa experision
            urn.MenseiId = db.bMenseis.First(x => x.MenseiAdi == txtMenseiId.Text).Id;
            urn.KategoriId = db.bKategoris.First(x => x.KategoriAdi == txtKategoriId.Text).Id;
            urn.BirimId = db.bBirims.First(x => x.BirimAdi == txtBirimId.Text).Id;

            // db de oluşturduğum nesneyi doldurdum
            db.SaveChanges();
            MessageBox.Show("Güncelleme Başarılı Başarılı");
            Listele();
            Temizle();
        }

        private void liste_DoubleClick(object sender, EventArgs e)
        {
            Sec();
            if (secimId > 0)
            {
                Ac(secimId);
            }
        }

        private void Ac(int secimId)
        {
            edit = true;
            tblUrunler urn = db.tblUrunlers.Find(secimId);
            txtUrunKodu.Text = urn.UrunKodu;
            txtUrunAciklama.Text = urn.UrunAciklama;
            txtBirimId.Text = urn.bBirim.BirimAdi;
            txtKategoriId.Text = urn.bKategori.KategoriAdi;
            txtMenseiId.Text = urn.bMensei.MenseiAdi;
            txtCariId.Text = urn.tblCari.CariAdi;
         
        }

        private void Sec()
        {
            try
            {
                secimId = Convert.ToInt32(liste.CurrentRow.Cells[0].Value.ToString());
            }
            catch (Exception)
            {
                secimId = -1;
            }
        }

        private void btnKapat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            if (edit && secimId > 0)
            {
                Sil();
            }
        }

        private void Sil()
        {
            db.tblUrunlers.Remove(db.tblUrunlers.Find(secimId));
            db.SaveChanges();
            MessageBox.Show($"{secimId} nolu kayıt Silinmiştir.");
            Listele();
            Temizle();
        }

        private void btnBul_Click(object sender, EventArgs e)
        {
            Listele();
        }
    }
}
