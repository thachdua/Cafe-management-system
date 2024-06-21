namespace QuanLyCaPhe
{
    partial class BaoCao
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
            this.btnXemBaoCao = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.dateTuNgay = new System.Windows.Forms.DateTimePicker();
            this.dgvBaoCao = new System.Windows.Forms.DataGridView();
            this.NgayVao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Ban = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.KhuVuc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.KhachHang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NhanVien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ThucDon = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Gia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoLuong = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ThanhTien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dateDenNgay = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTongCong = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cbKyBaoCao = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvBaoCao)).BeginInit();
            this.SuspendLayout();
            // 
            // btnXemBaoCao
            // 
            this.btnXemBaoCao.BackColor = System.Drawing.Color.DodgerBlue;
            this.btnXemBaoCao.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXemBaoCao.ForeColor = System.Drawing.Color.White;
            this.btnXemBaoCao.Location = new System.Drawing.Point(773, 56);
            this.btnXemBaoCao.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnXemBaoCao.Name = "btnXemBaoCao";
            this.btnXemBaoCao.Size = new System.Drawing.Size(111, 28);
            this.btnXemBaoCao.TabIndex = 0;
            this.btnXemBaoCao.Text = "Xem báo cáo";
            this.btnXemBaoCao.UseVisualStyleBackColor = false;
            this.btnXemBaoCao.Click += new System.EventHandler(this.btnXemBaoCao_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(42, 21);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Báo cáo";
            // 
            // dateTuNgay
            // 
            this.dateTuNgay.Location = new System.Drawing.Point(326, 62);
            this.dateTuNgay.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dateTuNgay.Name = "dateTuNgay";
            this.dateTuNgay.Size = new System.Drawing.Size(151, 20);
            this.dateTuNgay.TabIndex = 2;
            // 
            // dgvBaoCao
            // 
            this.dgvBaoCao.AllowUserToAddRows = false;
            this.dgvBaoCao.AllowUserToDeleteRows = false;
            this.dgvBaoCao.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgvBaoCao.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvBaoCao.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.NgayVao,
            this.Ban,
            this.KhuVuc,
            this.KhachHang,
            this.NhanVien,
            this.ThucDon,
            this.Gia,
            this.SoLuong,
            this.ThanhTien});
            this.dgvBaoCao.Location = new System.Drawing.Point(44, 121);
            this.dgvBaoCao.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dgvBaoCao.Name = "dgvBaoCao";
            this.dgvBaoCao.ReadOnly = true;
            this.dgvBaoCao.RowHeadersWidth = 51;
            this.dgvBaoCao.RowTemplate.Height = 24;
            this.dgvBaoCao.Size = new System.Drawing.Size(878, 423);
            this.dgvBaoCao.TabIndex = 3;
            // 
            // NgayVao
            // 
            this.NgayVao.DataPropertyName = "NgayVao";
            this.NgayVao.HeaderText = "Ngày vào";
            this.NgayVao.MinimumWidth = 6;
            this.NgayVao.Name = "NgayVao";
            this.NgayVao.ReadOnly = true;
            this.NgayVao.Width = 125;
            // 
            // Ban
            // 
            this.Ban.DataPropertyName = "TenBan";
            this.Ban.HeaderText = "Bàn";
            this.Ban.MinimumWidth = 6;
            this.Ban.Name = "Ban";
            this.Ban.ReadOnly = true;
            this.Ban.Width = 125;
            // 
            // KhuVuc
            // 
            this.KhuVuc.DataPropertyName = "TenKhuVuc";
            this.KhuVuc.HeaderText = "Khu vực";
            this.KhuVuc.MinimumWidth = 6;
            this.KhuVuc.Name = "KhuVuc";
            this.KhuVuc.ReadOnly = true;
            this.KhuVuc.Width = 125;
            // 
            // KhachHang
            // 
            this.KhachHang.DataPropertyName = "TenKH";
            this.KhachHang.HeaderText = "Khách hàng";
            this.KhachHang.MinimumWidth = 6;
            this.KhachHang.Name = "KhachHang";
            this.KhachHang.ReadOnly = true;
            this.KhachHang.Width = 125;
            // 
            // NhanVien
            // 
            this.NhanVien.DataPropertyName = "TenNV";
            this.NhanVien.HeaderText = "Nhân viên";
            this.NhanVien.MinimumWidth = 6;
            this.NhanVien.Name = "NhanVien";
            this.NhanVien.ReadOnly = true;
            this.NhanVien.Width = 125;
            // 
            // ThucDon
            // 
            this.ThucDon.DataPropertyName = "TenThucDon";
            this.ThucDon.HeaderText = "Thực đơn";
            this.ThucDon.MinimumWidth = 6;
            this.ThucDon.Name = "ThucDon";
            this.ThucDon.ReadOnly = true;
            this.ThucDon.Width = 125;
            // 
            // Gia
            // 
            this.Gia.DataPropertyName = "Gia";
            this.Gia.HeaderText = "Giá";
            this.Gia.MinimumWidth = 6;
            this.Gia.Name = "Gia";
            this.Gia.ReadOnly = true;
            this.Gia.Width = 125;
            // 
            // SoLuong
            // 
            this.SoLuong.DataPropertyName = "SoLuong";
            this.SoLuong.HeaderText = "Số lượng";
            this.SoLuong.MinimumWidth = 6;
            this.SoLuong.Name = "SoLuong";
            this.SoLuong.ReadOnly = true;
            this.SoLuong.Width = 125;
            // 
            // ThanhTien
            // 
            this.ThanhTien.DataPropertyName = "ThanhTien";
            this.ThanhTien.HeaderText = "Thành tiền";
            this.ThanhTien.MinimumWidth = 6;
            this.ThanhTien.Name = "ThanhTien";
            this.ThanhTien.ReadOnly = true;
            this.ThanhTien.Width = 125;
            // 
            // dateDenNgay
            // 
            this.dateDenNgay.Location = new System.Drawing.Point(599, 62);
            this.dateDenNgay.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dateDenNgay.Name = "dateDenNgay";
            this.dateDenNgay.Size = new System.Drawing.Size(151, 20);
            this.dateDenNgay.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(41, 66);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(82, 18);
            this.label2.TabIndex = 6;
            this.label2.Text = "Kỳ báo cáo";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(242, 66);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(64, 18);
            this.label3.TabIndex = 7;
            this.label3.Text = "Từ ngày";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(507, 62);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(71, 18);
            this.label4.TabIndex = 8;
            this.label4.Text = "Đến ngày";
            // 
            // txtTongCong
            // 
            this.txtTongCong.Location = new System.Drawing.Point(164, 579);
            this.txtTongCong.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtTongCong.Name = "txtTongCong";
            this.txtTongCong.Size = new System.Drawing.Size(76, 20);
            this.txtTongCong.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(41, 579);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(78, 18);
            this.label5.TabIndex = 10;
            this.label5.Text = "Tổng cộng";
            // 
            // cbKyBaoCao
            // 
            this.cbKyBaoCao.FormattingEnabled = true;
            this.cbKyBaoCao.Items.AddRange(new object[] {
            "Hôm nay",
            "Tuần này",
            "Tháng này",
            "Tùy chỉnh"});
            this.cbKyBaoCao.Location = new System.Drawing.Point(119, 62);
            this.cbKyBaoCao.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.cbKyBaoCao.Name = "cbKyBaoCao";
            this.cbKyBaoCao.Size = new System.Drawing.Size(111, 21);
            this.cbKyBaoCao.TabIndex = 11;
            // 
            // BaoCao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(940, 620);
            this.Controls.Add(this.cbKyBaoCao);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtTongCong);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dateDenNgay);
            this.Controls.Add(this.dgvBaoCao);
            this.Controls.Add(this.dateTuNgay);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnXemBaoCao);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "BaoCao";
            this.Text = "BaoCao";
            this.Load += new System.EventHandler(this.BaoCao_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvBaoCao)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;

        }

        #endregion

        private System.Windows.Forms.Button btnXemBaoCao;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dateTuNgay;
        private System.Windows.Forms.DataGridView dgvBaoCao;
        private System.Windows.Forms.DateTimePicker dateDenNgay;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTongCong;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cbKyBaoCao;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayVao;
        private System.Windows.Forms.DataGridViewTextBoxColumn Ban;
        private System.Windows.Forms.DataGridViewTextBoxColumn KhuVuc;
        private System.Windows.Forms.DataGridViewTextBoxColumn KhachHang;
        private System.Windows.Forms.DataGridViewTextBoxColumn NhanVien;
        private System.Windows.Forms.DataGridViewTextBoxColumn ThucDon;
        private System.Windows.Forms.DataGridViewTextBoxColumn Gia;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoLuong;
        private System.Windows.Forms.DataGridViewTextBoxColumn ThanhTien;
    }
}