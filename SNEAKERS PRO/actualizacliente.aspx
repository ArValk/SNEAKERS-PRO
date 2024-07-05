<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="actualizacliente.aspx.vb" Inherits="SNEAKERS_PRO.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Bahnschrift; background-color: #3366FF">
        <p>
            Actualiza Precio de Tenis</p>
        <p>
            &nbsp;</p>
        <p>
            ID Teni
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            Nombre
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;</p>
        <p>
            Modelo
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            Precio
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </p>
        <p>
            Stock<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" Text="Actualizar precio" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceACTUALIZARTENI">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceACTUALIZARTENI" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDATENISConnectionString %>" SelectCommand="ActualizarStockTenis" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="ID" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox2" Name="Nombre" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="Modelo" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox6" Name="Precio" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="TextBox7" Name="Stock" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button2" runat="server" Text="VOLVER" />
    </form>
</body>
</html>
