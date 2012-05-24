using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAO.Contracts
{
    public interface IDaoFactory
    {

        IProduto GetProdutoDao();



    }
}
