<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bombons.aspx.cs" 
Inherits="DolcePeccato.WEBUI.WebSitePages.ProdutoBombons" MasterPageFile="~/WebSitePages/Templates/master.Master"%>




<asp:Content ID="Content1" ContentPlaceHolderID="doctitle" runat="server">
    <title>Dolce Peccato - Chocolates Artesanais</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<!-- PRODUTOS PAGINATION -->
<script type="text/javascript" src="js/jquery.pajinate.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#lista-produtos ul li').not('.bombom').remove();
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
    	<a href="ProdutoList.aspx" class="filters-option" id="todos" title="Listar todos os produtos">Todos</a>
        <a href="Cestas.aspx" class="filters-option" id="cestas" title="Listar somente as cestas">Cestas</a>
        <a href="Bombons.aspx" class="filters-option active" id="bombons" title="Listar somente os bombons">Bombons</a>
    </div>
    <div id="views">
    	<div class="views-option active" id="table" title="Visualizar em forma de tabela"></div>
        <div class="views-option" id="list" title="Visualizar em forma de lista"></div>
    </div>
    <div class="separator"></div>
    <div id="lista-produtos" class="table">
    	<div class="info_text"></div>
        <ul class="content">
             <li class="bombom">
             	<div class="img-produto"><img src="img/img-produto.jpg"/></div>
                <div class="tipo-produto"></div>
                <p class="nome-produto">Aenean pharetra gravida commodo</p>
                <div class="price-lista">
                    <span class="currency">R$</span>
                    <span class="value">39</span><span class="comma">,</span>
                    <span class="cents">90</span>
                </div>
                <p class="resumo-produto">Nam eleifend interdum ullamcorper. Suspendisse odio, hendrerit sed euismod non, faucibus non dui. Ut tortor purus, elementum ac vestibulum quis, interdum non diam.</p>
                <a class="bt-yellow" href="#">Comprar</a>
                <a class="bt-more" href="ProdutoDetalhe.aspx">Detalhes</a>
             </li>
             <li class="cesta">
             	<div class="img-produto"><img src="img/slide1.jpg"/></div>
                <div class="tipo-produto"></div>
                <p class="nome-produto">Aenean pharetra gravida commodo</p>
                <div class="price-lista">
                    <span class="currency">R$</span>
                    <span class="value">39</span><span class="comma">,</span>
                    <span class="cents">90</span>
                </div>
                <p class="resumo-produto">Nam eleifend interdum ullamcorper. Suspendisse odio, hendrerit sed euismod non, faucibus non dui. Ut tortor purus, elementum ac vestibulum quis, interdum non diam.</p>
                <a class="bt-yellow" href="#">Comprar</a>
                <a class="bt-more" href="ProdutoDetalhe.aspx">Detalhes</a>
             </li>
             <li class="cesta">
             	<div class="img-produto"><img src="img/slide2.jpg"/></div>
                <div class="tipo-produto"></div>
                <p class="nome-produto">Aenean pharetra gravida commodo</p>
                <div class="price-lista">
                    <span class="currency">R$</span>
                    <span class="value">39</span><span class="comma">,</span>
                    <span class="cents">90</span>
                </div>
                <p class="resumo-produto">Nam eleifend interdum ullamcorper. Suspendisse odio, hendrerit sed euismod non, faucibus non dui. Ut tortor purus, elementum ac vestibulum quis, interdum non diam.</p>
                <a class="bt-yellow" href="#">Comprar</a>
                <a class="bt-more" href="ProdutoDetalhe.aspx">Detalhes</a>
             </li>
             <li class="bombom">
             	<div class="img-produto"><img src="img/img-produto.jpg"/></div>
                <div class="tipo-produto"></div>
                <p class="nome-produto">Aenean pharetra gravida commodo</p>
                <div class="price-lista">
                    <span class="currency">R$</span>
                    <span class="value">39</span><span class="comma">,</span>
                    <span class="cents">90</span>
                </div>
                <p class="resumo-produto">Nam eleifend interdum ullamcorper. Suspendisse odio, hendrerit sed euismod non, faucibus non dui. Ut tortor purus, elementum ac vestibulum quis, interdum non diam.</p>
                <a class="bt-yellow" href="#">Comprar</a>
                <a class="bt-more" href="ProdutoDetalhe.aspx">Detalhes</a>
             </li>
             <li class="bombom">
             	<div class="img-produto"><img src="img/img-produto.jpg"/></div>
                <div class="tipo-produto"></div>
                <p class="nome-produto">Aenean pharetra gravida commodo</p>
                <div class="price-lista">
                    <span class="currency">R$</span>
                    <span class="value">39</span><span class="comma">,</span>
                    <span class="cents">90</span>
                </div>
                <p class="resumo-produto">Nam eleifend interdum ullamcorper. Suspendisse odio, hendrerit sed euismod non, faucibus non dui. Ut tortor purus, elementum ac vestibulum quis, interdum non diam.</p>
                <a class="bt-yellow" href="#">Comprar</a>
                <a class="bt-more" href="ProdutoDetalhe.aspx">Detalhes</a>
             </li>
             <li class="cesta">
             	<div class="img-produto"><img src="img/slide1.jpg"/></div>
                <div class="tipo-produto"></div>
                <p class="nome-produto">Aenean pharetra gravida commodo</p>
                <div class="price-lista">
                    <span class="currency">R$</span>
                    <span class="value">39</span><span class="comma">,</span>
                    <span class="cents">90</span>
                </div>
                <p class="resumo-produto">Nam eleifend interdum ullamcorper. Suspendisse odio, hendrerit sed euismod non, faucibus non dui. Ut tortor purus, elementum ac vestibulum quis, interdum non diam.</p>
                <a class="bt-yellow" href="#">Comprar</a>
                <a class="bt-more" href="ProdutoDetalhe.aspx">Detalhes</a>
             </li>
             <li class="cesta">
             	<div class="img-produto"><img src="img/slide2.jpg"/></div>
                <div class="tipo-produto"></div>
                <p class="nome-produto">Aenean pharetra gravida commodo</p>
                <div class="price-lista">
                    <span class="currency">R$</span>
                    <span class="value">39</span><span class="comma">,</span>
                    <span class="cents">90</span>
                </div>
                <p class="resumo-produto">Nam eleifend interdum ullamcorper. Suspendisse odio, hendrerit sed euismod non, faucibus non dui. Ut tortor purus, elementum ac vestibulum quis, interdum non diam.</p>
                <a class="bt-yellow" href="#">Comprar</a>
                <a class="bt-more" href="ProdutoDetalhe.aspx">Detalhes</a>
             </li>
             <li class="bombom">
             	<div class="img-produto"><img src="img/img-produto.jpg"/></div>
                <div class="tipo-produto"></div>
                <p class="nome-produto">Aenean pharetra gravida commodo</p>
                <div class="price-lista">
                    <span class="currency">R$</span>
                    <span class="value">39</span><span class="comma">,</span>
                    <span class="cents">90</span>
                </div>
                <p class="resumo-produto">Nam eleifend interdum ullamcorper. Suspendisse odio, hendrerit sed euismod non, faucibus non dui. Ut tortor purus, elementum ac vestibulum quis, interdum non diam.</p>
                <a class="bt-yellow" href="#">Comprar</a>
                <a class="bt-more" href="ProdutoDetalhe.aspx">Detalhes</a>
             </li>
        </ul>
        <div class="page_navigation"></div>
    </div>

</asp:Content>



