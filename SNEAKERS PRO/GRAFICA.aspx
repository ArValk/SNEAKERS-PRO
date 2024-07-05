<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GRAFICA.aspx.vb" Inherits="SNEAKERS_PRO.GRAFICA" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            GRAFICA</div>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
            <series>
                <asp:Series Name="Series1" XValueMember="Nombre" YValueMembers="Expr2">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDATENISConnectionString %>" SelectCommand="SELECT        COUNT(*) AS Expr1, CategoriasTenis.Nombre, SUM(VentasTenis.CantidadVendida) AS Expr2
FROM            CategoriasTenis INNER JOIN
                         VentasTenis ON CategoriasTenis.ID = VentasTenis.ID
GROUP BY CategoriasTenis.Nombre"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button2" runat="server" Text="VOLVER" />
    </form>
</body>
</html>
