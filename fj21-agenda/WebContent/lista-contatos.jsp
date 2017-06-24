<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<!--  cria DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />


	<table border="1">
		<tr align = 'center'>
			
			<td><b>Nome</b></td>
			<td><b>Email</b></td>
			<td><b>Endereco</b></td>
			<td><b>Data de Nascimento</b></td>
			
		</tr>
		<!-- Percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'B0E0E6' : 'ffffff' }">
				<td>${contato.nome}</td>
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if> <c:if test="${empty contato.email}">
        E-mail não informado
      </c:if></td>
				<td>${contato.endereco}</td>
				<td align = 'center'>
				<fmt:formatDate value="${contato.dataNascimento.time}"
    pattern="dd/MM/yyyy" />
		
		</c:forEach>
	</table>
	<c:import url="rodape.jsp" />
</body>
</html>