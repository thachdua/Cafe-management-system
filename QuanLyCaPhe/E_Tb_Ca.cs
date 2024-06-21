using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCaPhe
{
    internal class E_Tb_Ca
    {
        SqlConnection conn;
        SqlDataAdapter da;
        SqlCommand cm;
        public E_Tb_Ca()
        {
            conn = new SqlConnection();
        }
        public DataTable GetAllCa()
        {
            // B1: Tạo Câu Lệnh Lấy Toàn Bộ Ca
            string sql = "Select * From CA";
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
        // Thêm truyền tham số là lớp ánh xạ csdl
        public bool InsertCa(EC_Tb_Ca ca)
        {
            string sql = "INSERT INTO CA(MaNhanVien, MaCa, TenCa, MaKhuVuc, Ngay) VALUES(@MaNhanVien, @MaCa, @TenCa, @MaKhuVuc, @Ngay)";
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            // Trí Pro
            try
            {
                cm = new SqlCommand(sql, conn);
                conn.Open();
                cm.Parameters.Add("@MaNhanVien", SqlDbType.NVarChar).Value = ca.MANHANVIEN;
                cm.Parameters.Add("@MaCa", SqlDbType.NVarChar).Value = ca.MACA;
                cm.Parameters.Add("@TenCa", SqlDbType.NVarChar).Value = ca.TENCA;
                cm.Parameters.Add("@MaKhuVuc", SqlDbType.NVarChar).Value = ca.MAKHUVUC;
                cm.Parameters.Add("@Ngay", SqlDbType.Date).Value = ca.NGAY;
                // gọi ExecuteNonQuery để thực thi
                cm.ExecuteNonQuery();
                conn.Close();
            }
            catch(Exception e)
            {
                return false;
            }
            return true;
        }
        public bool UpdateCa(EC_Tb_Ca ca)
        {
            string sql = "UPDATE CA SET MaCa = @MaCa, TenCa = @TenCa, MaKhuVuc = @MaKhuVuc WHERE MaNhanVien = @MaNhanVien";
            // Trí Pro
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            try
            {
                cm = new SqlCommand(sql, conn);
                conn.Open();
                cm.Parameters.Add("@MaNhanVien", SqlDbType.NVarChar).Value = ca.MANHANVIEN;
                cm.Parameters.Add("@MaCa", SqlDbType.NVarChar).Value = ca.MACA;
                cm.Parameters.Add("@TenCa", SqlDbType.NVarChar).Value = ca.TENCA;
                cm.Parameters.Add("@MaKhuVuc", SqlDbType.NVarChar).Value = ca.MAKHUVUC;
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
        public bool DeleteCa(EC_Tb_Ca ca)
        {
            string sql = "DELETE CA WHERE MaNhanVien = @MaNhanVien";
            // Trí Pro
            SqlConnection conn = new SqlConnection(DB.ConnectString);
            try
            {
                cm = new SqlCommand(sql, conn);
                conn.Open();
                cm.Parameters.Add("@MaNhanVien", SqlDbType.NVarChar).Value = ca.MANHANVIEN;
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
