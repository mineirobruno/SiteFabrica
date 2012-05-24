using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System;
using DolcePeccato.DTO;

namespace DolcePeccato.WEBUI
{
    /// <summary>
    /// Summary description for Image
    /// </summary>
    public class Image : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.Clear();

            if (!String.IsNullOrEmpty(context.Request.QueryString["idProduto"]))
            {
                int id = Int32.Parse(context.Request.QueryString["idProduto"]);

                // Now you have the id, do what you want with it, to get the right image
                // More than likely, just pass it to the method, that builds the image
                System.Drawing.Image image = GetImage(id);                
                // Of course set this to whatever your format is of the image
                context.Response.ContentType = "image/jpeg";
                // Save the image to the OutputStream
                image.Save(context.Response.OutputStream, ImageFormat.Jpeg);
            }
            else
            {
                context.Response.ContentType = "text/html";
                context.Response.Write("<p>Id do produto Inválido!</p>");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        private System.Drawing.Image GetImage(int IdProduto)
        {
            dbfabricaEntities context = new dbfabricaEntities();
            produto p = context.produto.Where(q => q.ProdutoID == IdProduto).FirstOrDefault();
            
            byte[] imgData = p.Foto;            
            System.Drawing.Image img = byteArrayToImage(imgData);

            return img;
        }

        private System.Drawing.Image byteArrayToImage(byte[] byteArrayIn)
        {
            MemoryStream ms = new MemoryStream(byteArrayIn);
            System.Drawing.Image returnImage = System.Drawing.Image.FromStream(ms);
            return returnImage;
        }
    }
}