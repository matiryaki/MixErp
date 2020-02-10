using MixErp.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MixErp.Fonksiyonlar
{
    public class Numaralar
    {
        MixErpDbEntities db = new MixErpDbEntities();
        public string PersonelNo()
        {
            try
            {
                double numara = double.Parse((from s in db.tblPersonels orderby s.Id descending select s).First().PersonelNo);
                numara++;
                string num = numara.ToString().PadLeft(7, '0');
                return num;
            }
            catch (Exception)
            {

                return "0000001";
            }


        }


        public string CariNo()
        {
            try
            {
                double numara = double.Parse((from s in db.tblCaris orderby s.Id descending select s).First().CariNo);
                numara++;
                string num = numara.ToString().PadLeft(7, '0');
                return num;
            }
            catch (Exception)
            {

                return "0000001";
            }


        }

        public string AlisGrupNo()
        {
            try
            {
                double numara = double.Parse((from s in db.tblUrunAlisUsts orderby s.Id descending select s).First().AlisGrupNo);
                numara++;
                string num = numara.ToString().PadLeft(7, '0');
                return num;
            }
            catch (Exception)
            {

                return "0000001";
            }


        }
        public string SatisGrupNo()
        {
            try
            {
                double numara = double.Parse((from s in db.tblUrunSatisUsts orderby s.Id descending select s).First().SatisGrupNo);
                numara++;
                string num = numara.ToString().PadLeft(7, '0');
                return num;
            }
            catch (Exception)
            {

                return "0000001";
            }


        }

        public string StokKod()
        {
            try
            {
                double numara = double.Parse((from s in db.tblStokDurums orderby s.Id descending select s).First().StokKodu);
                numara++;
                string num = numara.ToString().PadLeft(7, '0');
                return num;
            }
            catch (Exception)
            {

                return "0000001";
            }


        }

    }
}
