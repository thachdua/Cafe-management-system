namespace QuanLyCaPhe
{
    partial class BAN
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BAN));
            this.gb_Ban = new System.Windows.Forms.GroupBox();
            this.tb_maKhuVuc = new System.Windows.Forms.TextBox();
            this.tb_tenBan = new System.Windows.Forms.TextBox();
            this.tb_maBan = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.gb_listBan = new System.Windows.Forms.GroupBox();
            this.dgv_listBan = new System.Windows.Forms.DataGridView();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorker2 = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorker3 = new System.ComponentModel.BackgroundWorker();
            this.bt_add = new System.Windows.Forms.Button();
            this.bt_update = new System.Windows.Forms.Button();
            this.bt_clear = new System.Windows.Forms.Button();
            this.bt_find = new System.Windows.Forms.Button();
            this.bt_out = new System.Windows.Forms.Button();
            this.tb_find = new System.Windows.Forms.TextBox();
            this.gb_Ban.SuspendLayout();
            this.gb_listBan.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_listBan)).BeginInit();
            this.SuspendLayout();
            // 
            // gb_Ban
            // 
            this.gb_Ban.Controls.Add(this.tb_maKhuVuc);
            this.gb_Ban.Controls.Add(this.tb_tenBan);
            this.gb_Ban.Controls.Add(this.tb_maBan);
            this.gb_Ban.Controls.Add(this.label3);
            this.gb_Ban.Controls.Add(this.label2);
            this.gb_Ban.Controls.Add(this.label1);
            this.gb_Ban.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.gb_Ban.Location = new System.Drawing.Point(11, 99);
            this.gb_Ban.Margin = new System.Windows.Forms.Padding(2);
            this.gb_Ban.Name = "gb_Ban";
            this.gb_Ban.Padding = new System.Windows.Forms.Padding(2);
            this.gb_Ban.Size = new System.Drawing.Size(520, 227);
            this.gb_Ban.TabIndex = 0;
            this.gb_Ban.TabStop = false;
            this.gb_Ban.Text = "Số Bàn";
            // 
            // tb_maKhuVuc
            // 
            this.tb_maKhuVuc.Location = new System.Drawing.Point(212, 146);
            this.tb_maKhuVuc.Margin = new System.Windows.Forms.Padding(2);
            this.tb_maKhuVuc.Name = "tb_maKhuVuc";
            this.tb_maKhuVuc.Size = new System.Drawing.Size(282, 24);
            this.tb_maKhuVuc.TabIndex = 3;
            // 
            // tb_tenBan
            // 
            this.tb_tenBan.Location = new System.Drawing.Point(212, 98);
            this.tb_tenBan.Margin = new System.Windows.Forms.Padding(2);
            this.tb_tenBan.Name = "tb_tenBan";
            this.tb_tenBan.Size = new System.Drawing.Size(282, 24);
            this.tb_tenBan.TabIndex = 2;
            // 
            // tb_maBan
            // 
            this.tb_maBan.Location = new System.Drawing.Point(212, 52);
            this.tb_maBan.Margin = new System.Windows.Forms.Padding(2);
            this.tb_maBan.Name = "tb_maBan";
            this.tb_maBan.Size = new System.Drawing.Size(282, 24);
            this.tb_maBan.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.label3.Location = new System.Drawing.Point(33, 151);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(100, 17);
            this.label3.TabIndex = 1;
            this.label3.Text = "Mã Khu Vực: ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.label2.Location = new System.Drawing.Point(33, 101);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(74, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "Tên Bàn: ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.label1.Location = new System.Drawing.Point(33, 54);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(64, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "Mã Bàn:";
            // 
            // gb_listBan
            // 
            this.gb_listBan.Controls.Add(this.dgv_listBan);
            this.gb_listBan.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.gb_listBan.Location = new System.Drawing.Point(606, 54);
            this.gb_listBan.Margin = new System.Windows.Forms.Padding(2);
            this.gb_listBan.Name = "gb_listBan";
            this.gb_listBan.Padding = new System.Windows.Forms.Padding(2);
            this.gb_listBan.Size = new System.Drawing.Size(671, 400);
            this.gb_listBan.TabIndex = 0;
            this.gb_listBan.TabStop = false;
            this.gb_listBan.Text = "Danh Sách Bàn";
            // 
            // dgv_listBan
            // 
            this.dgv_listBan.AllowUserToAddRows = false;
            this.dgv_listBan.AllowUserToDeleteRows = false;
            this.dgv_listBan.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_listBan.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_listBan.Location = new System.Drawing.Point(4, 32);
            this.dgv_listBan.Margin = new System.Windows.Forms.Padding(2);
            this.dgv_listBan.Name = "dgv_listBan";
            this.dgv_listBan.ReadOnly = true;
            this.dgv_listBan.RowHeadersWidth = 51;
            this.dgv_listBan.RowTemplate.Height = 24;
            this.dgv_listBan.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgv_listBan.Size = new System.Drawing.Size(663, 365);
            this.dgv_listBan.TabIndex = 0;
            this.dgv_listBan.RowPrePaint += new System.Windows.Forms.DataGridViewRowPrePaintEventHandler(this.dgv_listBan_RowPrePaint);
            // 
            // bt_add
            // 
            this.bt_add.BackColor = System.Drawing.Color.DodgerBlue;
            this.bt_add.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_add.ForeColor = System.Drawing.Color.White;
            this.bt_add.Location = new System.Drawing.Point(11, 28);
            this.bt_add.Name = "bt_add";
            this.bt_add.Size = new System.Drawing.Size(139, 38);
            this.bt_add.TabIndex = 4;
            this.bt_add.Text = "Thêm";
            this.bt_add.UseVisualStyleBackColor = false;
            this.bt_add.Click += new System.EventHandler(this.bt_add_Click);
            // 
            // bt_update
            // 
            this.bt_update.BackColor = System.Drawing.Color.ForestGreen;
            this.bt_update.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_update.ForeColor = System.Drawing.Color.White;
            this.bt_update.Location = new System.Drawing.Point(201, 28);
            this.bt_update.Name = "bt_update";
            this.bt_update.Size = new System.Drawing.Size(139, 38);
            this.bt_update.TabIndex = 5;
            this.bt_update.Text = "Cập Nhật";
            this.bt_update.UseVisualStyleBackColor = false;
            this.bt_update.Click += new System.EventHandler(this.bt_update_Click);
            // 
            // bt_clear
            // 
            this.bt_clear.BackColor = System.Drawing.Color.Crimson;
            this.bt_clear.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_clear.ForeColor = System.Drawing.Color.White;
            this.bt_clear.Location = new System.Drawing.Point(391, 28);
            this.bt_clear.Name = "bt_clear";
            this.bt_clear.Size = new System.Drawing.Size(139, 38);
            this.bt_clear.TabIndex = 6;
            this.bt_clear.Text = "Xóa";
            this.bt_clear.UseVisualStyleBackColor = false;
            this.bt_clear.Click += new System.EventHandler(this.bt_clear_Click);
            // 
            // bt_find
            // 
            this.bt_find.BackColor = System.Drawing.Color.ForestGreen;
            this.bt_find.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_find.ForeColor = System.Drawing.Color.White;
            this.bt_find.Location = new System.Drawing.Point(1071, 13);
            this.bt_find.Name = "bt_find";
            this.bt_find.Size = new System.Drawing.Size(202, 38);
            this.bt_find.TabIndex = 9;
            this.bt_find.Text = "Tìm Kiếm";
            this.bt_find.UseVisualStyleBackColor = false;
            this.bt_find.Click += new System.EventHandler(this.bt_find_Click);
            // 
            // bt_out
            // 
            this.bt_out.BackColor = System.Drawing.Color.Crimson;
            this.bt_out.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_out.ForeColor = System.Drawing.Color.White;
            this.bt_out.Location = new System.Drawing.Point(12, 416);
            this.bt_out.Name = "bt_out";
            this.bt_out.Size = new System.Drawing.Size(139, 38);
            this.bt_out.TabIndex = 7;
            this.bt_out.Text = "Thoát";
            this.bt_out.UseVisualStyleBackColor = false;
            this.bt_out.Click += new System.EventHandler(this.bt_out_Click);
            // 
            // tb_find
            // 
            this.tb_find.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_find.Location = new System.Drawing.Point(610, 19);
            this.tb_find.Margin = new System.Windows.Forms.Padding(2);
            this.tb_find.Name = "tb_find";
            this.tb_find.Size = new System.Drawing.Size(456, 23);
            this.tb_find.TabIndex = 8;
            this.tb_find.Text = "Nhập từ khóa cần tìm";
            // 
            // BAN
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1302, 474);
            this.Controls.Add(this.tb_find);
            this.Controls.Add(this.bt_out);
            this.Controls.Add(this.bt_find);
            this.Controls.Add(this.bt_clear);
            this.Controls.Add(this.bt_update);
            this.Controls.Add(this.bt_add);
            this.Controls.Add(this.gb_listBan);
            this.Controls.Add(this.gb_Ban);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "BAN";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "QUẢN LÝ BÀN";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.gb_Ban.ResumeLayout(false);
            this.gb_Ban.PerformLayout();
            this.gb_listBan.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_listBan)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gb_Ban;
        private System.Windows.Forms.TextBox tb_maKhuVuc;
        private System.Windows.Forms.TextBox tb_tenBan;
        private System.Windows.Forms.TextBox tb_maBan;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox gb_listBan;
        private System.Windows.Forms.DataGridView dgv_listBan;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.ComponentModel.BackgroundWorker backgroundWorker2;
        private System.ComponentModel.BackgroundWorker backgroundWorker3;
        private System.Windows.Forms.Button bt_add;
        private System.Windows.Forms.Button bt_update;
        private System.Windows.Forms.Button bt_clear;
        private System.Windows.Forms.Button bt_find;
        private System.Windows.Forms.Button bt_out;
        private System.Windows.Forms.TextBox tb_find;
    }
}

