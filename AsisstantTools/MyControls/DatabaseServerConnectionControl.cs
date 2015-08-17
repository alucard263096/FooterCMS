using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AsisstantTools.MyControls
{
    public partial class DatabaseServerConnectionControl : UserControl
    {
       public string DBConnectionStr{
            get
            {
                return txtConnectionStr.Text;
            }
    }
        public DatabaseServerConnectionControl()
        {
            InitializeComponent();
        }

        private void DatabaseServerConnectionControls_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                bool canConn = TestConnect();
                if (canConn == true)
                {
                    MessageBox.Show("Database Connected Successfully");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public virtual bool TestConnect()
        {
            return true;
        }

        public virtual IDbConnection GetDbConnection()
        {
            return null;
        }

        public virtual IDbCommand GetDbCommand()
        {
            return null;
        }

        private void txtConnectionStr_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
