<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="SNEAKERS_PRO.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #0066FF">
        <div>
        </div>
        <p style="font-family: Impact; font-size: 45px;">
            TIENDA SNEAKERS PRO</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" BackColor="#009933" BorderColor="White" Text="ACTUALIZAR PRECIO" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" BackColor="#009900" Text="              ELIMINAR TENIS   " />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button5" runat="server" BackColor="#669900" style="height: 26px" Text="TOTAL COMPRA" />
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" BackColor="#669900" Text="  AGREGAR     TENIS" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button4" runat="server" BackColor="#669900" Text="CONSULTAR POR MODELO" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button6" runat="server" BackColor="#00CC00" ForeColor="Black" Text="COMENTARIOS" Width="150px" />
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    </form>
</body>
</html>
