using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Presenter.Contracts;
using Framework;
using System.Configuration;
using DolcePeccato.DTO;

namespace DolcePeccato.Presenter
{
    public class ContatoDetails
    {
        private readonly IContato _view;

        public ContatoDetails(IContato view)         
        {
            this._view = view;
            this._view.OnSendEmail += new EventHandler<EventArgs>(OnSendEmail);
        }


        void OnSendEmail(object sender, EventArgs e)
        {
            String mensagem = "";
            mensagem += "\nCliente:" + _view.Nome + "\n";
            mensagem += "\nE-mail:" + _view.Email + "\n";
            mensagem += "\nTelefone:" + _view.Telefone + "\n";
            mensagem += "\nMensagem:" + _view.Mensagem + "\n";

            Email mail = new Email();
            mail.SendEmail(ConfigurationManager.AppSettings["Remetente"], "Doce Peccato - " + _view.Nome, mensagem);
        }



       
    }
}
