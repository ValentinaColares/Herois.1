
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<% 
    //verifico se veio por get
    if(request.getParameter("codigo") == null){
        response.sendRedirect("index.jsp"); //devolvo pra index e paro a execução
        return; // paro a execução
    }
    /*
    1. Buscar o objeto a partir da chave primaria
    2. Mando excluir na dao
    */
    EditoraDAO dao = new EditoraDAO();
    Editora obj = new Editora();
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    //busca a categoria
    obj = dao.buscarPorChavePrimaria(codigo);
    //excluir a categoria buscada
    dao.excluir(obj);
%>
<%@include file="../Cabecalho.jsp" %>
        <h1>Exclusão de Editora</h1>
        <div>
            Registro excluido com sucesso.<br/><br/>
        <a href="index.jsp">Voltar para a Listagem</a>
        </div>
    </body>
</html>
