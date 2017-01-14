<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="CalculadoraCurso.Calculadora" %>

<script runat="server">
protected void Page_Load(object sender, EventArgs e)
{
    this.SumaButton.Attributes.Add("OnClick", "javascript:return validar();");
}
</script>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calcuañldora</title>
    <link href="Estilo.css" rel="stylesheet" />





    <script lang="javascript">
        function validar()
        {
            <%--   var campo1 =  '<%=Numero1TextBox.ClientID%>';--%>

            var campo1 = document.getElementById(TextBox1);

            if (campo1.value == '')
            {
                alert('El campo esta vacio')

            }
        }
    </script>









</head>
<body>
    <form id="form1" runat="server">

        <h1>Calculadora</h1>
    <div>
        <table>
            <tr>
                <td>Numero1:</td>
                <td><asp:TextBox ID="Numero1TextBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Numero2:</td>
                <td><asp:TextBox ID="Numero2TextBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="ResultadoLabel" runat="server" Text="Resultado"></asp:Label></td>
                <td><asp:Button ID="SumaButton" runat="server" Text="Sumar" OnClick="SumaButton_Click"/></td>
                <td><asp:Button ID="RestaButton" runat="server" Text="Restar" OnClick="RestaButton_Click"/></td>
                <td><asp:Button ID="MultipliacionButton" runat="server" Text="Multiplicar" OnClick="MultipliacionButton_Click" /></td>
                <td><asp:Button ID="DivisionButton" runat="server" Text="Dividir" OnClick="DivisionButton_Click" /></td>
                <td><asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" OnClick="LimpiarButton_Click" /></td>
            </tr>                         
        </table>    
    </div>
    </form>
</body>
</html>
