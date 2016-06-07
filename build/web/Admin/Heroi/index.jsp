<%@page import="modelo.Heroi"%>
<%@page import="java.util.List"%>
<%@page import="dao.HeroiDAO"%>
<%@include file="../Cabecalho.jsp" %>
<%
    
    //Instanciar a DAO
    HeroiDAO dao = new HeroiDAO();
    List<Heroi> lista = dao.listar();
    
    //Verificar se vem algo no filtro, se vier, passamos o filtro pra DAO, se não, tras todo mundo
    if(request.getParameter("txtFiltro") != null){
        lista = dao.listar(request.getParameter("txtFiltro"));
    }
    else{        
        //chama o método que retorna 
        //todos registros do banco de dados
        lista = dao.listar();
    }


%>    
         <h1 class = "center">Heroi</h1><br/>
        <a href="add.jsp">+Novo</a><br/><br/>
        <form method="post">
            <input type="text" name="txtFiltro" placeholder="Digite o texto para pesquisar" /> <!-- acrescentar depois -->
            <input type="submit" value="Pesquisar"/><br />
        </form>
        <table>
            <tr>
                <td>Código</td>
                <td>Codinome</td>
                <td>Nome</td>
                <td>Região</td>
                <td>Categoria</td>
                <td>Editora</td>
                <td>Foto</td>
                <td>Ações</td>
            </tr>
            <%
                for(Heroi item: lista){
            %>    
            <tr>
                <td><%=item.getCodigo()%></td>
                <td><%=item.getCodinome() %></td>
                <td><%=item.getNome() %></td>
                <td><%=item.getRegiao().getNome() %></td>
                <td><%=item.getCategoria().toString() %></td> <!--Mudar na Classe Categoria o .toString() -->
                <td><%=item.getEditora().getNome() %></td>
                <td><img src="../../Fotos/<%=item.getFoto() %>" width="40" height="40" /></td>
                <td><a href="upd.jsp?codigo=<%=item.getCodigo()%>">Editar</a> &nbsp; <a href="del-ok.jsp?codigo=<%=item.getCodigo()%>">Excluir </a></td>
            </tr>
            <%
            }    
            %>
        </table>
    </body>
</html>

