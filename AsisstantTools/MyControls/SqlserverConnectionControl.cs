using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace AsisstantTools.MyControls
{
    public partial class SqlserverConnectionControl : DatabaseServerConnectionControl
    {
        public SqlserverConnectionControl()
        {
            InitializeComponent();
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
            SqlConnection conn = new SqlConnection(DBConnectionStr);
            return conn;
        }

        public override IDbCommand GetDbCommand()
        {
            using (IDbConnection conn = GetDbConnection())
            {
                IDbCommand comm = new SqlCommand("select 1", (SqlConnection)conn);
                return comm;
            }
        }

    }
}
