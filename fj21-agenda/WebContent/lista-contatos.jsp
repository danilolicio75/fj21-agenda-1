<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>
</head>
<body>
	<!--  cria DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
	
	<table border="1">
		<tr>
		<td>Nome</td>
		<td>Email</td>
		<td>Endereco</td>
		<td>Data de Nascimento</td>		
		</tr>
		<!-- Percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }" >
				<td>${contato.nome}</td>
				<td>
				<c:if test="${not empty contato.email}">
				<a href="mailto:${catato.email}">${contato.email}</a>
				</c:if>
				</td>
				<td>${contato.endereco}</td>
				<td>${contato.dataNascimento.time}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>