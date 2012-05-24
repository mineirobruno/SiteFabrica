using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Presenter.Contracts;
using DolcePeccato.Presenter;
using System.Collections;

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
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public IList AllProdutos
        {
            set
            {
                rptProdutos.DataSource = value;
                rptProdutos.DataBind();
            }
        }

        #endregion
    }
}