namespace QuanLyCaPhe
{
    partial class Form_TinhLuong
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
            this.label5 = new System.Windows.Forms.Label();
            this.dvg_tinhluong = new System.Windows.Forms.DataGridView();
            this.MaNhanVien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoCa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayNhan = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TongTien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GhiChu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bt_xoa = new System.Windows.Forms.Button();
            this.bt_them = new System.Windows.Forms.Button();
            this.tb_manhanvien = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.bt_sua = new System.Windows.Forms.Button();
            this.datetime_ngaynhan = new System.Windows.Forms.DateTimePicker();
            this.tb_tongtien = new System.Windows.Forms.TextBox();
            this.tb_soca = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dvg_tinhluong)).BeginInit();
            this.SuspendLayout();
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Consolas", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label5.Location = new System.Drawing.Point(370, 79);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(45, 19);
            this.label5.TabIndex = 32;
            this.label5.Text = "Ngày";
            // 
            // dvg_tinhluong
            // 
            this.dvg_tinhluong.AllowUserToAddRows = false;
            this.dvg_tinhluong.AllowUserToDeleteRows = false;
            this.dvg_tinhluong.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dvg_tinhluong.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dvg_tinhluong.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaNhanVien,
            this.SoCa,
            this.NgayNhan,
            this.TongTien,
            this.GhiChu});
            this.dvg_tinhluong.Location = new System.Drawing.Point(61, 245);
            this.dvg_tinhluong.Name = "dvg_tinhluong";
            this.dvg_tinhluong.ReadOnly = true;
            this.dvg_tinhluong.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dvg_tinhluong.Size = new System.Drawing.Size(687, 176);
            this.dvg_tinhluong.TabIndex = 29;
            // 
            // MaNhanVien
            // 
            this.MaNhanVien.DataPropertyName = "MaNhanVien";
            this.MaNhanVien.HeaderText = "Mã Nhân Viên";
            this.MaNhanVien.Name = "MaNhanVien";
            this.MaNhanVien.ReadOnly = true;
            // 
            // SoCa
            // 
            this.SoCa.DataPropertyName = "SoCa";
            this.SoCa.HeaderText = "Số Ca";
            this.SoCa.Name = "SoCa";
            this.SoCa.ReadOnly = true;
            // 
            // NgayNhan
            // 
            this.NgayNhan.DataPropertyName = "NgayNhan";
            this.NgayNhan.HeaderText = "Ngày";
            this.NgayNhan.Name = "NgayNhan";
            this.NgayNhan.ReadOnly = true;
            // 
            // TongTien
            // 
            this.TongTien.DataPropertyName = "TongTien";
            this.TongTien.HeaderText = "Tổng Tiền";
            this.TongTien.Name = "TongTien";
            this.TongTien.ReadOnly = true;
            // 
            // GhiChu
            // 
            this.GhiChu.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.GhiChu.HeaderText = "Ghi chú";
            this.GhiChu.Name = "GhiChu";
            this.GhiChu.ReadOnly = true;
            this.GhiChu.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // bt_xoa
            // 
            this.bt_xoa.BackColor = System.Drawing.Color.Crimson;
            this.bt_xoa.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_xoa.ForeColor = System.Drawing.Color.White;
            this.bt_xoa.Location = new System.Drawing.Point(331, 201);
            this.bt_xoa.Name = "bt_xoa";
            this.bt_xoa.Size = new System.Drawing.Size(99, 38);
            this.bt_xoa.TabIndex = 27;
            this.bt_xoa.Text = "Xóa";
            this.bt_xoa.UseVisualStyleBackColor = false;
            this.bt_xoa.Click += new System.EventHandler(this.bt_xoa_Click);
            // 
            // bt_them
            // 
            this.bt_them.BackColor = System.Drawing.Color.ForestGreen;
            this.bt_them.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_them.ForeColor = System.Drawing.Color.White;
            this.bt_them.Location = new System.Drawing.Point(57, 202);
            this.bt_them.Name = "bt_them";
            this.bt_them.Size = new System.Drawing.Size(99, 38);
            this.bt_them.TabIndex = 26;
            this.bt_them.Text = "Thêm";
            this.bt_them.UseVisualStyleBackColor = false;
            this.bt_them.Click += new System.EventHandler(this.bt_them_Click);
            // 
            // tb_manhanvien
            // 
            this.tb_manhanvien.Location = new System.Drawing.Point(198, 80);
            this.tb_manhanvien.Name = "tb_manhanvien";
            this.tb_manhanvien.Size = new System.Drawing.Size(97, 20);
            this.tb_manhanvien.TabIndex = 23;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Consolas", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label4.Location = new System.Drawing.Point(57, 143);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(90, 19);
            this.label4.TabIndex = 22;
            this.label4.Text = "Tổng Tiền";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Consolas", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label3.Location = new System.Drawing.Point(57, 111);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(54, 19);
            this.label3.TabIndex = 21;
            this.label3.Text = "Số Ca";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Consolas", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label2.Location = new System.Drawing.Point(57, 80);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(117, 19);
            this.label2.TabIndex = 20;
            this.label2.Text = "Mã Nhân Viên";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Consolas", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.ForeColor = System.Drawing.SystemColors.ActiveCaption;
            this.label1.Location = new System.Drawing.Point(283, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(239, 32);
            this.label1.TabIndex = 19;
            this.label1.Text = "Tính Tiền Lương";
            // 
            // bt_sua
            // 
            this.bt_sua.BackColor = System.Drawing.Color.Orange;
            this.bt_sua.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_sua.ForeColor = System.Drawing.Color.White;
            this.bt_sua.Location = new System.Drawing.Point(194, 202);
            this.bt_sua.Name = "bt_sua";
            this.bt_sua.Size = new System.Drawing.Size(99, 38);
            this.bt_sua.TabIndex = 28;
            this.bt_sua.Text = "Sửa";
            this.bt_sua.UseVisualStyleBackColor = false;
            this.bt_sua.Click += new System.EventHandler(this.bt_sua_Click);
            // 
            // datetime_ngaynhan
            // 
            this.datetime_ngaynhan.CustomFormat = "dd/MM/yyyy HH:mm:ss";
            this.datetime_ngaynhan.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.datetime_ngaynhan.Location = new System.Drawing.Point(437, 79);
            this.datetime_ngaynhan.Name = "datetime_ngaynhan";
            this.datetime_ngaynhan.Size = new System.Drawing.Size(200, 20);
            this.datetime_ngaynhan.TabIndex = 33;
            // 
            // tb_tongtien
            // 
            this.tb_tongtien.Location = new System.Drawing.Point(198, 142);
            this.tb_tongtien.Name = "tb_tongtien";
            this.tb_tongtien.Size = new System.Drawing.Size(97, 20);
            this.tb_tongtien.TabIndex = 34;
            // 
            // tb_soca
            // 
            this.tb_soca.Location = new System.Drawing.Point(198, 112);
            this.tb_soca.Name = "tb_soca";
            this.tb_soca.Size = new System.Drawing.Size(97, 20);
            this.tb_soca.TabIndex = 35;
            // 
            // Form_TinhLuong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.tb_soca);
            this.Controls.Add(this.tb_tongtien);
            this.Controls.Add(this.datetime_ngaynhan);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.dvg_tinhluong);
            this.Controls.Add(this.bt_xoa);
            this.Controls.Add(this.bt_them);
            this.Controls.Add(this.tb_manhanvien);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.bt_sua);
            this.Name = "Form_TinhLuong";
            this.Text = "Form_TinhLuong";
            this.Load += new System.EventHandler(this.Form_TinhLuong_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dvg_tinhluong)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DataGridView dvg_tinhluong;
        private System.Windows.Forms.Button bt_xoa;
        private System.Windows.Forms.Button bt_them;
        private System.Windows.Forms.TextBox tb_manhanvien;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button bt_sua;
        private System.Windows.Forms.DateTimePicker datetime_ngaynhan;
        private System.Windows.Forms.TextBox tb_tongtien;
        private System.Windows.Forms.TextBox tb_soca;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaNhanVien;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoCa;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayNhan;
        private System.Windows.Forms.DataGridViewTextBoxColumn TongTien;
        private System.Windows.Forms.DataGridViewTextBoxColumn GhiChu;
    }
}