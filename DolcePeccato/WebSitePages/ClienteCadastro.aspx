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

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server" >

<div id="CadCliente"  class="contact-form" style="margin-left:80px;">
<b class="form-title">Cadastro Cliente</b>
<p class="form-description">Preencha os campos do formulário para acesso a nossa área de compras!</p>
<table class="form-table" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <p class="label">Nome:</p>
                <asp:TextBox ID="txtNome" runat="server" Width="350px"/> 
                <asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage=""
                    ControlToValidate="txtNome" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
            <td>
                <p class="label">Tipo:</p>
                <asp:RadioButtonList id="rdTipo" runat="server" Width="400"
                    RepeatDirection="Horizontal" >                    
                    <asp:ListItem Text="Pessoa Física" Value="PF"></asp:ListItem>
                    <asp:ListItem Text="Pessoa Jurídica" Value="PJ"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="validator2" runat="server" ControlToValidate="rdTipo"/>
            </td>
        </tr>
         <tr>
            <td>
                <p class="label">Email:</p>
                <asp:TextBox ID="txtEmail" runat="server" Width="350px"/> 
                <asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage=""
                    ControlToValidate="txtEmail" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
            <td>
                <p class="label">Ramo:</p>
                <asp:TextBox id="txtRamo" runat="server" Width="350px" />  
                <asp:CustomValidator ID="CustomValidator8" runat="server" ErrorMessage=""
                    ControlToValidate="txtRamo" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <p class="label">Rua:</p>
                <asp:TextBox ID="txtRua" runat="server" Width="350px"/> 
                <asp:CustomValidator ID="CustomValidator6" runat="server" ErrorMessage=""
                    ControlToValidate="txtNome" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
            <td>
                <p class="label">Número/Comp:</p>
                <asp:TextBox id="txtNumero" runat="server" Width="350px" />  
                <asp:CustomValidator ID="CustomValidator10" runat="server" ErrorMessage=""
                    ControlToValidate="txtRamo" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <p class="label">Bairro:</p>
                <%--<asp:TextBox ID="TextBox3" runat="server" Width="350px"/> --%>
                <asp:DropDownList ID="ddlBairro" runat="server" AutoPostBack="false">
                    <asp:ListItem Text="Selecione"></asp:ListItem>
                    <asp:ListItem Text="Cidade Baixa" Value="1"></asp:ListItem>
                </asp:DropDownList>
                <asp:CustomValidator ID="CustomValidator9" runat="server" ErrorMessage=""
                    ControlToValidate="txtNome" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
            <td>
            <table>
            <tr>
                <td style="width:100px;">
                    <p class="label" style="width:100px;">Cep:</p>
                    <asp:TextBox id="txtCep" runat="server" style="width:100px;" />  
                    <asp:CustomValidator ID="CustomValidator11" runat="server" ErrorMessage=""
                        ControlToValidate="txtRamo" ClientValidationFunction="ValidateTextBox"
                        ValidateEmptyText="True" EnableClientScript="true"/>
                </td>
                <td style="width:60px;"></td>
                <td align="right">
                    <p class="label" style="text-align:left;">Telefone:</p>
                    <asp:TextBox id="txtTelefone" runat="server" Width="175px" />  
                    <asp:CustomValidator ID="CustomValidator12" runat="server" ErrorMessage=""
                        ControlToValidate="txtRamo" ClientValidationFunction="ValidateTextBox"
                        ValidateEmptyText="True" EnableClientScript="true"/>
                </td>
            </tr>
            </table>
            </td>
        </tr>
        <tr>
        <td></td>       
        <td style="vertical-align:bottom;">
            <table style="border-top:5px;" >
            <tr>
            <td style="width:250px;">            
             </td>
             <td>
                <asp:Button ID="btnSalvar" CssClass="bt-enviar" 
                Text="Salvar" runat="server" />
             </td>
             </tr>
             </table>
        </td>
        </tr>
</table>
</div>

</asp:Content>
