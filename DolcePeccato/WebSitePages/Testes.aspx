<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testes.aspx.cs" Inherits="DolcePeccato.WEBUI.WebSitePages.Testes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<asp:Image ID="img1" runat="server" ></asp:Image>--%>
         <asp:Image ID="myImage" ImageUrl="img/Image.ashx?" runat="server" />
    </div>
    </form>
</body>
</html>
