<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="consultarventas.aspx.vb" Inherits="SNEAKERS_PRO.consultarventas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="ZZZZZ">
        <p>
            CONSULTA
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1consulta" DataTextField="Nombre" DataValueField="Nombre">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1consulta" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDATENISConnectionString %>" SelectCommand="SELECT [Modelo] FROM [Tenis]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1co">
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="CantidadComprada" HeaderText="CantidadComprada" SortExpression="CantidadComprada" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1co" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDATENISConnectionString %>" SelectCommand="SELECT        Tenis.Nombre, Compras.CantidadComprada
FROM            Tenis INNER JOIN
                         Compras ON Tenis.ID = Compras.TenisID
						 WHERE(Compras.CantidadComprada=@Nombre)
">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Nombre" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button2" runat="server" Text="VOLVER" />
        <br />
    </form>
</body>
</html>
