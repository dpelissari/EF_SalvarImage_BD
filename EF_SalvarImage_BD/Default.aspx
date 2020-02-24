<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EF_SalvarImage_BD.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EF6 - Salvando imagens no Banco de dados</title>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <h1>EF6 - Salvando imagens no Banco de dados</h1>
            <asp:FileUpload ID="fileUpload" runat="server" Width="413px" />
            <asp:Button ID="btnIncluiImagem" runat="server" Text="Incluir Foto" OnClick="btnIncluiImagem_Click" Width="189px" Height="25px" />
            <br />
            Descrição<br />
            <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" Height="163px" Width="597px" />
            <br />
            <asp:Label ID="lblStatus" runat="server" />
            <asp:Button ID="btnExibirDados" runat="server" Height="31px" OnClick="btnExibirDados_Click" Text="Exibir Dados" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="612px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <br />
        </form>
    </div>
</body>
</html>