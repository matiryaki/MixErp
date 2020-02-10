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
    public partial class frmAppGiris : Form
    {

        MixErpDbEntities db = new MixErpDbEntities();
        int id;

        public frmAppGiris()
        {
            InitializeComponent();
        }

        private void frmAppGiris_Load(object sender, EventArgs e)
        {

        }
        void GirisKontrol()
        {
            try
            {
                int srg = (from s in db.tblUsers
                           where s.KulAdi == txtKulAdi.Text
                           && s.Sifre == txtSifre.Text
                           select s).First().Id;

                if (srg > 0)
                {
                    frmAnasayfa ana = new frmAnasayfa();
                    ana.WindowState = FormWindowState.Maximized;
                    ana.roleId = db.tblUsers.Find(srg).Role.Value;
                    ana.Show();
                    // this.Hide();
                    Hide();

                   
                }
                else
                {
                    MessageBox.Show("Kullanıcı adı veya şifre yanlış. Lütfen tekrar deneyiniz.");
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Kullanıcı adı veya şifre yanlış. Lütfen tekrar deneyiniz.");
            }

        }

        private void btnGiris_Click(object sender, EventArgs e)
        {

            GirisKontrol();
        }
    }
}
