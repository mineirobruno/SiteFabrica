using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using System.Data;

namespace Presenter.Contracts
{
    public interface IProdutoList
    {
        string TipoProduto { get; }
        DataTable AllProdutos { set; }
        event EventHandler<EventArgs> OnInitialize;
    }
}
