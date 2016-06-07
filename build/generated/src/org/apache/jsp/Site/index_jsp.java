package org.apache.jsp.Site;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.RegiaoDAO;
import modelo.Regiao;
import modelo.Editora;
import java.util.List;
import dao.EditoraDAO;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Site/cabecalho.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    EditoraDAO edao = new EditoraDAO();
    List <Editora> elista = edao.listar();
    
    RegiaoDAO rdao = new RegiaoDAO();
    List <Regiao> rlista = rdao.listar();

      out.write("    \n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title></title>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <style>\n");
      out.write("            body { padding: 15px;}\n");
      out.write("            .navbar { background-color: #02076E; }\n");
      out.write("            .navbar-nav > li > a { color: #F9F9FC !important; }\n");
      out.write("            p{color: white;\n");
      out.write("              font-family: Comic Sans MS;}\n");
      out.write("\n");
      out.write("            form{color:white; padding: 15px;}\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("</head>\n");
      out.write("<body background=\"fundo.jpg\">\n");
      out.write("<nav class=\"navbar navbar-inverse\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>                        \n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.jsp\">Inicio</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Heróis<span class=\"glyphicon glyphicon-flash\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a href=\"heroi.jsp\">Sobre</a></li>\n");
      out.write("                                <li><a href=\"flash.jsp\">Flash</a></li>\n");
      out.write("                                <li><a href=\"capitaoAmerica.jsp\">Capitão América</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Anti-Herói<span class=\"glyphicon glyphicon-flash\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a href=\"antiHeroi.jsp\">Sobre</a></li>\n");
      out.write("                                <li><a href=\"deadpool.jsp\">Deadpool</a></li>\n");
      out.write("                                <li><a href=\"mulherGato.jsp\">Mulher Gato</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Vilões <span class=\"glyphicon glyphicon-flash\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a href=\"vilao.jsp\">Sobre</a></li>\n");
      out.write("                                <li><a href=\"coringa.jsp\">Coringa</a></li>\n");
      out.write("                                <li><a href=\"loki.jsp\">Loki</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Editoras <span class=\"glyphicon glyphicon-flash\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                ");

                                    for(Editora itemE: elista){
                                        
                                    
                                
      out.write("\n");
      out.write("                                <li><a href=\"marvel.jsp\">");
      out.print(itemE.getNome());
      out.write("</a></li>\n");
      out.write("                               ");
}
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Regiões <span class=\"glyphicon glyphicon-flash\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                ");

                                    for(Regiao itemR: rlista){
                                    
                                
      out.write("\n");
      out.write("                                <li><a href=\"central.jsp\">");
      out.print(itemR.getNome() );
      out.write("</a></li>\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"jogador.jsp\"><span class=\"glyphicon glyphicon-user\"></span> Jogador</a></li>\n");
      out.write("                        <li><a href=\"contato.jsp\"><span class=\"glyphicon glyphicon-tasks\"></span> Contato</a></li>\n");
      out.write("                        <li>\n");
      out.write("                            <form>\n");
      out.write("                                <label>Pesquisar:</label>\n");
      out.write("                                <input type=\"text\" name = \"txtPesquisar\" placeholder=\"Pesquisar\" />\n");
      out.write("                                <input type=\"submit\" value=\"Enviar\" />\n");
      out.write("                            </form>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>    \n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
