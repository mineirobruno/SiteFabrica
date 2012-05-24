using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Presenter.Contracts
{
    public interface IProdutoDetails
    {
        int ProdutoID { get; }
        string Nome { get; set; }
        string Ingradientes { get; set; }
        string Descricao { get; set; }
        string FotoSource { get; set; }
        string PrecoReais { get; set; }
        string PrecoCentavos { get; set; }
        string Estoque { get; set; }
        string Tipo { get; set; }
        event EventHandler<EventArgs> OnInitialize;
    }
}
