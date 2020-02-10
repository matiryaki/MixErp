namespace MixErp.Urun
{
    partial class frmUrunAlis
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.splitContainer2 = new System.Windows.Forms.SplitContainer();
            this.txtATarih = new System.Windows.Forms.DateTimePicker();
            this.txtVade = new System.Windows.Forms.ComboBox();
            this.txtCari = new System.Windows.Forms.ComboBox();
            this.txtOdeme = new System.Windows.Forms.ComboBox();
            this.txtFaturaNo = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.liste = new System.Windows.Forms.DataGridView();
            this.UrunKodu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.UrunAciklamasi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Birim = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.BFiyat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Adet = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.araKdv = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtUKod = new System.Windows.Forms.ComboBox();
            this.txtBul = new System.Windows.Forms.TextBox();
            this.btnBul = new System.Windows.Forms.Button();
            this.btnSil = new System.Windows.Forms.Button();
            this.txtGenelToplam = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtKdvToplam = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtAraToplam = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtAlisGrupNo = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btnKapat = new System.Windows.Forms.Button();
            this.btnKaydet = new System.Windows.Forms.Button();
            this.btnPrint = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer2)).BeginInit();
            this.splitContainer2.Panel1.SuspendLayout();
            this.splitContainer2.Panel2.SuspendLayout();
            this.splitContainer2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.liste)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.splitContainer2);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.txtAlisGrupNo);
            this.splitContainer1.Panel2.Controls.Add(this.label3);
            this.splitContainer1.Panel2.Controls.Add(this.btnKapat);
            this.splitContainer1.Panel2.Controls.Add(this.btnKaydet);
            this.splitContainer1.Size = new System.Drawing.Size(878, 535);
            this.splitContainer1.SplitterDistance = 721;
            this.splitContainer1.TabIndex = 2;
            // 
            // splitContainer2
            // 
            this.splitContainer2.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.splitContainer2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer2.Location = new System.Drawing.Point(0, 0);
            this.splitContainer2.Name = "splitContainer2";
            this.splitContainer2.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer2.Panel1
            // 
            this.splitContainer2.Panel1.Controls.Add(this.txtATarih);
            this.splitContainer2.Panel1.Controls.Add(this.txtVade);
            this.splitContainer2.Panel1.Controls.Add(this.txtCari);
            this.splitContainer2.Panel1.Controls.Add(this.txtOdeme);
            this.splitContainer2.Panel1.Controls.Add(this.txtFaturaNo);
            this.splitContainer2.Panel1.Controls.Add(this.label9);
            this.splitContainer2.Panel1.Controls.Add(this.label8);
            this.splitContainer2.Panel1.Controls.Add(this.label7);
            this.splitContainer2.Panel1.Controls.Add(this.label4);
            this.splitContainer2.Panel1.Controls.Add(this.label1);
            // 
            // splitContainer2.Panel2
            // 
            this.splitContainer2.Panel2.Controls.Add(this.liste);
            this.splitContainer2.Panel2.Controls.Add(this.panel1);
            this.splitContainer2.Size = new System.Drawing.Size(721, 535);
            this.splitContainer2.SplitterDistance = 209;
            this.splitContainer2.TabIndex = 0;
            // 
            // txtATarih
            // 
            this.txtATarih.Location = new System.Drawing.Point(86, 37);
            this.txtATarih.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtATarih.Name = "txtATarih";
            this.txtATarih.Size = new System.Drawing.Size(151, 20);
            this.txtATarih.TabIndex = 3;
            // 
            // txtVade
            // 
            this.txtVade.FormattingEnabled = true;
            this.txtVade.Items.AddRange(new object[] {
            "Belirtilmemiş",
            "1",
            "3",
            "4",
            "5",
            "6",
            "9",
            "12"});
            this.txtVade.Location = new System.Drawing.Point(393, 3);
            this.txtVade.Name = "txtVade";
            this.txtVade.Size = new System.Drawing.Size(151, 21);
            this.txtVade.TabIndex = 22;
            // 
            // txtCari
            // 
            this.txtCari.FormattingEnabled = true;
            this.txtCari.Location = new System.Drawing.Point(86, 6);
            this.txtCari.Name = "txtCari";
            this.txtCari.Size = new System.Drawing.Size(151, 21);
            this.txtCari.TabIndex = 20;
            // 
            // txtOdeme
            // 
            this.txtOdeme.FormattingEnabled = true;
            this.txtOdeme.Location = new System.Drawing.Point(393, 36);
            this.txtOdeme.Name = "txtOdeme";
            this.txtOdeme.Size = new System.Drawing.Size(151, 21);
            this.txtOdeme.TabIndex = 18;
            // 
            // txtFaturaNo
            // 
            this.txtFaturaNo.Location = new System.Drawing.Point(86, 66);
            this.txtFaturaNo.Name = "txtFaturaNo";
            this.txtFaturaNo.Size = new System.Drawing.Size(151, 20);
            this.txtFaturaNo.TabIndex = 12;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(8, 11);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(46, 13);
            this.label9.TabIndex = 10;
            this.label9.Text = "Cari Adı:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(8, 41);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(55, 13);
            this.label8.TabIndex = 9;
            this.label8.Text = "Alış Tarihi:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(286, 41);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(72, 13);
            this.label7.TabIndex = 8;
            this.label7.Text = "Ödeme Türü: ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(286, 11);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(35, 13);
            this.label4.TabIndex = 5;
            this.label4.Text = "Vade:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(8, 70);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(57, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Fatura No:";
            // 
            // liste
            // 
            this.liste.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.liste.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.liste.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.UrunKodu,
            this.UrunAciklamasi,
            this.Birim,
            this.BFiyat,
            this.Adet,
            this.araKdv,
            this.Id});
            this.liste.Dock = System.Windows.Forms.DockStyle.Fill;
            this.liste.Location = new System.Drawing.Point(0, 0);
            this.liste.Name = "liste";
            this.liste.Size = new System.Drawing.Size(717, 194);
            this.liste.TabIndex = 0;
            this.liste.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.liste_CellEndEdit);
            this.liste.EditingControlShowing += new System.Windows.Forms.DataGridViewEditingControlShowingEventHandler(this.liste_EditingControlShowing);
            // 
            // UrunKodu
            // 
            this.UrunKodu.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.UrunKodu.HeaderText = "Ürün Kodu";
            this.UrunKodu.Name = "UrunKodu";
            this.UrunKodu.Width = 77;
            // 
            // UrunAciklamasi
            // 
            this.UrunAciklamasi.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.UrunAciklamasi.HeaderText = "Ürün Açıklaması";
            this.UrunAciklamasi.Name = "UrunAciklamasi";
            // 
            // Birim
            // 
            this.Birim.HeaderText = "Birim";
            this.Birim.Name = "Birim";
            // 
            // BFiyat
            // 
            dataGridViewCellStyle4.Format = "C2";
            this.BFiyat.DefaultCellStyle = dataGridViewCellStyle4;
            this.BFiyat.HeaderText = "Birim Fiyat";
            this.BFiyat.Name = "BFiyat";
            // 
            // Adet
            // 
            dataGridViewCellStyle5.Format = "N0";
            this.Adet.DefaultCellStyle = dataGridViewCellStyle5;
            this.Adet.HeaderText = "Adet";
            this.Adet.Name = "Adet";
            // 
            // araKdv
            // 
            dataGridViewCellStyle6.Format = "C2";
            this.araKdv.DefaultCellStyle = dataGridViewCellStyle6;
            this.araKdv.HeaderText = "Kdv Tutar";
            this.araKdv.Name = "araKdv";
            // 
            // Id
            // 
            this.Id.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Id.HeaderText = "Id";
            this.Id.Name = "Id";
            this.Id.Width = 41;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.panel1.Controls.Add(this.btnPrint);
            this.panel1.Controls.Add(this.txtUKod);
            this.panel1.Controls.Add(this.txtBul);
            this.panel1.Controls.Add(this.btnBul);
            this.panel1.Controls.Add(this.btnSil);
            this.panel1.Controls.Add(this.txtGenelToplam);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.txtKdvToplam);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.txtAraToplam);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 194);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(717, 124);
            this.panel1.TabIndex = 1;
            // 
            // txtUKod
            // 
            this.txtUKod.FormattingEnabled = true;
            this.txtUKod.Location = new System.Drawing.Point(10, 48);
            this.txtUKod.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtUKod.Name = "txtUKod";
            this.txtUKod.Size = new System.Drawing.Size(92, 21);
            this.txtUKod.TabIndex = 13;
            this.txtUKod.Visible = false;
            // 
            // txtBul
            // 
            this.txtBul.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtBul.Location = new System.Drawing.Point(195, 6);
            this.txtBul.Name = "txtBul";
            this.txtBul.Size = new System.Drawing.Size(196, 20);
            this.txtBul.TabIndex = 2;
            // 
            // btnBul
            // 
            this.btnBul.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnBul.Location = new System.Drawing.Point(415, 4);
            this.btnBul.Name = "btnBul";
            this.btnBul.Size = new System.Drawing.Size(75, 23);
            this.btnBul.TabIndex = 1;
            this.btnBul.Text = "Bul";
            this.btnBul.UseVisualStyleBackColor = true;
            // 
            // btnSil
            // 
            this.btnSil.Location = new System.Drawing.Point(10, 3);
            this.btnSil.Name = "btnSil";
            this.btnSil.Size = new System.Drawing.Size(54, 32);
            this.btnSil.TabIndex = 0;
            this.btnSil.Text = "Sil";
            this.btnSil.UseVisualStyleBackColor = true;
            // 
            // txtGenelToplam
            // 
            this.txtGenelToplam.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtGenelToplam.Location = new System.Drawing.Point(269, 89);
            this.txtGenelToplam.Name = "txtGenelToplam";
            this.txtGenelToplam.Size = new System.Drawing.Size(121, 20);
            this.txtGenelToplam.TabIndex = 12;
            // 
            // label6
            // 
            this.label6.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.label6.ForeColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(175, 93);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(76, 13);
            this.label6.TabIndex = 3;
            this.label6.Text = "Genel Toplam:";
            // 
            // txtKdvToplam
            // 
            this.txtKdvToplam.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtKdvToplam.Location = new System.Drawing.Point(269, 65);
            this.txtKdvToplam.Name = "txtKdvToplam";
            this.txtKdvToplam.Size = new System.Drawing.Size(121, 20);
            this.txtKdvToplam.TabIndex = 12;
            // 
            // label5
            // 
            this.label5.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.label5.ForeColor = System.Drawing.Color.White;
            this.label5.Location = new System.Drawing.Point(175, 69);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(70, 13);
            this.label5.TabIndex = 3;
            this.label5.Text = "KDV Toplam:";
            // 
            // txtAraToplam
            // 
            this.txtAraToplam.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtAraToplam.Location = new System.Drawing.Point(269, 41);
            this.txtAraToplam.Name = "txtAraToplam";
            this.txtAraToplam.Size = new System.Drawing.Size(121, 20);
            this.txtAraToplam.TabIndex = 12;
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(175, 45);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Ara Toplam:";
            // 
            // txtAlisGrupNo
            // 
            this.txtAlisGrupNo.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtAlisGrupNo.Location = new System.Drawing.Point(8, 72);
            this.txtAlisGrupNo.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtAlisGrupNo.Multiline = true;
            this.txtAlisGrupNo.Name = "txtAlisGrupNo";
            this.txtAlisGrupNo.Size = new System.Drawing.Size(134, 54);
            this.txtAlisGrupNo.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.label3.Location = new System.Drawing.Point(3, 46);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(141, 19);
            this.label3.TabIndex = 1;
            this.label3.Text = "Alış Grup No";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnKapat
            // 
            this.btnKapat.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.btnKapat.Location = new System.Drawing.Point(0, 495);
            this.btnKapat.Name = "btnKapat";
            this.btnKapat.Size = new System.Drawing.Size(153, 40);
            this.btnKapat.TabIndex = 0;
            this.btnKapat.Text = "Kapat";
            this.btnKapat.UseVisualStyleBackColor = true;
            // 
            // btnKaydet
            // 
            this.btnKaydet.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnKaydet.Location = new System.Drawing.Point(0, 0);
            this.btnKaydet.Name = "btnKaydet";
            this.btnKaydet.Size = new System.Drawing.Size(153, 40);
            this.btnKaydet.TabIndex = 0;
            this.btnKaydet.Text = "Kaydet";
            this.btnKaydet.UseVisualStyleBackColor = true;
            this.btnKaydet.Click += new System.EventHandler(this.btnKaydet_Click);
            // 
            // btnPrint
            // 
            this.btnPrint.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.btnPrint.BackColor = System.Drawing.Color.PaleGoldenrod;
            this.btnPrint.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnPrint.Location = new System.Drawing.Point(631, 35);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(71, 45);
            this.btnPrint.TabIndex = 14;
            this.btnPrint.Text = "Print";
            this.btnPrint.UseVisualStyleBackColor = false;
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // frmUrunAlis
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(878, 535);
            this.Controls.Add(this.splitContainer1);
            this.Name = "frmUrunAlis";
            this.Text = "frmUrunAlis";
            this.Load += new System.EventHandler(this.frmUrunAlis_Load);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.splitContainer2.Panel1.ResumeLayout(false);
            this.splitContainer2.Panel1.PerformLayout();
            this.splitContainer2.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer2)).EndInit();
            this.splitContainer2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.liste)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.SplitContainer splitContainer2;
        private System.Windows.Forms.ComboBox txtVade;
        private System.Windows.Forms.ComboBox txtCari;
        private System.Windows.Forms.ComboBox txtOdeme;
        private System.Windows.Forms.TextBox txtFaturaNo;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView liste;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txtBul;
        private System.Windows.Forms.Button btnBul;
        private System.Windows.Forms.Button btnSil;
        private System.Windows.Forms.Button btnKapat;
        private System.Windows.Forms.Button btnKaydet;
        private System.Windows.Forms.DateTimePicker txtATarih;
        private System.Windows.Forms.TextBox txtAlisGrupNo;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtGenelToplam;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtKdvToplam;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtAraToplam;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox txtUKod;
        private System.Windows.Forms.DataGridViewTextBoxColumn UrunKodu;
        private System.Windows.Forms.DataGridViewTextBoxColumn UrunAciklamasi;
        private System.Windows.Forms.DataGridViewTextBoxColumn Birim;
        private System.Windows.Forms.DataGridViewTextBoxColumn BFiyat;
        private System.Windows.Forms.DataGridViewTextBoxColumn Adet;
        private System.Windows.Forms.DataGridViewTextBoxColumn araKdv;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.Button btnPrint;
    }
}