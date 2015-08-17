using AsisstantTools.MyControls;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;

namespace AsisstantTools
{
    public partial class DatabaseCreatorForm : Form
    {
        public DatabaseCreatorForm()
        {
            InitializeComponent();
        }

        private void DatabaseCreatorForm_Load(object sender, EventArgs e)
        {
            cmbDatabaseProvider.Items.Add("MSSQL");
            cmbDatabaseProvider.Items.Add("MYSQL");
            cmbDatabaseProvider.SelectedItem = cmbDatabaseProvider.Items[0];
        }


        private void cmbDatabaseProvider_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        DbConnection GetDBConn()
        {
            DbConnection db=null;
            if (cmbDatabaseProvider.Text == "MSSQL")
            {
                db = new SqlConnection(txtConnectionStr.Text);
                //databaseServerConnectionControl.TestConnect();
            }
            else if (cmbDatabaseProvider.Text == "MYSQL")
            {
                db = new MySqlConnection(txtConnectionStr.Text);
                //databaseServerConnectionControl.TestConnect();
            }
            return db;
        }

        private void btnTestConn_Click(object sender, EventArgs e)
        {
            try
            {
                using (DbConnection db = GetDBConn())
                {
                    db.Open();
                    MessageBox.Show("Database Connected Successfully");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnImportStructure_Click(object sender, EventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.Multiselect = true;
            ofd.Filter = "XMLFile|*.xml";
            if (ofd.ShowDialog() == DialogResult.OK)
            {
                txtConsole.Clear();
                foreach (var xmlfile in ofd.FileNames)
                {
                    try
                    {
                        XmlDocument doc = new XmlDocument();
                        doc.Load(xmlfile);
                        using (DbConnection db = GetDBConn())
                        {

                        }
                    }
                    catch (Exception ex)
                    {
                        txtConsole.SelectionColor=Color.Red;
                        txtConsole.AppendText(string.Format("[Xml File Read Fail]{0}:{1}", xmlfile, ex.Message));
                        txtConsole.SelectionColor = Color.Black;
                    }
                }
            }
        }

        

    }
}
