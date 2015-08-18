using MySql.Data.MySqlClient;
using SunStar.DataBaseFactory;
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
        Dictionary<string, string> matchValueType = new Dictionary<string, string>();

        public DatabaseCreatorForm()
        {
            InitializeComponent();
        }

        private void DatabaseCreatorForm_Load(object sender, EventArgs e)
        {
            cmbDatabaseProvider.Items.Add("MSSQL");
            cmbDatabaseProvider.Items.Add("MYSQL");
            cmbDatabaseProvider.SelectedItem = cmbDatabaseProvider.Items[0];

            matchValueType.Add("select", "varchar(10)");
            matchValueType.Add("text", "nvarchar(100)");
            matchValueType.Add("longtext", "nvarchar(500)");
            matchValueType.Add("datetime", "datetime");
            matchValueType.Add("html", "text");
            matchValueType.Add("upload", "nvarchar(255)");
            matchValueType.Add("flist", "nvarchar(500)");
            matchValueType.Add("number", "decimal(10,2)");
            matchValueType.Add("check", "varchar(1)");
            matchValueType.Add("fkey", "int");
            matchValueType.Add("grid", "");
            matchValueType.Add("password", "nvarchar(100)");

        }


        private void cmbDatabaseProvider_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        DBInstance GetDBInstance()
        {
            DBInstance db = null;
            if (cmbDatabaseProvider.Text == "MSSQL")
            {
                db = new DBInstance(SqlClientFactory.Instance, txtConnectionStr.Text);
                //databaseServerConnectionControl.TestConnect();
            }
            else if (cmbDatabaseProvider.Text == "MYSQL")
            {
                db = new DBInstance(MySqlClientFactory.Instance, txtConnectionStr.Text);
                //databaseServerConnectionControl.TestConnect();
            }
            return db;
        }

        private void btnTestConn_Click(object sender, EventArgs e)
        {
            try
            {
                DBInstance dn = GetDBInstance();
                using (DbConnection conn = dn.GetDbConnection())
                {
                    conn.Open();
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
                        DBInstance dn = GetDBInstance();
                        using (DbConnection conn = dn.GetDbConnection())
                        {
                            conn.Open();
                            XmlNode root = doc.SelectSingleNode("root");
                            string tablename = root.SelectSingleNode("tablename").InnerText;
                            string ismutillanguage = root.SelectSingleNode("ismutillang") == null ? "" : root.SelectSingleNode("ismutillang").InnerText;
                            CheckAndCreateTable(dn, tablename, ismutillanguage == "1");

                            XmlNode fields = root.SelectSingleNode("fields");
                            XmlNodeList fieldlist = fields.SelectNodes("field");
                            foreach (XmlNode field in fields)
                            {
                                string fieldname = field.SelectSingleNode("key").InnerText;
                                string fieldtype = field.SelectSingleNode("type").InnerText;
                                string ismutillangfield = field.SelectSingleNode("ismutillang") == null ? "" : root.SelectSingleNode("ismutillang").InnerText;
                                CreateField(dn, tablename, fieldname, fieldtype, ismutillangfield == "1" && ismutillanguage == "1");
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        string msg = string.Format("[Xml File Read Fail]{0}:{1}", xmlfile, ex.Message);
                        AddToConsole(msg,true);
                    }
                }
            }
        }

        private void CreateField(DBInstance dn, string tablename, string fieldname, string fieldtype, bool ismulti)
        {
            if (!matchValueType.ContainsKey(fieldtype))
            {
                string msg = string.Format("[Cannot find field type]{0}", fieldtype);
                AddToConsole(msg, true);
                return;
            }

            string fieldrealtype = matchValueType[fieldtype];
            if (fieldrealtype == "")
            {
                return;
            }
            if (ismulti)
            {
                tablename = tablename + "_l";
            }
            string sql="";
            try
            {
                dn.ExecuteNonQuery(string.Format("select {0} from {1}", fieldname,tablename), null);
                sql = string.Format(@"ALTER TABLE {0}
ALTER COLUMN {1} {2}", tablename, fieldname, fieldrealtype);
                AddToConsole(string.Format("[Column modify Success]{0}:{1}:{2}:{3}", tablename,fieldname,fieldtype,fieldrealtype,sql));
            }
            catch
            {
                try
                {
                    sql = string.Format(@"ALTER TABLE {0}
ADD  {1} {2}", tablename, fieldname, fieldrealtype);
                    dn.ExecuteNonQuery(sql, null);
                    AddToConsole(string.Format("[Column add Success]{0}:{1}:{2}:{3}", tablename, fieldname, fieldtype, fieldrealtype, sql));
                }
                catch (Exception ex)
                {
                    string msg = string.Format("[Column add failed]{0}:{1}:{2}:{3}:{4}", tablename, fieldname, fieldtype, fieldrealtype,ex.Message,sql);
                    AddToConsole(msg, true);
                }
            }
        }

        private void CheckAndCreateTable(DBInstance dn, string tablename, bool ismutillang)
        {
            string sql = string.Format(@"
CREATE TABLE {0}
(
id int primary key,
created_date datetime,
created_user int,
updated_date datetime,
updated_user int
)
", tablename);
            CreateTable(dn, tablename, sql);
            if (ismutillang)
            {
                tablename = tablename + "_l"; 
                sql = string.Format(@"
CREATE TABLE {0}
(
oid int primary key,
lang varchar(10) primary key
)
", tablename);
                CreateTable(dn, tablename,sql);
            }


        }

        private void CreateTable(DBInstance dn, string tablename,string sql)
        {
            try
            {
                dn.ExecuteNonQuery(string.Format("select id from {0}", tablename), null);
                AddToConsole(string.Format("[Table exists]{0}", tablename));
            }
            catch
            {
                try
                {

                    
                    dn.ExecuteNonQuery(sql, null);
                    AddToConsole(string.Format("[Table created Success]{0}", tablename));
                }
                catch (Exception ex)
                {
                    string msg = string.Format("[Table created Fail]{0}:{1}", tablename, ex.Message);
                    AddToConsole(msg, true);
                }
            }
        }

        private void AddToConsole(string msg, bool isAlert = false)
        {
            if (isAlert)
            {
                txtConsole.SelectionColor = Color.Red;
            }
            txtConsole.AppendText(msg+"\r\n");
            txtConsole.SelectionColor = Color.Black;
        }
    }
}
