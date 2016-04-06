package org.apache.jsp.Categoria;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Categoria/../Cabecalho.jsp");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Sistema Heróis</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>SUPER HEROES!</h1>\n");
      out.write("        <nav>\n");
      out.write("            <a href=\"../Categoria\">Categoria</a>&nbsp;\n");
      out.write("            <a href=\"../Regiao-ok\">Região</a>&nbsp;\n");
      out.write("            <a href=\"../Editora-ok\">Editora</a>\n");
      out.write("        </nav>\n");
      out.write("   \n");
      out.write("\n");
      out.write("\n");
      out.write("         <h1>Categoria</h1><br/>\n");
      out.write("        <a href=\"add.jsp\">+Novo</a><br/><br/>\n");
      out.write("        \n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>Código</td>\n");
      out.write("                <td>Nome</td>\n");
      out.write("                <td>Ações</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>1</td>\n");
      out.write("                <td>xxxxxx</td>\n");
      out.write("                <td><a href=\"upd.jsp\">Editar</a> &nbsp; <a href=\"del-ok.jsp\">Excluir</a></td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td>2</td>\n");
      out.write("                <td>xxxxxx</td>\n");
      out.write("                <td><a href=\"upd.jsp\">Editar</a> &nbsp; <a href=\"del-ok.jsp\">Excluir</a></td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td>3</td>\n");
      out.write("                <td>xxxxxx</td>\n");
      out.write("                <td><a href=\"upd.jsp\">Editar</a> &nbsp; <a href=\"del-ok.jsp\">Excluir</a></td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td>4</td>\n");
      out.write("                <td>xxxxxx</td>\n");
      out.write("                <td><a href=\"upd.jsp\">Editar</a> &nbsp; <a href=\"del-ok.jsp\">Excluir</a></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
