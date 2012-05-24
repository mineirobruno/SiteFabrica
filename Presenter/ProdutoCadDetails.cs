using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Presenter.Contracts;
using DolcePeccato.DTO;
using DolcePeccato.DAO;
using DAO.Contracts;

namespace DolcePeccato.Presenter
{
    public class ProdutoCadDetails
    {

        #region Properties
        public produto Entidade { get; set; }
        #endregion

        #region Objects
        private static readonly DaoFactory _factory = new DaoFactory();        
        private readonly IProdutoCadDetails _view;
        private IProduto _model;
        public int Identificador;
        #endregion


        public ProdutoCadDetails(IProdutoCadDetails view)         
        {
            this._view = view;
            this._view.OnSave += new EventHandler<EventArgs>(OnSave);
            this._view.OnInitialize += new EventHandler<EventArgs>(OnInitialize);
        }


        void OnInitialize(object sender, EventArgs e)
        {
            try
            {
                _model = _factory.GetProdutoDao();

                if (_view.ProdutoID != 0)
                {
                    Identificador = _view.ProdutoID;
                    Entidade = _model.GetById(Identificador);
                }

                if (Entidade != null)
                {
                    PopulateForm();
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }


        }


        void OnSave(object sender, EventArgs e)
        {
            _model = _factory.GetProdutoDao();
            try
            {
                Prepare();
                var option = _model.Insert(Entidade);
                //_view.Redirect.LoadView("ListAnoBase");
                
            }
            catch (Exception ex)
            {
                throw ex;
               //_view.Message.Show(new CustomMessage(ex.Message, ExceptionType.Erro));
            }
        }


        private void Prepare()
        {
            if (Entidade == null) Entidade = new produto();

            if (_view.ProdutoID != 0)
                Entidade.ProdutoID = _view.ProdutoID;


            Entidade.Nome = _view.Nome;
            Entidade.Ingradientes = _view.Ingradientes;
            Entidade.Descricao = _view.Descricao;
            Entidade.Foto = _view.Foto;
            Entidade.Preco = decimal.Parse(_view.Preco);
            Entidade.Estoque = long.Parse(_view.Estoque);
            Entidade.Tipo = _view.Tipo;
        }

        private void PopulateForm()
        {
            _view.Nome = Entidade.Nome;
            _view.Ingradientes = Entidade.Ingradientes;
            _view.Descricao = Entidade.Descricao;
            _view.Preco = Entidade.Preco.ToString() ;
            _view.Estoque = Entidade.Estoque.ToString();
            _view.Tipo = Entidade.Tipo;
        }
    }
}
