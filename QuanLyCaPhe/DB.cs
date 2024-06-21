using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyCaPhe
{
    static class DB
    {
        //        public static string ConnectString = @"data source=tcp:192.168.43.168,1433;initial catalog=QLCP;user id=qlcp;password=123456;Connect Timeout=180";
        //public static string ConnectString = @"data source=tcp:192.168.2.14,1433;initial catalog=QLCP;user id=qlcp;password=123456;Connect Timeout=10";
        public static string ConnectString = @"server=LAPTOP-FDJV74VD\ZAPKA;database = QLCP;Integrated Security=True";
    }
}
