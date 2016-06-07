<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%
    //Montar o obj (a partir do form)
    //Atualizar
    if(request.getParameter("txtLogin") == null || request.getParameter("txtEmail") == null || request.getParameter("txtSenha") == null){
        response.sendRedirect("index.jsp");//volta pra index
        return;
    }
    
    JogadorDAO dao = new JogadorDAO();
    Jogador obj = new Jogador();
    //Monto o objeto a partir das informações do formulário
    obj.setLogin(request.getParameter("txtLogin"));
    obj.setEmail(request.getParameter("txtEmail"));
    obj.setSenha(request.getParameter("txtSenha"));
    
    //Gravo a atualização na base de dados
    dao.alterar(obj);
    
%> 
<%@include file="../Cabecalho.jsp" %>
        <h1>Alteração da Jogador</h1>
        
        <div>
        Registro alterado com sucesso.<br/><br/>
        <a href="index.jsp">Voltar para a Listagem</a>
    </div>  
    </body>
</html>
