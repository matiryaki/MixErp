using MixErp.Bilgi;
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
using System.Xml.Linq;

namespace MixErp
{
    public partial class frmAnasayfa : Form
    {

        Formlar F = new Formlar();
        public static int AktarmaInt = -1;
        public int roleId = -1;
        public frmAnasayfa()
        {
            InitializeComponent();
        }

        private void frmAnasayfa_Load(object sender, EventArgs e)
        {
            RoleKontrol();
            KurKontrol();
        }

        public static bool KontrolInternet()
        {
            try
            {
                using (var client = new System.Net.WebClient())
                using (client.OpenRead("https://google.com"))
                    return true;
            }
            catch (Exception)
            {

                return false;            }
        }

        private void KurKontrol()
        {
            if (frmAnasayfa.KontrolInternet()==true)
            {
                if (txtDolar.Text == "$" || txtEuro.Text == "€")
                {
                    XElement kurlar = XElement.Load("https://www.tcmb.gov.tr/kurlar/today.xml");
                    XElement dolar = (from s in kurlar.Elements()
                                      where s.Attribute("CurrencyCode")?.Value == "USD"
                                      select s).Single();       // ? null değer geldiğinde hata vermesini önler.
                    XElement euro = (from s in kurlar.Elements()
                                     where s.Attribute("CurrencyCode")?.Value == "EUR"
                                     select s).Single();       // ? null değer geldiğinde hata vermesini önler.


                    txtDolar.Text = dolar.Element("ForexSelling").Value;
                    txtEuro.Text = euro.Element("ForexSelling").Value;

                } 
            }
            else
            {
                txtDolar.Text = "İnternet";
                txtEuro.Text = "Yok";
            
            }
        }

        private void RoleKontrol()
        {
            if (roleId==1)
            {
                btnAdmin.Enabled = true;
            }
            else
            {
                btnAdmin.Enabled = false;
            }
        }

        private void btnBilgiGiris_Click(object sender, EventArgs e)
        {
            pnl1.Visible = true;
            pnl2.Visible = false;
            pnl3.Visible = false;
            pnl4.Visible = false;
            pnl5.Visible = false;

            
        }

        private void btnUrun_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            pnl2.Visible = true;
            pnl3.Visible = false;
            pnl4.Visible = false;
            pnl5.Visible = false;

        }

        private void btnStok_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            pnl2.Visible = false;
            pnl3.Visible = true;
            pnl4.Visible = false;
            pnl5.Visible = false;

        }

        private void btnFatura_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            pnl2.Visible = false;
            pnl3.Visible = false;
            pnl4.Visible = true;
            pnl5.Visible = false;

        }

        private void btnKapat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnPersonelGiris_Click(object sender, EventArgs e)
        {
            F.PersGiris();
        }

        private void btnCariGiris_Click(object sender, EventArgs e)
        {
            F.CariGiris();
        }

        private void btnUrunGiris_Click(object sender, EventArgs e)
        {
            F.UrunGiris();
        }

        private void btnUrunAlis_Click(object sender, EventArgs e)
        {
            F.UrunAlis();
        }

        private void btnUrunSatis_Click(object sender, EventArgs e)
        {
            F.UrunSatis();
        }

        private void btnUrunAlisListe_Click(object sender, EventArgs e)
        {
            F.UrunAlisNo(false);
        }

        private void btnAdmin_Click(object sender, EventArgs e)
        {
            pnl1.Visible = false;
            pnl2.Visible = false;
            pnl3.Visible = false;
            pnl4.Visible = false;
            pnl5.Visible = true;

        }

        private void frmAnasayfa_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void btnKullaniciGiris_Click(object sender, EventArgs e)
        {

        }

        private void btnUrunSatisListe_Click(object sender, EventArgs e)
        {
            F.UrunSatisNo(false);

        }

        private void btnStokDurum_Click(object sender, EventArgs e)
        {
            F.StokDurum();
        }
    }
}
