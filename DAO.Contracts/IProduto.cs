using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DolcePeccato.DTO;
using System.Collections;
using System.Data;
namespace DAO.Contracts
{
    public interface IProduto
    {
        IList GetAllToGrid(String Tipo);
        int CountToGrid();
        produto GetById(int IRBaseId);
        void Delete(int[] ids);
        produto Insert(produto P);
        DataTable GetAllToRepeater(String Tipo);
    }
}
