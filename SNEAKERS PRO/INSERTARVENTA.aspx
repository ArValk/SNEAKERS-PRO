<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="INSERTARVENTA.aspx.vb" Inherits="SNEAKERS_PRO.INSERTARVENTA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Lucida Bright'; background-color: #9966FF">
        <div>
            INSERTAR VENTAS
        </div>
        <p>
            ID TENIS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            ID EMPLEADO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            FECHA DE VENTA&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            CANTIDAD DE VENTA
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="INSERTAR " />
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1INSERTARVENTA">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1INSERTARVENTA" runat="server" ConnectionString="<%$ ConnectionStrings:TIENDATENISConnectionString %>" SelectCommand="InsertarVentaTenis" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="TenisID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox2" Name="EmpleadoID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox3" DbType="Date" Name="FechaVenta" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="CantidadVendida" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="VOLVER" />
        </p>
    </form>
</body>
</html>
