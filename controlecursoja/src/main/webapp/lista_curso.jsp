<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@  page import="br.com.cursosja.controlecursoja.model.dao.CursoDao" %>
<%@  page import="br.com.cursosja.controlecursoja.model.entidade.Curso" %>
<%@  page import="br.com.cursosja.controlecursoja.model.dao.ProfessorDao" %>
<%@  page import="br.com.cursosja.controlecursoja.model.entidade.Professor" %>
<%@  page import="java.util.List" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista dos cursos</title>
</head>
<body>
<h1>Lista de Cursos</h1>
<jsp:include page="verificaSessao.jsp"></jsp:include>
<a href="incluir_curso.jsp">Incluir Curso</a>
<a href="area_interna.jsp">Voltar</a>
<%
String nomeBusca = "";

if(request.getParameter("nomeBusca") != null){
nomeBusca = request.getParameter("nomeBusca");
}
%>
<form method="post" action="lista_curso.jsp">
<input type="text" name="nomeBusca" value="<%= nomeBusca %>" />
<input type="submit" value="Buscar" />
</form>

 <table>
 <thead>
 <tr>
 <th>Nome</th>
 <th>Mensalidade</th>
 <th>Manipulação</th>
 </tr>
 </thead>
 
 <tbody>
 <% 
 CursoDao dao = new CursoDao();
 
 List <Curso> cursos = dao.listar(nomeBusca);
 DecimalFormat fmt = new DecimalFormat("###,##0.00");
 for (Curso c: cursos){ %>
 <tr>
 
 <td><%= c.getNome() %></td>
 <td><%= fmt.format( c.getValor()) %></td>
 <td><a href="IniciarAlterarCurso?id=<%= c.getId()%>">Alterar</a> 
 <a href="ExcluirCurso?id=<%= c.getId() %>" onclick="return confirm('Deseja excluir este curso?'); ">Excluir</a>
 </td>
 </tr>
 
 <% } %>
 </tbody>
 </table>
</body>
</html>