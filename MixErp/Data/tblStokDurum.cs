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
    
    public partial class tblStokDurum
    {
        public int Id { get; set; }
        public string StokKodu { get; set; }
        public string Barkod { get; set; }
        public Nullable<int> UrunId { get; set; }
        public Nullable<int> Depo { get; set; }
        public Nullable<int> Raf { get; set; }
        public Nullable<int> Ambar { get; set; }
        public Nullable<decimal> OBFiyat { get; set; }
    
        public virtual tblUrunler tblUrunler { get; set; }
    }
}
