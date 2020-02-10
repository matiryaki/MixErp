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

namespace MixErp.Urun
{
    public partial class frmUrunSatisListe : Form
    {

        MixErpDbEntities db = new MixErpDbEntities();
        int secimId = -1;
        public bool Secim = false;
        public frmUrunSatisListe()
        {
            InitializeComponent();
        }

        private void frmUrunSatisListe_Load(object sender, EventArgs e)
        {
            Listele();
        }

        private void Listele()
        {
            liste.Rows.Clear();
            int i = 0;
            var srg = (from s in db.tblUrunSatisUsts select s).ToList();

            foreach (var k in srg)
            {
                liste.Rows.Add();
                liste.Rows[i].Cells[0].Value = k.SatisGrupNo;
                liste.Rows[i].Cells[1].Value = k.tblCari.CariAdi;
                liste.Rows[i].Cells[2].Value = k.STarih;
                i++;
            }
            liste.AllowUserToAddRows = false;
        }

        private void btnBul_Click(object sender, EventArgs e)
        {
            Listele();
        }

        private void btnKapat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void liste_DoubleClick(object sender, EventArgs e)
        {
            Sec();
            if (Secim && secimId > 0)
            {
                frmAnasayfa.AktarmaInt = secimId;
                Close();
            }
        }

        private void Sec()
        {
            try
            {
                secimId = Convert.ToInt32(liste.CurrentRow.Cells[0].Value);

            }
            catch (Exception)
            {

                secimId = -1;
            }
        }
    }
}
