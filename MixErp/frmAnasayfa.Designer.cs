namespace MixErp
{
    partial class frmAnasayfa
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
            this.pnlUst = new System.Windows.Forms.Panel();
            this.pnlKur = new System.Windows.Forms.Panel();
            this.txtEuro = new System.Windows.Forms.Label();
            this.txtDolar = new System.Windows.Forms.Label();
            this.btnAdmin = new System.Windows.Forms.Button();
            this.btnKapat = new System.Windows.Forms.Button();
            this.btnFatura = new System.Windows.Forms.Button();
            this.btnStok = new System.Windows.Forms.Button();
            this.btnUrun = new System.Windows.Forms.Button();
            this.btnBilgiGiris = new System.Windows.Forms.Button();
            this.gbLeft = new System.Windows.Forms.GroupBox();
            this.pnl1 = new System.Windows.Forms.Panel();
            this.btnUrunGiris = new System.Windows.Forms.Button();
            this.btnCariGiris = new System.Windows.Forms.Button();
            this.btnPersonelGiris = new System.Windows.Forms.Button();
            this.pnl4 = new System.Windows.Forms.Panel();
            this.pnl3 = new System.Windows.Forms.Panel();
            this.pnl5 = new System.Windows.Forms.Panel();
            this.btnKullaniciGiris = new System.Windows.Forms.Button();
            this.pnl2 = new System.Windows.Forms.Panel();
            this.btnUrunSatisListe = new System.Windows.Forms.Button();
            this.btnUrunSatis = new System.Windows.Forms.Button();
            this.btnUrunAlisListe = new System.Windows.Forms.Button();
            this.btnUrunAlis = new System.Windows.Forms.Button();
            this.btnStokDurum = new System.Windows.Forms.Button();
            this.pnlUst.SuspendLayout();
            this.pnlKur.SuspendLayout();
            this.gbLeft.SuspendLayout();
            this.pnl1.SuspendLayout();
            this.pnl3.SuspendLayout();
            this.pnl5.SuspendLayout();
            this.pnl2.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlUst
            // 
            this.pnlUst.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.pnlUst.Controls.Add(this.pnlKur);
            this.pnlUst.Controls.Add(this.btnAdmin);
            this.pnlUst.Controls.Add(this.btnKapat);
            this.pnlUst.Controls.Add(this.btnFatura);
            this.pnlUst.Controls.Add(this.btnStok);
            this.pnlUst.Controls.Add(this.btnUrun);
            this.pnlUst.Controls.Add(this.btnBilgiGiris);
            this.pnlUst.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlUst.Location = new System.Drawing.Point(0, 0);
            this.pnlUst.Name = "pnlUst";
            this.pnlUst.Size = new System.Drawing.Size(896, 61);
            this.pnlUst.TabIndex = 0;
            // 
            // pnlKur
            // 
            this.pnlKur.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.pnlKur.Controls.Add(this.txtEuro);
            this.pnlKur.Controls.Add(this.txtDolar);
            this.pnlKur.Location = new System.Drawing.Point(559, 10);
            this.pnlKur.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.pnlKur.Name = "pnlKur";
            this.pnlKur.Size = new System.Drawing.Size(189, 30);
            this.pnlKur.TabIndex = 2;
            // 
            // txtEuro
            // 
            this.txtEuro.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.txtEuro.Font = new System.Drawing.Font("Tahoma", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtEuro.Location = new System.Drawing.Point(100, 6);
            this.txtEuro.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.txtEuro.Name = "txtEuro";
            this.txtEuro.Size = new System.Drawing.Size(58, 19);
            this.txtEuro.TabIndex = 0;
            this.txtEuro.Text = "€";
            this.txtEuro.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtDolar
            // 
            this.txtDolar.BackColor = System.Drawing.Color.Green;
            this.txtDolar.Font = new System.Drawing.Font("Tahoma", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtDolar.ForeColor = System.Drawing.Color.White;
            this.txtDolar.Location = new System.Drawing.Point(32, 6);
            this.txtDolar.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.txtDolar.Name = "txtDolar";
            this.txtDolar.Size = new System.Drawing.Size(53, 19);
            this.txtDolar.TabIndex = 0;
            this.txtDolar.Text = "$";
            this.txtDolar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnAdmin
            // 
            this.btnAdmin.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnAdmin.ForeColor = System.Drawing.Color.Maroon;
            this.btnAdmin.Location = new System.Drawing.Point(452, 12);
            this.btnAdmin.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnAdmin.Name = "btnAdmin";
            this.btnAdmin.Size = new System.Drawing.Size(86, 28);
            this.btnAdmin.TabIndex = 1;
            this.btnAdmin.Text = "Admin";
            this.btnAdmin.UseVisualStyleBackColor = true;
            this.btnAdmin.Click += new System.EventHandler(this.btnAdmin_Click);
            // 
            // btnKapat
            // 
            this.btnKapat.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnKapat.BackColor = System.Drawing.Color.Maroon;
            this.btnKapat.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnKapat.ForeColor = System.Drawing.Color.White;
            this.btnKapat.Location = new System.Drawing.Point(782, 12);
            this.btnKapat.Name = "btnKapat";
            this.btnKapat.Size = new System.Drawing.Size(104, 28);
            this.btnKapat.TabIndex = 0;
            this.btnKapat.Text = "Kapat";
            this.btnKapat.UseVisualStyleBackColor = false;
            this.btnKapat.Click += new System.EventHandler(this.btnKapat_Click);
            // 
            // btnFatura
            // 
            this.btnFatura.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnFatura.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.btnFatura.Location = new System.Drawing.Point(342, 12);
            this.btnFatura.Name = "btnFatura";
            this.btnFatura.Size = new System.Drawing.Size(104, 28);
            this.btnFatura.TabIndex = 0;
            this.btnFatura.Text = "Fatura";
            this.btnFatura.UseVisualStyleBackColor = true;
            this.btnFatura.Click += new System.EventHandler(this.btnFatura_Click);
            // 
            // btnStok
            // 
            this.btnStok.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnStok.ForeColor = System.Drawing.Color.Gray;
            this.btnStok.Location = new System.Drawing.Point(232, 12);
            this.btnStok.Name = "btnStok";
            this.btnStok.Size = new System.Drawing.Size(104, 28);
            this.btnStok.TabIndex = 0;
            this.btnStok.Text = "Stok";
            this.btnStok.UseVisualStyleBackColor = true;
            this.btnStok.Click += new System.EventHandler(this.btnStok_Click);
            // 
            // btnUrun
            // 
            this.btnUrun.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnUrun.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.btnUrun.Location = new System.Drawing.Point(122, 12);
            this.btnUrun.Name = "btnUrun";
            this.btnUrun.Size = new System.Drawing.Size(104, 28);
            this.btnUrun.TabIndex = 0;
            this.btnUrun.Text = "Ürün ";
            this.btnUrun.UseVisualStyleBackColor = true;
            this.btnUrun.Click += new System.EventHandler(this.btnUrun_Click);
            // 
            // btnBilgiGiris
            // 
            this.btnBilgiGiris.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnBilgiGiris.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.btnBilgiGiris.Location = new System.Drawing.Point(12, 12);
            this.btnBilgiGiris.Name = "btnBilgiGiris";
            this.btnBilgiGiris.Size = new System.Drawing.Size(104, 28);
            this.btnBilgiGiris.TabIndex = 0;
            this.btnBilgiGiris.Text = "Bilgi Girişi";
            this.btnBilgiGiris.UseVisualStyleBackColor = true;
            this.btnBilgiGiris.Click += new System.EventHandler(this.btnBilgiGiris_Click);
            // 
            // gbLeft
            // 
            this.gbLeft.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.gbLeft.Controls.Add(this.pnl5);
            this.gbLeft.Controls.Add(this.pnl2);
            this.gbLeft.Controls.Add(this.pnl1);
            this.gbLeft.Controls.Add(this.pnl4);
            this.gbLeft.Controls.Add(this.pnl3);
            this.gbLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.gbLeft.Location = new System.Drawing.Point(0, 61);
            this.gbLeft.Name = "gbLeft";
            this.gbLeft.Size = new System.Drawing.Size(164, 426);
            this.gbLeft.TabIndex = 1;
            this.gbLeft.TabStop = false;
            this.gbLeft.Text = "groupBox1";
            // 
            // pnl1
            // 
            this.pnl1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(128)))));
            this.pnl1.Controls.Add(this.btnUrunGiris);
            this.pnl1.Controls.Add(this.btnCariGiris);
            this.pnl1.Controls.Add(this.btnPersonelGiris);
            this.pnl1.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnl1.Location = new System.Drawing.Point(323, 16);
            this.pnl1.Name = "pnl1";
            this.pnl1.Size = new System.Drawing.Size(161, 407);
            this.pnl1.TabIndex = 0;
            this.pnl1.Visible = false;
            // 
            // btnUrunGiris
            // 
            this.btnUrunGiris.Location = new System.Drawing.Point(10, 73);
            this.btnUrunGiris.Name = "btnUrunGiris";
            this.btnUrunGiris.Size = new System.Drawing.Size(143, 23);
            this.btnUrunGiris.TabIndex = 2;
            this.btnUrunGiris.Text = "Ürün Giriş";
            this.btnUrunGiris.UseVisualStyleBackColor = true;
            this.btnUrunGiris.Click += new System.EventHandler(this.btnUrunGiris_Click);
            // 
            // btnCariGiris
            // 
            this.btnCariGiris.Location = new System.Drawing.Point(10, 43);
            this.btnCariGiris.Name = "btnCariGiris";
            this.btnCariGiris.Size = new System.Drawing.Size(143, 23);
            this.btnCariGiris.TabIndex = 1;
            this.btnCariGiris.Text = "Cari Giriş";
            this.btnCariGiris.UseVisualStyleBackColor = true;
            this.btnCariGiris.Click += new System.EventHandler(this.btnCariGiris_Click);
            // 
            // btnPersonelGiris
            // 
            this.btnPersonelGiris.Location = new System.Drawing.Point(9, 13);
            this.btnPersonelGiris.Name = "btnPersonelGiris";
            this.btnPersonelGiris.Size = new System.Drawing.Size(144, 23);
            this.btnPersonelGiris.TabIndex = 0;
            this.btnPersonelGiris.Text = "Personel Giriş";
            this.btnPersonelGiris.UseVisualStyleBackColor = true;
            this.btnPersonelGiris.Click += new System.EventHandler(this.btnPersonelGiris_Click);
            // 
            // pnl4
            // 
            this.pnl4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.pnl4.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnl4.Location = new System.Drawing.Point(163, 16);
            this.pnl4.Name = "pnl4";
            this.pnl4.Size = new System.Drawing.Size(160, 407);
            this.pnl4.TabIndex = 0;
            this.pnl4.Visible = false;
            // 
            // pnl3
            // 
            this.pnl3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.pnl3.Controls.Add(this.btnStokDurum);
            this.pnl3.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnl3.Location = new System.Drawing.Point(3, 16);
            this.pnl3.Name = "pnl3";
            this.pnl3.Size = new System.Drawing.Size(160, 407);
            this.pnl3.TabIndex = 0;
            this.pnl3.Visible = false;
            // 
            // pnl5
            // 
            this.pnl5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.pnl5.Controls.Add(this.btnKullaniciGiris);
            this.pnl5.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnl5.Location = new System.Drawing.Point(644, 16);
            this.pnl5.Name = "pnl5";
            this.pnl5.Size = new System.Drawing.Size(161, 407);
            this.pnl5.TabIndex = 1;
            this.pnl5.Visible = false;
            // 
            // btnKullaniciGiris
            // 
            this.btnKullaniciGiris.Location = new System.Drawing.Point(9, 13);
            this.btnKullaniciGiris.Name = "btnKullaniciGiris";
            this.btnKullaniciGiris.Size = new System.Drawing.Size(144, 23);
            this.btnKullaniciGiris.TabIndex = 0;
            this.btnKullaniciGiris.Text = "Kullanıcı Giriş";
            this.btnKullaniciGiris.UseVisualStyleBackColor = true;
            this.btnKullaniciGiris.Click += new System.EventHandler(this.btnKullaniciGiris_Click);
            // 
            // pnl2
            // 
            this.pnl2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.pnl2.Controls.Add(this.btnUrunSatisListe);
            this.pnl2.Controls.Add(this.btnUrunSatis);
            this.pnl2.Controls.Add(this.btnUrunAlisListe);
            this.pnl2.Controls.Add(this.btnUrunAlis);
            this.pnl2.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnl2.Location = new System.Drawing.Point(484, 16);
            this.pnl2.Name = "pnl2";
            this.pnl2.Size = new System.Drawing.Size(160, 407);
            this.pnl2.TabIndex = 0;
            this.pnl2.Visible = false;
            // 
            // btnUrunSatisListe
            // 
            this.btnUrunSatisListe.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnUrunSatisListe.ForeColor = System.Drawing.Color.DarkRed;
            this.btnUrunSatisListe.Location = new System.Drawing.Point(9, 162);
            this.btnUrunSatisListe.Name = "btnUrunSatisListe";
            this.btnUrunSatisListe.Size = new System.Drawing.Size(145, 35);
            this.btnUrunSatisListe.TabIndex = 0;
            this.btnUrunSatisListe.Text = "Ürün Satış Listesi";
            this.btnUrunSatisListe.UseVisualStyleBackColor = true;
            this.btnUrunSatisListe.Click += new System.EventHandler(this.btnUrunSatisListe_Click);
            // 
            // btnUrunSatis
            // 
            this.btnUrunSatis.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnUrunSatis.ForeColor = System.Drawing.Color.DarkRed;
            this.btnUrunSatis.Location = new System.Drawing.Point(9, 121);
            this.btnUrunSatis.Name = "btnUrunSatis";
            this.btnUrunSatis.Size = new System.Drawing.Size(145, 35);
            this.btnUrunSatis.TabIndex = 0;
            this.btnUrunSatis.Text = "Ürün Satış";
            this.btnUrunSatis.UseVisualStyleBackColor = true;
            this.btnUrunSatis.Click += new System.EventHandler(this.btnUrunSatis_Click);
            // 
            // btnUrunAlisListe
            // 
            this.btnUrunAlisListe.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnUrunAlisListe.ForeColor = System.Drawing.Color.DarkRed;
            this.btnUrunAlisListe.Location = new System.Drawing.Point(9, 54);
            this.btnUrunAlisListe.Name = "btnUrunAlisListe";
            this.btnUrunAlisListe.Size = new System.Drawing.Size(145, 35);
            this.btnUrunAlisListe.TabIndex = 0;
            this.btnUrunAlisListe.Text = "Ürün Alış Listesi";
            this.btnUrunAlisListe.UseVisualStyleBackColor = true;
            this.btnUrunAlisListe.Click += new System.EventHandler(this.btnUrunAlisListe_Click);
            // 
            // btnUrunAlis
            // 
            this.btnUrunAlis.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnUrunAlis.ForeColor = System.Drawing.Color.DarkRed;
            this.btnUrunAlis.Location = new System.Drawing.Point(9, 13);
            this.btnUrunAlis.Name = "btnUrunAlis";
            this.btnUrunAlis.Size = new System.Drawing.Size(145, 35);
            this.btnUrunAlis.TabIndex = 0;
            this.btnUrunAlis.Text = "Ürün Alış";
            this.btnUrunAlis.UseVisualStyleBackColor = true;
            this.btnUrunAlis.Click += new System.EventHandler(this.btnUrunAlis_Click);
            // 
            // btnStokDurum
            // 
            this.btnStokDurum.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.btnStokDurum.Location = new System.Drawing.Point(19, 43);
            this.btnStokDurum.Name = "btnStokDurum";
            this.btnStokDurum.Size = new System.Drawing.Size(122, 23);
            this.btnStokDurum.TabIndex = 0;
            this.btnStokDurum.Text = "Stok Durum";
            this.btnStokDurum.UseVisualStyleBackColor = false;
            this.btnStokDurum.Click += new System.EventHandler(this.btnStokDurum_Click);
            // 
            // frmAnasayfa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(896, 487);
            this.Controls.Add(this.gbLeft);
            this.Controls.Add(this.pnlUst);
            this.IsMdiContainer = true;
            this.Name = "frmAnasayfa";
            this.Text = "frmAnasayfa";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmAnasayfa_FormClosing);
            this.Load += new System.EventHandler(this.frmAnasayfa_Load);
            this.pnlUst.ResumeLayout(false);
            this.pnlKur.ResumeLayout(false);
            this.gbLeft.ResumeLayout(false);
            this.pnl1.ResumeLayout(false);
            this.pnl3.ResumeLayout(false);
            this.pnl5.ResumeLayout(false);
            this.pnl2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlUst;
        private System.Windows.Forms.Button btnKapat;
        private System.Windows.Forms.Button btnFatura;
        private System.Windows.Forms.Button btnStok;
        private System.Windows.Forms.Button btnUrun;
        private System.Windows.Forms.Button btnBilgiGiris;
        private System.Windows.Forms.GroupBox gbLeft;
        private System.Windows.Forms.Panel pnl4;
        private System.Windows.Forms.Panel pnl3;
        private System.Windows.Forms.Panel pnl2;
        private System.Windows.Forms.Panel pnl1;
        private System.Windows.Forms.Button btnPersonelGiris;
        private System.Windows.Forms.Button btnCariGiris;
        private System.Windows.Forms.Button btnUrunGiris;
        private System.Windows.Forms.Button btnUrunSatisListe;
        private System.Windows.Forms.Button btnUrunSatis;
        private System.Windows.Forms.Button btnUrunAlisListe;
        private System.Windows.Forms.Button btnUrunAlis;
        private System.Windows.Forms.Panel pnl5;
        private System.Windows.Forms.Button btnKullaniciGiris;
        private System.Windows.Forms.Button btnAdmin;
        private System.Windows.Forms.Panel pnlKur;
        private System.Windows.Forms.Label txtEuro;
        private System.Windows.Forms.Label txtDolar;
        private System.Windows.Forms.Button btnStokDurum;
    }
}