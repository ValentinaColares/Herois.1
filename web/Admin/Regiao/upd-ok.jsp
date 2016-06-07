<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%
    //Montar o obj (a partir do form)
    //Atualizar
    if(request.getParameter("txtCodigo") == null || request.getParameter("txtNome") == null){
        response.sendRedirect("index.jsp");//volta pra index
        return;
    }
    RegiaoDAO dao = new RegiaoDAO();
    Regiao obj = new Regiao();
    //Monto o objeto a partir das informações do formulário
    obj.setCodigo(Integer.parseInt(request.getParameter("txtCodigo"))); 
    obj.setNome(request.getParameter("txtNome"));
    //Gravo a atualização na base de dados
    dao.alterar(obj);
    
%>  
<%@include file="../Cabecalho.jsp" %>
        <h1>Alteração da Região</h1>
        
        <div>
        Registro alterado com sucesso.<br/><br/>
        <a href="index.jsp">Voltar para a Listagem</a>
    </div>  
    </body>
</html>
