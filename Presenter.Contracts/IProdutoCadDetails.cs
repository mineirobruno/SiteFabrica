using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Presenter.Contracts
{
    public interface IProdutoCadDetails
    {
        int ProdutoID { get;}
        string Nome { get; set; }
        string Ingradientes { get; set; }
        string Descricao { get; set; }
        byte[] Foto { get;}
        string Preco { get; set; }
        string Estoque { get; set; }
        string Tipo { get; set; }
       
        event EventHandler<EventArgs> OnSave;
        event EventHandler<EventArgs> OnInitialize;       
    }
}
