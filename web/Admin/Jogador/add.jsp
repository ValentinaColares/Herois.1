<%@include file="../Cabecalho.jsp" %>
    <div>
        <h1 class="centro">Alteração de Jogador</h1>
        <div>
            <form action="add-ok.jsp" method="post">
                <label>Login:</label>
                <input type="text" name="txtLogin" /><br/>
                <label>Senha:</label>
                <input type="text" name="txtSenha" /><br/>
                <label>Email:</label>
                <input type="text" name="txtEmail" /><br/>
                <input type="reset" value="Limpar"/>
                <input type="submit" value="Salvar"/>
            </form> 
        </div>
    </div>
    </body>
</html>
