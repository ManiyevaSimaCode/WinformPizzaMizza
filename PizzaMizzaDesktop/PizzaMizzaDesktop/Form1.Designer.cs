namespace PizzaMizzaDesktop
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label2 = new System.Windows.Forms.Label();
            this.Cmb_Categories = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.Txt_Name = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.Txt_Price = new System.Windows.Forms.TextBox();
            this.Btn_Add = new System.Windows.Forms.Button();
            this.Btn_Update = new System.Windows.Forms.Button();
            this.Btn_Remove = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.Cmb_Type = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.Cmb_Size = new System.Windows.Forms.ComboBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.Txt_Search = new System.Windows.Forms.TextBox();
            this.Btn_Search = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.Btn_GetAll = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Perpetua Titling MT", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(268, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(238, 38);
            this.label1.TabIndex = 0;
            this.label1.Text = "PIZZAMIZZA";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.Menu;
            this.dataGridView1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView1.Location = new System.Drawing.Point(0, 371);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 25;
            this.dataGridView1.Size = new System.Drawing.Size(800, 79);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellDoubleClick);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI Emoji", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label2.Location = new System.Drawing.Point(164, 44);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(84, 28);
            this.label2.TabIndex = 2;
            this.label2.Text = "Product";
            // 
            // Cmb_Categories
            // 
            this.Cmb_Categories.BackColor = System.Drawing.SystemColors.Window;
            this.Cmb_Categories.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Cmb_Categories.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Cmb_Categories.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Cmb_Categories.FormattingEnabled = true;
            this.Cmb_Categories.Location = new System.Drawing.Point(609, 72);
            this.Cmb_Categories.Name = "Cmb_Categories";
            this.Cmb_Categories.Size = new System.Drawing.Size(161, 25);
            this.Cmb_Categories.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI Emoji", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label3.Location = new System.Drawing.Point(639, 20);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(110, 28);
            this.label3.TabIndex = 4;
            this.label3.Text = "Categories";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // Txt_Name
            // 
            this.Txt_Name.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Txt_Name.Location = new System.Drawing.Point(145, 156);
            this.Txt_Name.Name = "Txt_Name";
            this.Txt_Name.Size = new System.Drawing.Size(240, 29);
            this.Txt_Name.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Segoe UI Emoji", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label4.Location = new System.Drawing.Point(35, 157);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(68, 28);
            this.label4.TabIndex = 6;
            this.label4.Text = "Name";
            // 
            // Txt_Price
            // 
            this.Txt_Price.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Txt_Price.Location = new System.Drawing.Point(183, 325);
            this.Txt_Price.Name = "Txt_Price";
            this.Txt_Price.Size = new System.Drawing.Size(141, 29);
            this.Txt_Price.TabIndex = 10;
            // 
            // Btn_Add
            // 
            this.Btn_Add.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(54)))), ((int)(((byte)(22)))));
            this.Btn_Add.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Btn_Add.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Btn_Add.Font = new System.Drawing.Font("Century", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Btn_Add.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Btn_Add.Location = new System.Drawing.Point(450, 266);
            this.Btn_Add.Name = "Btn_Add";
            this.Btn_Add.Size = new System.Drawing.Size(101, 39);
            this.Btn_Add.TabIndex = 11;
            this.Btn_Add.Text = "Add";
            this.Btn_Add.UseVisualStyleBackColor = false;
            this.Btn_Add.Click += new System.EventHandler(this.Btn_Add_Click);
            // 
            // Btn_Update
            // 
            this.Btn_Update.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(54)))), ((int)(((byte)(22)))));
            this.Btn_Update.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Btn_Update.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Btn_Update.Font = new System.Drawing.Font("Century", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Btn_Update.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Btn_Update.Location = new System.Drawing.Point(691, 266);
            this.Btn_Update.Name = "Btn_Update";
            this.Btn_Update.Size = new System.Drawing.Size(101, 35);
            this.Btn_Update.TabIndex = 12;
            this.Btn_Update.Text = "Update";
            this.Btn_Update.UseVisualStyleBackColor = false;
            this.Btn_Update.Click += new System.EventHandler(this.Btn_Update_Click);
            // 
            // Btn_Remove
            // 
            this.Btn_Remove.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(54)))), ((int)(((byte)(22)))));
            this.Btn_Remove.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Btn_Remove.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Btn_Remove.Font = new System.Drawing.Font("Century", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Btn_Remove.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Btn_Remove.Location = new System.Drawing.Point(568, 267);
            this.Btn_Remove.Name = "Btn_Remove";
            this.Btn_Remove.Size = new System.Drawing.Size(101, 36);
            this.Btn_Remove.TabIndex = 13;
            this.Btn_Remove.Text = "Remove";
            this.Btn_Remove.UseVisualStyleBackColor = false;
            this.Btn_Remove.Click += new System.EventHandler(this.Btn_Remove_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Segoe UI Emoji", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label5.Location = new System.Drawing.Point(45, 322);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(57, 28);
            this.label5.TabIndex = 8;
            this.label5.Text = "Price";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Segoe UI Emoji", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label7.Location = new System.Drawing.Point(337, 326);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(48, 28);
            this.label7.TabIndex = 14;
            this.label7.Text = "Azn";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(512, -1);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(53, 49);
            this.pictureBox1.TabIndex = 15;
            this.pictureBox1.TabStop = false;
            // 
            // comboBox1
            // 
            this.comboBox1.BackColor = System.Drawing.SystemColors.Window;
            this.comboBox1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.comboBox1.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.comboBox1.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(145, 210);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(240, 29);
            this.comboBox1.TabIndex = 16;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Segoe UI Emoji", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label8.Location = new System.Drawing.Point(25, 207);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(95, 28);
            this.label8.TabIndex = 17;
            this.label8.Text = "Category";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Segoe UI Emoji", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label9.Location = new System.Drawing.Point(46, 270);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(56, 28);
            this.label9.TabIndex = 18;
            this.label9.Text = "Type";
            // 
            // Cmb_Type
            // 
            this.Cmb_Type.BackColor = System.Drawing.SystemColors.Window;
            this.Cmb_Type.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Cmb_Type.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Cmb_Type.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Cmb_Type.FormattingEnabled = true;
            this.Cmb_Type.Location = new System.Drawing.Point(145, 266);
            this.Cmb_Type.Name = "Cmb_Type";
            this.Cmb_Type.Size = new System.Drawing.Size(240, 29);
            this.Cmb_Type.TabIndex = 19;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Segoe UI Emoji", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label10.Location = new System.Drawing.Point(426, 66);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(49, 28);
            this.label10.TabIndex = 21;
            this.label10.Text = "Size";
            // 
            // Cmb_Size
            // 
            this.Cmb_Size.BackColor = System.Drawing.SystemColors.Window;
            this.Cmb_Size.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Cmb_Size.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Cmb_Size.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Cmb_Size.FormattingEnabled = true;
            this.Cmb_Size.Location = new System.Drawing.Point(481, 72);
            this.Cmb_Size.Name = "Cmb_Size";
            this.Cmb_Size.Size = new System.Drawing.Size(98, 25);
            this.Cmb_Size.TabIndex = 22;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(481, 145);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(281, 90);
            this.textBox1.TabIndex = 24;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Segoe UI Emoji", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label11.Location = new System.Drawing.Point(35, 107);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(108, 28);
            this.label11.TabIndex = 26;
            this.label11.Text = "Product Id";
            // 
            // Txt_Search
            // 
            this.Txt_Search.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Txt_Search.Location = new System.Drawing.Point(145, 110);
            this.Txt_Search.Name = "Txt_Search";
            this.Txt_Search.Size = new System.Drawing.Size(240, 29);
            this.Txt_Search.TabIndex = 25;
            this.Txt_Search.Text = "Search By Id";
            // 
            // Btn_Search
            // 
            this.Btn_Search.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(54)))), ((int)(((byte)(22)))));
            this.Btn_Search.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Btn_Search.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Btn_Search.Font = new System.Drawing.Font("Century", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Btn_Search.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Btn_Search.Location = new System.Drawing.Point(399, 110);
            this.Btn_Search.Name = "Btn_Search";
            this.Btn_Search.Size = new System.Drawing.Size(107, 29);
            this.Btn_Search.TabIndex = 27;
            this.Btn_Search.Text = "Search";
            this.Btn_Search.UseVisualStyleBackColor = false;
            this.Btn_Search.Click += new System.EventHandler(this.Btn_Search_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Segoe UI Emoji", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label12.Location = new System.Drawing.Point(568, 111);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(117, 28);
            this.label12.TabIndex = 28;
            this.label12.Text = "Description";
            this.label12.Click += new System.EventHandler(this.label12_Click);
            // 
            // Btn_GetAll
            // 
            this.Btn_GetAll.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(54)))), ((int)(((byte)(22)))));
            this.Btn_GetAll.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Btn_GetAll.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.Btn_GetAll.Font = new System.Drawing.Font("Century", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Btn_GetAll.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Btn_GetAll.Location = new System.Drawing.Point(568, 327);
            this.Btn_GetAll.Name = "Btn_GetAll";
            this.Btn_GetAll.Size = new System.Drawing.Size(107, 29);
            this.Btn_GetAll.TabIndex = 29;
            this.Btn_GetAll.Text = "GetAll";
            this.Btn_GetAll.UseVisualStyleBackColor = false;
            this.Btn_GetAll.Click += new System.EventHandler(this.Btn_GetAll_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(159)))), ((int)(((byte)(26)))));
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.Btn_GetAll);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.Btn_Search);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.Txt_Search);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.Cmb_Size);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.Cmb_Type);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.Btn_Remove);
            this.Controls.Add(this.Btn_Update);
            this.Controls.Add(this.Btn_Add);
            this.Controls.Add(this.Txt_Price);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.Txt_Name);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.Cmb_Categories);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Label label1;
        private DataGridView dataGridView1;
        private ComboBox Cmb_Categories;
        private Label label3;
        public Label label2;
        private TextBox Txt_Name;
        public Label label4;
        public Label label6;
        private TextBox Txt_Price;
        private Button Btn_Add;
        private Button Btn_Update;
        private Button Btn_Remove;
        public Label label5;
        public Label label7;
        private PictureBox pictureBox1;
        private ComboBox comboBox1;
        public Label label8;
        public Label label9;
        private ComboBox Cmb_Type;
        public Label label10;
        private ComboBox Cmb_Size;
        private ComboBox Cmb_Ingredients;
        private TextBox textBox1;
        public Label label11;
        private TextBox Txt_Search;
        private Button Btn_Search;
        public Label label12;
        private Button Btn_GetAll;
    }
}