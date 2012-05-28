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
    public partial class ProdutoDetalhe : System.Web.UI.Page, IProdutoDetails
    {

        public event EventHandler<EventArgs> OnInitialize;

        ProdutoDetails _presenter;

        #region Properties

        public int ProdutoID
        {
            get { return Request.QueryString["ProdutoID"] == null ? 0 : int.Parse(Request.QueryString["ProdutoID"].ToString()); }
        }

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

        public string Ingradientes
        {
            get
            {
                return txtIngradientes.Text;
            }
            set
            {
                txtIngradientes.Text = value;
            }
        }

        public string Descricao
        {
            get
            {
                return txtDescricao.Text;
            }
            set
            {
                txtDescricao.Text = value;
            }
        }

        public string FotoSource
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                ImgFoto.ImageUrl = value; 
                
            }
        }

        public string PrecoReais
        {
            get
            {
                return txtPrecoReal.Text;
            }
            set
            {
                txtPrecoReal.Text = value;
            }
        }

        public string PrecoCentavos
        {
            get
            {
                return txtPrecoCentavos.Text;
            }
            set
            {
                txtPrecoCentavos.Text = value;
            }
        }

        public string Estoque
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

        public string Tipo
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

        #endregion

        #region Methods

        protected void Page_Load(object sender, EventArgs e)
        {
            OnInitialize(null,null);
        }

        protected override void OnPreInit(EventArgs e)
        {
            _presenter = new ProdutoDetails(this);
            base.OnPreInit(e);
        }

        //protected void btnEnviaEmail_Click(object sender, EventArgs e)
        //{
        //    OnSave(null, null);
        //}

      

        #endregion

    }

}