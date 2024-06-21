namespace QuanLyCaPhe
{
    partial class KHUVUC
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(KHUVUC));
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.gb_listBan = new System.Windows.Forms.GroupBox();
            this.dgv_listKV = new System.Windows.Forms.DataGridView();
            this.tb_find_KV = new System.Windows.Forms.TextBox();
            this.bt_out_KV = new System.Windows.Forms.Button();
            this.bt_find_KV = new System.Windows.Forms.Button();
            this.bt_clear_KV = new System.Windows.Forms.Button();
            this.bt_update_KV = new System.Windows.Forms.Button();
            this.bt_add_KV = new System.Windows.Forms.Button();
            this.tb_tenKV = new System.Windows.Forms.TextBox();
            this.tb_idKV = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.gb_listBan.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_listKV)).BeginInit();
            this.SuspendLayout();
            // 
            // backgroundWorker1
            // 
            this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
            // 
            // gb_listBan
            // 
            this.gb_listBan.Controls.Add(this.dgv_listKV);
            this.gb_listBan.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.gb_listBan.Location = new System.Drawing.Point(13, 110);
            this.gb_listBan.Margin = new System.Windows.Forms.Padding(2);
            this.gb_listBan.Name = "gb_listBan";
            this.gb_listBan.Padding = new System.Windows.Forms.Padding(2);
            this.gb_listBan.Size = new System.Drawing.Size(730, 360);
            this.gb_listBan.TabIndex = 2;
            this.gb_listBan.TabStop = false;
            this.gb_listBan.Text = "Danh Sách Khu Vực";
            this.gb_listBan.Enter += new System.EventHandler(this.gb_listBan_Enter);
            // 
            // dgv_listKV
            // 
            this.dgv_listKV.AllowUserToAddRows = false;
            this.dgv_listKV.AllowUserToDeleteRows = false;
            this.dgv_listKV.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_listKV.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_listKV.Location = new System.Drawing.Point(2, 33);
            this.dgv_listKV.Margin = new System.Windows.Forms.Padding(2);
            this.dgv_listKV.Name = "dgv_listKV";
            this.dgv_listKV.ReadOnly = true;
            this.dgv_listKV.RowHeadersWidth = 51;
            this.dgv_listKV.RowTemplate.Height = 24;
            this.dgv_listKV.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgv_listKV.Size = new System.Drawing.Size(719, 313);
            this.dgv_listKV.TabIndex = 0;
            this.dgv_listKV.RowPrePaint += new System.Windows.Forms.DataGridViewRowPrePaintEventHandler(this.dgv_listKV_RowPrePaint);
            // 
            // tb_find_KV
            // 
            this.tb_find_KV.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.tb_find_KV.Location = new System.Drawing.Point(17, 19);
            this.tb_find_KV.Margin = new System.Windows.Forms.Padding(2);
            this.tb_find_KV.Name = "tb_find_KV";
            this.tb_find_KV.Size = new System.Drawing.Size(585, 24);
            this.tb_find_KV.TabIndex = 4;
            this.tb_find_KV.TextChanged += new System.EventHandler(this.tb_find_KV_TextChanged);
            // 
            // bt_out_KV
            // 
            this.bt_out_KV.BackColor = System.Drawing.Color.SlateBlue;
            this.bt_out_KV.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_out_KV.ForeColor = System.Drawing.Color.White;
            this.bt_out_KV.Location = new System.Drawing.Point(595, 488);
            this.bt_out_KV.Margin = new System.Windows.Forms.Padding(2);
            this.bt_out_KV.Name = "bt_out_KV";
            this.bt_out_KV.Size = new System.Drawing.Size(139, 38);
            this.bt_out_KV.TabIndex = 5;
            this.bt_out_KV.Text = "Thoát";
            this.bt_out_KV.UseVisualStyleBackColor = false;
            this.bt_out_KV.Click += new System.EventHandler(this.bt_out_KV_Click);
            // 
            // bt_find_KV
            // 
            this.bt_find_KV.BackColor = System.Drawing.Color.DodgerBlue;
            this.bt_find_KV.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_find_KV.ForeColor = System.Drawing.Color.White;
            this.bt_find_KV.Location = new System.Drawing.Point(606, 11);
            this.bt_find_KV.Margin = new System.Windows.Forms.Padding(2);
            this.bt_find_KV.Name = "bt_find_KV";
            this.bt_find_KV.Size = new System.Drawing.Size(139, 38);
            this.bt_find_KV.TabIndex = 6;
            this.bt_find_KV.Text = "Tìm Kiếm";
            this.bt_find_KV.UseVisualStyleBackColor = false;
            this.bt_find_KV.Click += new System.EventHandler(this.bt_find_KV_Click);
            // 
            // bt_clear_KV
            // 
            this.bt_clear_KV.BackColor = System.Drawing.Color.Crimson;
            this.bt_clear_KV.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_clear_KV.ForeColor = System.Drawing.Color.White;
            this.bt_clear_KV.Location = new System.Drawing.Point(400, 488);
            this.bt_clear_KV.Margin = new System.Windows.Forms.Padding(2);
            this.bt_clear_KV.Name = "bt_clear_KV";
            this.bt_clear_KV.Size = new System.Drawing.Size(139, 38);
            this.bt_clear_KV.TabIndex = 7;
            this.bt_clear_KV.Text = "Xóa";
            this.bt_clear_KV.UseVisualStyleBackColor = false;
            this.bt_clear_KV.Click += new System.EventHandler(this.bt_clear_KV_Click);
            // 
            // bt_update_KV
            // 
            this.bt_update_KV.BackColor = System.Drawing.Color.ForestGreen;
            this.bt_update_KV.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_update_KV.ForeColor = System.Drawing.Color.White;
            this.bt_update_KV.Location = new System.Drawing.Point(205, 488);
            this.bt_update_KV.Margin = new System.Windows.Forms.Padding(2);
            this.bt_update_KV.Name = "bt_update_KV";
            this.bt_update_KV.Size = new System.Drawing.Size(139, 38);
            this.bt_update_KV.TabIndex = 8;
            this.bt_update_KV.Text = "Cập Nhật";
            this.bt_update_KV.UseVisualStyleBackColor = false;
            this.bt_update_KV.Click += new System.EventHandler(this.bt_update_KV_Click);
            // 
            // bt_add_KV
            // 
            this.bt_add_KV.BackColor = System.Drawing.Color.DodgerBlue;
            this.bt_add_KV.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.bt_add_KV.ForeColor = System.Drawing.Color.White;
            this.bt_add_KV.Location = new System.Drawing.Point(10, 488);
            this.bt_add_KV.Margin = new System.Windows.Forms.Padding(2);
            this.bt_add_KV.Name = "bt_add_KV";
            this.bt_add_KV.Size = new System.Drawing.Size(139, 38);
            this.bt_add_KV.TabIndex = 9;
            this.bt_add_KV.Text = "Thêm";
            this.bt_add_KV.UseVisualStyleBackColor = false;
            this.bt_add_KV.Click += new System.EventHandler(this.bt_add_KV_Click);
            // 
            // tb_tenKV
            // 
            this.tb_tenKV.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.tb_tenKV.Location = new System.Drawing.Point(519, 67);
            this.tb_tenKV.Margin = new System.Windows.Forms.Padding(2);
            this.tb_tenKV.Name = "tb_tenKV";
            this.tb_tenKV.Size = new System.Drawing.Size(223, 24);
            this.tb_tenKV.TabIndex = 12;
            // 
            // tb_idKV
            // 
            this.tb_idKV.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.tb_idKV.Location = new System.Drawing.Point(144, 67);
            this.tb_idKV.Margin = new System.Windows.Forms.Padding(2);
            this.tb_idKV.Name = "tb_idKV";
            this.tb_idKV.Size = new System.Drawing.Size(215, 24);
            this.tb_idKV.TabIndex = 13;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.label2.Location = new System.Drawing.Point(390, 71);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(98, 17);
            this.label2.TabIndex = 10;
            this.label2.Text = "Tên khu vực:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Tahoma", 10.2F, System.Drawing.FontStyle.Bold);
            this.label1.Location = new System.Drawing.Point(21, 71);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(92, 17);
            this.label1.TabIndex = 11;
            this.label1.Text = "Mã khu vực:";
            // 
            // KHUVUC
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(754, 537);
            this.Controls.Add(this.tb_tenKV);
            this.Controls.Add(this.tb_idKV);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tb_find_KV);
            this.Controls.Add(this.bt_out_KV);
            this.Controls.Add(this.bt_find_KV);
            this.Controls.Add(this.bt_clear_KV);
            this.Controls.Add(this.bt_update_KV);
            this.Controls.Add(this.bt_add_KV);
            this.Controls.Add(this.gb_listBan);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "KHUVUC";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "QUẢN LÝ KHU VỰC";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.KHUVUC_FormClosing);
            this.Load += new System.EventHandler(this.Form2_Load);
            this.gb_listBan.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_listKV)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.GroupBox gb_listBan;
        private System.Windows.Forms.DataGridView dgv_listKV;
        private System.Windows.Forms.TextBox tb_find_KV;
        private System.Windows.Forms.Button bt_out_KV;
        private System.Windows.Forms.Button bt_find_KV;
        private System.Windows.Forms.Button bt_clear_KV;
        private System.Windows.Forms.Button bt_update_KV;
        private System.Windows.Forms.Button bt_add_KV;
        private System.Windows.Forms.TextBox tb_tenKV;
        private System.Windows.Forms.TextBox tb_idKV;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}