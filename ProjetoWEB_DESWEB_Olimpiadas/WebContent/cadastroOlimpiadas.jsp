<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cadastrar Olimpiadas</title>
    
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
            <h2>Adicionar uma nova Olimpíada</h2>
        	<form>
        	<div class="input-group mb-3">
        		<label for="pais">País que sediará</label><br>
        		<select class="custom-select form-control" id="inputGroupSelect01">
				  <optgroup label="Verão">
				    <option>Mustard</option>
				    <option>Ketchup</option>
				    <option>Relish</option>
				  </optgroup>
				  <optgroup label="Inverno">
				    <option>Tent</option>
				    <option>Flashlight</option>
				    <option>Toilet Paper</option>
				  </optgroup>
				</select>
        	</div>
        	<%-- 
        	<div class="form-group">
                <label for="pais">País que sediará</label>
                <input type="pais" class="form-control" id="pais" placeholder="Digite o país">
        	</div>
        	---%>
        	<div class="form-group">
                <label for="Tipo">Ano</label> <!--Aqui ficam os anos que serão selecionados e enviado para o banco, fazendo um link com os bancos de ano e olimpiadas-->
                <input type="pais" class="form-control" id="pais" placeholder="Digite o ano dessa olimpíada">
        	</div>
        	<hr>
        	<div class="form-group">  
               <label for="Tipo">Tipo</label>
               <div class="radio">
                    <label><input type="radio" name="optradio">Inverno</label>
               </div>
               <div class="radio">
                    <label><input type="radio" name="optradio">Verão</label>
               </div>
        	</div>
        	<hr>
        <!--<div class="checkbox">
                <label><input type="checkbox"> Remember me</label>
        </div>-->
        		<button type="submit" class="btn btn-default">Cadastrar</button>
        		<button type="reset" class="btn btn-default">Limpar</button>
  			</form>
		</div>
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>