namespace MixErp.Stok
{
    partial class frmStokDurum
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.split1 = new System.Windows.Forms.SplitContainer();
            this.Liste = new System.Windows.Forms.DataGridView();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.StokKodu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.UrunId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.UrunAciklama = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Depo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Raf = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Ambar = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.OBFiyat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Barkod = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnBul = new System.Windows.Forms.Button();
            this.txtBul = new System.Windows.Forms.TextBox();
            this.btnKapat = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.split1)).BeginInit();
            this.split1.Panel1.SuspendLayout();
            this.split1.Panel2.SuspendLayout();
            this.split1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Liste)).BeginInit();
            this.SuspendLayout();
            // 
            // split1
            // 
            this.split1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.split1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.split1.FixedPanel = System.Windows.Forms.FixedPanel.Panel2;
            this.split1.Location = new System.Drawing.Point(0, 0);
            this.split1.Name = "split1";
            // 
            // split1.Panel1
            // 
            this.split1.Panel1.Controls.Add(this.Liste);
            // 
            // split1.Panel2
            // 
            this.split1.Panel2.BackColor = System.Drawing.Color.PaleGoldenrod;
            this.split1.Panel2.Controls.Add(this.btnKapat);
            this.split1.Panel2.Controls.Add(this.btnBul);
            this.split1.Panel2.Controls.Add(this.txtBul);
            this.split1.Size = new System.Drawing.Size(864, 450);
            this.split1.SplitterDistance = 682;
            this.split1.TabIndex = 0;
            // 
            // Liste
            // 
            this.Liste.BackgroundColor = System.Drawing.Color.LightCyan;
            this.Liste.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Liste.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id,
            this.StokKodu,
            this.UrunId,
            this.UrunAciklama,
            this.Depo,
            this.Raf,
            this.Ambar,
            this.OBFiyat,
            this.Barkod});
            this.Liste.Dock = System.Windows.Forms.DockStyle.Fill;
            this.Liste.Location = new System.Drawing.Point(0, 0);
            this.Liste.Name = "Liste";
            this.Liste.Size = new System.Drawing.Size(678, 446);
            this.Liste.TabIndex = 0;
            // 
            // Id
            // 
            this.Id.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Id.HeaderText = "Id";
            this.Id.Name = "Id";
            this.Id.Width = 41;
            // 
            // StokKodu
            // 
            this.StokKodu.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.StokKodu.HeaderText = "Stok Kodu";
            this.StokKodu.Name = "StokKodu";
            this.StokKodu.Width = 82;
            // 
            // UrunId
            // 
            this.UrunId.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.UrunId.HeaderText = "Urun Id";
            this.UrunId.Name = "UrunId";
            this.UrunId.Width = 67;
            // 
            // UrunAciklama
            // 
            this.UrunAciklama.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.UrunAciklama.HeaderText = "Ürün Açıklama";
            this.UrunAciklama.Name = "UrunAciklama";
            // 
            // Depo
            // 
            this.Depo.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Depo.HeaderText = "Depo";
            this.Depo.Name = "Depo";
            this.Depo.Width = 58;
            // 
            // Raf
            // 
            this.Raf.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Raf.HeaderText = "Raf";
            this.Raf.Name = "Raf";
            this.Raf.Width = 49;
            // 
            // Ambar
            // 
            this.Ambar.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Ambar.HeaderText = "Ambar";
            this.Ambar.Name = "Ambar";
            this.Ambar.Width = 62;
            // 
            // OBFiyat
            // 
            this.OBFiyat.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.OBFiyat.HeaderText = "OBFiyat";
            this.OBFiyat.Name = "OBFiyat";
            this.OBFiyat.Width = 69;
            // 
            // Barkod
            // 
            this.Barkod.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Barkod.HeaderText = "Barkod";
            this.Barkod.Name = "Barkod";
            this.Barkod.Width = 66;
            // 
            // btnBul
            // 
            this.btnBul.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnBul.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnBul.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btnBul.Location = new System.Drawing.Point(120, 20);
            this.btnBul.Name = "btnBul";
            this.btnBul.Size = new System.Drawing.Size(51, 28);
            this.btnBul.TabIndex = 1;
            this.btnBul.Text = "Bul";
            this.btnBul.UseVisualStyleBackColor = false;
            this.btnBul.Click += new System.EventHandler(this.btnBul_Click);
            // 
            // txtBul
            // 
            this.txtBul.Location = new System.Drawing.Point(3, 20);
            this.txtBul.Multiline = true;
            this.txtBul.Name = "txtBul";
            this.txtBul.Size = new System.Drawing.Size(111, 28);
            this.txtBul.TabIndex = 0;
            // 
            // btnKapat
            // 
            this.btnKapat.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnKapat.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.btnKapat.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnKapat.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btnKapat.Location = new System.Drawing.Point(0, 402);
            this.btnKapat.Name = "btnKapat";
            this.btnKapat.Size = new System.Drawing.Size(174, 44);
            this.btnKapat.TabIndex = 2;
            this.btnKapat.Text = "Kapat";
            this.btnKapat.UseVisualStyleBackColor = false;
            this.btnKapat.Click += new System.EventHandler(this.btnKapat_Click);
            // 
            // frmStokDurum
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(864, 450);
            this.Controls.Add(this.split1);
            this.Name = "frmStokDurum";
            this.Text = "frmStokDurum";
            this.Load += new System.EventHandler(this.frmStokDurum_Load);
            this.split1.Panel1.ResumeLayout(false);
            this.split1.Panel2.ResumeLayout(false);
            this.split1.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.split1)).EndInit();
            this.split1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Liste)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.SplitContainer split1;
        private System.Windows.Forms.DataGridView Liste;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn StokKodu;
        private System.Windows.Forms.DataGridViewTextBoxColumn UrunId;
        private System.Windows.Forms.DataGridViewTextBoxColumn UrunAciklama;
        private System.Windows.Forms.DataGridViewTextBoxColumn Depo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Raf;
        private System.Windows.Forms.DataGridViewTextBoxColumn Ambar;
        private System.Windows.Forms.DataGridViewTextBoxColumn OBFiyat;
        private System.Windows.Forms.DataGridViewTextBoxColumn Barkod;
        private System.Windows.Forms.Button btnBul;
        private System.Windows.Forms.TextBox txtBul;
        private System.Windows.Forms.Button btnKapat;
    }
}