<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%
    //Buscar obj
    //Exibe no form
    if(request.getParameter("codigo") == null){
        response.sendRedirect("index.jsp"); //volta pra index
        return;
    }
    //buscar o obj a partir da chave primaria
    //exibe as informações od obj no form
    RegiaoDAO dao = new RegiaoDAO();
    Regiao obj = new Regiao();
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    obj = dao.buscarPorChavePrimaria(codigo);
    
%>    
<%@include file="../Cabecalho.jsp" %>
    
        <h1 class="centro">Alteração de Região</h1>
        <div>
            <form action="upd-ok.jsp" method="post">
                <label>Código:</label>
                <input type="integer" name="txtCodigo" value="<%=obj.getCodigo()%>" readonly/><br/>
                <label>Nome:</label>
                <input type="text" name ="txtNome" value="<%=obj.getNome()%>"/><br/>
                <input type="reset" value="Limpar"/>
                <input type="submit" value="Salvar"/>
            </form> 
        </div>
    </body>
</html>

