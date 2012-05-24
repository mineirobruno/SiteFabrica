using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using Presenter.Contracts;
using DolcePeccato.Presenter;

namespace DolcePeccato.WEBUI.WebSitePages
{
    public partial class Contato : System.Web.UI.Page,IContato
    {
        #region Events
        public event EventHandler<EventArgs> OnSendEmail;
        #endregion


        ContatoDetails _presenter;

        #region IContato Members

        public string Nome
        {
            get
            {
                return txtNome.Text;
            }
            set
            {
                txtNome.Text = value;
            }
        }

        public string Email
        {
            get
            {
                return txtEmail.Text;
            }
            set
            {
                txtEmail.Text = value;
            }
        }

        public string Telefone
        {
            get
            {
                return txtTelefone.Text;
            }
            set
            {
                txtTelefone.Text = value;
            }
        }

        public string Mensagem
        {
            get
            {
                return txtMensagem.Text;
            }
            set
            {
                txtMensagem.Text = value;
            }
        }
        

        #endregion


        #region Methods

        protected override void OnPreInit(EventArgs e)
        {
            _presenter = new ContatoDetails(this);
            base.OnPreInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviaEmail_Click(object sender, EventArgs e)
        {
            OnSendEmail(null, null);
        }

        #endregion


    }
}