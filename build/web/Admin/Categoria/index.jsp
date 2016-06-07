<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../Cabecalho.jsp" %>


<%
    //Instanciar a DAO
    CategoriaDAO dao = new CategoriaDAO();
    List<Categoria> lista = dao.listar();
    //Verificar se vem algo no filtro, se vier, passamos o filtro pra DAO, se não, gtras todo mundo
    if(request.getParameter("txtFiltro") != null){
       lista = dao.listar(request.getParameter("txtFiltro"));
    }
    else{        
        //chama o método que retorna 
        //todos registros do banco de dados
        lista = dao.listar();
    }


%>    
         <h1 class = "center">Categoria</h1><br/>
        <a href="add.jsp">+Novo</a><br/><br/>
        <form method="post">
            <input type="text" name="txtFiltro" placeholder="Digite o texto para pesquisar" /> <!--acrescentar depois -->
            <input type="submit" value="Pesquisar"/><br />
        </form>
        <table>
            <tr>
                <td>Código</td>
                <td>Nome</td>
                <td>Ações</td>
            </tr>
            <%
                for(Categoria item: lista){
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

