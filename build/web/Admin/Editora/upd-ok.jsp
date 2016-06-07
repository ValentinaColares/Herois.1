<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%
    //Montar o obj (a partir do form)
    //Atualizar
    if(request.getParameter("txtCodigo") == null || request.getParameter("txtNome") == null){
        response.sendRedirect("index.jsp");//volta pra index
        return;
    }
    EditoraDAO dao = new EditoraDAO();
    Editora obj = new Editora();
    //Monto o objeto a partir das informações do formulário
    obj.setCodigo(Integer.parseInt(request.getParameter("txtCodigo"))); 
    obj.setNome(request.getParameter("txtNome"));
    
    String dataStr = request.getParameter("txtData");
    SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
    Date data = sdf.parse(dataStr);
    obj.setDatafundacao(data);
    
    //Gravo a atualização na base de dados
    dao.alterar(obj);
    
%>  
<%@include file="../Cabecalho.jsp" %>
        <h1>Alteração da Editora</h1>
        
        <div>
        Registro alterado com sucesso.<br/><br/>
        <a href="index.jsp">Voltar para a Listagem</a>
    </div>  
    </body>
</html>

