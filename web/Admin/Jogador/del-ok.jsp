<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<% 
    //verifico se veio por get
    if(request.getParameter("codigo") == null){
        response.sendRedirect("index.jsp"); //devolvo pra index e paro a execu��o
        return; // paro a execu��o
    }
    
    /*
    1. Buscar o objeto a partir da chave primaria
    2. Mando excluir na dao
    */
    JogadorDAO dao = new JogadorDAO();
    Jogador obj = new Jogador();
    
    String login = request.getParameter("codigo"); //mudar na chave primaria
    //busca a categoria
    
    obj = dao.buscarPorChavePrimaria(login);
    //excluir a categoria buscada
    dao.excluir(obj);
%>
<%@include file="../Cabecalho.jsp" %>
        <h1>Exclus�o de Jogador</h1>
        <div>
            Registro excluido com sucesso.<br/><br/>
        <a href="index.jsp">Voltar para a Listagem</a>
        </div>
    </body>
</html>
