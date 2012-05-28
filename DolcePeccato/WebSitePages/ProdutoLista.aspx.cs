using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Presenter.Contracts;
using DolcePeccato.Presenter;
using System.Collections;
using System.Data;
using DolcePeccato.DTO;

namespace DolcePeccato.WEBUI.WebSitePages
{
    public partial class ProdutoLista : System.Web.UI.Page, IProdutoList
    {

        public event EventHandler<EventArgs> OnInitialize;

        ProdutoList _presenter;

        protected override void OnPreInit(EventArgs e)
        {
            _presenter = new ProdutoList(this);
            base.OnPreInit(e);
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                OnInitialize(null, null);
            }

        }

        #region IProdutoList Members

        public string TipoProduto
        {
            get { return Request.QueryString["TipoProduto"] == null ? "Todos" : Request.QueryString["TipoProduto"].ToString(); }
        }

        public DataTable AllProdutos
        {
            set
            {                                
                rptProdutos.DataSource = value;
                rptProdutos.DataBind();
            }
        }

        #endregion

        protected void rptProdutos_DataBinding(object sender, EventArgs e)
        {

        }

      
    }
}