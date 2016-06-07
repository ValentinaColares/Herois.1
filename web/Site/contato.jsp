<%@include file="cabecalho.jsp" %>

	<div class="plano">
		<form action="enviada.jsp" method="post">
			<label>Nome:</label>
			<input type="text" name = "txtNome" /><br/>
			
			<label>E-mail:</label>
			<input type="email" name="txtEmail" /><br/>
			
			<label>Fale conosco:</label>
			<textarea></textarea>
				
			<input type="submit" value="Enviar" />
			
			<input type="reset" value="Limpar" />
		
		</form>

		<a href="index.jsp" >Voltar para a página inicial</a>
	</div>
	
</body>
</html>