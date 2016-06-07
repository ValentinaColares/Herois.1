<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%
    //Buscar obj
    //Exibe no form
    if(request.getParameter("codigo") == null){
        response.sendRedirect("index.jsp"); //volta pra index
        return;
    }
    //buscar o obj a partir da chave primaria
    //exibe as informações od obj no form
    EditoraDAO dao = new EditoraDAO();
    Editora obj = new Editora();
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    obj = dao.buscarPorChavePrimaria(codigo);
    SimpleDateFormat formato = new SimpleDateFormat("dd/mm/yyyy");
    
%>    
<%@include file="../Cabecalho.jsp" %>
    
        <h1 class="centro">Alteração de Editora</h1>
        <div>
            <form action="upd-ok.jsp" method="post">
                <label>Código:</label>
                <input type="integer" name="txtCodigo" value="<%=obj.getCodigo()%>" readonly/><br/>
                <label>Nome:</label>
                <input type="text" name="txtNome" value="<%=obj.getNome() %>"/><br/>
                <label>Data:</label>
                <input type="text" name="txtData" value="<%=formato.format(obj.getDatafundacao()) %>"/><br/>
                <input type="reset" value="Limpar"/>
                <input type="submit" value="Salvar"/>
            </form> 
        </div>
    </body>
</html>

