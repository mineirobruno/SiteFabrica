using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO.Contracts;
using DolcePeccato.DTO;
using System.Data;

namespace DolcePeccato.DAO
{
    public class ProdutoDao: IProduto
    {

        #region IProduto Members

        public System.Collections.IList GetAllToGrid(String Tipo)
        {
            try
            {
                dbfabricaEntities context = new dbfabricaEntities();
                var x = context.produto//.Where(q => q.Tipo.ToLower() == Tipo.ToLower()).OrderBy(q => q.Nome)
                    .Select(q => new ProdutoToList
                    {
                        ProdutoID = q.ProdutoID,
                        Nome = q.Nome,
                        Tipo = q.Tipo,
                        Descricao = q.Descricao,                        
                        ValorCentavos = "0",//q.Preco,//.ToString("#.00").Split(',')[1],
                        ValorReal = "0"//q.Preco.ToString("#")
                    });

                return x.ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        public int CountToGrid()
        {
            throw new NotImplementedException();
        }

        public DataTable GetAllToRepeater(String Tipo)
        {
            try
            {
                DataTable dt = new DataTable();
                
                dt.Columns.Add("ProdutoID");
                dt.Columns.Add("Nome");
                dt.Columns.Add("Tipo");
                dt.Columns.Add("Descricao");
                dt.Columns.Add("ValorCentavos");
                dt.Columns.Add("ValorReal");

                List<produto> lista = new List<produto>();
                dbfabricaEntities context = new dbfabricaEntities();
                if (Tipo != "Todos")
                {
                    lista = context.produto.Where(q => q.Tipo.ToLower() == Tipo.ToLower()).OrderBy(q => q.Nome).ToList();
                }
                else
                {
                    lista = context.produto.OrderBy(q => q.Nome).ToList();
                }
                foreach (produto p in lista)
                {
                    object[] obj = new object[6];
                    obj[0] = p.ProdutoID;
                    obj[1] = p.Nome;
                    obj[2] = p.Tipo;
                    obj[3] = p.Descricao;
                    obj[4] = p.Preco.ToString("#.00").Split(',')[1];
                    obj[5] = p.Preco.ToString("#");
                    dt.Rows.Add(obj);
                }
                  

                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }



        public DTO.produto GetById(int _ProdutoID)
        {
            try
            {
                dbfabricaEntities context = new dbfabricaEntities();
                produto obj = context.produto.Where(q => q.ProdutoID == _ProdutoID).FirstOrDefault();
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
       
            //throw new NotImplementedException();
        }

        public void Delete(int[] ids)
        {
            throw new NotImplementedException();
        }

        public DTO.produto Insert(DTO.produto objeto)
        {
            try
            {
                dbfabricaEntities context = new dbfabricaEntities();
                context.AddToproduto(objeto);
                context.SaveChanges();
                return objeto;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            //throw new NotImplementedException();
        }

        #endregion
    }
}
