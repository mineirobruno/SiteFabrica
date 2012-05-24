using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
//using System.Web.UI.WebControls;
using DolcePeccato.DTO;
using System.Drawing.Imaging;
using System.IO;

namespace DolcePeccato.WEBUI.WebSitePages
{
    public partial class Testes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //salvaimagemDB();

            //dbfabricaEntities context = new dbfabricaEntities();
            //produto p = new produto();
            //p.Nome = "produto 1";
            //p.Preco = 10;
            //p.Estoque = 10;
            //context.AddToproduto(p);
            //context.SaveChanges();
            //getImageDB();
        }

        public void getImageDB()
        { 
            dbfabricaEntities context = new dbfabricaEntities();
            produto p = context.produto.Where(q => q.ProdutoID == 2).FirstOrDefault();

            byte[] imgData = p.Foto;
            System.Drawing.Image img = byteArrayToImage(imgData);

            
        }


        public void salvaimagemDB()
        {
            dbfabricaEntities context = new dbfabricaEntities();
            produto p = new produto();
            p.Nome = "produto 1";
            p.Preco = 10;
            p.Estoque = 10;
            System.Drawing.Image imgPhoto = System.Drawing.Image.FromFile(@"c:\Chocolate.jpg");
            byte[] foto = ConvertImageToByteArray(imgPhoto, ImageFormat.Jpeg);
            p.Foto = foto;
            context.AddToproduto(p);
            context.SaveChanges();
        }


        private static byte[] ConvertImageToByteArray(System.Drawing.Image imageToConvert,
            ImageFormat formatOfImage)
        {
            byte[] Ret;

            try
            {

                using (MemoryStream ms = new MemoryStream())
                {
                    imageToConvert.Save(ms, formatOfImage);
                    Ret = ms.ToArray();
                }
            }
            catch (Exception) { throw; }

            return Ret;
        }


        public System.Drawing.Image byteArrayToImage(byte[] byteArrayIn)
        {
            MemoryStream ms = new MemoryStream(byteArrayIn);
            System.Drawing.Image returnImage = System.Drawing.Image.FromStream(ms);
            return returnImage;
        }

    }
}