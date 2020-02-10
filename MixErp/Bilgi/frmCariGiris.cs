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
    public partial class frmCariGiris : Form
    {
        MixErpDbEntities db = new MixErpDbEntities();
        Numaralar N = new Numaralar();
        int secimId = -1;
        bool edit = false;
        public frmCariGiris()
        {
            InitializeComponent();
        }

        private void frmCariGiris_Load(object sender, EventArgs e)
        {
            Combo();
            Listele();
            txtCariNo.Text = N.CariNo();


        }

        private void Listele()
        {
            liste.Rows.Clear();
            int i = 0;
            var srg = (from s in db.tblCaris
                       select s).ToList();        // sorgu sonucunu liste haline getirip srg nesnesinin içine atar.
            foreach (var k in srg)
            {
                liste.Rows.Add();   // her döngüye girdiğinde bir satır oluşturur.
                liste.Rows[i].Cells[0].Value = k.Id;
                liste.Rows[i].Cells[1].Value = k.CariNo;
                liste.Rows[i].Cells[2].Value = k.CariAdi;
                liste.Rows[i].Cells[3].Value = k.Tel;
                liste.Rows[i].Cells[4].Value = k.blgCariTipi.CariTipi;
                i++;
            }
            // kullanıcı yeni bir satır eklemesin
            liste.AllowUserToAddRows = false;
        }

        private void Combo()
        {
            txtCariTip.Items.Clear();
            txtCariTip.DataSource = db.blgCariTipis.ToList();
            txtCariTip.ValueMember = "Id";
            txtCariTip.DisplayMember = "CariTipi";
            txtCariTip.SelectedIndex = 0;


            txtSehir.Items.Clear();
            var srg = (from s in db.illers
                       select s).ToList();
            foreach (var k in srg)
            {
                txtSehir.Items.Add(k.isim);
            }


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

        private void Guncelle()
        {

            tblCari cari = db.tblCaris.Find(secimId);   // nesne oluşturduk.
            cari.CariNo = txtCariNo.Text;
            cari.CariAdi = txtCariAdi.Text;
            cari.Tel = txtTel.Text;
            cari.CariTipId = db.blgCariTipis.First(x => x.CariTipi == txtCariTip.Text).Id;  // x artık departman tablosundaki id ve adına ulaşabiliyor. First tek kayıt getir demek. landa experision
            cari.VergiD = txtVergiD.Text;
            cari.VergiNoTc = txtVergiNoTc.Text;
            cari.SehirId = db.illers.First(x => x.isim == txtSehir.Text).il_no;
            cari.IlceId = db.ilcelers.First(x => x.isim == txtIlce.Text).ilce_no;

            // db de oluşturduğum nesneyi doldurdum
            db.SaveChanges();
            MessageBox.Show("Kayıt Başarılı");
            Listele();
            Temizle();
        }

        private void YeniKaydet()
        {
            tblCari cari = new tblCari();   // nesne oluşturduk.
            cari.CariNo = txtCariNo.Text;
            cari.CariAdi = txtCariAdi.Text;
            cari.Tel = txtTel.Text;
            cari.CariTipId = db.blgCariTipis.First(x => x.CariTipi == txtCariTip.Text).Id;  // x artık departman tablosundaki id ve adına ulaşabiliyor. First tek kayıt getir demek. landa experision
            cari.VergiD = txtVergiD.Text;
            cari.VergiNoTc = txtVergiNoTc.Text;
            cari.SehirId = db.illers.First(x => x.isim == txtSehir.Text).il_no;
            cari.IlceId = db.ilcelers.First(x => x.isim == txtIlce.Text).ilce_no;

            // db de oluşturduğum nesneyi doldurdum
            db.tblCaris.Add(cari);
            db.SaveChanges();
            MessageBox.Show("Kayıt Başarılı");
            Listele();
            Temizle();
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
            txtCariNo.Text = N.CariNo();
            txtCariTip.SelectedIndex = 0;
            txtSehir.SelectedIndex = 0;
            txtIlce.SelectedIndex = 0;

         
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
            tblCari cari = db.tblCaris.Find(secimId);
            txtAdres.Text = cari.Adres;
            txtCariAdi.Text = cari.CariAdi;
            txtCariNo.Text = cari.CariNo.ToString();
            txtCariTip.Text = cari.blgCariTipi.CariTipi;
            txtIlce.Text = cari.ilceler.isim;
            txtSehir.Text = cari.iller.isim;
            txtTel.Text = cari.Tel;
            txtVergiD.Text = cari.VergiD;
            txtVergiNoTc.Text = cari.VergiNoTc;
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
            db.tblCaris.Remove(db.tblCaris.Find(secimId));
            db.SaveChanges();
            MessageBox.Show($"{secimId} nolu kayıt Silinmiştir.");
            Listele();
            Temizle();
        }

        private void txtSehir_SelectedIndexChanged(object sender, EventArgs e)
        {

            txtIlce.Items.Clear();
            int a = db.illers.First(x => x.isim == txtSehir.Text).il_no;
            var srg = (from s in db.ilcelers
                       where s.il_no == a
                       select s).ToList();
            foreach (var k in srg)
            {
                txtIlce.Items.Add(k.isim);
            }
        }
    }
}
