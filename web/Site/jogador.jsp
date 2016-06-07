<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="cabecalho.jsp" %>

<%
    JogadorDAO jdao = new JogadorDAO();  
    List <Jogador> jlista;
    if(request.getParameter("txtPesquisar") != null){
        jlista = jdao.listar(request.getParameter("txtPesquisar"));
    }
    else{
        jlista = jdao.listar();
    }
%>
<style>
            body { padding: 15px;}
            .navbar { background-color: #02076E; }
            .navbar-nav > li > a { color: #F9F9FC !important; }
            h2{color: white;
              font-family: Comic Sans MS;}
            h4{color: white;
              font-family: Comic Sans MS;}
            form{color:white; padding: 15px;}
 </style>
 
        <div class="plano">
            <form method="post">
                <label>Pesquisar:</label>
                <input type="text" name = "txtPesquisar" placeholder="Pesquisar" />
                <input type="submit" value="Enviar" />
            </form>
            <%
                for(Jogador item: jlista){
            %>
            <h2>Login:<%=item.getLogin() %></h2> <br/>
            <h2>E-mail:<%=item.getEmail() %></h2> <br><br/>
           <% }%>
           
        </div>
        
</body>

</html>