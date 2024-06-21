using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyCaPhe
{
    public partial class BaoCao : Form
    {
        SqlConnection conn;
 
        public BaoCao()
        {
            InitializeComponent();
        }

        private void BaoCao_Load(object sender, EventArgs e)
        {
            dateTuNgay.Format = DateTimePickerFormat.Custom;
            dateTuNgay.CustomFormat = "dd/MM/yyyy";
            dateDenNgay.Format = DateTimePickerFormat.Custom;
            dateDenNgay.CustomFormat = "dd/MM/yyyy";

        }

        private void btnXemBaoCao_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(DB.ConnectString);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "BaoCaoDoanhThu";
            cmd.Parameters.AddWithValue("@TuNgay", dateTuNgay.Value.ToString("yyyy-MM-dd 00:00:00"));
            cmd.Parameters.AddWithValue("@DenNgay", dateDenNgay.Value.ToString("yyyy-MM-dd 00:00:00"));
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataTable table = new DataTable();
            adapter.Fill(table);
            dgvBaoCao.DataSource = table;
            conn.Close();

            txtTongCong.Text = TinhTong();
        }

        private string TinhTong()
        {
            try
            {
                conn = new SqlConnection(DB.ConnectString);
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "TinhTongThanhTien";
                cmd.Parameters.AddWithValue("@TuNgay", dateTuNgay.Value.ToString("yyyy-MM-dd 00:00:00"));
                cmd.Parameters.AddWithValue("@DenNgay", dateDenNgay.Value.ToString("yyyy-MM-dd 00:00:00"));
                var data = cmd.ExecuteScalar().ToString();
                conn.Close();
                return data;
            }
            catch (Exception ex)
            {
                return "0";
            }

        }
    }
}
