using System.Data;
using System.Data.SqlClient;

namespace PizzaMizzaDesktop
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        string connectionString = @"Server=WINDOWS-84ER0LR;Database=newPizzaMizza;Trusted_Connection=True;";
        List<Product> Products = new List<Product>();


        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

            GetAllProducts();
            FillComboBox();
        }


        ////using (SqlCommand cmd = new SqlCommand("sp_GetIdInfo", connection))
        //{

        //    using (SqlDataAdapter dataAdapter = new SqlDataAdapter())
        //    {
        //        dataAdapter.SelectCommand = cmd;

        //        using (SqlDataReader reader = cmd.ExecuteReader())
        //        {

        //            while (reader.Read())
        //            {
        //                Products.Add(new Product()
        //                {
        //                    Id = (int)reader.GetValue(0),
        //                    SizeId = (int)reader.GetValue(1),
        //                    TypeId = (int)reader.GetValue(2),
        //                    CategoryId = (int)reader.GetValue(3),
        //                    Ingredients =
        //                    {
        //                        new Ingredient() { Id = (int)reader.GetValue(4),}
        //                    }

        //                });
        //            }

        //        }
        //    }
        //DataSet myData=new DataSet();


        //Cmb_Categories.DataSource=

        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@Name", Txt_Name.Text);
        //cmd.Parameters.AddWithValue("@Description", Cmb_Ingredients.SelectedItem);
        //cmd.Parameters.AddWithValue("@CategoryId", Cmb_Categories.SelectedIndex);
        //connection.Close();


        private void Btn_Update_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string Name = Txt_Name.Text;
                int categoryId = comboBox1.SelectedIndex + 1;
                int typeId = Cmb_Type.SelectedIndex;
                double price = Convert.ToDouble(Txt_Price.Text);
                int sizeId = Cmb_Size.SelectedIndex;
                string desc = textBox1.Text;
                int id = (int)dataGridView1.CurrentRow.Cells["Id"].Value;



                //using (SqlCommand cmd = new SqlCommand("Update Products set Name=@name,CategoryId= @categoryId, Description=@desc Update ProductType SET TypeId=@TypeId Update Prices SET SizeId=@SizeId,Price=@Price where id=@Id", connection))
                //{
                //    cmd.Parameters.AddWithValue("name", Name);
                //    cmd.Parameters.AddWithValue("categoryId", categoryId);
                //    cmd.Parameters.AddWithValue("desc", desc);
                //    cmd.Parameters.AddWithValue("TypeId", typeId);
                //    cmd.Parameters.AddWithValue("SizeId", sizeId);
                //    cmd.Parameters.AddWithValue("Price", price);
                //    cmd.Parameters.AddWithValue("Id", id);


                //    cmd.ExecuteNonQuery();


                //}


            }
        }



        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {


            if (dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            {
                dataGridView1.CurrentRow.Selected = true;
                Txt_Search.Text = dataGridView1.Rows[e.RowIndex].Cells["Id"].FormattedValue.ToString();
                Txt_Name.Text = dataGridView1.Rows[e.RowIndex].Cells["Name"].FormattedValue.ToString();
                textBox1.Text = dataGridView1.Rows[e.RowIndex].Cells["Description"].FormattedValue.ToString();
                Txt_Price.Text = dataGridView1.Rows[e.RowIndex].Cells["Price"].FormattedValue.ToString();
                Cmb_Type.Text = dataGridView1.Rows[e.RowIndex].Cells["TypeCode"].FormattedValue.ToString();
                Cmb_Size.Text = dataGridView1.Rows[e.RowIndex].Cells["SizeCode"].FormattedValue.ToString();
                comboBox1.Text = dataGridView1.Rows[e.RowIndex].Cells["Category"].FormattedValue.ToString();
            }


        }

        private void Btn_Search_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Txt_Search.Text);
            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                using (SqlCommand cmd = new SqlCommand(@$" Select P.Id, P.Name,P.Description,S.SizeCode,Price ,T.TypeCode,C.Name  as Category from Products P  join Prices Pr on P.Id = Pr.ProductId join Sizes S on
Pr.SizeId = S.Id
join Types T
on
T.Id = P.Id
join Categories C
on C.Id = P.CategoryId
where P.Id = {Id} ", connection))
                {
                    using (SqlDataAdapter dataAdapter = new SqlDataAdapter())
                    {
                        dataAdapter.SelectCommand = cmd;
                        using (DataSet dataSet = new DataSet())
                        {
                            dataAdapter.Fill(dataSet);
                            dataGridView1.DataSource = dataSet.Tables[0];

                        }
                    }

                }
                ClearBox();
            }

        }

        private void GetAllProducts()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand("sp_GetAllInfo", connection))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter dataAdapter = new SqlDataAdapter())
                    {
                        dataAdapter.SelectCommand = cmd;
                        using (DataSet dataSet = new DataSet())
                        {

                            dataAdapter.Fill(dataSet);
                            dataGridView1.DataSource = dataSet.Tables[0];

                        }
                    }

                }
            }
        }



        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void Btn_GetAll_Click(object sender, EventArgs e)
        {
            GetAllProducts();
            ClearBox();
        }
        private void ClearBox()
        {
            Txt_Search.Text = String.Empty;
            Txt_Name.Text = String.Empty;
            Txt_Price.Text = String.Empty;
            Cmb_Categories.SelectedIndex = -1;
            comboBox1.SelectedIndex = -1;
            Cmb_Size.SelectedIndex = -1;
            Cmb_Type.SelectedIndex = -1;

        }


        private void FillComboBox()
        {

            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                using (SqlCommand cmd = new SqlCommand(@"Select * from Categories Select *from Types Select *from Sizes", connection))
                {
                    using (SqlDataAdapter dataAdapter = new SqlDataAdapter())
                    {
                        dataAdapter.SelectCommand = cmd;
                        using (DataSet dataSet = new DataSet())
                        {
                            dataAdapter.Fill(dataSet, "Category");
                            dataAdapter.Fill(dataSet, "Types");
                            dataAdapter.Fill(dataSet, "Sizes");


                            Cmb_Categories.DisplayMember = "Name";
                            Cmb_Categories.ValueMember = "Id";
                            Cmb_Categories.DataSource = dataSet.Tables[0];
                            comboBox1.DisplayMember = "Name";
                            comboBox1.ValueMember = "Id";
                            comboBox1.DataSource = dataSet.Tables[0];
                            Cmb_Type.DisplayMember = "TypeCode";
                            Cmb_Type.ValueMember = "Id";
                            Cmb_Type.DataSource = dataSet.Tables[1];
                            Cmb_Size.DisplayMember = "SizeCode";
                            Cmb_Size.ValueMember = "Id";
                            Cmb_Size.DataSource = dataSet.Tables[2];


                        }


                    }

                }
            }
        }

        private void Btn_Add_Click(object sender, EventArgs e)
        {
            int id;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (DataSet ds = new DataSet())
                {
                    connection.Open();
                    string Name = Txt_Name.Text;
                    int categoryId = comboBox1.SelectedIndex + 1;
                    int typeId = Cmb_Type.SelectedIndex;
                    double price = Convert.ToDouble(Txt_Price.Text);
                    int sizeId = Cmb_Size.SelectedIndex;
                    string desc = textBox1.Text;



                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Products values(@name, @categoryId, @desc) INSERT INTO ProductType values((select TOP(1),@TypeId)) INSERT INTO Prices values((select Top(1)),@SizeId,@Price)", connection))
                    {
                        cmd.Parameters.AddWithValue("name", Name);
                        cmd.Parameters.AddWithValue("categoryId", categoryId);
                        cmd.Parameters.AddWithValue("desc", desc);
                        cmd.Parameters.AddWithValue("TypeId", typeId);
                        cmd.Parameters.AddWithValue("SizeId", sizeId);
                        cmd.Parameters.AddWithValue("Price", price);

                        cmd.ExecuteNonQuery();


                    }
                }

            }
            GetAllProducts();
        }

        private void Btn_Remove_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                int id = (int)dataGridView1.CurrentRow.Cells["Id"].Value;
                using (SqlCommand cmd = new SqlCommand("Delete from Products where id=@Id Delete from ProductTypes where id=@ProductId", connection))
                {
                    cmd.Parameters.AddWithValue("Id", id);
                    cmd.Parameters.AddWithValue("ProductId", id);
                    cmd.ExecuteNonQuery();

                }
            }
        }
    }
}

  
