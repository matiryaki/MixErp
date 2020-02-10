namespace MixErp.Bilgi
{
    partial class frmPersonelGiris
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
            this.split2 = new System.Windows.Forms.SplitContainer();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtDogumTarih = new System.Windows.Forms.DateTimePicker();
            this.txtIsSonTarih = new System.Windows.Forms.DateTimePicker();
            this.txtIsBasTarih = new System.Windows.Forms.DateTimePicker();
            this.txtDepartman = new System.Windows.Forms.ComboBox();
            this.txtAdres = new System.Windows.Forms.TextBox();
            this.txtEmail = new System.Windows.Forms.TextBox();
            this.txtTc = new System.Windows.Forms.TextBox();
            this.txtTel = new System.Windows.Forms.TextBox();
            this.txtAd = new System.Windows.Forms.TextBox();
            this.txtPersonelNo = new System.Windows.Forms.TextBox();
            this.liste = new System.Windows.Forms.DataGridView();
            this.pnlUst = new System.Windows.Forms.Panel();
            this.btnSil = new System.Windows.Forms.Button();
            this.btnKapat = new System.Windows.Forms.Button();
            this.btnKaydet = new System.Windows.Forms.Button();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PersonelNo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Adi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tel = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Departman = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.split1)).BeginInit();
            this.split1.Panel1.SuspendLayout();
            this.split1.Panel2.SuspendLayout();
            this.split1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.split2)).BeginInit();
            this.split2.Panel1.SuspendLayout();
            this.split2.Panel2.SuspendLayout();
            this.split2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.liste)).BeginInit();
            this.pnlUst.SuspendLayout();
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
            this.split1.Panel1.Controls.Add(this.split2);
            // 
            // split1.Panel2
            // 
            this.split1.Panel2.BackColor = System.Drawing.Color.LightCoral;
            this.split1.Panel2.Controls.Add(this.btnKapat);
            this.split1.Panel2.Controls.Add(this.btnKaydet);
            this.split1.Size = new System.Drawing.Size(800, 450);
            this.split1.SplitterDistance = 647;
            this.split1.TabIndex = 0;
            // 
            // split2
            // 
            this.split2.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.split2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.split2.FixedPanel = System.Windows.Forms.FixedPanel.Panel2;
            this.split2.Location = new System.Drawing.Point(0, 0);
            this.split2.Name = "split2";
            this.split2.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // split2.Panel1
            // 
            this.split2.Panel1.Controls.Add(this.label10);
            this.split2.Panel1.Controls.Add(this.label9);
            this.split2.Panel1.Controls.Add(this.label8);
            this.split2.Panel1.Controls.Add(this.label7);
            this.split2.Panel1.Controls.Add(this.label6);
            this.split2.Panel1.Controls.Add(this.label5);
            this.split2.Panel1.Controls.Add(this.label4);
            this.split2.Panel1.Controls.Add(this.label3);
            this.split2.Panel1.Controls.Add(this.label2);
            this.split2.Panel1.Controls.Add(this.label1);
            this.split2.Panel1.Controls.Add(this.txtDogumTarih);
            this.split2.Panel1.Controls.Add(this.txtIsSonTarih);
            this.split2.Panel1.Controls.Add(this.txtIsBasTarih);
            this.split2.Panel1.Controls.Add(this.txtDepartman);
            this.split2.Panel1.Controls.Add(this.txtAdres);
            this.split2.Panel1.Controls.Add(this.txtEmail);
            this.split2.Panel1.Controls.Add(this.txtTc);
            this.split2.Panel1.Controls.Add(this.txtTel);
            this.split2.Panel1.Controls.Add(this.txtAd);
            this.split2.Panel1.Controls.Add(this.txtPersonelNo);
            // 
            // split2.Panel2
            // 
            this.split2.Panel2.BackColor = System.Drawing.SystemColors.Highlight;
            this.split2.Panel2.Controls.Add(this.liste);
            this.split2.Panel2.Controls.Add(this.pnlUst);
            this.split2.Size = new System.Drawing.Size(647, 450);
            this.split2.SplitterDistance = 266;
            this.split2.TabIndex = 0;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(22, 160);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(37, 13);
            this.label10.TabIndex = 3;
            this.label10.Text = "Adres:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(22, 131);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(35, 13);
            this.label9.TabIndex = 3;
            this.label9.Text = "Email:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(22, 105);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(40, 13);
            this.label8.TabIndex = 3;
            this.label8.Text = "Tc No:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(22, 79);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(49, 13);
            this.label7.TabIndex = 3;
            this.label7.Text = "Telefon: ";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(22, 53);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(25, 13);
            this.label6.TabIndex = 3;
            this.label6.Text = "Adı:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(22, 27);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(68, 13);
            this.label5.TabIndex = 3;
            this.label5.Text = "Personel No:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(238, 53);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(73, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Doğum Tarihi:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(238, 107);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(46, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "İş Sonu:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(238, 80);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(67, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "İş Başlangıç:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(238, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Departman:";
            // 
            // txtDogumTarih
            // 
            this.txtDogumTarih.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.txtDogumTarih.Location = new System.Drawing.Point(318, 46);
            this.txtDogumTarih.Name = "txtDogumTarih";
            this.txtDogumTarih.Size = new System.Drawing.Size(200, 20);
            this.txtDogumTarih.TabIndex = 2;
            // 
            // txtIsSonTarih
            // 
            this.txtIsSonTarih.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.txtIsSonTarih.Location = new System.Drawing.Point(318, 100);
            this.txtIsSonTarih.Name = "txtIsSonTarih";
            this.txtIsSonTarih.Size = new System.Drawing.Size(200, 20);
            this.txtIsSonTarih.TabIndex = 2;
            // 
            // txtIsBasTarih
            // 
            this.txtIsBasTarih.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.txtIsBasTarih.Location = new System.Drawing.Point(318, 73);
            this.txtIsBasTarih.Name = "txtIsBasTarih";
            this.txtIsBasTarih.Size = new System.Drawing.Size(200, 20);
            this.txtIsBasTarih.TabIndex = 2;
            // 
            // txtDepartman
            // 
            this.txtDepartman.FormattingEnabled = true;
            this.txtDepartman.Location = new System.Drawing.Point(318, 19);
            this.txtDepartman.Name = "txtDepartman";
            this.txtDepartman.Size = new System.Drawing.Size(200, 21);
            this.txtDepartman.TabIndex = 1;
            // 
            // txtAdres
            // 
            this.txtAdres.Location = new System.Drawing.Point(103, 160);
            this.txtAdres.Multiline = true;
            this.txtAdres.Name = "txtAdres";
            this.txtAdres.Size = new System.Drawing.Size(415, 52);
            this.txtAdres.TabIndex = 0;
            // 
            // txtEmail
            // 
            this.txtEmail.Location = new System.Drawing.Point(103, 124);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(115, 20);
            this.txtEmail.TabIndex = 0;
            // 
            // txtTc
            // 
            this.txtTc.Location = new System.Drawing.Point(103, 98);
            this.txtTc.Name = "txtTc";
            this.txtTc.Size = new System.Drawing.Size(115, 20);
            this.txtTc.TabIndex = 0;
            // 
            // txtTel
            // 
            this.txtTel.Location = new System.Drawing.Point(103, 72);
            this.txtTel.Name = "txtTel";
            this.txtTel.Size = new System.Drawing.Size(115, 20);
            this.txtTel.TabIndex = 0;
            // 
            // txtAd
            // 
            this.txtAd.Location = new System.Drawing.Point(103, 46);
            this.txtAd.Name = "txtAd";
            this.txtAd.Size = new System.Drawing.Size(115, 20);
            this.txtAd.TabIndex = 0;
            // 
            // txtPersonelNo
            // 
            this.txtPersonelNo.Location = new System.Drawing.Point(103, 20);
            this.txtPersonelNo.Name = "txtPersonelNo";
            this.txtPersonelNo.Size = new System.Drawing.Size(115, 20);
            this.txtPersonelNo.TabIndex = 0;
            // 
            // liste
            // 
            this.liste.BackgroundColor = System.Drawing.Color.Coral;
            this.liste.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.liste.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id,
            this.PersonelNo,
            this.Adi,
            this.Tel,
            this.Departman});
            this.liste.Dock = System.Windows.Forms.DockStyle.Fill;
            this.liste.Location = new System.Drawing.Point(0, 44);
            this.liste.Name = "liste";
            this.liste.Size = new System.Drawing.Size(643, 132);
            this.liste.TabIndex = 1;
            this.liste.DoubleClick += new System.EventHandler(this.liste_DoubleClick);
            // 
            // pnlUst
            // 
            this.pnlUst.BackColor = System.Drawing.Color.Salmon;
            this.pnlUst.Controls.Add(this.btnSil);
            this.pnlUst.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlUst.Location = new System.Drawing.Point(0, 0);
            this.pnlUst.Name = "pnlUst";
            this.pnlUst.Size = new System.Drawing.Size(643, 44);
            this.pnlUst.TabIndex = 0;
            // 
            // btnSil
            // 
            this.btnSil.BackColor = System.Drawing.Color.Orange;
            this.btnSil.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnSil.Location = new System.Drawing.Point(3, 4);
            this.btnSil.Name = "btnSil";
            this.btnSil.Size = new System.Drawing.Size(75, 35);
            this.btnSil.TabIndex = 0;
            this.btnSil.Text = "Sil";
            this.btnSil.UseVisualStyleBackColor = false;
            this.btnSil.Click += new System.EventHandler(this.btnSil_Click);
            // 
            // btnKapat
            // 
            this.btnKapat.BackColor = System.Drawing.Color.DarkRed;
            this.btnKapat.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.btnKapat.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnKapat.ForeColor = System.Drawing.Color.White;
            this.btnKapat.Location = new System.Drawing.Point(0, 406);
            this.btnKapat.Name = "btnKapat";
            this.btnKapat.Size = new System.Drawing.Size(145, 40);
            this.btnKapat.TabIndex = 0;
            this.btnKapat.Text = "Kapat";
            this.btnKapat.UseVisualStyleBackColor = false;
            this.btnKapat.Click += new System.EventHandler(this.btnKapat_Click);
            // 
            // btnKaydet
            // 
            this.btnKaydet.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnKaydet.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnKaydet.ForeColor = System.Drawing.Color.DarkRed;
            this.btnKaydet.Location = new System.Drawing.Point(0, 0);
            this.btnKaydet.Name = "btnKaydet";
            this.btnKaydet.Size = new System.Drawing.Size(145, 40);
            this.btnKaydet.TabIndex = 0;
            this.btnKaydet.Text = "Kaydet";
            this.btnKaydet.UseVisualStyleBackColor = true;
            this.btnKaydet.Click += new System.EventHandler(this.btnKaydet_Click);
            // 
            // Id
            // 
            this.Id.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Id.HeaderText = "Id";
            this.Id.Name = "Id";
            this.Id.Width = 41;
            // 
            // PersonelNo
            // 
            this.PersonelNo.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.PersonelNo.HeaderText = "Personel No";
            this.PersonelNo.Name = "PersonelNo";
            this.PersonelNo.Width = 90;
            // 
            // Adi
            // 
            this.Adi.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Adi.HeaderText = "Personel Adı";
            this.Adi.Name = "Adi";
            // 
            // Tel
            // 
            this.Tel.HeaderText = "Telefon";
            this.Tel.Name = "Tel";
            // 
            // Departman
            // 
            this.Departman.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Departman.HeaderText = "Departman";
            this.Departman.Name = "Departman";
            this.Departman.Width = 84;
            // 
            // frmPersonelGiris
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.split1);
            this.Name = "frmPersonelGiris";
            this.Text = "frmPersonelGiris";
            this.Load += new System.EventHandler(this.frmPersonelGiris_Load);
            this.split1.Panel1.ResumeLayout(false);
            this.split1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.split1)).EndInit();
            this.split1.ResumeLayout(false);
            this.split2.Panel1.ResumeLayout(false);
            this.split2.Panel1.PerformLayout();
            this.split2.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.split2)).EndInit();
            this.split2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.liste)).EndInit();
            this.pnlUst.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.SplitContainer split1;
        private System.Windows.Forms.SplitContainer split2;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker txtDogumTarih;
        private System.Windows.Forms.DateTimePicker txtIsSonTarih;
        private System.Windows.Forms.DateTimePicker txtIsBasTarih;
        private System.Windows.Forms.ComboBox txtDepartman;
        private System.Windows.Forms.TextBox txtAdres;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.TextBox txtTc;
        private System.Windows.Forms.TextBox txtTel;
        private System.Windows.Forms.TextBox txtAd;
        private System.Windows.Forms.TextBox txtPersonelNo;
        private System.Windows.Forms.DataGridView liste;
        private System.Windows.Forms.Panel pnlUst;
        private System.Windows.Forms.Button btnSil;
        private System.Windows.Forms.Button btnKapat;
        private System.Windows.Forms.Button btnKaydet;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn PersonelNo;
        private System.Windows.Forms.DataGridViewTextBoxColumn Adi;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tel;
        private System.Windows.Forms.DataGridViewTextBoxColumn Departman;
    }
}