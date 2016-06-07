<%@page import="util.Upload"%>
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
  

%>

<div>
        <h1 class="centro">Cadastro de Heroi</h1>
        <div>
            <form action="add-ok.jsp" method="post" enctype="multipart/form-data" >
                <label>Codinome:</label>
                <input type="text" name="txtCodinome" /><br/>
                <label>Nome:</label>
                <input type="text" name="txtNome" /><br/>
                <label>Descricao:</label>
                <textarea name="txtDescricao"></textarea><br />
                
                <label>Foto:</label>
                <input type="file" name="txtFoto"/><br/>
                
                <label>Força:</label>
                <input type="number" name="txtForca" min="1" max="10"/><br/>
                <label>Inteligência:</label>
                <input type="number" name="txtInteligencia" min="1" max="10"/><br/>
                <label>Velocidade:</label>
                <input type="number" name="txtVelocidade"  min="1" max="10"/><br/>
                <label>Resistência:</label>
                <input type="number" name="txtResistencia" /><br/>
                <label>Projeção de Energia:</label>
                <input type="number" name="txtProjEnergia" min="1" max="10" /><br/>
                <label>Habilidade Combate:</label>
                <input type="number" name="txtHabCombate" min="1" max="10" /><br/>
                
                <label>Categoria:</label>
                <select name="selCategoria">
                    <option value="">Selecione</option>
                    <% 
                        for(Categoria cat: clista) {
                    %>
                    <option value="<%=cat.getCodigo() %>" ><%=cat.getNome() %></option>
                    <% 
                        }
                    %>   
                </select> <br />
                <label>Editora:</label>
                <select name="selEditora">
                    <option value="">Selecione</option>
                    <% 
                        for(Editora ed: elista) {
                    %>
                    <option value="<%=ed.getCodigo() %>" ><%=ed.getNome() %></option>
                    <% 
                        }
                    %>   
                </select><br />
                
                <label>Regiao:</label>
                <select name="selRegiao">
                    <option value="">Selecione</option>
                    <% 
                        for(Regiao reg: rlista) {
                    %>
                    <option value="<%=reg.getCodigo() %>" ><%=reg.getNome() %></option>
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