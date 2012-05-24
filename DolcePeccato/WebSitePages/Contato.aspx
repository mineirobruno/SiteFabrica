<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" 
Inherits="DolcePeccato.WEBUI.WebSitePages.Contato" MasterPageFile="~/WebSitePages/Templates/master.Master"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="doctitle" runat="server">
    <title>Dolce Peccato - Chocolates Artesanais</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript">
    function ValidateTextBox(source, args) {
        var cntrl_id = $(source).attr("ControlToValidate");
        alert(cntrl_id);
        var is_valid = $("#" + cntrl_id).val() != "";
        $("#" + cntrl_id).css("background-color", is_valid ? "#DECCA7" : "#F6CECE");        
        args.IsValid = is_valid;
    }

</script>

</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
<div class="left">
    <div class="page-image">
        <%--<img src="img/img-contato.jpg"/>--%>

        <iframe width="400" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
        src="http://maps.google.com.br/maps?f=q&amp;source=s_q&amp;hl=pt-BR&amp;geocode=&amp;q=cidade+baixa&amp;aq=&amp;sll=-14.239424,-53.186502&amp;sspn=44.879341,56.513672&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=Cidade+Baixa,+Porto+Alegre+-+Rio+Grande+do+Sul&amp;ll=-30.040199,-51.222613&amp;spn=0.020061,0.027595&amp;z=14&amp;output=embed">
        </iframe>
        <%--<br />
        <small>
        <a href="http://maps.google.com.br/maps?f=q&amp;source=embed&amp;hl=pt-BR&amp;geocode=&amp;q=cidade+baixa&amp;aq=&amp;sll=-14.239424,-53.186502&amp;sspn=44.879341,56.513672&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=Cidade+Baixa,+Porto+Alegre+-+Rio+Grande+do+Sul&amp;ll=-30.040199,-51.222613&amp;spn=0.020061,0.027595&amp;z=14" style="color:#0000FF;text-align:left">Exibir mapa ampliado</a></small>--%>


    </div>
    <div class="img-shadow"></div>
</div>
<div class="right">
    <p class="page-title">Entre em contato conosco</p>
    <div class="contact-info">
        <p class="phone">(051) 3377.3572</p>
        <p class="e-mail">chocolates.dolcepeccato@gmail.com</p>
        <p class="address">Rua Lorem Ipsum Pellentesque, nº 1520<br/>
        Bairro Cidade Baixa - Porto Alegre/RS</p>
    </div>
</div>
<div class="separator"></div>
<div class="contact-form">
    <b class="form-title">Envie uma mensagem</b>
    <p class="form-description">Preencha os campos do formulário abaixo e envie sua mensagem, crítica ou sugestão. Em breve, entraremos em contato!</p>
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
                <%--<textarea name="" style="width:350px;height:172px;"></textarea>--%>
                <asp:TextBox id="txtMensagem" TextMode="MultiLine" Width="350px" Height="175px" runat="server" />
                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage=""
                    ControlToValidate="txtMensagem" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <p class="label">E-mail:</p>
                <%--<input style="width:350px;" name="" type="text" />--%>
                <asp:TextBox ID="txtEmail" runat="server" Width="350px"/>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage=""
                    ControlToValidate="txtEmail" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <p class="label">Telefone:</p>
                <%--<input style="width:350px;" name="" type="text" />--%>
                <asp:TextBox ID="txtTelefone" runat="server" Width="350px"/>
                <asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage=""
                    ControlToValidate="txtTelefone" ClientValidationFunction="ValidateTextBox"
                    ValidateEmptyText="True" EnableClientScript="true"/>              
            </td>
            <td style="vertical-align:bottom;">
                <%--<input class="bt-enviar" name="" type="submit" value="Enviar" />--%>
                <asp:Button ID="btnEnviaEmail" CssClass="bt-enviar" Text="Enviar" 
                runat="server" onclick="btnEnviaEmail_Click" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>
