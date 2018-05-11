<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Buscar Olimpiadas</title>
	
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<!-- Barra superior com os menus de navegacao -->
	<c:import url="Menu.jsp"/>
    <!-- Container Principal -->
    
    <div class="col-md-12" align="center">
        <img src="img/olimpiadas.png" class="img-rouded" alt="Cinque Terre" width="200" height="200">
    </div>
    <div id="main" class="container">
        <h3 class="page-header">Buscar Olimpíadas</h3>
        <!-- Formulario para inclusao de clientes -->
        <form action="ManterCliente.do" method="post">
            <!-- area de campos do form -->
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="nome">Ano</label>
                    <input type="text" class="form-control" name="ano" id="ano" required maxlength="100" placeholder="Insira o Ano">
                </div>
            </div>
            <hr />
            <div id="actions" class="row">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-default" name="acao" value="Criar">Buscar</button>
                </div>
            </div>
        </form>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>