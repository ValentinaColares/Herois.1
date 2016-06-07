<%@page import="modelo.Regiao"%>
<%@page import="java.util.List"%>
<%@page import="dao.RegiaoDAO"%>
<%@include file="../Cabecalho.jsp" %>

<%
    //Instanciar a DAO
    RegiaoDAO dao = new RegiaoDAO();
    //chama o método que retorna 
    //todos registros do banco de dados
    List<Regiao> lista = dao.listar();
    if(request.getParameter("txtFiltro") != null){
        lista = dao.listar(request.getParameter("txtFiltro"));
    }
    else{
        lista = dao.listar();
    }
%> 
         <h1 class = "center">Regiao</h1><br/>
        <a href="add.jsp">+Novo</a><br/><br/>
        <form method="post">
            <input type="text" name="txtFiltro" placeholder="Digite o texto para pesquisar" />
            <input type="submit" value="Pesquisar"/><br />
        </form>
        
        <table>
             <tr>
                <td>Código</td>
                <td>Nome</td>
                <td>Ações</td>
            </tr>
            <%
                for(Regiao item: lista){
            %>    
            <tr>
                <td><%=item.getCodigo()%></td>
                <td><%=item.getNome() %></td>
                <td><a href="upd.jsp?codigo=<%=item.getCodigo()%>">Editar</a> &nbsp; <a href="del-ok.jsp?codigo=<%=item.getCodigo()%>">Excluir </a></td>
            </tr>
            <%
            }    
            %>
        </table>
    </body>
</html>
