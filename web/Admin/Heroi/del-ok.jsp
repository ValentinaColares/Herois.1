<%@include file="../Cabecalho.jsp" %>
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%
 //verifico se veio o c�digo por get  
 if(request.getParameter("codigo")== null) 
 {
     response.sendRedirect("index.jsp");
     return; //paro a execu��o aqui
 }
 /*
    1. Buscar o objeto a partir da chave prim�ria
    2. Mando excluir na dao
 */
    HeroiDAO dao = new HeroiDAO();
    Heroi obj = new    Heroi();
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    //Busca a categoria
    obj = dao.buscarPorChavePrimaria(codigo);
    //excluir a categoria buscada
    dao.excluir(obj);
 %>

    <h1>Exclus�o de Heroi</h1>
        <div>
            Registro excluido com sucesso.<br/><br/>
        <a href="index.jsp">Voltar para a Listagem</a>
        </div>
    </body>
</html>

