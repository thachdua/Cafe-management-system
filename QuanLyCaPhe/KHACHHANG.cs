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
    public partial class KHACHHANG : Form
    {
        public KHACHHANG()
        {
            InitializeComponent();
        }
        SqlConnection connection;
       
        
        

        void load_data_KH()
        {
            string sqlSelect = "select * from KHACHHANG";
            SqlCommand command = new SqlCommand(sqlSelect, connection) ;
            SqlDataReader reader = command.ExecuteReader() ;    
            DataTable table = new DataTable() ;
            table.Load(reader) ;
            dgv_list_KH.DataSource = table ;
        }
        private void bt_out_KH_Click(object sender, EventArgs e)
        {
            this.Close(); 
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection(DB.ConnectString);
            connection.Open();
            load_data_KH();
        }

        private void bt_add_KH_Click(object sender, EventArgs e)
        {
            string sqlADD = "insert into KHACHHANG values (@MaKH, @TenKH, @DiaChi, @SDT, @Email, @MaLKH, @MaQuyen, @TenDangNhap, @MatKhau)";
            SqlCommand cmdADD = new SqlCommand(sqlADD, connection) ;
            cmdADD.Parameters.AddWithValue("@MaKH", tb_maKH.Text);
            cmdADD.Parameters.AddWithValue("@TenKH", tb_tenKH.Text);
            cmdADD.Parameters.AddWithValue("@DiaChi", tb_dc_KH.Text);
            cmdADD.Parameters.AddWithValue("@SDT", tb_sdt_KH.Text);
            cmdADD.Parameters.AddWithValue("@Email", tb_email_KH.Text);
            cmdADD.Parameters.AddWithValue("@MaLKH", tb_loai_KH.Text);
            cmdADD.Parameters.AddWithValue("@MaQuyen", tb_MQKH.Text);
            cmdADD.Parameters.AddWithValue("@TenDangNhap", tb_loginKH.Text);
            cmdADD.Parameters.AddWithValue("@MatKhau", tb_passKH.Text);
            cmdADD.ExecuteNonQuery();
            load_data_KH(); 
        }

        
        

        private void bt_clear_KH_Click(object sender, EventArgs e)
        {
            string sqlClear = "delete from KHACHHANG where @MaKH = MaKH";
            SqlCommand cmd = new SqlCommand(sqlClear, connection);
            cmd.Parameters.AddWithValue("@MaKH", tb_maKH.Text);
            cmd.Parameters.AddWithValue("@TenKH", tb_tenKH.Text);
            cmd.Parameters.AddWithValue("@DiaChi", tb_dc_KH.Text);
            cmd.Parameters.AddWithValue("@SDT", tb_sdt_KH.Text);
            cmd.Parameters.AddWithValue("@Email", tb_email_KH.Text);
            cmd.Parameters.AddWithValue("@MaLKH", tb_loai_KH.Text);
            cmd.Parameters.AddWithValue("@MaQuyen", tb_MQKH.Text);
            cmd.Parameters.AddWithValue("@TenDangNhap", tb_loginKH.Text);
            cmd.Parameters.AddWithValue("@MatKhau", tb_passKH.Text);
            cmd.ExecuteNonQuery();
            load_data_KH();
        }

        private void bt_update_KH_Click(object sender, EventArgs e)
        {
            string sqlUpdate = "update KHACHHANG set TenKH = @TenKH, DiaChi=@DiaChi, SDT=@SDT,Email= @Email, MaLKH=@MaLKH, MaQuyen=@MaQuyen,TenDangNhap= @TenDangNhap,MatKhau =  @MatKhau where MaKH = @MaKH";
            SqlCommand cmd = new SqlCommand(sqlUpdate, connection);
            cmd.Parameters.AddWithValue("@MaKH", tb_maKH.Text);
            cmd.Parameters.AddWithValue("@TenKH", tb_tenKH.Text);
            cmd.Parameters.AddWithValue("@DiaChi", tb_dc_KH.Text);
            cmd.Parameters.AddWithValue("@SDT", tb_sdt_KH.Text);
            cmd.Parameters.AddWithValue("@Email", tb_email_KH.Text);
            cmd.Parameters.AddWithValue("@MaLKH", tb_loai_KH.Text);
            cmd.Parameters.AddWithValue("@MaQuyen", tb_MQKH.Text);
            cmd.Parameters.AddWithValue("@TenDangNhap", tb_loginKH.Text);
            cmd.Parameters.AddWithValue("@MatKhau", tb_passKH.Text);

            cmd.ExecuteNonQuery();
            load_data_KH();
        }

        private void bt_find_KH_Click(object sender, EventArgs e)
        {
            string strFind = "select * from KHACHHANG where MaKH = @MaKH";
            SqlCommand cmd = new SqlCommand(strFind, connection);
            
            cmd.Parameters.AddWithValue("MaKH", tb_find_KH.Text);
            cmd.Parameters.AddWithValue("TenKH", tb_tenKH.Text);
            cmd.Parameters.AddWithValue("DiaChi", tb_dc_KH.Text);
            cmd.Parameters.AddWithValue("SDT", tb_sdt_KH.Text);
            cmd.Parameters.AddWithValue("Email", tb_email_KH.Text);
            cmd.Parameters.AddWithValue("MaLKH", tb_loai_KH.Text);
            cmd.Parameters.AddWithValue("@MaQuyen", tb_MQKH.Text);
            cmd.Parameters.AddWithValue("@TenDangNhap", tb_loginKH.Text);
            cmd.Parameters.AddWithValue("@MatKhau", tb_passKH.Text);

            cmd.ExecuteNonQuery();
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            dgv_list_KH.DataSource = table;


        }
        

        private void KHACHHANG_FormClosing(object sender, FormClosingEventArgs e)
        {
            connection.Close();
        }

        private void dgv_list_KH_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            int i = 0;
            i = dgv_list_KH.CurrentRow.Index;
            tb_maKH.Text = dgv_list_KH.Rows[i].Cells[0].Value.ToString();
            tb_tenKH.Text = dgv_list_KH.Rows[i].Cells[1].Value.ToString();
            tb_dc_KH.Text = dgv_list_KH.Rows[i].Cells[2].Value.ToString();
            tb_sdt_KH.Text = dgv_list_KH.Rows[i].Cells[3].Value.ToString();
            tb_email_KH.Text = dgv_list_KH.Rows[i].Cells[4].Value.ToString();
            tb_loai_KH.Text = dgv_list_KH.Rows[i].Cells[5].Value.ToString();
            tb_MQKH.Text = dgv_list_KH.Rows[i].Cells[6].Value.ToString();
            tb_loginKH.Text = dgv_list_KH.Rows[i].Cells[7].Value.ToString();
            tb_passKH.Text = dgv_list_KH.Rows[i].Cells[8].Value.ToString();
        }
    }
}
