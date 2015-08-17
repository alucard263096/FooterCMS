using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace AsisstantTools.MyControls
{
    public partial class MysqlConnectionControl : DatabaseServerConnectionControl
    {
        public MysqlConnectionControl()
        {
            InitializeComponent();
            btnTestConn.Text = "aaa";
        }

        

        public override bool TestConnect()
        {
            try
            {
                using (IDbConnection dbconn = GetDbConnection())
                {
                    dbconn.Open();
                    return true;
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public override IDbConnection GetDbConnection()
        {
            MySqlConnection conn = new MySqlConnection(DBConnectionStr);
            return conn;
        }

        public override IDbCommand GetDbCommand()
        {
            using (IDbConnection conn = GetDbConnection())
            {
                IDbCommand comm = new MySqlCommand("select 1", (MySqlConnection)conn);
                return comm;
            }
        }

    }
}
