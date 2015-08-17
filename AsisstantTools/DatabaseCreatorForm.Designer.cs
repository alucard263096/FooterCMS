namespace AsisstantTools
{
    partial class DatabaseCreatorForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.cmbDatabaseProvider = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtConnectionStr = new System.Windows.Forms.TextBox();
            this.btnTestConn = new System.Windows.Forms.Button();
            this.btnImportStructure = new System.Windows.Forms.Button();
            this.txtConsole = new System.Windows.Forms.RichTextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(113, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "Database Provider:";
            // 
            // cmbDatabaseProvider
            // 
            this.cmbDatabaseProvider.FormattingEnabled = true;
            this.cmbDatabaseProvider.Location = new System.Drawing.Point(131, 6);
            this.cmbDatabaseProvider.Name = "cmbDatabaseProvider";
            this.cmbDatabaseProvider.Size = new System.Drawing.Size(220, 20);
            this.cmbDatabaseProvider.TabIndex = 1;
            this.cmbDatabaseProvider.SelectedIndexChanged += new System.EventHandler(this.cmbDatabaseProvider_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("宋体", 13F);
            this.label2.Location = new System.Drawing.Point(12, 29);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(161, 18);
            this.label2.TabIndex = 5;
            this.label2.Text = "Connection String";
            // 
            // txtConnectionStr
            // 
            this.txtConnectionStr.Location = new System.Drawing.Point(12, 50);
            this.txtConnectionStr.Name = "txtConnectionStr";
            this.txtConnectionStr.Size = new System.Drawing.Size(340, 21);
            this.txtConnectionStr.TabIndex = 4;
            // 
            // btnTestConn
            // 
            this.btnTestConn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTestConn.Location = new System.Drawing.Point(12, 77);
            this.btnTestConn.Name = "btnTestConn";
            this.btnTestConn.Size = new System.Drawing.Size(150, 23);
            this.btnTestConn.TabIndex = 3;
            this.btnTestConn.Text = "Test Connect";
            this.btnTestConn.UseVisualStyleBackColor = true;
            this.btnTestConn.Click += new System.EventHandler(this.btnTestConn_Click);
            // 
            // btnImportStructure
            // 
            this.btnImportStructure.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnImportStructure.Location = new System.Drawing.Point(12, 115);
            this.btnImportStructure.Name = "btnImportStructure";
            this.btnImportStructure.Size = new System.Drawing.Size(150, 23);
            this.btnImportStructure.TabIndex = 6;
            this.btnImportStructure.Text = "Import Structure";
            this.btnImportStructure.UseVisualStyleBackColor = true;
            this.btnImportStructure.Click += new System.EventHandler(this.btnImportStructure_Click);
            // 
            // txtConsole
            // 
            this.txtConsole.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.txtConsole.Location = new System.Drawing.Point(0, 144);
            this.txtConsole.Name = "txtConsole";
            this.txtConsole.Size = new System.Drawing.Size(619, 267);
            this.txtConsole.TabIndex = 7;
            this.txtConsole.Text = "";
            // 
            // DatabaseCreatorForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(619, 411);
            this.Controls.Add(this.txtConsole);
            this.Controls.Add(this.btnImportStructure);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtConnectionStr);
            this.Controls.Add(this.btnTestConn);
            this.Controls.Add(this.cmbDatabaseProvider);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "DatabaseCreatorForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "DatabaseCreatorForm";
            this.Load += new System.EventHandler(this.DatabaseCreatorForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbDatabaseProvider;
        private System.Windows.Forms.Label label2;
        internal System.Windows.Forms.TextBox txtConnectionStr;
        internal System.Windows.Forms.Button btnTestConn;
        private System.Windows.Forms.Button btnImportStructure;
        private System.Windows.Forms.RichTextBox txtConsole;
    }
}