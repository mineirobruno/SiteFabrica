using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace Presenter.Contracts
{
    public interface IProdutoList
    {
        string TipoProduto { get; set; }
        IList AllProdutos { set; }
        event EventHandler<EventArgs> OnInitialize;
    }
}
