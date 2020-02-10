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
    
    public partial class tblCari
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblCari()
        {
            this.tblUrunAlis = new HashSet<tblUrunAli>();
            this.tblUrunAlisUsts = new HashSet<tblUrunAlisUst>();
            this.tblUrunlers = new HashSet<tblUrunler>();
            this.tblUrunSatisUsts = new HashSet<tblUrunSatisUst>();
        }
    
        public int Id { get; set; }
        public string CariNo { get; set; }
        public string CariAdi { get; set; }
        public string Adres { get; set; }
        public string Tel { get; set; }
        public string VergiD { get; set; }
        public string VergiNoTc { get; set; }
        public Nullable<int> CariTipId { get; set; }
        public Nullable<int> SehirId { get; set; }
        public Nullable<int> IlceId { get; set; }
    
        public virtual blgCariTipi blgCariTipi { get; set; }
        public virtual ilceler ilceler { get; set; }
        public virtual iller iller { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblUrunAli> tblUrunAlis { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblUrunAlisUst> tblUrunAlisUsts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblUrunler> tblUrunlers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblUrunSatisUst> tblUrunSatisUsts { get; set; }
    }
}
