<%@page import="modelo.Jogador"%>
<%@page import="java.util.List"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../Cabecalho.jsp" %>

<%
    //Instanciar a DAO
    JogadorDAO dao = new JogadorDAO();
    //chama o método que retorna 
    //todos registros do banco de dados
    List<Jogador> lista = dao.listar();
    if(request.getParameter("txtFiltro") != null){
        lista = dao.listar("txtFiltro");
    }
    else{
        lista = dao.listar();
    }

%>    
         <h1 class = "center">Jogador</h1><br/>
        <a href="add.jsp">+Novo</a><br/><br/>
        <form method="post">
            <input type="text" name="txtFiltro" placeholder="Digite o texto para pesquisar" />
            <input type="submit" value="Pesquisar"/><br />
        </form>
        
        <table>
             <tr>
                <td>Login</td>
                <td>Email</td>
                <td>Ações</td>
            </tr>
            <%
                for(Jogador item: lista){
            %>    
            <tr>
                <td><%=item.getLogin()%></td>
                <td><%=item.getEmail() %></td>
                <td><a href="upd.jsp?codigo=<%=item.getLogin()%>">Editar</a> &nbsp; <a href="del-ok.jsp?codigo=<%=item.getLogin()%>">Excluir </a></td>
            </tr>
            <%
            }    
            %>
        </table>
    </body>
</html>

