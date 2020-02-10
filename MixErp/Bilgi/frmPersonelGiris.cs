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
    public partial class frmPersonelGiris : Form
    {
        MixErpDbEntities db = new MixErpDbEntities();
        Numaralar N = new Numaralar();
        int secimId = -1;
        bool edit = false;
        public frmPersonelGiris()
        {
            InitializeComponent();
        }

        private void frmPersonelGiris_Load(object sender, EventArgs e)
        {
            ComboBox();
            Listele();
            txtPersonelNo.Text = N.PersonelNo();

        }

        private void Listele()
        {
            liste.Rows.Clear();
            int i = 0;
            var srg = (from s in db.tblPersonels
                     select s).ToList();        // sorgu sonucunu liste haline getirip srg nesnesinin içine atar.
            foreach (var k in srg)
            {
                liste.Rows.Add();   // her döngüye girdiğinde bir satır oluşturur.
                liste.Rows[i].Cells[0].Value = k.Id;
                liste.Rows[i].Cells[1].Value = k.PersonelNo;
                liste.Rows[i].Cells[2].Value = k.Adi;
                liste.Rows[i].Cells[4].Value = k.Telefon;
                liste.Rows[i].Cells[3].Value = k.blgDepartman.DepartmanAdi; // foreign key olduğu için diğer tabloya ulaşabiliyorum.
                i++;
            }
            // kullanıcı yeni bir satır eklemesin
            liste.AllowUserToAddRows = false;

        }

        private void ComboBox()
        {
            txtDepartman.DataSource = db.blgDepartmen.ToList();
            txtDepartman.ValueMember = "Id";    // tabloda verilen isimleri alıyor. ARkada kodlarken bu değer alınır.
            txtDepartman.DisplayMember = "DepartmanAdi";    // Kullanıcının göreceği isim.
            //txtDepartman.SelectedIndex = -1;    // Combobox boş seçili olarak gelir.

        }
        private void YeniKaydet()   
        {
            tblPersonel pers = new tblPersonel();   // nesne oluşturduk.
            pers.Adi = txtAd.Text;
            pers.PersonelNo = txtPersonelNo.Text;
            pers.Adres = txtAdres.Text;
            pers.DepartmanId = db.blgDepartmen.First(x=>x.DepartmanAdi==txtDepartman.Text).Id;  // x artık departman tablosundaki id ve adına ulaşabiliyor. First tek kayıt getir demek. landa experision
            pers.DogumTarihi = Convert.ToDateTime(txtDogumTarih.Text);
            pers.Email = txtEmail.Text;
            pers.IsBasTarih = Convert.ToDateTime(txtIsBasTarih.Text);
            pers.IsSonTarih = Convert.ToDateTime(txtIsSonTarih.Text);
            pers.PersonelNo = txtPersonelNo.Text;
            pers.Tcno = txtTc.Text;
            pers.Telefon = txtTel.Text;
            // db de oluşturduğum nesneyi doldurdum
            db.tblPersonels.Add(pers);
            db.SaveChanges();
            MessageBox.Show("Kayıt Başarılı");
            Listele();
            Temizle();
        }

        void Guncelle()
        {
            tblPersonel pers = db.tblPersonels.Find(secimId);  // nesne oluşturduk.
            pers.Adi = txtAd.Text;
            pers.PersonelNo = txtPersonelNo.Text;
            pers.Adres = txtAdres.Text;
            pers.DepartmanId = db.blgDepartmen.First(x => x.DepartmanAdi == txtDepartman.Text).Id;  // x artık departman tablosundaki id ve adına ulaşabiliyor. First tek kayıt getir demek. landa experision
            pers.DogumTarihi = Convert.ToDateTime(txtDogumTarih.Text);
            pers.Email = txtEmail.Text;
            pers.IsBasTarih = Convert.ToDateTime(txtIsBasTarih.Text);
            pers.IsSonTarih = Convert.ToDateTime(txtIsSonTarih.Text);
            pers.PersonelNo = txtPersonelNo.Text;
            pers.Tcno = txtTc.Text;
            pers.Telefon = txtTel.Text;
            // db de oluşturduğum nesneyi doldurdum
            db.SaveChanges();
            MessageBox.Show("Güncelleme Başarılı");
            Listele();
            Temizle();
        }

        void Temizle()
        {
            foreach (Control con in split2.Panel1.Controls) // textbox lar control sınıfının elemanıdır. Control sınıfından bir nesne türettik. Hnagi alandaki kontrollerde işlem yapacağımızı belirttik. 
            {
                if (con is TextBox || con is ComboBox || con is DateTimePicker)
                {
                    con.Text = "";
                }
            }
            secimId = -1;
            edit = false;
            txtPersonelNo.Text = N.PersonelNo();
            txtDepartman.SelectedIndex = 0;
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            if (edit && secimId>0)
            {
                Guncelle();
            }
            else if(edit==false)
            {
                YeniKaydet();
            }
            
        }

        private void liste_DoubleClick(object sender, EventArgs e)
        {
            Sec();
            if (secimId>0)
            {
                Ac(secimId);
            }
        }

        private void Ac(int secimId)
        {
            edit = true;
            tblPersonel pers = db.tblPersonels.Find(secimId);
            txtAd.Text = pers.Adi;
            txtAdres.Text = pers.Adres;
            txtDepartman.Text = pers.blgDepartman.DepartmanAdi;
            txtDogumTarih.Text = pers.DogumTarihi.ToString();
            txtEmail.Text = pers.Email;
            txtIsBasTarih.Text = pers.IsBasTarih.ToString();
            txtIsSonTarih.Text = pers.IsSonTarih.ToString();
            txtPersonelNo.Text = pers.PersonelNo;
            txtTc.Text = pers.Tcno;
            txtTel.Text = pers.Telefon;
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
           
                db.tblPersonels.Remove(db.tblPersonels.Find(secimId));
                db.SaveChanges();
                MessageBox.Show($"{secimId} nolu kayıt Silinmiştir.");
                Listele();
                Temizle();

            
        }
    }

    //pers.DogumTarihi = dateTime.Parse(txtDogumTarihi.Text)
    // parse de string bir null değer döndüğünde exeption hatası verir. convert te bu değer 0 olarak verir.
}
