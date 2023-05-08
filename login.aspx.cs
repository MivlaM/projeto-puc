using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BLL;

namespace ENGENHARIA
{
    public partial class login : System.Web.UI.Page
    {
        BLL_Usuario usuarioBLL = new BLL_Usuario();
        DTO_Usuario usuarioDTO = new DTO_Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtLogin_Click(object sender, EventArgs e)
        {
            try
            {
                usuarioDTO = usuarioBLL.carregarUsuario(txtEmail.Text, txtSenha.Text);
                if (usuarioDTO.Tipo == "Assistência técnica")
                {
                    Session["usuario"] = usuarioDTO;
                    Response.Redirect("index.html", false);
                }
                else if (usuarioDTO.Tipo == "Administração de obras")
                {
                    Session["usuario"] = usuarioDTO;
                    Response.Redirect("index.html", false);
                }
                else
                {
                    Response.Write("<script> alert('Usuario ou Senha incorretos');</script>");
                }
            }
            catch (Exception)
            {
                Response.Redirect("login.aspx");
            }
           
        }
    }
}