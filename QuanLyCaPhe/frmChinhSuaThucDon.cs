using System;
using System.Windows.Forms;

namespace QuanLyCaPhe
{
    public partial class frmChinhSuaThucDon : Form
    {
        public bool luu = false;
        public frmChinhSuaThucDon()
        {
            InitializeComponent();
        }

        public int SoLuong()
        {
            try
            {
                return Int32.Parse(txtSoLuong.Text);
            }catch (Exception ex)
            {
                return 1;
            }
        }
        public string GetSoLuong()
        {
            return txtSoLuong.Text;
        }
        public string GhiChu()
        {
            return txtGhiChu.Text;
        }

        public void SetSoLuong(object soluong)
        {
            txtSoLuong.Text = soluong.ToString();
        }
        public void SetTenThucDon(object tenthucdon)
        {
            lbTenThucDon.Text = tenthucdon.ToString();
        }
        public void SetGhiChu(object ghichu)
        {
            txtGhiChu.Text = ghichu.ToString();
        }
        private void btnLuu_Click(object sender, EventArgs e)
        {
            luu = true;
            Close();
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
           this.Close();
        }

        private void txtSoLuong_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) &&
       (e.KeyChar != '.'))
            {
                e.Handled = true;
            }

            // only allow one decimal point
            if ((e.KeyChar == '.') && ((sender as TextBox).Text.IndexOf('.') > -1))
            {
                e.Handled = true;
            }
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
