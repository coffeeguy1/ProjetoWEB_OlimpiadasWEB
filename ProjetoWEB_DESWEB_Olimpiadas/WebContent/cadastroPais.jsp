<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale-1">
    <title>Criar País</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  </head>
  
    <body>
    	<!-- Barra superior com os menus de navegacao -->
 
		<c:import url="Menu.jsp"/>
        
        <div id="main" class="container">
        	<div class="col-md-12" align="center">
       		 	<img src="img/olimpiadas.png" class="img-rouded" alt="Cinque Terre" width="200" height="200">
        	</div>
        	
            <h2>Adicionar um novo País</h2>
          	<form action="ManterPais.do" method="post">
                <div class="form-group col-md-12">
                	<label for="nome">Nome</label>
                	<input type="text" class="form-control" id="nome" name="nome" placeholder="Entre com o nome do país">
        		</div>
       			<div class="form-group col-md-12">
	                <label for="populacao">População</label>
	                <input type="text" class="form-control" id="populacao" name="populacao" placeholder="Tamanho da população">
        		</div>
        		<div class="form-group col-md-12">
                	<label for="area">Área</label>
                	<input type="text" class="form-control" id="area" name="area" placeholder="Tamanho do país">
        		</div>
        		<div id="actions" class="row">
        			<div class="col-md-12">
        			<button type="submit" class="btn btn-default" name="acao" value="Criar">Cadastrar</button>
        			<button type="reset" class="btn btn-default">Limpar</button>
        			</div>
        		</div>
  			</form>
		</div>
		 <script src="js/jquery.min.js"></script>
    	<script src="js/bootstrap.min.js"></script>
    </body>
</html>
