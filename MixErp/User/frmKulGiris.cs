using MixErp.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MixErp.User
{
    public partial class frmKulGiris : Form
    {

        MixErpDbEntities db = new MixErpDbEntities();
        int secimId = -1;
        bool edit = false;

        public frmKulGiris()
        {
            InitializeComponent();
        }

        private void frmKulGiris_Load(object sender, EventArgs e)
        {
            Listele();
            txtRole.SelectedIndex = 0;

        }

        private void Listele()
        {
            liste.Rows.Clear();
            int i = 0;
            var srg = (from s in db.tblUsers
                       where s.KulAdi.Contains(txtBul.Text)
                       select s).ToList();        // sorgu sonucunu liste haline getirip srg nesnesinin içine atar.
            foreach (var k in srg)
            {
                liste.Rows.Add();   // her döngüye girdiğinde bir satır oluşturur.
                liste.Rows[i].Cells[0].Value = k.Id;
                liste.Rows[i].Cells[1].Value = k.KulAdi;
                liste.Rows[i].Cells[2].Value = k.Sifre;
                liste.Rows[i].Cells[3].Value = k.Role;
                i++;
            }
            // kullanıcı yeni bir satır eklemesin
            liste.AllowUserToAddRows = false;
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
            tblUser user = new tblUser();   // nesne oluşturduk.
            user.KulAdi = txtKulAdi.Text;
            user.Sifre = txtSifre.Text;
            user.Role = txtRole.SelectedIndex;

            
            // db de oluşturduğum nesneyi doldurdum
            db.tblUsers.Add(user);
            db.SaveChanges();
            MessageBox.Show("Kayıt Başarılı");
            Listele();
            Temizle();
        }

        private void Temizle()
        {
            foreach (Control con in splitContainer2.Panel1.Controls) // textbox lar control sınıfının elemanıdır. Control sınıfından bir nesne türettik. Hnagi alandaki kontrollerde işlem yapacağımızı belirttik. 
            {
                if (con is TextBox || con is ComboBox)
                {
                    con.Text = "";
                }
            }
            secimId = -1;
            edit = false;
            txtRole.SelectedIndex = -1;
        }

        private void Guncelle()
        {
            tblUser user = db.tblUsers.Find(secimId);  // nesne oluşturduk.

            user.Role = txtRole.SelectedIndex;
            user.KulAdi = txtKulAdi.Text;
            user.Sifre = txtSifre.Text;

            // db de oluşturduğum nesneyi doldurdum
            db.SaveChanges();
            MessageBox.Show("Güncelleme Başarılı");
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
            var user = db.tblUsers.Find(secimId);
            txtKulAdi.Text = user.KulAdi;
            txtSifre.Text = user.Sifre;
            //txtRole.SelectedIndex = user.Role;

            for (int i = 0; i < txtRole.Items.Count; i++)
            {
                if (user.Role==i)
                {
                    txtRole.SelectedIndex = i;
                }
            }
           
            
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
            db.tblUsers.Remove(db.tblUsers.Find(secimId));
            db.SaveChanges();
            MessageBox.Show($"{secimId} nolu kayıt Silinmiştir.");
            Listele();
            Temizle();
        }
    }
}
