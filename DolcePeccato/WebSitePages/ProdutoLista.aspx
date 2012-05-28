<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProdutoLista.aspx.cs" 
Inherits="DolcePeccato.WEBUI.WebSitePages.ProdutoLista" MasterPageFile="~/WebSitePages/Templates/master.Master"%>


<asp:Content ID="Content1" ContentPlaceHolderID="doctitle" runat="server">
    <title>Dolce Peccato - Chocolates Artesanais</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<!-- PRODUTOS PAGINATION -->
<script type="text/javascript" src="js/jquery.pajinate.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#lista-produtos').pajinate({
            items_per_page: 6
        });
    });
</script>

<!-- PRODUTOS VIEW -->
<script type="text/javascript">
    $(window).load(function () {
        $('#views #table').click(function () {
            $('#lista-produtos').removeClass().hide().addClass('table').fadeIn('slow');
        });
        $('#views #list').click(function () {
            $('#lista-produtos').removeClass().hide().addClass('list').fadeIn('slow');
        });
        $('.views-option').click(function () {
            $('.views-option').removeClass('active');
            $(this).addClass('active');
        });
    });
</script>

</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
	
    <div id="filters">
    	<a href="ProdutoLista.aspx" class="filters-option active" id="todos" title="Listar todos os produtos">Todos</a>
        <a href="ProdutoLista.aspx?TipoProduto=Cesta" class="filters-option" id="cestas" title="Listar somente as cestas">Cestas</a>
        <a href="ProdutoLista.aspx?TipoProduto=Bombom" class="filters-option" id="bombons" title="Listar somente os bombons">Bombons</a>
    </div>
    <div id="views">
    	<div class="views-option active" id="table" title="Visualizar em forma de tabela"></div>
        <div class="views-option" id="list" title="Visualizar em forma de lista"></div>
    </div>
    <div class="separator"></div>
    <div id="lista-produtos" class="table">
    	<div class="info_text"></div>
        <ul class="content">
            <asp:Repeater ID="rptProdutos" runat="server" ondatabinding="rptProdutos_DataBinding">
            <ItemTemplate>
            <li class="bombom">
             	<div class="img-produto">
                    <asp:Image ID="ImgFoto" ImageUrl='<%# "img/Image.ashx?idProduto=" +DataBinder.Eval(Container.DataItem, "ProdutoID")%>' runat="server" Width="100%" Height="100%" />
                </div>
                <div class="tipo-produto"></div>
                <asp:Label ID="txtNome" runat="server" CssClass="nome-produto" Text='<%# DataBinder.Eval(Container.DataItem, "Nome") %>'/>
                <div class="price-lista">
                    <span class="currency">R$</span>                    
                    <asp:Label ID="txtPrecoReal" CssClass="value" Text='<%# DataBinder.Eval(Container.DataItem, "ValorReal")%>' runat="server"></asp:Label>
                    <span class="comma">,</span>
                    <asp:Label ID="txtPrecoCentavos" CssClass="cents" Text='<%# DataBinder.Eval(Container.DataItem, "ValorCentavos")%>' runat="server"></asp:Label>
                    
                </div>
                <asp:Label ID="txtDescricao" CssClass="resumo-produto" Text='<%# DataBinder.Eval(Container.DataItem, "Descricao")%>' runat="server"></asp:Label>
                <a class="bt-yellow" href="#">Comprar</a>
                <a class="bt-more" href='<%# "ProdutoDetalhe.aspx?ProdutoID=" +DataBinder.Eval(Container.DataItem, "ProdutoID")%>' >Detalhes</a>
             </li>
            </ItemTemplate>
             </asp:Repeater>
        </ul>
        <div class="page_navigation"></div>
    </div>

</asp:Content>

