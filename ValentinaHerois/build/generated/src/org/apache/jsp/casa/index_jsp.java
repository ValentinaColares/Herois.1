package org.apache.jsp.casa;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/casa/../Cabecalho.jsp");
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
      out.write("   <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Sistema Heróis</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../layout.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 class=\"center\">SUPER HEROES!</h1>\n");
      out.write("        <nav class=\"center\">\n");
      out.write("            <a href=\"../Categoria\">Categoria</a>&nbsp;&nbsp;&nbsp;\n");
      out.write("            <a href=\"../Regiao\">Região</a>&nbsp;&nbsp;&nbsp;\n");
      out.write("            <a href=\"../Editora\">Editora</a>&nbsp;&nbsp;&nbsp;\n");
      out.write("            <a href=\"../Jogador\">Jogador</a>&nbsp;&nbsp;&nbsp;\n");
      out.write("        </nav>\n");
      out.write("   \n");
      out.write("\n");
      out.write("        \n");
      out.write("        <br/><br/>\n");
      out.write("        &nbsp&nbsp&nbspLorem\tipsum\tdolor\tsit\tamet,\tconsectetur\tadipiscing\telit.\tNulla\tquam\tvelit,\t\n");
      out.write("        vulputate\teu\tpharetra\tnec,\tmattis\tac\tneque. Duis\tvulputate\tcommodo\tlectus,\n");
      out.write("        ac\tblandit\telit\ttincidunt\tid.\tSed\trhoncus,\ttortor\tsed\teleifend\t\n");
      out.write("        tristique,\ttortor\tmauris molestie\telit,\tet\tlacinia\tipsum\tquam\tnec\tdui.\t\n");
      out.write("        Quisque\tnec\tmauris\tsit\tamet\telit\tiaculis\tpretium\tsit\tamet\tquis\tmagna.\n");
      out.write("        Aenean velit\todio,\telementum\tin\ttempus\tut,\tvehicula\teu\tdiam.\t\n");
      out.write("        Pellentesque\trhoncus\taliquam\tmattis.\tUt\tvulputate\teros\tsed\tfelis sodales\tnec\t\n");
      out.write("        vulputate\tjusto\thendrerit.\tVivamus\tvarius\tpretium\tligula,\ta\taliquam\todio\teuismod\tsit\t\n");
      out.write("        amet.\tQuisque\tlaoreet sem\tsit\tamet\torci\tullamcorper\tat\tultricies\tmetus\tviverra.\n");
      out.write("        Pellentesque\tarcu\tmauris,\tmalesuada\tquis\tornare\taccumsan.\n");
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
