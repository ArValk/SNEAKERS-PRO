<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AGREGARCOMENTARIO.aspx.vb" Inherits="SNEAKERS_PRO.AGREGARCOMENTARIO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Script MT Bold'; background-color: #3366CC; font-size: 20px">
        <div>
            CONSULTAR&nbsp; COMENTARIO DE TUS&nbsp; TENIS
        </div>
        <p>
            ID DEL TENI
        </p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button3" runat="server" Text="CONSULTAR" />
        <br />
        <br />
        <br />
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1CONSULTARCOMENTARIO">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="TenisID" HeaderText="TenisID" SortExpression="TenisID" />
                    <asp:BoundField DataField="Comentario" HeaderText="Comentario" SortExpression="Comentario" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1CONSULTARCOMENTARIO" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDATENISConnectionString %>" SelectCommand="SELECT * FROM [ComentariosTenis]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <br />
        <asp:Button ID="Button2" runat="server" Text="VOLVER" />
        <br />
    </form>
</body>
</html>
