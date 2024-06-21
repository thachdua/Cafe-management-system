using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCaPhe
{
    public class E_Tb_TinhLuong
    {
        SqlConnection dc;
        SqlDataAdapter da;
        SqlCommand cm;
        public E_Tb_TinhLuong()
        {
            dc = new SqlConnection();
        }
        public DataTable GetAllTinhLuong()
        {
            // B1: Tạo Câu Lệnh Lấy Toàn Bộ Ca
            string sql = "Select * From LUONG";
            // B2: Tạo một kết nối đến Sql , sử dung đối tượng 'dc' gọi phương thức getConnect()
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            // B3: Khởi tạo đối tượng của lớp SqlDataAdaper(chuỗi truy vấn, kết nối)
            da = new SqlDataAdapter(sql, conn);
            // B4: Mở kết nối
            conn.Open();
            // B5: Đổ dữ liệu vào SqlDataAdaper vào DataTable sử dụng Fill
            DataTable dt = new DataTable();
            da.Fill(dt);
            // B6: Đóng kết nối
            conn.Close();
            return dt;
        }
        public bool InsertTinhLuong(EC_Tb_TinhLuong tinhluong)
        {
            string sql = "INSERT INTO LUONG(MaNhanVien, SoCa, TongTien, NgayNhan) VALUES(@MaNhanVien, @SoCa, @TongTien, @NgayNhan)";
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            // Trí Pro
            try
            {
                cm = new SqlCommand(sql, conn);
                conn.Open();
                cm.Parameters.Add("@MaNhanVien", SqlDbType.NVarChar).Value = tinhluong.MANHANVIEN;
                cm.Parameters.Add("@SoCa", SqlDbType.Int).Value = tinhluong.SOCA;
                cm.Parameters.Add("@TongTien", SqlDbType.Int).Value = tinhluong.TONGTIEN;
                cm.Parameters.Add("@NgayNhan", SqlDbType.DateTime).Value =tinhluong.NGAYNHAN;
                // gọi ExecuteNonQuery để thực thi
                cm.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                return false;
            }
            return true;
        }
        public bool UpdateTinhLuong(EC_Tb_TinhLuong tinhluong)
        {
            string sql = "UPDATE LUONG SET MaNhanVien = @MaNhanVien, SoCa = @SoCa, TongTien = @TongTien, NgayNhan = @NgayNhan WHERE MaNhanVien = @MaNhanVien";
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            // Trí Pro
            try
            {
                cm = new SqlCommand(sql, conn);
                conn.Open();
                cm.Parameters.Add("@MaNhanVien", SqlDbType.NVarChar).Value = tinhluong.MANHANVIEN;
                cm.Parameters.Add("@SoCa", SqlDbType.Int).Value = tinhluong.SOCA;
                cm.Parameters.Add("@TongTien", SqlDbType.Int).Value = tinhluong.TONGTIEN;
                cm.Parameters.Add("@NgayNhan", SqlDbType.DateTime).Value = tinhluong.NGAYNHAN;
                // gọi ExecuteNonQuery để thực thi
                cm.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                return false;
            }
            return true;
        }
        public bool DeleteTinhLuong(EC_Tb_TinhLuong tinhLuong)
        {
            string sql = "DELETE LUONG WHERE MaNhanVien = @MaNhanVien";
            // Trí Pro
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            try
            {
                cm = new SqlCommand(sql, conn);
                conn.Open();
                cm.Parameters.Add("@MaNhanVien", SqlDbType.NVarChar).Value = tinhLuong.MANHANVIEN;
                // gọi ExecuteNonQuery để thực thi
                cm.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                return false;
            }
            return true;
        }
    }
}
