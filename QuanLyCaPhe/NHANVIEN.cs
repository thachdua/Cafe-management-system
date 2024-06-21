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
    public partial class NHANVIEN : Form
    {
        public NHANVIEN()
        {
            InitializeComponent();
        }
        SqlConnection connection;
        
        void load_data_NV()
        {
            string sqlSelect = "select * from NHANVIEN";
            SqlCommand command = new SqlCommand(sqlSelect, connection);
            SqlDataReader reader = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            dgv_listNV.DataSource = table;
        }
        private void Form3_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection(DB.ConnectString);
            connection.Open();
            load_data_NV();
        }


        private void bt_out_NV_Click(object sender, EventArgs e)
        {
            this.Close(); 
        }

        private void bt_add_NV_Click(object sender, EventArgs e)
        {
            string sqlADD = "insert into NHANVIEN values (@MaNV, @TenNV, @DiaChi, @SDT, @Email, @TenDangNhap, @MatKhau, @MaQuyen)";
            SqlCommand cmdADD = new SqlCommand(sqlADD, connection);
            cmdADD.Parameters.AddWithValue("@MaNV", tb_matNV.Text);
            cmdADD.Parameters.AddWithValue("@TenNV", tb_tenNV.Text);
            cmdADD.Parameters.AddWithValue("@DiaChi", tb_dcNV.Text);
            cmdADD.Parameters.AddWithValue("@SDT", tb_sdtNV.Text);
            cmdADD.Parameters.AddWithValue("@Email", tb_mail_NV.Text);
            cmdADD.Parameters.AddWithValue("@TenDangNhap", tb_loginNV.Text);
            cmdADD.Parameters.AddWithValue("@MatKhau", tb_passNV.Text);
            cmdADD.Parameters.AddWithValue("@MaQuyen", tb_MQNV.Text);
            cmdADD.ExecuteNonQuery();
            load_data_NV();
        }
        
        private void bt_clear_NV_Click(object sender, EventArgs e)
        {
            string sqlClear = "delete from NHANVIEN where @MaNV = MaNV";
            SqlCommand cmd = new SqlCommand(sqlClear, connection);
            cmd.Parameters.AddWithValue("@MaNV", tb_matNV.Text);
            cmd.Parameters.AddWithValue("@TenNV", tb_tenNV.Text);
            cmd.Parameters.AddWithValue("@DiaChi", tb_dcNV.Text);
            cmd.Parameters.AddWithValue("@SDT", tb_sdtNV.Text);
            cmd.Parameters.AddWithValue("@Email", tb_mail_NV.Text);
            cmd.Parameters.AddWithValue("@TenDangNhap", tb_loginNV.Text);
            cmd.Parameters.AddWithValue("@MatKhau", tb_passNV.Text);
            cmd.Parameters.AddWithValue("@MaQuyen", tb_MQNV.Text);
            cmd.ExecuteNonQuery();
            load_data_NV();
        }

        private void bt_update_NV_Click(object sender, EventArgs e)
        {

            string sqlUpdate = "update NHANVIEN set TenNV = @TenNV, DiaChi=@DiaChi, SDT=@SDT,Email= @Email, TenDangNhap=@TenDangNhap, MatKhau=@MatKhau, MaQuyen= @MaQuyen where MaNV = @MaNV";
            SqlCommand cmd = new SqlCommand(sqlUpdate, connection);
            cmd.Parameters.AddWithValue("@MaNV", tb_matNV.Text);
            cmd.Parameters.AddWithValue("@TenNV", tb_tenNV.Text);
            cmd.Parameters.AddWithValue("@DiaChi", tb_dcNV.Text);
            cmd.Parameters.AddWithValue("@SDT", tb_sdtNV.Text);
            cmd.Parameters.AddWithValue("@Email", tb_mail_NV.Text);
            cmd.Parameters.AddWithValue("@TenDangNhap", tb_loginNV.Text);
            cmd.Parameters.AddWithValue("@MatKhau", tb_passNV.Text);
            cmd.Parameters.AddWithValue("@MaQuyen", tb_MQNV.Text);
            cmd.ExecuteNonQuery();
            load_data_NV();
        }

        private void bt_find_NV_Click(object sender, EventArgs e)
        {
            string strFind = "select * from NHANVIEN where MaNV = @MaNV";
            SqlCommand cmd = new SqlCommand(strFind, connection);
            cmd.Parameters.AddWithValue("MaNV", tb_find_NV.Text);
            cmd.Parameters.AddWithValue("TenNV", tb_tenNV.Text);
            cmd.Parameters.AddWithValue("DiaChi", tb_dcNV.Text);
            cmd.Parameters.AddWithValue("SDT", tb_tenNV.Text);
            cmd.Parameters.AddWithValue("Email", tb_mail_NV.Text);
            cmd.Parameters.AddWithValue("@TenDangNhap", tb_loginNV.Text);
            cmd.Parameters.AddWithValue("@MatKhau", tb_passNV.Text);
            cmd.Parameters.AddWithValue("@MaQuyen", tb_MQNV.Text);
           
            cmd.ExecuteNonQuery();
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            dgv_listNV.DataSource = table;


        }

        private void NHANVIEN_FormClosing(object sender, FormClosingEventArgs e)
        {
            connection.Close();
        }
        
        private void dgv_listNV_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            int i = 0;
            i = dgv_listNV.CurrentRow.Index;
            tb_matNV.Text = dgv_listNV.Rows[i].Cells[0].Value.ToString();
            tb_tenNV.Text = dgv_listNV.Rows[i].Cells[1].Value.ToString();
            tb_dcNV.Text = dgv_listNV.Rows[i].Cells[2].Value.ToString();
            tb_sdtNV.Text = dgv_listNV.Rows[i].Cells[3].Value.ToString();
            tb_mail_NV.Text = dgv_listNV.Rows[i].Cells[4].Value.ToString();
            tb_loginNV.Text = dgv_listNV.Rows[i].Cells[5].Value.ToString();
            tb_passNV.Text = dgv_listNV.Rows[i].Cells[6].Value.ToString();
            tb_MQNV.Text = dgv_listNV.Rows[i].Cells[7].Value.ToString();

        }
    }
}
