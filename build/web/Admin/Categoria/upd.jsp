<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%
    //Buscar obj
    //Exibe no form
    if(request.getParameter("codigo") == null){
        response.sendRedirect("index.jsp"); //volta pra index
        return;
    }
    //buscar o obj a partir da chave primaria
    //exibe as informa��es od obj no form
    CategoriaDAO dao = new CategoriaDAO();
    Categoria obj = new Categoria();
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    obj = dao.buscarPorChavePrimaria(codigo);
    
%>    
<%@include file="../Cabecalho.jsp" %>
    
        <h1 class="centro">Altera��o de Categoria</h1>
        <div>
            <form action="upd-ok.jsp" method="post">
                <label>C�digo:</label>
                <input type="integer" name="txtCodigo" value="<%=obj.getCodigo()%>" readonly/><br/>
                <label>Nome:</label>
                <input type="text" name ="txtNome" value="<%=obj.getNome()%>"/><br/>
                <input type="reset" value="Limpar"/>
                <input type="submit" value="Salvar"/>
            </form> 
        </div>
    </body>
</html>
