<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%
    //verifico se foi enviado o campo txtNome
    /* if(request.getParameter("txtLogin") == null || request.getParameter("txtEmail") == null || request.getParameter("txtSenha") == null){
        //volta pra tela da listagem
        response.sendRedirect("index.jsp");
        return;
    }
    //verifica se o campo esta vazio
    if(request.getParameter("txtLogin").isEmpty() || request.getParameter("txtEmail").isEmpty() || request.getParameter("txtSenha").isEmpty()){
        //volta pra tela da listagem
        response.sendRedirect("index.jsp");
    }
    */
    //Gravar categoria do banco
    JogadorDAO dao = new JogadorDAO();
    //Monto o objeto com os dados para sem inserir
    Jogador obj = new Jogador();
    
    obj.setLogin(request.getParameter("txtLogin"));
    obj.setEmail(request.getParameter("txtEmail"));
    obj.setSenha(request.getParameter("txtSenha"));
    
    //executo o insert na DAO
    dao.incluir(obj);
%>
<%@include file="../Cabecalho.jsp" %>
    
    <h1>Cadastro de Jogador</h1>
    <div>
        Registro cadastrado com sucesso.<br/><br/>
        <a href="index.jsp">Voltar para a Listagem</a>
    </div>    
    
    </body>
</html>

