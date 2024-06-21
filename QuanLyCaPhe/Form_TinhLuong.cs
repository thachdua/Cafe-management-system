using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyCaPhe
{
    public partial class Form_TinhLuong : Form
    {
        E_Tb_TinhLuong etb;
        public Form_TinhLuong()
        {
            InitializeComponent();
            etb = new E_Tb_TinhLuong();
        }
        public void ShowAllTinhLuong()
        {
            DataTable dt = etb.GetAllTinhLuong();
            dvg_tinhluong.DataSource = dt;
        }
        public bool CheckData()
        {
            if (string.IsNullOrWhiteSpace(tb_manhanvien.Text))
            {
                MessageBox.Show("Bạn Chưa Nhập Mã Ca", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_manhanvien.Focus();
                return false;
            }
            if (string.IsNullOrWhiteSpace(tb_soca.Text))
            {
                MessageBox.Show("Bạn Chưa Nhập Khu Vực", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_soca.Focus();
                return false;
            }
            if (string.IsNullOrWhiteSpace(tb_tongtien.Text))
            {
                MessageBox.Show("Bạn Chưa Nhập Tên Ca", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_tongtien.Focus();
                return false;
            }
            return true;
        }
        private void bt_them_Click(object sender, EventArgs e)
        {
            if (CheckData())
            {

                EC_Tb_TinhLuong tinhluong = new EC_Tb_TinhLuong();
                tinhluong.MANHANVIEN = tb_manhanvien.Text.ToString();
                tinhluong.SOCA = Int32.Parse(tb_soca.Text);
                tinhluong.TONGTIEN = Int32.Parse(tb_tongtien.Text);
                tinhluong.NGAYNHAN = datetime_ngaynhan.Value.ToLongTimeString();
                if (etb.InsertTinhLuong(tinhluong))
                {
                    ShowAllTinhLuong();
                    //dataGridView1.Refresh();
                }
                else
                {
                    MessageBox.Show("Bị Lỗi Không Thêm Được");
                }
            }
        }

        private void bt_sua_Click(object sender, EventArgs e)
        {
            if (CheckData())
            {

                EC_Tb_TinhLuong tinhluong = new EC_Tb_TinhLuong();
                tinhluong.MANHANVIEN = tb_manhanvien.Text.ToString();
                tinhluong.SOCA = Int32.Parse(tb_soca.Text);
                tinhluong.TONGTIEN = Int32.Parse(tb_tongtien.Text);
                tinhluong.NGAYNHAN = datetime_ngaynhan.Value.ToLongTimeString();
                if (etb.UpdateTinhLuong(tinhluong))
                {
                    ShowAllTinhLuong();
                    //dataGridView1.Refresh();
                }
                else
                {
                    MessageBox.Show("Bị Lỗi Không Thêm Được");
                }
            }
        }

        private void bt_xoa_Click(object sender, EventArgs e)
        {
            if (CheckData())
            {

                EC_Tb_TinhLuong tinhluong = new EC_Tb_TinhLuong();
                tinhluong.MANHANVIEN = tb_manhanvien.Text.ToString();
                tinhluong.SOCA = Int32.Parse(tb_soca.Text);
                tinhluong.TONGTIEN = Int32.Parse(tb_tongtien.Text);
                tinhluong.NGAYNHAN = datetime_ngaynhan.Value.ToLongTimeString();
                if (etb.DeleteTinhLuong(tinhluong))
                {
                    ShowAllTinhLuong();
                    //dataGridView1.Refresh();
                }
                else
                {
                    MessageBox.Show("Bị Lỗi Không Thêm Được");
                }
            }
        }

        private void Form_TinhLuong_Load(object sender, EventArgs e)
        {
            ShowAllTinhLuong();
        }
    }
}
