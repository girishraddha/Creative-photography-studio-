using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace photoweb2
{
    public partial class Add_prod : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter adp;

        protected void Page_Load(object sender, EventArgs e)
        {

            con = new SqlConnection("User ID=sa;Initial Catalog=photoweb;Data Source=DESKTOP-MCKMLOL;Password=shraddha;");
        }

        protected void BtnAdd_Click1(object sender, EventArgs e)
        {
            if (Txtpnm.Text == "")
            {
                Response.Write("<script>alert('Enter Product Name')</script>");
                return;
            }

            if (Txtpz.Text == "")
            {
                Response.Write("<script>alert('Enter Product prize')</script>");
                return;
            }
            if (Txtdesp.Text == "")
            {
                Response.Write("<script>alert('Enter Product quantity')</script>");
                return;
            }
            if (Ddtype.SelectedItem.Text == "Select Product Type")
            {
                Response.Write("<script>alert('Enter Product type')</script>");
                return;
            }
            try
            {
                if (FileUpload1.HasFile)
                {
                    string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
                    if (fileExtension.ToLower() != ".jpg" && fileExtension.ToLower() != ".png" && fileExtension.ToLower() != ".jpeg")
                    {
                        Label5.Text = "only file with .jpg and .jpeg Extension are allowed";
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/images/" + FileUpload1.FileName));
                        Image1.ImageUrl = "~/images/" + FileUpload1.FileName;


                        float p = float.Parse(Txtpz.Text);
                        string s = "Insert into NewProd1 values(@pnm,@pz,@t,@pk,@img)";
                        cmd = new SqlCommand(s, con);
                        cmd.Parameters.AddWithValue("@pnm", Txtpnm.Text);
                        cmd.Parameters.AddWithValue("@pz", p);
                        cmd.Parameters.AddWithValue("@pk", Txtdesp.Text);
                        cmd.Parameters.AddWithValue("@t", Ddtype.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@img", "~/images/" + FileUpload1.FileName);



                        con.Open();
                        int added = cmd.ExecuteNonQuery();
                        //Label3.Text = " New Student Add";

                        if (added > 0)
                        {
                            Response.Write("<script>alert('New product Added Successfully')</script>");
                        }
                        con.Close();

                    }


                }
                else
                {
                    Label1.Text = "Please select a Photo";
                }

            }
            catch (Exception err)
            {
                Label1.Text = err.ToString();
                con.Close();
                Response.Write("<script>alert('There are some problem. please insert correctlly')</script>");
            }
        }

     

        protected void BtnDel_Click(object sender, EventArgs e)
        {


        }
    
    }
        }

      