<%@page import="util.Upload"%>
<%@page import="modelo.Editora"%>
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%@include file="../Cabecalho.jsp" %>
  
<%
    Upload up = new Upload();
    String msg = " ";
    up.setFolderUpload("Fotos");
    
    if(up.formProcess(getServletContext(), request)){
        
        //verifico se foi enviado o campo txtNome
        if(up.getForm().get("txtNome") == null || up.getForm().get("txtCodinome") == null){
            //volta pra tela da listagem
            response.sendRedirect("index.jsp");
            return;
        }
        //verifica se o campo esta vazio
        if(up.getForm().get("txtNome").toString().isEmpty() || up.getForm().get("txtCodinome").toString().isEmpty()){
            //volta pra tela da listagem
            response.sendRedirect("index.jsp");
            return;
        }
        //Gravar categoria do banco
        HeroiDAO dao = new HeroiDAO();
        //Monto o objeto com os dados para sem inserir
        Heroi obj = new Heroi();

        obj.setNome(up.getForm().get("txtNome").toString());
        obj.setCodinome(up.getForm().get("txtCodinome").toString());
        obj.setDescricao(up.getForm().get("txtDescricao").toString());
        obj.setForca(Integer.parseInt(up.getForm().get("txtForca").toString()));
        obj.setInteligencia(Integer.parseInt(up.getForm().get("txtInteligencia").toString()));
        obj.setHabilidadecombate(Integer.parseInt(up.getForm().get("txtHabCombate").toString()));
        obj.setProjecaoenergia(Integer.parseInt(up.getForm().get("txtProjEnergia").toString()));
        obj.setVelocidade(Integer.parseInt(up.getForm().get("txtVelocidade").toString()));
        obj.setResistencia(Integer.parseInt(up.getForm().get("txtResistencia").toString()));
        if(!up.getFiles().isEmpty()){
            obj.setFoto(up.getFiles().get(0));
        }
        
        //Agora as foreigns keys
        Categoria categoria = new Categoria();    
        categoria.setCodigo(Integer.parseInt(up.getForm().get("selCategoria").toString()));
        obj.setCategoria(categoria);

        Regiao regiao = new Regiao();    
        regiao.setCodigo(Integer.parseInt(up.getForm().get("selRegiao").toString()));
        obj.setRegiao(regiao);

        Editora editora = new Editora();
        editora.setCodigo(Integer.parseInt(up.getForm().get("selEditora").toString()));
        obj.setEditora(editora);
         
        
        //executo o insert na DAO  
        dao.incluir(obj);
        
        msg = "Registro cadastrado com sucesso!";
    }
    else{
        msg = "Não foi possível inserir o registro";
    }
%>

    <h1>Cadastro de Heroi</h1>
    <div>
        <%=msg%><br/><br/>
        <a href="index.jsp">Voltar para a Listagem</a>
    </div>    
    
    </body>
</html>
