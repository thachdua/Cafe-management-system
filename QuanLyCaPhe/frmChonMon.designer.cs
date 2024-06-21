namespace QuanLyCaPhe
{
    partial class frmChonThucDon
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmChonThucDon));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnHuy = new System.Windows.Forms.Button();
            this.btnChon = new System.Windows.Forms.Button();
            this.gridThucDon = new System.Windows.Forms.DataGridView();
            this.MaThucDon = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenThucDon = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Gia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtTim = new System.Windows.Forms.TextBox();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridThucDon)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnHuy);
            this.groupBox1.Controls.Add(this.btnChon);
            this.groupBox1.Controls.Add(this.gridThucDon);
            this.groupBox1.Controls.Add(this.txtTim);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox1.Size = new System.Drawing.Size(584, 384);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Chọn thực đơn";
            // 
            // btnHuy
            // 
            this.btnHuy.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnHuy.BackColor = System.Drawing.Color.Crimson;
            this.btnHuy.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnHuy.ForeColor = System.Drawing.Color.White;
            this.btnHuy.Location = new System.Drawing.Point(382, 339);
            this.btnHuy.Margin = new System.Windows.Forms.Padding(2);
            this.btnHuy.Name = "btnHuy";
            this.btnHuy.Size = new System.Drawing.Size(194, 35);
            this.btnHuy.TabIndex = 3;
            this.btnHuy.Text = "Hủy chọn";
            this.btnHuy.UseVisualStyleBackColor = false;
            this.btnHuy.Click += new System.EventHandler(this.button4_Click);
            // 
            // btnChon
            // 
            this.btnChon.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnChon.BackColor = System.Drawing.Color.DodgerBlue;
            this.btnChon.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnChon.ForeColor = System.Drawing.Color.White;
            this.btnChon.Location = new System.Drawing.Point(7, 339);
            this.btnChon.Margin = new System.Windows.Forms.Padding(2);
            this.btnChon.Name = "btnChon";
            this.btnChon.Size = new System.Drawing.Size(194, 35);
            this.btnChon.TabIndex = 2;
            this.btnChon.Text = "Chọn và đóng";
            this.btnChon.UseVisualStyleBackColor = false;
            this.btnChon.Click += new System.EventHandler(this.btnChon_Click);
            // 
            // gridThucDon
            // 
            this.gridThucDon.AllowUserToAddRows = false;
            this.gridThucDon.AllowUserToDeleteRows = false;
            this.gridThucDon.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gridThucDon.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.gridThucDon.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridThucDon.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaThucDon,
            this.TenThucDon,
            this.Gia});
            this.gridThucDon.Location = new System.Drawing.Point(7, 40);
            this.gridThucDon.Margin = new System.Windows.Forms.Padding(2);
            this.gridThucDon.Name = "gridThucDon";
            this.gridThucDon.ReadOnly = true;
            this.gridThucDon.RowHeadersWidth = 51;
            this.gridThucDon.RowTemplate.Height = 24;
            this.gridThucDon.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridThucDon.Size = new System.Drawing.Size(565, 288);
            this.gridThucDon.TabIndex = 1;
            // 
            // MaThucDon
            // 
            this.MaThucDon.HeaderText = "Mã thực đơn";
            this.MaThucDon.MinimumWidth = 6;
            this.MaThucDon.Name = "MaThucDon";
            this.MaThucDon.ReadOnly = true;
            this.MaThucDon.Width = 150;
            // 
            // TenThucDon
            // 
            this.TenThucDon.HeaderText = "Tên thực đơn";
            this.TenThucDon.MinimumWidth = 6;
            this.TenThucDon.Name = "TenThucDon";
            this.TenThucDon.ReadOnly = true;
            this.TenThucDon.Width = 250;
            // 
            // Gia
            // 
            this.Gia.HeaderText = "Giá ";
            this.Gia.MinimumWidth = 6;
            this.Gia.Name = "Gia";
            this.Gia.ReadOnly = true;
            this.Gia.Width = 150;
            // 
            // txtTim
            // 
            this.txtTim.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtTim.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTim.Location = new System.Drawing.Point(387, 8);
            this.txtTim.Margin = new System.Windows.Forms.Padding(2);
            this.txtTim.Name = "txtTim";
            this.txtTim.Size = new System.Drawing.Size(191, 24);
            this.txtTim.TabIndex = 0;
            this.txtTim.Text = "Bạn muốn tìm gì?";
            this.txtTim.Click += new System.EventHandler(this.txtTim_Click);
            this.txtTim.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtTim_KeyPress);
            // 
            // frmChonThucDon
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(584, 384);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "frmChonThucDon";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Chọn thực đơn";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridThucDon)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView gridThucDon;
        private System.Windows.Forms.TextBox txtTim;
        private System.Windows.Forms.Button btnHuy;
        private System.Windows.Forms.Button btnChon;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaThucDon;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenThucDon;
        private System.Windows.Forms.DataGridViewTextBoxColumn Gia;
    }
}