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
    public partial class FormPhieuNhap : Form
    {
        public FormPhieuNhap()
        {
            InitializeComponent();
        }
        public void load()
        {
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            try
            {
                conn.Open();
                string sql = "Select * from PHIEUNHAP";
                SqlDataAdapter dt = new SqlDataAdapter(sql, conn);
                DataTable tb = new DataTable();
                dt.Fill(tb);
                dataGridView1.DataSource = tb;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi kết nối" + ex.Message);
            }
        }
        private void FormPhieuNhap_Load(object sender, EventArgs e)
        {
            load();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có thật sự muốn thoát?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                Close();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            conn.Open();
            string sqlThem = "insert  into PHIEUNHAP values (@MaPN ,@NgayNhap ,@MaNV ,@MaNCC ,@TongTien)";
            SqlCommand cmd = new SqlCommand(sqlThem,conn);
            cmd.Parameters.AddWithValue("MaPN",txtMaPN.Text);
            cmd.Parameters.AddWithValue("NgayNhap", txtNgayNhap.Text);
            cmd.Parameters.AddWithValue("MaNV", txtMaNV.Text);
            cmd.Parameters.AddWithValue("MaNCC", txtMaNCC.Text);
            cmd.Parameters.AddWithValue("TongTien", txtTongTien.Text);
            int kp = (int)cmd.ExecuteNonQuery();
            if (kp > 0)
            {
                MessageBox.Show("Thêm thành công");
                load();
            }
            else
                MessageBox.Show("Thêm thất bại");
            conn.Close();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult thongbao;
            thongbao = MessageBox.Show("Bạn có muốn xóa", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (thongbao == DialogResult.OK)
            {
                SqlConnection conn = new SqlConnection(DB.ConnectString);

                conn.Open();
                string sql = "delete from PHIEUNHAP where MaPN='" + txtMaPN.Text + "'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                MessageBox.Show("Xóa thành công");
                load();
                conn.Close();
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            try
            {
                conn.Open();
                string sql = "Update PHIEUNHAP set NgayNhap= '" + txtNgayNhap.Text + "' , MaNV=N'" + txtMaNV.Text + "', MaNCC=N'" + txtMaNCC.Text + "', TongTien='" + txtTongTien.Text + "' where MaPN= '" + txtMaPN.Text + "' ";
                SqlCommand cmd = new SqlCommand(sql, conn);
                int kp = (int)cmd.ExecuteNonQuery();
                if (kp > 0)
                {
                    MessageBox.Show("Sửa thành công");
                    load();
                }
                else
                    MessageBox.Show("Sửa thất bại");

                conn.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi kết nối" + ex.Message);
            }
        }

        private void dataGridView1_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            txtMaPN.Text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
            txtNgayNhap.Text = dataGridView1.CurrentRow.Cells[1].Value.ToString();
            txtMaNV.Text = dataGridView1.CurrentRow.Cells[2].Value.ToString();
            txtMaNCC.Text = dataGridView1.CurrentRow.Cells[3].Value.ToString();
            txtTongTien.Text = dataGridView1.CurrentRow.Cells[4].Value.ToString();
        }
    }
}
