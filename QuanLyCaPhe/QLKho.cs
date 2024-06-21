using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace QuanLyCaPhe
{
    public partial class QLKho : Form
    {
        public QLKho()
        {
            InitializeComponent();
        }
        public void load()
        {
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            try
            {
                conn.Open();
                string sql = "Select *, '' from Kho";
                SqlDataAdapter dt = new SqlDataAdapter(sql, conn);
                DataTable tb = new DataTable();
                dt.Fill(tb);
                dataGridView1.DataSource = tb;
                conn.Close();
                dataGridView1.Columns[0].HeaderText = "Mã kho";
                dataGridView1.Columns[1].HeaderText = "Tên kho";
                dataGridView1.Columns[2].HeaderText = "Ghi chú";
                dataGridView1.Columns[1].Width = 250;
                dataGridView1.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi kết nối" + ex.Message);
            }
        }

        private void QLKho_Load(object sender, EventArgs e)
        {
            load(); 
        }

        private void btnNhapKho_Click(object sender, EventArgs e)
        {
            FormPhieuNhap frm = new FormPhieuNhap();
            frm.Show();
        }

        private void btnXuatKho_Click(object sender, EventArgs e)
        {
            FormPhieuXuat frm = new FormPhieuXuat();
            frm.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có thật sự muốn thoát?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                Close();
        }
    }
}
