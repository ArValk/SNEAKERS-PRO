<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CONSULTAR.aspx.vb" Inherits="SNEAKERS_PRO.CONSULTAR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'High Tower Text'; background-color: #6666FF">
        <div>
        </div>
        <p>
            CONSULTAR
        </p>
        <p>
            MODELO&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="CONSULTAR " />
        </p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1CONSULTAR">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1CONSULTAR" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDATENISConnectionString %>" SelectCommand="ConsultarTenisPorModelo" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Modelo" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="VOLVER" />
    </form>
</body>
</html>
