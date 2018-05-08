<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
          <ul class="nav navbar-nav">
            <li><a href="#">Sobre</a></li>
                
            <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Pais<span class="caret"></span></a>
            <ul class="dropdown-menu">  
                <li><a  href="cadastroPais.jsp">Cadastro de Paises</a></li>
                <li><a  href="ListarPais.jsp">Pesquisar Pais</a></li>
                
            </ul>
            </li>    
            <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Olimpiadas<span class="caret"></span></a>    
            <ul class="dropdown-menu">  
                <li><a  href="cadastroOlimpiadas.jsp">Atualizar Olimpiadas</a></li>
	            <li><a  href="buscarOlimpiadas.jsp">Buscar Olimpíadas</a></li>
                
            </ul>     
            </li>
          </ul>
        <!-- O home fica a direita do menu 
                O class="navbar-brad" altera a font
        -->    
          <ul class="nav navbar-nav navbar-right">
              <li><a class="navbar-brand" href="index.jsp">Home</a></li> 
          </ul>   
        </div>
    </nav>
    