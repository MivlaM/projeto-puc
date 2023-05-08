using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;

namespace ENGENHARIA
{
    public partial class cadastro : System.Web.UI.Page
    {
        DTO_Usuario usuario = new DTO_Usuario();
        BLL_Usuario usuarioBLL = new BLL_Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                usuario.Nome = txtNome.Text;
                usuario.Endereco = txtEndereco.Text;
                usuario.Telefone = txtTelefone.Text;
                usuario.Cnpj = txtCNPJ.Text;
                usuario.Email = txtEmail.Text;
                usuario.Senha = txtSenha.Text;
                usuario.Tipo = txtopcao.Value;
                usuario.Nome = txtNome.Text;
                if (usuarioBLL.validarEmail(usuario.Email))
                {
                    usuarioBLL.InserirUsuario(usuario);
                    Response.Redirect("login.aspx", false);
                }
                else
                {
                    Response.Write("<script> alert('Email já cadastrado, cadastre outro');</script>");
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}