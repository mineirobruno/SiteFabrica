using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Presenter.Contracts;
using DolcePeccato.Presenter;

namespace DolcePeccato.WEBUI.WebSitePages
{
    public partial class ProdutoCadastro : System.Web.UI.Page, IProdutoCadDetails
    {
        public event EventHandler<EventArgs> OnSave;
        public event EventHandler<EventArgs> OnInitialize;

        ProdutoCadDetails _presenter;

       

        #region Properties

        public int ProdutoID
        {
            get
            {
                return Request.QueryString["id"] == null ? 0 : int.Parse(Request.QueryString["id"].ToString());
            }
        }

        public string Nome
        {
            get { return txtNome.Text; }
            set { txtNome.Text = value; }
        }

        public string Ingradientes
        {
            get { return txtIngradientes.Text; }
            set { txtIngradientes.Text = value; }
        }

        public string Descricao
        {
            get { return txtDescricao.Text; }
            set { txtDescricao.Text = value; }
        }

        public string Preco
        {
            get { return txtPreco.Text; }
            set { txtPreco.Text = value; }
        }

        public string Estoque
        {
            get { return txtEstoque.Text; }
            set { txtEstoque.Text = value; }
        }

        public byte[] Foto
        {
            get { 
                return fupFotos.FileBytes; 
            }            
        }

        public string Tipo
        {
            get
            {
                return rdTipo.SelectedValue;    
            }
            set 
            {
                rdTipo.SelectedValue = value;
            }
        }

        #endregion

        #region Methods

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                OnInitialize(null, null);
            }
        }

        protected void btnEnviaEmail_Click(object sender, EventArgs e)
        {
            OnSave(null, null);
        }

        protected override void OnPreInit(EventArgs e)
        {
            _presenter = new ProdutoCadDetails(this);
            base.OnPreInit(e);
        }

        #endregion







    }
}