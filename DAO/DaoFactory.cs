using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO.Contracts;

namespace DolcePeccato.DAO
{
    public class DaoFactory: IDaoFactory
    {
        public IProduto GetProdutoDao()
        {
            try
            {
                return new ProdutoDao();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
