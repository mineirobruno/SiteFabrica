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
    public class ProdutoDetails
    {

          #region Properties
          public produto Entidade { get; set; }
          #endregion

          #region Objects
          private static readonly DaoFactory _factory = new DaoFactory();
          private IProduto _model;
          public int Identificador;
          #endregion


          private readonly IProdutoDetails _view;

          public ProdutoDetails(IProdutoDetails view)
          {
              this._view = view;
              this._view.OnInitialize += new EventHandler<EventArgs>(OnInitialize);
          }

          void OnInitialize(object sender, EventArgs e)
          {
              try
              {
                  if (_view.ProdutoID != 0)
                  {
                      Identificador = _view.ProdutoID;
                      _model = _factory.GetProdutoDao();
                      Entidade = _model.GetById(Identificador);
                  }

                  if (Entidade != null)
                  {
                      PopulateForm();
                  }

              }
              catch (Exception ex)
              {
                  //_view.Message.Show(ex);
              }
          }



          private void PopulateForm()
          {
              _view.Descricao = Entidade.Descricao;
              //_view.Estoque = p.Estoque.ToString();
              _view.FotoSource = "img/Image.ashx?idProduto=" + Entidade.ProdutoID;
              _view.Ingradientes = Entidade.Ingradientes;
              _view.Nome = Entidade.Nome;
              _view.PrecoReais = Entidade.Preco.ToString("#");
              _view.PrecoCentavos = Entidade.Preco.ToString("#.00").Split(',')[1];
          }



    }
}
