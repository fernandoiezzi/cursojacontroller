<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Incluir Curso</title>
</head>
<body>
<form method="post" action="IncluirCurso">
<label>Curso: </label>
<input type="text" name="nomecurso" placeholder="Digite o nome do curso" required/>
<input type="number" name="valorcurso" placeholder="Insira o valor" min="0.01" required /><br><br>
<label>Professor:</label>
<input type="text" name="nomeprofessor" placeholder="Digite o nome do professor" required/>
<input type="text" name="celular" placeholder="Insira o telefone celular" required />
<input type="number" name="valorhora" placeholder="Insira o valor da hora" min="0.01" required /><br><br>
<input type="submit" value="Ok" />
<input type="reset" value="limpar" />
</form><br>


</body>
</html>