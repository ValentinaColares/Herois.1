
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="modelo.Editora"%>
<%@page import="java.util.List"%>
<%@include file="../Cabecalho.jsp" %>

<%
    //Instanciar a DAO
    EditoraDAO dao = new EditoraDAO();
    //chama o método que retorna 
    //todos registros do banco de dados
    List<Editora> lista = dao.listar();
    
    if(request.getParameter("txtFiltro") != null){
        lista = dao.listar("txtFiltro");
    }
    else{
        lista = dao.listar();
    }
    SimpleDateFormat formato = new SimpleDateFormat("dd/mm/yyyy");
    
%>    
         <h1 class = "center">Editora</h1><br/>
        <a href="add.jsp">+Novo</a><br/><br/>
        <form method="post">
            <input type="text" name="txtFiltro" placeholder="Digite o texto para pesquisar" />
            <input type="submit" value="Pesquisar"/><br />
        </form>
        <table>
           <tr>
                <td>Código</td>
                <td>Nome</td>
                <td>Data de Fundação</td>
                <td>Ações</td>
            </tr>
            <%
                for(Editora item: lista){
            %>    
            <tr>
                <td><%=item.getCodigo()%></td>
                <td><%=item.getNome() %></td>
                <td><%=formato.format(item.getDatafundacao()) %></td>
                
                <td><a href="upd.jsp?codigo=<%=item.getCodigo()%>">Editar</a> &nbsp; <a href="del-ok.jsp?codigo=<%=item.getCodigo()%>">Excluir </a></td>
            </tr>
            <%
            }    
            %>
        </table>
    </body>
</html>

