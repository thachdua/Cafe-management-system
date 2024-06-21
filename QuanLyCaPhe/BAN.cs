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
    public partial class BAN : Form
    {
        

        public BAN()
        {
            InitializeComponent();
        }
      
        
        SqlConnection connection;
        
        void load_data()
        {
            string sqlSelect = "select MaBan, TenBan, MaKhuVuc, TenKhuVuc = (SELECT TenKhuVuc FROM KHUVUC WHERE KHUVUC.MaKhuVuc = BAN.MaKhuVuc), '' from BAN";
            SqlCommand command = new SqlCommand(sqlSelect, connection);
            SqlDataReader reader = command.ExecuteReader();
            DataTable table = new DataTable();

            table.Load(reader);
            
            dgv_listBan.DataSource = table;
            dgv_listBan.Columns[0].HeaderText = "Mã bàn";
            dgv_listBan.Columns[1].HeaderText = "Tên bàn";
            dgv_listBan.Columns[2].HeaderText = "Mã khu vực";
            dgv_listBan.Columns[3].HeaderText = "Tên khu vực";
            dgv_listBan.Columns[4].HeaderText = "Ghi chú";
            dgv_listBan.Columns[4].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;

        }
       
        private void bt_out_Click(object sender, EventArgs e)
        {
            this.Close(); 
        }

        private void Form1_Load(object sender, EventArgs e)
        {

            connection = new SqlConnection(DB.ConnectString);
            connection.Open();
            load_data();     
        }
        
        private void bt_add_Click(object sender, EventArgs e)
        {

            string sqlADD = "insert into BAN values (@MaBan, @TenBan, @MaKhuVuc)";
            SqlCommand cmd = new SqlCommand(sqlADD, connection);
            cmd.Parameters.AddWithValue("@MaBan", tb_maBan.Text);
            cmd.Parameters.AddWithValue("@TenBan", tb_tenBan.Text);
            cmd.Parameters.AddWithValue("@MaKhuVuc", tb_maKhuVuc.Text);
            cmd.ExecuteNonQuery();
            load_data();
        }

        private void bt_clear_Click(object sender, EventArgs e)
        {
            string sqlClear = "delete from BAN where @MaBan= MaBan";
            SqlCommand cmd = new SqlCommand(sqlClear, connection);
            cmd.Parameters.AddWithValue("@MaBan", tb_maBan.Text);
            cmd.Parameters.AddWithValue("@TenBan", tb_tenBan.Text);
            cmd.Parameters.AddWithValue("@MaKhuVuc", tb_maKhuVuc.Text);
            cmd.ExecuteNonQuery();
            load_data();
        }

        private void bt_update_Click(object sender, EventArgs e)
        {
            string sqlUpdate = "update BAN set TenBan = @TenBan, MaKhuVuc = @MaKhuVuc where MaBan = @MaBan";
            SqlCommand cmd = new SqlCommand(sqlUpdate, connection);

            cmd.Parameters.AddWithValue("@MaBan", tb_maBan.Text);
            cmd.Parameters.AddWithValue("@TenBan", tb_tenBan.Text);
            cmd.Parameters.AddWithValue("@MaKhuVuc", tb_maKhuVuc.Text);
            cmd.ExecuteNonQuery();
            load_data();
        }


        private void bt_find_Click(object sender, EventArgs e)
        {
            string strFind = "select MaBan, TenBan, MaKhuVuc, TenKhuVuc = (SELECT TenKhuVuc FROM KHUVUC WHERE KHUVUC.MaKhuVuc = BAN.MaKhuVuc), '' from BAN where MaBan LIKE @TuKhoa OR TenBan LIKE @TuKhoa OR MaKhuVuc LIKE @TuKhoa";
            SqlCommand cmdFind = new SqlCommand(strFind, connection);
            cmdFind.Parameters.AddWithValue("TuKhoa", "%"+tb_find.Text+ "%");
            SqlDataReader reader = cmdFind.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            dgv_listBan.DataSource = table;
        }
        

        private void dgv_listBan_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            int i = dgv_listBan.CurrentRow.Index;
            tb_maBan.Text = dgv_listBan.Rows[i].Cells[0].Value.ToString();
            tb_tenBan.Text = dgv_listBan.Rows[i].Cells[1].Value.ToString();
            tb_maKhuVuc.Text = dgv_listBan.Rows[i].Cells[2].Value.ToString();

        }
    }
}
