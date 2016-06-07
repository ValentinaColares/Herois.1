<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@include file="../Cabecalho.jsp" %>
<%    
    CategoriaDAO cDAO = new CategoriaDAO();
    List<Categoria> clista = cDAO.listar();
    
    EditoraDAO eDAO = new EditoraDAO();
    List<Editora> elista = eDAO.listar();
    
    RegiaoDAO rDAO = new RegiaoDAO();
    List<Regiao> rlista = rDAO.listar();
    
    if(request.getParameter("codigo") == null){
        response.sendRedirect("index.jsp"); //volta pra index
        return;
    }
    //buscar o obj a partir da chave primaria
    //exibe as informações od obj no form
    HeroiDAO dao = new HeroiDAO();
    Heroi obj = new Heroi();
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    obj = dao.buscarPorChavePrimaria(codigo);
    
%>    
<div>
        <h1 class="centro">Alteração de Heroi</h1>
        <div>
            <form action="upd-ok.jsp" method="post" enctype="multipart/form-data">
                <label>Código:</label>
                <input type="integer" name="txtCodigo" value="<%=obj.getCodigo()%>" readonly/><br/>
                <label>Codinome:</label>
                <input type="text" name="txtCodinome" value="<%=obj.getCodinome() %>" /><br/>
                <label>Nome:</label>
                <input type="text" name="txtNome" value="<%=obj.getNome() %>" /><br/>
                <label>Descricao:</label>
                <textarea name="txtDescricao"><%=obj.getDescricao() %> </textarea><br />
                <label>Foto:</label>
                <input type="file" name="txtFoto" value="<%=obj.getFoto() %>"/><br/>
                <label>Força:</label>
                <input type="number" name="txtForca" min="1" max="10" value="<%=obj.getForca() %>"/><br/>
                <label>Inteligência:</label>
                <input type="number" name="txtInteligencia" min="1" max="10" value="<%=obj.getInteligencia() %>"/><br/>
                <label>Velocidade:</label>
                <input type="number" name="txtVelocidade"  min="1" max="10" value="<%=obj.getVelocidade() %>"/><br/>
                <label>Resistência:</label>
                <input type="number" name="txtResistencia" min="1" max="10" value="<%=obj.getResistencia() %>"/><br/>
                <label>Projeção de Energia:</label>
                <input type="number" name="txtProjEnergia" min="1" max="10" value="<%=obj.getProjecaoenergia() %>" /><br/>
                <label>Habilidade Combate:</label>
                <input type="number" name="txtHabCombate" min="1" max="10" value="<%=obj.getHabilidadecombate() %>"/><br/>
                
                <label>Categoria:</label>
                <select name="selCategoria">
                    <option value="">Selecione</option>
                    <% 
                        String marcadoC;
                        for(Categoria cat: clista) {
                            if(cat.getCodigo() == obj.getCategoria().getCodigo())
                            {
                                marcadoC = "selected";
                            }else{
                                marcadoC = "";
                            }
                    %>
                    <option value="<%=cat.getCodigo() %>" <%=marcadoC%> ><%=cat.getNome() %></option>
                    <% 
                        }
                    %>   
                </select> <br />
                <label>Editora:</label>
                <select name="selEditora">
                    <option value="">Selecione</option>
                    <% 
                        String marcadoE;
                        for(Editora ed: elista) {
                            if(ed.getCodigo() == obj.getEditora().getCodigo())
                            {
                                marcadoE = "selected";
                            }else{
                                marcadoE = "";
                            }
                    %>
                    <option value="<%=ed.getCodigo() %>" <%=marcadoE%> ><%=ed.getNome() %> </option>
                    <% 
                        }
                    %>   
                </select><br />
                
                <label>Regiao:</label>
                <select name="selRegiao">
                    <option value="">Selecione</option>
                    <% 
                        String marcadoR;
                        for(Regiao reg: rlista) {
                            if(reg.getCodigo() == obj.getRegiao().getCodigo())
                            {
                                marcadoR = "selected";
                            }else{
                                marcadoR = "";
                            }
                    %>
                    <option value="<%=reg.getCodigo() %>" <%=marcadoR%> ><%=reg.getNome() %></option>
                    <% 
                        }
                    %>   
                </select> <br />
                
                <input type="reset" value="Limpar"/>
                <input type="submit" value="Salvar"/>
            </form> 
        </div>
    </div>
    </body>
</html>
