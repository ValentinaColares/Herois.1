<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%
    //verifico se foi enviado o campo txtNome
    if(request.getParameter("txtNome") == null){
        //volta pra tela da listagem
        response.sendRedirect("index.jsp");
        return;
    }
    //verifica se o campo esta vazio
    if(request.getParameter("txtNome").isEmpty()){
        //volta pra tela da listagem
        response.sendRedirect("index.jsp");
    }
    //Gravar categoria do banco
    RegiaoDAO dao = new RegiaoDAO();
    //Monto o objeto com os dados para sem inserir
    Regiao obj = new Regiao();
    
    obj.setNome(request.getParameter("txtNome"));
    //executo o insert na DAO
    dao.incluir(obj);
%>
<%@include file="../Cabecalho.jsp" %>
    
    <h1>Cadastro de Região</h1>
    <div>
        Registro cadastrado com sucesso.<br/><br/>
        <a href="index.jsp">Voltar para a Listagem</a>
    </div>    
    
    </body>
</html>
