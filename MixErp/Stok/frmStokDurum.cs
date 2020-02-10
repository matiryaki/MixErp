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

namespace MixErp.Stok
{
    public partial class frmStokDurum : Form
    {
        MixErpDbEntities db = new MixErpDbEntities();
        public frmStokDurum()
        {
            InitializeComponent();
        }

        private void frmStokDurum_Load(object sender, EventArgs e)
        {
            Listele();
        }

        private void Listele()
        {
            Liste.Rows.Clear();
            
            int i = 0;
            var srg = (from s in db.tblStokDurums
                       where s.tblUrunler.UrunKodu.Contains(txtBul.Text)  // contains: içermek 
                       select s).ToList();        // sorgu sonucunu liste haline getirip srg nesnesinin içine atar.
            foreach (var k in srg)
            {
                Liste.Rows.Add();   // her döngüye girdiğinde bir satır oluşturur.
                Liste.Rows[i].Cells[0].Value = k.Id;
                Liste.Rows[i].Cells[1].Value = k.StokKodu;
                Liste.Rows[i].Cells[2].Value = k.UrunId;
                Liste.Rows[i].Cells[3].Value = k.tblUrunler.UrunAciklama;
                Liste.Rows[i].Cells[4].Value = k.Depo;
                Liste.Rows[i].Cells[5].Value = k.Raf;
                Liste.Rows[i].Cells[6].Value = k.Ambar;
                Liste.Rows[i].Cells[7].Value = k.OBFiyat;
                Liste.Rows[i].Cells[8].Value = k.Barkod;
                i++;
            }
            // kullanıcı yeni bir satır eklemesin
            Liste.AllowUserToAddRows = false;
        }

        private void btnBul_Click(object sender, EventArgs e)
        {
            Listele();
        }

        private void btnKapat_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
