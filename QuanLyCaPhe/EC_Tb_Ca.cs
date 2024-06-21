using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCaPhe
{
    internal class EC_Tb_Ca
    {
        private string MaCa;
        private string TenCa;
        private string MaKhuVuc;
        private int SoTien;
        private string MaNhanVien;
        private string Ngay;
        public string MANHANVIEN
        {
            get
            {
                return MaNhanVien;
            }
            set
            {
                this.MaNhanVien = value;
            }
        }
        public string MACA
        {
            get
            {
                return MaCa;
            }
            set
            {
                this.MaCa = value;
            }
        }
        public string TENCA
        {
            get
            {
                return TenCa;
            }
            set
            {
                this.TenCa = value;
            }
        }
        public string MAKHUVUC
        {
            get
            {
                return MaKhuVuc;
            }
            set
            {
                this.MaKhuVuc = value;
            }
        }
        public int SOTIEN
        {
            get
            {
                return SoTien;
            }
            set
            {
                this.SoTien = value;
            }
        }
        public string NGAY
        {
            get
            {
                return this.Ngay;
            }
            set
            {
                this.Ngay = value;
            }
        }
    }
}
