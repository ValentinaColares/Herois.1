
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Editora"%>
<%@page import="java.util.List"%>
<%@page import="dao.EditoraDAO"%>
<!DOCTYPE html>
<%
    EditoraDAO edao = new EditoraDAO();
    List <Editora> elista = edao.listar();
    
    RegiaoDAO rdao = new RegiaoDAO();
    List <Regiao> rlista = rdao.listar();
    
    
    CategoriaDAO cdao = new CategoriaDAO();
    List <Categoria> clista = cdao.listar();
    
    HeroiDAO hdao = new HeroiDAO();
    List <Heroi> hlista = hdao.listar();
    
%>    
<html>
<head>
	<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title></title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <style>
            body { padding: 15px;}
            .navbar { background-color: #02076E; }
            .navbar-nav > li > a { color: #F9F9FC !important; }
            p{color: white;
              font-family: Comic Sans MS;}

            form{color:white; padding: 15px;}
        </style>
        
</head>
<body background="fundo.jpg">
<nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="index.jsp">Inicio</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <%
                            for(Categoria itemC: clista){
                        %>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"><%=itemC.getNome() %> <span class="glyphicon glyphicon-flash"></span></a>
                            <ul class="dropdown-menu">
                                
                                <li><a href="heroi.jsp?codigo=<%=itemC.getCodigo() %> ">Sobre</a></li>
                               
                            </ul>
                        </li>
                        <% } %>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Editoras <span class="glyphicon glyphicon-flash"></span></a>
                            <ul class="dropdown-menu">
                                <%
                                    for(Editora itemE: elista){
                                        
                                    
                                %>
                                <li><a href="editora.jsp?codigo=<%=itemE.getCodigo() %>"><%=itemE.getNome()%></a></li>
                               <%}%>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Regiões <span class="glyphicon glyphicon-flash"></span></a>
                            <ul class="dropdown-menu">
                                <%
                                    for(Regiao itemR: rlista){
                                    
                                %>
                                <li><a href="regiao.jsp?codigo=<%=itemR.getCodigo() %>"><%=itemR.getNome() %></a></li>
                                <%}%>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="jogador.jsp"><span class="glyphicon glyphicon-user"></span> Jogador</a></li>
                        <li><a href="contato.jsp"><span class="glyphicon glyphicon-tasks"></span> Contato</a></li>
                </div>
            </div>
            <script src="js/jquery.min.js"></script>    
        <script src="js/bootstrap.min.js"></script>
