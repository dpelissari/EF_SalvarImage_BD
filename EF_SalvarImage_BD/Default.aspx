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
            <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" Height="83px" Width="597px" />
            <br />
            <asp:Label ID="lblStatus" runat="server" />
            <br />
            <asp:Button ID="btnExibirDados" runat="server" Height="31px" OnClick="btnExibirDados_Click" Text="Exibir Dados" Width="137px" />
            <br />
            <br />
            <asp:Button ID="btnExibirFoto" runat="server" OnClick="btnExibirFoto_Click" Text="Exibir Foto" Width="139px" Height="30px" />
            <br />
            <table>
                <tr>
                    <td>
                        <br />
                        <br />
                        <asp:GridView ID="GridView" runat="server" CellPadding="4" Height="172px" Width="581px" AutoGenerateSelectButton="True" GridLines="None" ForeColor="#333333">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <br />
                    </td>
                    <td>
                        <br />
                        <asp:Image ID="imgFoto" runat="server" Height="279px" Width="280px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
