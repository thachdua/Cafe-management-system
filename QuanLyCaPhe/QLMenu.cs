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
    public partial class QLMenu : System.Windows.Forms.Form
    {

        public QLMenu()
        {
            InitializeComponent();
        }
        public void load()
        {
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            try
            {
                conn.Open();
                string sql = "Select * from THUCDON";
                SqlDataAdapter dt = new SqlDataAdapter(sql, conn);
                DataTable tb = new DataTable();
                dt.Fill(tb);
                dataGridViewMENU.DataSource = tb;
                dataGridViewMENU.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
                conn.Close();
            }
            catch(Exception ex)
            {
                MessageBox.Show("Lỗi kết nối"+ex.Message);
            }
            }
            private void Form1_Load(object sender, EventArgs e)
        {
        load();
        }

        private void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtMaThucDon.Clear();
            txtTenThucDon.Clear();
            txtGia.Clear();
        }
        public bool kiemtrathucdon (string mathang)
        {
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            conn.Open();
            string sql = "select MaThucDon from THUCDON ='" + mathang + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                conn.Close();
                return true;
            }
            conn.Close();
            return false;
        }
        private void btnThem_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(DB.ConnectString);
            try
            {
                if (txtMaThucDon.Text != "" && txtTenThucDon.Text != "" && txtGia.Text != "")
                {
                        conn.Open();
                        string sql = "insert into THUCDON values('" + txtMaThucDon.Text + "','" + txtTenThucDon + "','" + txtGia.Text + "')";
                        SqlCommand cmd = new SqlCommand(sql, conn);
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
                else
                    MessageBox.Show("Chưa nhập đủ thông tin");
                
                    
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi kết nối" + ex.Message);
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            try
            {
                conn.Open();
                string sql = "Update THUCDON set Gia= '" + txtGia.Text + "' , TenThucDon=N'"+txtTenThucDon.Text+"'  where MaThucDon= '" + txtMaThucDon.Text + "' ";
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

        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult thongbao;
            thongbao = MessageBox.Show("Bạn có muốn xóa", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (thongbao == DialogResult.OK)
            {
                SqlConnection conn = new SqlConnection(DB.ConnectString);

                conn.Open();
                string sql = "delete from THUCDON where MaThucDon='" + txtMaThucDon.Text + "'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                MessageBox.Show("Xóa thành công");
                load();
                conn.Close();
            }  
        }

        private void dataGridViewMENU_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có thật sự muốn thoát?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                Close();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void dataGridViewMENU_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            txtMaThucDon.Text = dataGridViewMENU.CurrentRow.Cells[0].Value.ToString();
            txtTenThucDon.Text = dataGridViewMENU.CurrentRow.Cells[1].Value.ToString();
            txtGia.Text = dataGridViewMENU.CurrentRow.Cells[2].Value.ToString();
        }
    }
}
