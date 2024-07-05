<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BUSCAREMPLEADO.aspx.vb" Inherits="SNEAKERS_PRO.BUSCAREMPLEADO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Segoe Script'; font-size: 28px; background-color: #0099FF">
        <div>
        </div>
        <p>
            BUSCAR EMPLEADOS</p>
        <p>
            NOMBRE EMPELADO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="BUSCAR" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1BUSCAREMPLEADO">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Puesto" HeaderText="Puesto" SortExpression="Puesto" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1BUSCAREMPLEADO" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDATENISConnectionString %>" SelectCommand="BuscarEmpleado" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="NombreBuscado" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button2" runat="server" Text="VOLVER" />
    </form>
</body>
</html>
