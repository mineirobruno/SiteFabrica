<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProdutoCadastro.aspx.cs" 
Inherits="DolcePeccato.WEBUI.WebSitePages.ProdutoCadastro" MasterPageFile="~/WebSitePages/Templates/master.Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="doctitle" runat="server">
    <title>Dolce Peccato - Chocolates Artesanais</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript">
    function ValidateTextBox(source, args) {
        var cntrl_id = $(source).attr("controltovalidate");
        var is_valid = $("#" + cntrl_id).val() != "";
        $("#" + cntrl_id).css("background-color", is_valid ? "#DECCA7" : "#F6CECE");
        args.IsValid = is_valid;
    }

</script>

</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">


<div class="contact-form">
    <b class="form-title">Cadastro Produto</b>
    <p class="form-description"></p>
    <table class="form-table" cellpadding="0" cellspacing="0">
        <tr>
            <td style="width:420px;" colspan="2">
                <p class="label">Nome:</p>
                <asp:TextBox ID="txtNome" runat="server" Width="350px"/>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage=""
                    ControlToValidate="txtNome" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
            <td rowspan="3" style="width:420px;">
                <p class="label">Descricao:</p>
                <asp:TextBox id="txtDescricao" TextMode="MultiLine" Width="350px" Height="100px" runat="server" />
                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage=""
                    ControlToValidate="txtDescricao" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
        </tr>
        <tr>
            <td style="width:120px;">
                <p class="label">Preço:</p>
                <asp:TextBox ID="txtPreco" runat="server" Width="120px"/>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage=""
                    ControlToValidate="txtPreco" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>        
            <td style="width:120px;">
                <p class="label">Estoque:</p>
                <asp:TextBox ID="txtEstoque" runat="server" Width="120px"/>
                <asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage=""
                    ControlToValidate="txtEstoque" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
        </tr>
        <tr>
            <td >
                <p class="label">Foto:</p>
                <asp:FileUpload ID="fupFotos" runat="server" />
                <asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage=""
                    ControlToValidate="txtNome" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
          
         </tr>
         <tr>
            <td colspan="2">
                <p class="label">Tipo:</p>
                <asp:RadioButtonList ID="rdTipo" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Bombom" Value="Bombom"></asp:ListItem>
                    <asp:ListItem Text="Trufa" Value="Trufa"></asp:ListItem>
                    <asp:ListItem Text="Barra" Value="Barra"></asp:ListItem>
                    <asp:ListItem Text="Cesta" Value="Cesta"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td rowspan="2" style="width:420px;">
                <p class="label">Ingradientes:</p>
                <asp:TextBox id="txtIngradientes" TextMode="MultiLine" Width="350px" Height="100px" runat="server" />
                <asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage=""
                    ControlToValidate="txtIngradientes" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
        </tr>
         <tr>
            
            <td style="vertical-align:bottom;">
                <asp:Button ID="btnEnviaEmail" CssClass="bt-enviar" Text="Enviar" 
                runat="server" onclick="btnEnviaEmail_Click" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>
