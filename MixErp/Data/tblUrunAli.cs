//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MixErp.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblUrunAli
    {
        public int Id { get; set; }
        public string AlisGrupNo { get; set; }
        public Nullable<int> CariId { get; set; }
        public Nullable<System.DateTime> ATarih { get; set; }
        public string FaturaNo { get; set; }
        public Nullable<int> Vade { get; set; }
        public Nullable<int> OdemeId { get; set; }
        public Nullable<int> UrunId { get; set; }
        public Nullable<decimal> BFiyat { get; set; }
        public Nullable<int> Adet { get; set; }
        public Nullable<int> BirimId { get; set; }
        public Nullable<decimal> AraToplam { get; set; }
        public Nullable<decimal> KdvToplam { get; set; }
        public Nullable<decimal> GenelToplam { get; set; }
    
        public virtual bOdemeTurleri bOdemeTurleri { get; set; }
        public virtual tblCari tblCari { get; set; }
        public virtual tblUrunler tblUrunler { get; set; }
    }
}
