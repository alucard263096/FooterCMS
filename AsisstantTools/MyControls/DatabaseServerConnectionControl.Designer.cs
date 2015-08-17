namespace AsisstantTools.MyControls
{
    partial class DatabaseServerConnectionControl
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.btnTestConn = new System.Windows.Forms.Button();
            this.txtConnectionStr = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnTestConn
            // 
            this.btnTestConn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTestConn.Location = new System.Drawing.Point(3, 58);
            this.btnTestConn.Name = "btnTestConn";
            this.btnTestConn.Size = new System.Drawing.Size(150, 23);
            this.btnTestConn.TabIndex = 0;
            this.btnTestConn.Text = "Test Connect";
            this.btnTestConn.UseVisualStyleBackColor = true;
            this.btnTestConn.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtConnectionStr
            // 
            this.txtConnectionStr.Location = new System.Drawing.Point(3, 31);
            this.txtConnectionStr.Name = "txtConnectionStr";
            this.txtConnectionStr.Size = new System.Drawing.Size(340, 21);
            this.txtConnectionStr.TabIndex = 1;
            this.txtConnectionStr.TextChanged += new System.EventHandler(this.txtConnectionStr_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("宋体", 13F);
            this.label1.Location = new System.Drawing.Point(3, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(161, 18);
            this.label1.TabIndex = 2;
            this.label1.Text = "Connection String";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // DatabaseServerConnectionControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtConnectionStr);
            this.Controls.Add(this.btnTestConn);
            this.Name = "DatabaseServerConnectionControl";
            this.Size = new System.Drawing.Size(417, 91);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        internal System.Windows.Forms.Button btnTestConn;
        internal System.Windows.Forms.TextBox txtConnectionStr;
        private System.Windows.Forms.Label label1;
    }
}
