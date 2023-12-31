<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="br.com.jvm.projetolivraria.model.entidades.Livro"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<Livro> lista = (ArrayList<Livro>) request.getAttribute("livros");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Livraria</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Livros</h1>
	<a href="novo.html" class="Botao1">Novo Livro </a>
	<table id = "tabela">
		<thead>
			<tr>
				<th>Id</th>
				<th>Titulo</th>
				<th>Genero</th>
				<th>Quantidade de Paginas</th>
				<th>Isbn</th>
				<th>Opções</th>
			
			
			
			</tr>
		</thead>	
		<tbody>
			<%for (int i = 0; i < lista.size(); i++) { %>
				<tr>
					<td><%=lista.get(i).getId()%></td>
					<td><%=lista.get(i).getTitulo()%></td>
					<td><%=lista.get(i).getGenero()%></td>
					<td><%=lista.get(i).getQuantidadePaginas()%></td>
					<td><%=lista.get(i).getIsbn()%></td>
					<td><a href="select?id=<%=lista.get(i).getId() %>" 
					class= "Botao1">Editar</a>
						<a href="javascript: confirmar(<%=lista.get(i).getId() %>)" 
					class= "Botao2">Excluir</a>
					</td>
				</tr>
				<%} %>
		</tbody>
	</table>
	<script src = "scripts/confirmador.js"></script>
</body>
</html>