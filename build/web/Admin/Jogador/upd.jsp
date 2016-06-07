<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%
    //Buscar obj
    //Exibe no form
    if(request.getParameter("codigo") == null ){
        response.sendRedirect("index.jsp"); //volta pra index
        return;
    } 
    
    //buscar o obj a partir da chave primaria
    //exibe as informações od obj no form
    JogadorDAO dao = new JogadorDAO();
    Jogador obj = new Jogador();
    //como fazer esses dois?
    
   obj = dao.buscarPorChavePrimaria(request.getParameter("codigo"));
    
%>   
<%@include file="../Cabecalho.jsp" %>
    
        <h1 class="centro">Alteração de Jogador</h1>
        <div>
            <form action="upd-ok.jsp" method="post">
                <label>Login:</label>
                <input type="text" name="txtLogin" value="<%=obj.getLogin()%>"/><br/>
                <label>Senha:</label>
                <input type="text" name ="txtSenha" value="<%=obj.getSenha()%>"/><br/>
                <label>Email:</label>
                <input type="text" name ="txtEmail" value="<%=obj.getEmail()%>"/><br/>
                <input type="reset" value="Limpar"/>
                <input type="submit" value="Salvar"/>
            </form> 
        </div>
    </body>
</html>
