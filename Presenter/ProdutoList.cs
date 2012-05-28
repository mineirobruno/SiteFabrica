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
    public class ProdutoList
    {
        private static readonly DaoFactory _factory = new DaoFactory();
        private readonly ProdutoDao _model; 
        private readonly IProdutoList _view;

        public ProdutoList(IProdutoList view)
        {
            _view = view;
            _view.OnInitialize += new EventHandler<EventArgs>(OnInitialize);
            //_view.OnEditData += new EventHandler<EventArgs>(OnEditData);
            _model = new ProdutoDao();

        }

        /// <summary>
        /// Método invocado na inicialização do apresentador
        /// </summary>
        void OnInitialize(object sender, EventArgs e)
        {
            _view.AllProdutos = _model.GetAllToRepeater(_view.TipoProduto);
        }


        ///// <summary>
        ///// Método responsável pelo redirecionamento para tela de Edição da entidade
        ///// </summary>
        //void OnEditData(object sender, EventArgs e)
        //{
        //    try
        //    {

        //    }
        //    catch (Exception ex)
        //    {
        //        // _view.Message.Show(ex);
        //    }
        //}

        /// <summary>
        /// Método responsável pela consulta nos dados
        /// </summary>
        void OnSearch(object sender, EventArgs e)
        {     
            //_view.Data = _factory.GetIRBaseDao().GetAllToGrid();
        }



    }
}
