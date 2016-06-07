<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%@include file="cabecalho.jsp" %>

<%
    
    if(request.getParameter("txtPesquisar") != null){
        hlista = hdao.listar(request.getParameter("txtPesquisar"));
    }
    else{        
        hlista = hdao.buscarPorCategoria(Integer.parseInt(request.getParameter("codigo")));
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
                <input type="text" name="txtPesquisar" placeholder="Pesquisar" />
                <input type="submit" value="Enviar" />
            </form>
        <%
            for(Heroi itemH: hlista){
        %>
        <h2><%=itemH.getCodinome() %></h2>
        <h2><%=itemH.getNome() %></h2>
        <h2><img src="../Fotos/<%=itemH.getFoto() %>" width="300" height="200" / ></h2>
        <h4>Inteligencia: <%=itemH.getInteligencia() %></h4>
	<h4>Força: <%=itemH.getForca() %></h4>
	<h4>Velocidade: <%=itemH.getVelocidade() %></h4>
	<h4>Resistência: <%=itemH.getResistencia() %></h4>
	<h4>Projeção de Energia: <%=itemH.getProjecaoenergia() %></h4>
	<h4>Habilidade em Combate: <%=itemH.getHabilidadecombate() %></h4>
        <br />
        <%} %>

        <a href="index.jsp" >Voltar para a página inicial</a>
	</div>
	
</body>
</html>