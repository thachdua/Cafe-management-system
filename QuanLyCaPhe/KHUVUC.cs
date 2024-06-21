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
    public partial class KHUVUC : Form
    {
        public KHUVUC()
        {
            InitializeComponent();
        }
        SqlConnection connection;
        
        void load_data()
        {
            string sqlSelect = "select *, '' from KHUVUC";
            SqlCommand command = new SqlCommand(sqlSelect, connection);
            SqlDataReader reader = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            dgv_listKV.DataSource = table;
            dgv_listKV.Columns[0].HeaderText = "Mã khu vực";
            dgv_listKV.Columns[1].HeaderText = "Tên khu vực";
            dgv_listKV.Columns[2].HeaderText = "Ghi chú";
            dgv_listKV.Columns[0].Width = 200;
            dgv_listKV.Columns[1].Width = 200;
            dgv_listKV.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;


        }
        private void Form2_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection(DB.ConnectString);
            connection.Open();
            load_data();
            
        }

        private void bt_add_KV_Click(object sender, EventArgs e)
        {
            string sqlADD = "insert into KHUVUC values (@MaKhuVuc, @TenKhuVuc)";
            SqlCommand cmd = new SqlCommand(sqlADD, connection);
            cmd.Parameters.AddWithValue("@MaKhuVuc", tb_idKV.Text);
            cmd.Parameters.AddWithValue("@TenKhuVuc", tb_tenKV.Text);

            cmd.ExecuteNonQuery();
            load_data();
        }

        private void bt_out_KV_Click(object sender, EventArgs e)
        {
            this.Close(); 
        }

        private void dgv_listKV_RowPrePaint(object sender, DataGridViewRowPrePaintEventArgs e)
        {
            int i = 0;
            i = dgv_listKV.CurrentRow.Index;
            tb_idKV.Text = dgv_listKV.Rows[i].Cells[0].Value.ToString();
            tb_tenKV.Text = dgv_listKV.Rows[i].Cells[1].Value.ToString();
            
        }

        private void bt_clear_KV_Click(object sender, EventArgs e)
        {
            string sqlClear = "delete from KHUVUC where @MaKhuVuc = MaKhuVuc";
            SqlCommand cmd = new SqlCommand(sqlClear, connection);
            cmd.Parameters.AddWithValue("@MaKhuVuc", tb_idKV.Text);
            cmd.Parameters.AddWithValue("@TenKhuVuc", tb_tenKV.Text);
            cmd.ExecuteNonQuery();
            load_data();
        }

        private void bt_update_KV_Click(object sender, EventArgs e)
        {
            string sqlupdate = "update KHUVUC set TenKhuVuc = @TenKhuVuc where MaKhuVuc = @MaKhuVuc";
            SqlCommand cmd = new SqlCommand(sqlupdate, connection);
            cmd.Parameters.AddWithValue("@MaKhuVuc", tb_idKV.Text);
            cmd.Parameters.AddWithValue("@TenKhuVuc", tb_tenKV.Text);
            cmd.ExecuteNonQuery();
            load_data();
        }

        private void bt_find_KV_Click(object sender, EventArgs e)
        {
            string strFind = "select *, '' from KHUVUC where MaKhuVuc = @MaKhuVuc";
            SqlCommand command = new SqlCommand(strFind, connection);

            command.Parameters.AddWithValue("MaKhuVuc", tb_find_KV.Text);
            command.Parameters.AddWithValue("TenKhuVuc", tb_tenKV.Text);

            command.ExecuteNonQuery();

            SqlDataReader reader = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(reader);
            dgv_listKV.DataSource = table;
        }
            

        

        private void KHUVUC_FormClosing(object sender, FormClosingEventArgs e)
        {
            connection.Close();
        }

        private void gb_Ban_Enter(object sender, EventArgs e)
        {

        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {

        }

        private void tb_tenKV_TextChanged(object sender, EventArgs e)
        {

        }

        private void tb_idKV_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void gb_listBan_Enter(object sender, EventArgs e)
        {

        }

        private void tb_find_KV_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
