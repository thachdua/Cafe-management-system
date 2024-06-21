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
using System.Configuration;

namespace QuanLyCaPhe
{
    public partial class DangNhap : Form
    {
        /* MaQuyen:
         * 0: Không đăng nhập
         * 1: Khách hàng
         * 2: Nhân viên
         * 3: Quản lý
         * 4: Admin (toàn quyền)
        */

        public static string UserName = "";
        public DangNhap()
        {
            InitializeComponent();
        }

        public object ConfigurationManager { get; private set; }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            XuLyDangNhap();
        }

        private void XuLyDangNhap()
        {

            try
            {
                SqlConnection conn = new SqlConnection(DB.ConnectString);

                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PhanQuyen";
                cmd.Parameters.AddWithValue("@UserName", txtDangNhap.Text);
                cmd.Parameters.AddWithValue("@Password", txtMatKhau.Text);
                cmd.Parameters.AddWithValue("@NhanVien", chkNhanVien.Checked);
                cmd.Connection = conn;
                UserName = txtDangNhap.Text;
                SqlDataReader kq = cmd.ExecuteReader();
                if (kq != null)
                {
                    kq.Read();
                    int code = Convert.ToInt32(kq["MaQuyen"].ToString());
                    // Chưa đăng nhập
                    if (code == 0)
                    {
                        MessageBox.Show("Tài khoản hoặc mật khẩu không đúng!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtDangNhap.Focus();
                        User.MaQuyen = code;
                    }
                    // khách hàng, nhân viên, quản lý, admin
                    else
                    {
                        //MessageBox.Show("Đăng nhập thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        User.MaQuyen = code;
                        User.TenDangNhap = kq["TenDangNhap"].ToString();
                        User.MaNV = kq["MaNV"].ToString();
                        User.MaKH = kq["MaKH"].ToString();
                        User.TenNV = kq["TenNV"].ToString();
                        User.TenKH = kq["TenKH"].ToString();
                        if (chkNhanVien.Checked)
                        {
                            QLBH frmQLBH = new QLBH();
                            frmQLBH.Show();

                        }
                        else
                        {
                            QLBHKH frmQLBHKH = new QLBHKH();
                            frmQLBHKH.Show();

                        }
                        this.Hide();
                    }

                }
                else
                {
                    MessageBox.Show("Tài khoản hoặc mật khẩu không đúng!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    txtDangNhap.Focus();
                    User.MaQuyen = 0;

                }
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Tài khoản hoặc mật khẩu không đúng!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

        }

        private void DangNhap_Load(object sender, EventArgs e)
        {

        }

        private void txtMatKhau_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtMatKhau_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(e.KeyChar == 13)
            {
                XuLyDangNhap();

            }
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
