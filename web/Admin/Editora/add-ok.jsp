
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
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
    EditoraDAO dao = new EditoraDAO();
    //Monto o objeto com os dados para sem inserir
    Editora obj = new Editora();
    
    obj.setNome(request.getParameter("txtNome"));
    String dataStr = request.getParameter("txtData");
    SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
    Date data = sdf.parse(dataStr);
    obj.setDatafundacao(data);
    
    //executo o insert na DAO
    dao.incluir(obj);
%>
<%@include file="../Cabecalho.jsp" %>
    
    <h1>Cadastro de Editora</h1>
    <div>
        Registro cadastrado com sucesso.<br/><br/>
        <a href="index.jsp">Voltar para a Listagem</a>
    </div>    
    
    </body>
</html>
