<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FECHASCOM.aspx.vb" Inherits="SNEAKERS_PRO.FECHASCOM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Calisto MT'; font-size: 27px; background-color: #0099FF;">
        <div>
        </div>
        <p>
            FECHA DE COMPRAS</p>
        <p>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1FECHA">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="ClienteNombre" HeaderText="ClienteNombre" SortExpression="ClienteNombre" />
                    <asp:BoundField DataField="TenisID" HeaderText="TenisID" SortExpression="TenisID" />
                    <asp:BoundField DataField="CantidadComprada" HeaderText="CantidadComprada" SortExpression="CantidadComprada" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1FECHA" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDATENISConnectionString %>" SelectCommand="BuscarComprasPorFechaUnica" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="Fecha" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="BUSCAR" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="VOLVER" />
        </p>
    </form>
</body>
</html>
