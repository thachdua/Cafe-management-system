using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCaPhe
{
    public class EC_Tb_TinhLuong
    {
        private string MaNhanVien;
        private int SoCa;
        private int TongTien;
        private string NgayNhan;
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


        public int SOCA
        {
            get
            {
                return this.SoCa;
            }
            set
            {
                this.SoCa = value;
            }
        }
        public int TONGTIEN
        {
            get
            {
                return this.TongTien;
            }
            set
            {
                this.TongTien = value;
            }
        }
        public string NGAYNHAN
        {
            get
            {
                return this.NgayNhan;
            }
            set
            {
                this.NgayNhan = value;
            }
        }
    }
}
