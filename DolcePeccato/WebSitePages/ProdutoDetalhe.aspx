<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProdutoDetalhe.aspx.cs" 
Inherits="DolcePeccato.WEBUI.WebSitePages.ProdutoDetalhe" MasterPageFile="~/WebSitePages/Templates/master.Master"%>


<asp:Content ID="Content1" ContentPlaceHolderID="doctitle" runat="server">
    <title>Dolce Peccato - Chocolates Artesanais</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    $(document).ready(function () {
        $('#menu li a#produtos').addClass('current');
    });
</script>
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
	 <div class="left">
        <div class="page-image">
            <asp:Image ID="ImgFoto" ImageUrl="" runat="server" Width="100%" Height="100%" />
        </div>
        <div class="img-shadow"></div>
    </div>
    <div class="right">
    	<%--<p class="produto-title">Aenean pharetra gravida commodo</p>--%>
        <asp:Label ID="txtNome" CssClass="produto-title" Text="Nome do Produto" runat="server"></asp:Label>
        <%--<p class="produto-summary">Nam eleifend interdum ullamcorper. Suspendisse odio, hendrerit sed euismod non, faucibus non dui. Ut tortor purus, elementum ac vestibulum quis, interdum non diam. Cras lacinia auctor velit, sit amet tempor est laoreet at.</p>--%>
        <asp:Label ID="txtDescricao" CssClass="produto-summary" Text="aqui vai a descricao dfbfdhfdklsçlfksdlbfsdkbfsdkbfsdklfjsklfsbkldsjf, fdbsklfbsdkkfjsd, dfskjbfdskfsfdslfbsd" runat="server"></asp:Label>
        <div class="price-slide">
            <span class="currency">R$ </span>
            <%--<span class="value">39</span>--%>
            <asp:Label ID="txtPrecoReal" CssClass="value" Text="38" runat="server"></asp:Label>
            <%--<span class="cents">,90</span>--%>
            <asp:Label ID="txtPrecoCentavos" CssClass="cents" Text=",80" runat="server"></asp:Label>
        </div>
        <a class="bt-comprar-produto" href="#">Comprar</a>
    </div>
    <div class="separator"></div>
    <div class="produto-text">
    	<p>Ingradientes:</p>
        <asp:Label ID="txtIngradientes" CssClass="produto-text" Text="Nome do Produto" runat="server"></asp:Label>        
        <%--<ul>
        	<li>Mauris porta dolor eu massa lacinia id tincidunt orci pretium;</li>
            <li>Nam tincidunt, augue vitae consequat condimentum, sem metus semper sem, et volutpat neque arcu in mauris;</li>
            <li>Curabitur eu risus lectus;</li>
            <li>Vivamus sed nibh id sem tempus sollicitudin ultricies non mi;</li>
            <li>Nullam non turpis magna.</li>
        </ul>--%>
    <%--    <p>Cras nisi nisl, pretium non eleifend in, rutrum id est. Fusce adipiscing lacus non tortor rhoncus placerat. Duis in enim ac metus blandit hendrerit dictum id mi. Donec placerat cursus massa commodo vulputate. Etiam dui purus, eleifend a vulputate vel, commodo at leo. Donec ullamcorper consectetur massa, a suscipit purus ornare et. Nunc quis diam eros, eget semper nisi. Cras dictum neque eu sem varius sollicitudin. Curabitur lectus ante, iaculis sit amet porta in, mattis vitae purus. Fusce vitae rutrum sem. Proin hendrerit ipsum non odio sodales bibendum. In nulla turpis, auctor nec consectetur ut, consectetur a sem. Integer et aliquet ligula. Nulla facilisi. Nunc eget velit justo. Ut bibendum nisi vitae metus rutrum in molestie urna elementum. </p>--%>
    </div>
    <div class="separator"></div>
    <a class="bt-back" href="ProdutoLista.aspx">Voltar</a>

</asp:Content>

