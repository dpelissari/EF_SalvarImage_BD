using System;
using System.IO;
using System.Linq;

namespace EF_SalvarImage_BD
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnIncluiImagem_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                try
                {
                    string filename = fileUpload.PostedFile.FileName;
                    int tamanho = fileUpload.PostedFile.ContentLength;
                    Stream arquivoStream = fileUpload.PostedFile.InputStream;

                    if (SalvarImagem(arquivoStream, filename, tamanho))
                    {
                        lblStatus.Text += "Imagem salva com sucesso no banco de dados";
                    }
                    else
                    {
                        lblStatus.Text += "FALHA ao salvar a imagem no Banco de dados";
                    }
                }
                catch (Exception ex)
                {
                    lblStatus.Text = " Erro " + ex.Message;
                }
            }
        }

        private bool SalvarImagem(Stream arquivoStream, string filename, int tamanho)
        {
            bool ret = false;

            try
            {
                byte[] documentBytes = new byte[arquivoStream.Length];
                arquivoStream.Read(documentBytes, 0, documentBytes.Length);

                MinhaFoto foto = new MinhaFoto()
                {
                    Nome = filename,
                    Descricao = txtDescricao.Text,
                    Foto = documentBytes,
                    Tamanho = tamanho
                };

                using (CadastroEntities ctx = new CadastroEntities())
                {
                    ctx.MinhasFotos.Add(foto);
                    ctx.SaveChanges();
                    ret = true;
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = " Erro : " + ex.Message;
            }
            return ret;
        }

        protected void btnExibirDados_Click(object sender, EventArgs e)
        {
            try
            {
                using (CadastroEntities ctx = new CadastroEntities())
                {
                    GridView.DataSource = from reg in ctx.MinhasFotos.ToList() select reg;
                    GridView.DataBind();
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = " Erro : " + ex.Message;
            }
        }

        private byte[] carregaImagem(int id)
        {
            try
            {
                byte[] fileBytes = null;
                using (CadastroEntities ctx = new CadastroEntities())
                {
                    var dbInfo = ctx.MinhasFotos.FirstOrDefault(doc => doc.Id == id);
                    if (dbInfo != null)
                    {
                        fileBytes = dbInfo.Foto;
                    }
                }
                return fileBytes;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}