using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Presenter.Contracts
{
    public interface IContato
    {
        string Nome { get; set; }
        string Email { get; set; }
        string Telefone { get; set; }
        string Mensagem { get; set; }

        event EventHandler<EventArgs> OnSendEmail;
    }
}
