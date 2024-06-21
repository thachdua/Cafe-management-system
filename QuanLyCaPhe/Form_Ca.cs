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
    public partial class Form_Ca : Form
    {
        E_Tb_Ca etb;
        E_Tb_Ca ketnoi = new E_Tb_Ca();
        public Form_Ca()
        {
            InitializeComponent();
            etb = new E_Tb_Ca();
        }
        
        public void ShowAllCa()
        {
            DataTable dt = etb.GetAllCa();
            dataGridView1.DataSource = dt;
        }
        /*
        public void ShowCbb() 
        {
            string sql = "SELECT SoTien FROM CA";
            DataTable dt = ketnoi.loadDataTable(sql);
            cbb_sotien.DataSource = dt;
            //cbb_sotien.ValueMember = "MaCa";
            cbb_sotien.DisplayMember = "SoTien";
        }
        */
        private void Form_Ca_Load(object sender, EventArgs e)
        {
            ShowAllCa();
            //ShowCbb();
        }
        public bool CheckData()
        {
            if(string.IsNullOrWhiteSpace(tb_maca.Text)) {
                MessageBox.Show("Bạn Chưa Nhập Mã Ca", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_maca.Focus();
                return false;
            }
            if (string.IsNullOrWhiteSpace(tb_makhuvuc.Text))
            {
                MessageBox.Show("Bạn Chưa Nhập Khu Vực", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_makhuvuc.Focus();
                return false;
            }
            if (string.IsNullOrWhiteSpace(tb_tenca.Text))
            {
                MessageBox.Show("Bạn Chưa Nhập Tên Ca", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_tenca.Focus();
                return false;
            }
            if (string.IsNullOrWhiteSpace(tb_manhanvien.Text))
            {
                MessageBox.Show("Bạn Chưa Nhập Mã Nhân Viên", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                tb_manhanvien.Focus();
                return false;
            }
            return true;
        }

        private void bt_them_Click(object sender, EventArgs e)
        {
            if(CheckData())
            {
                
                EC_Tb_Ca ca = new EC_Tb_Ca();
                ca.MANHANVIEN = tb_manhanvien.Text;
                ca.TENCA = tb_tenca.Text;
                ca.MACA = tb_maca.Text;
                ca.MAKHUVUC = tb_makhuvuc.Text;
                ca.NGAY = datetime_ngay.Value.ToString();
                if(etb.InsertCa(ca))
                {
                    ShowAllCa();
                    //dataGridView1.Refresh();
                }
                else
                {
                    MessageBox.Show("Bị Lỗi Không Thêm Được");
                }
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void bt_sua_Click(object sender, EventArgs e)
        {
            if (CheckData())
            {

                EC_Tb_Ca ca = new EC_Tb_Ca();
                ca.MANHANVIEN = tb_manhanvien.Text;
                ca.TENCA = tb_tenca.Text;
                ca.MACA = tb_maca.Text;
                ca.MAKHUVUC = tb_makhuvuc.Text;
                if (etb.UpdateCa(ca))
                {
                    ShowAllCa();
                    //dataGridView1.Refresh();
                }
                else
                {
                    MessageBox.Show("Bị Lỗi Khong Sua Được");
                }
            }
        }

        private void bt_xoa_Click(object sender, EventArgs e)
        {
            if (CheckData())
            {

                EC_Tb_Ca ca = new EC_Tb_Ca();
                ca.MANHANVIEN = tb_manhanvien.Text;
                ca.TENCA = tb_tenca.Text;
                ca.MACA = tb_maca.Text;
                ca.MAKHUVUC = tb_makhuvuc.Text;
                if (etb.DeleteCa(ca))
                {
                    ShowAllCa();
                    //dataGridView1.Refresh();
                }
                else
                {
                    MessageBox.Show("Bị Lỗi Khong Xoa Được");
                }
            }
        }

        private void dataGridView1_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            int index = e.RowIndex;
            if (index >= 0)
            {
                tb_manhanvien.Text = dataGridView1.Rows[index].Cells["MaNhanVien"].Value.ToString();
                tb_maca.Text = dataGridView1.Rows[index].Cells["MaCa"].Value.ToString();
                tb_makhuvuc.Text = dataGridView1.Rows[index].Cells["MaKhuVuc"].Value.ToString();
                tb_tenca.Text = dataGridView1.Rows[index].Cells["TenCa"].Value.ToString();
            }
        }
    }
}
