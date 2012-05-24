<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteCadastro.aspx.cs" 
Inherits="DolcePeccato.WEBUI.WebSitePages.ClienteCadastro" MasterPageFile="~/WebSitePages/Templates/master.Master" %>

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
    <b class="form-title">Cadastro Cliente</b>
    <p class="form-description">Preencha os campos do formulário para acesso a nossa área de compras!</p>
    <table class="form-table" cellpadding="0" cellspacing="0">
        <tr>
            <td style="width:420px;">
                <p class="label">Nome:</p>
                <asp:TextBox ID="txtNome" runat="server" Width="350px"/>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage=""
                    ControlToValidate="txtNome" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
            <td rowspan="3" style="width:420px;">
                <p class="label">Mensagem:</p>
                <asp:TextBox id="txtMensagem" TextMode="MultiLine" Width="350px" Height="175px" runat="server" />
                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage=""
                    ControlToValidate="txtMensagem" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <p class="label">E-mail:</p>
                <asp:TextBox ID="txtEmail" runat="server" Width="350px"/>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage=""
                    ControlToValidate="txtEmail" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <p class="label">Telefone:</p>
                <asp:TextBox ID="txtTelefone" runat="server" Width="350px"/>
                <asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage=""
                    ControlToValidate="txtTelefone" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>              
            </td>
            <td style="vertical-align:bottom;">
                <asp:Button ID="btnEnviaEmail" CssClass="bt-enviar" Text="Enviar" 
                runat="server" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>
