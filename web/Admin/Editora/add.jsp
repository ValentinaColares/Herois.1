<%@include file="../Cabecalho.jsp" %>
    <div>
        <h1 class="centro">Alteração de Editora</h1>
        <div>
            <form action="add-ok.jsp" method="post">
                <label>Nome:</label>
                <input type="text" name="txtNome" /><br/>
                <label>Data:</label>
                <input type="text" name="txtData" /><br />
                <input type="reset" value="Limpar"/>
                <input type="submit" value="Salvar"/>
            </form> 
        </div>
    </div>
    </body>
</html>
