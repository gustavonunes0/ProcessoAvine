<%@ Language=VBScript %>
<%
Dim conn, connectionString
Set conn = Server.CreateObject("ADODB.Connection")

connectionString = "Driver={MySQL ODBC 8.3 ANSI Driver};Server=viaduct.proxy.rlwy.net;Database=railway;User=root;Password=C6Fd6BHFD44G16cg1h25H52-ebdg4cgB;Port=37158;Option=3;"

conn.Open connectionString
%>
<html>
<head>
    <title>Editar Empresa</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-image:  linear-gradient( to top, #006B2D, #fdba00 , #fdd300 ); 
                color: #333;
                margin: 0;
                padding: 2rem 2rem;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                gap: 3rem;
            }

            form {
                width: 30%;
                margin: 20px auto;
                padding: 20px;
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                border-radius: .66rem;
            }

            label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }

            input {
                width: 100%;
                padding: 8px;
                margin-bottom: 10px;
                box-sizing: border-box;
                border: none;
                border-radius: .5rem;
                background-color: #f1f1f1;
            }

            input[type="submit"] {
                background-color: #007bff;
                color: #fff;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
            }

            table{
                border: 1px solid #fff;
                background-color: #fff;
            }

            th, td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }

            th {
                background-color: #dedede;
            }

            td {
                border-right: 1px solid #ddd;
                font-size: .8rem;
            }

            td:last-child {
                border-right: none;
            }

            a{
                background-color: red;
                color: #fff;
                text-decoration: none;
                padding: .4rem;
                border-radius: .3rem;
            }

            #tabela{
                padding: .5rem;
                background-color: #fff;
                border-radius: .44rem;
            }
        </style>
    </head>
<body>
<%
Response.AddHeader "Access-Control-Allow-Origin", "*"

Function GetEmpresas()
    Dim sqlEmpresas, rsEmpresas
    sqlEmpresas = "SELECT * FROM empresa"
    Set rsEmpresas = conn.Execute(sqlEmpresas)
    Set GetEmpresas = rsEmpresas
End Function

Set rsEmpresas = GetEmpresas()
%>

<%
Dim idEmpresa, nmRazaoSocial, nrCnpj, nmLogradouro, nrNumero, dsComplemento, nmMunicipio, nmEstado
nmRazaoSocial = Request.QueryString("razaoSocial")
nrCnpj = Request.QueryString("cnpj")
nmLogradouro = Request.QueryString("logradouro")
nrNumero = Request.QueryString("numero")
dsComplemento = Request.QueryString("complemento")
nmMunicipio = Request.QueryString("municipio")
nmEstado = Request.QueryString("uf")

If Request.ServerVariables("REQUEST_METHOD") = "POST" Then

    nmRazaoSocial = Request.Form("NM_RAZAO_SOCIAL")
    nrCnpj = Request.Form("NR_CNPJ")
    nmLogradouro = Request.Form("NM_LOGRADOURO")
    nrNumero = Request.Form("NR_NUMERO")
    dsComplemento = Request.Form("DS_COMPLEMENTO")
    nmMunicipio = Request.Form("NM_MUNICIPIO")
    nmEstado = Request.Form("NM_ESTADO")

    Dim sqlVerificaCnpj, rsVerificaCnpj
    sqlVerificaCnpj = "SELECT * FROM empresa WHERE NR_CNPJ = '" & nrCnpj & "'"
    Set rsVerificaCnpj = conn.Execute(sqlVerificaCnpj)

    If rsVerificaCnpj.EOF Then
        Dim sqlInserirEmpresa
        sqlInserirEmpresa = "INSERT INTO empresa (NM_RAZAO_SOCIAL, NR_CNPJ, NM_LOGRADOURO, NR_NUMERO, DS_COMPLEMENTO, NM_MUNICIPIO, NM_ESTADO) VALUES ('" & nmRazaoSocial & "', '" & nrCnpj & "', '" & nmLogradouro & "', '" & nrNumero & "', '" & dsComplemento & "', '" & nmMunicipio & "', '" & nmEstado & "')"
        conn.Execute sqlInserirEmpresa

        If Err.Number <> 0 Then
            Response.Write "Ocorreu um erro ao cadastrar a empresa: " & Err.Description
        Else
            Response.Write "Empresa cadastrada com sucesso!"
        End If

        Set rsEmpresas = GetEmpresas()
    Else
        Response.Write "Já existe uma empresa cadastrada com esse CNPJ."
    End If

    rsVerificaCnpj.Close
    Set rsVerificaCnpj = Nothing
End If
%>
<%
If Request.QueryString("action") = "delete" Then
    Dim idEmpresaParaDeletar
    idEmpresaParaDeletar = Request.QueryString("id")
    
    If IsNumeric(idEmpresaParaDeletar) Then
        Dim sqlDeletarEmpresa
        sqlDeletarEmpresa = "DELETE FROM empresa WHERE ID_EMPRESA = " & idEmpresaParaDeletar
        conn.Execute(sqlDeletarEmpresa)
        
        Response.Redirect(Request.ServerVariables("SCRIPT_NAME"))
    End If
End If
%>


<form method="post">
    <input type="hidden" name="ID_EMPRESA" value="<%=idEmpresa%>">
    <label for="NM_RAZAO_SOCIAL">Razão Social:</label>
    <input type="text" name="NM_RAZAO_SOCIAL" value="<%=nmRazaoSocial%>">
    <label for="NR_CNPJ">CNPJ:</label>
    <input type="text" name="NR_CNPJ" value="<%=nrCnpj%>">
    <label for="NM_LOGRADOURO">Logradouro:</label>
    <input type="text" name="NM_LOGRADOURO" value="<%=nmLogradouro%>">
    <label for="NR_NUMERO">Número:</label>
    <input type="text" name="NR_NUMERO" value="<%=nrNumero%>">
    <label for="DS_COMPLEMENTO">Complemento:</label>
    <input type="text" name="DS_COMPLEMENTO" value="<%=dsComplemento%>">
    <label for="NM_MUNICIPIO">Município:</label>
    <input type="text" name="NM_MUNICIPIO" value="<%=nmMunicipio%>">
    <label for="NM_ESTADO">Estado:</label>
    <input type="text" name="NM_ESTADO" value="<%=nmEstado%>">
    <br>
    <input type="submit" value="Adicionar Empresa">
</form>

<div id="tabela">
    <table>
        <tr>
            <th>Razão Social</th>
            <th>CNPJ</th>
            <th>Logradouro</th>
            <th>Número</th>
            <th>Complemento</th>
            <th>Município</th>
            <th>Estado</th>
            <th>Ações</th> 
        </tr>

        <% Do While Not rsEmpresas.EOF %>
            <tr>
                <td><%=rsEmpresas("NM_RAZAO_SOCIAL")%></td>
                <td><%=rsEmpresas("NR_CNPJ")%></td>
                <td><%=rsEmpresas("NM_LOGRADOURO")%></td>
                <td><%=rsEmpresas("NR_NUMERO")%></td>
                <td><%=rsEmpresas("DS_COMPLEMENTO")%></td>
                <td><%=rsEmpresas("NM_MUNICIPIO")%></td>
                <td><%=rsEmpresas("NM_ESTADO")%></td>
                <td>
                    <a href="?action=delete&id=<%=rsEmpresas("ID_EMPRESA")%>" onclick="return confirm('Tem certeza que deseja excluir esta empresa?');">Excluir</a>
                </td>
            </tr>
            <% rsEmpresas.MoveNext()
        Loop
        rsEmpresas.Close
        Set rsEmpresas = Nothing
        %>
    </table>
</div>


</body>
</html>
