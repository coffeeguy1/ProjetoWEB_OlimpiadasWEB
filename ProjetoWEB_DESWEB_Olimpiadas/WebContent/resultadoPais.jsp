<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Visualizar Pais</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  </head>
    <body>
    	<!-- Barra superior com os menus de navegacao -->
		<c:import url="Menu.jsp"/>
		
        <div class="col-md-12" align="center">
        <img src="img/olimpiadas.png" class="img-rouded" alt="Cinque Terre" width="200" height="200">
        </div>
        <div class="container">
            <h2>Visualizar Pais #${pais.id}</h2>
            <form>
                <div class="form-group">
                <label>Nome</label>
                <p>${pais.nome}<p>
                <label>População</label>
                <p>${pais.populacao}<p>
                <label>Área</label>
                <p>${pais.area}<p>
        </div>
        <button type="" class="btn btn-default">Novo cadastro</button>
  			</form>
		</div>
	 <script src="js/jquery.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
    </body>
</html>