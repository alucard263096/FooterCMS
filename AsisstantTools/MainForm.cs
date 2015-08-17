using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AsisstantTools
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void databaseCreatorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DatabaseCreatorForm form = new DatabaseCreatorForm();
            form.ShowDialog();
        }
    }
}
