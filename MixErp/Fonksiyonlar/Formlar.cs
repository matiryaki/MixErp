using MixErp.Bilgi;
using MixErp.Stok;
using MixErp.Urun;
using MixErp.User;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MixErp.Fonksiyonlar
{
    public class Formlar
    {
        #region Bilgi Giriş
        public void PersGiris()
        {
            frmPersonelGiris pers = new frmPersonelGiris();
            pers.MdiParent = frmAnasayfa.ActiveForm;    // taşıyıcı alan oluşturur. Gri alan.
            pers.WindowState = FormWindowState.Maximized;
            pers.Show();
        }

        public void CariGiris()
        {
            frmCariGiris cari = new frmCariGiris();
            cari.MdiParent = frmCariGiris.ActiveForm;    // taşıyıcı alan oluşturur. Gri alan.
            cari.WindowState = FormWindowState.Maximized;
            cari.Show();
        }

        public void UrunGiris()
        {
            frmUrun urn = new frmUrun();
            urn.MdiParent = frmUrun.ActiveForm;    // taşıyıcı alan oluşturur. Gri alan.
            urn.WindowState = FormWindowState.Maximized;
            urn.Show();
        }
        #endregion

        #region Ürün İşlemleri

        public void UrunAlis()
        {
            frmUrunAlis ualis = new frmUrunAlis();
            ualis.MdiParent = frmAnasayfa.ActiveForm;    // taşıyıcı alan oluşturur. Gri alan.
            ualis.WindowState = FormWindowState.Maximized;
            ualis.Show();

        }

        public void UrunSatis()
        {
            frmUrunSatis usatis = new frmUrunSatis();
            usatis.MdiParent = frmAnasayfa.ActiveForm;    // taşıyıcı alan oluşturur. Gri alan.
            usatis.WindowState = FormWindowState.Maximized;
            usatis.Show();

        }
        public void KulGiris()
        {
            frmKulGiris kgir = new frmKulGiris();
            kgir.MdiParent = frmAnasayfa.ActiveForm;    // taşıyıcı alan oluşturur. Gri alan.
            kgir.WindowState = FormWindowState.Maximized;
            kgir.Show();

        }

        public int UrunAlisNo(bool secim = false)
        {
            var frm = new frmUrunAlisListe();
            if (secim)
            {
                frm.Secim = true;
                frm.ShowDialog();

            }
            else
            {
                frm.MdiParent = Form.ActiveForm;
                frm.WindowState = FormWindowState.Maximized;
                frm.Show();
            }
            return frmAnasayfa.AktarmaInt;
        }
        public int UrunSatisNo(bool secim = false)
        {
            var frm = new frmUrunSatisListe();
            if (secim)
            {
                frm.Secim = true;
                frm.ShowDialog();

            }
            else
            {
                frm.MdiParent = Form.ActiveForm;
                frm.WindowState = FormWindowState.Maximized;
                frm.Show();
            }
            return frmAnasayfa.AktarmaInt;
        }

        #endregion
        #region Stok İşlemleri
        public void StokDurum()
        {
            frmStokDurum stk = new frmStokDurum();
            stk.MdiParent = frmAnasayfa.ActiveForm;    // taşıyıcı alan oluşturur. Gri alan.
            stk.WindowState = FormWindowState.Maximized;
            stk.Show();
        }
        #endregion
    }
}
