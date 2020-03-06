<%--
  Created by IntelliJ IDEA.
  User: 15836968730
  Date: 04/03/2020
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #9fcdff" >
    <!--navbar brand nele está a logo-->
    <a class="navbar-brand" href="#">
        <img src="Imagens/Logotipo_cefet-rj.jpg" width="30" height="30" class="d-inline-block align-top" alt="">
        CEFET
    </a>
    <!--a tag buttor faz com que apareça um menu(3 barrinhas) com os links quando estiver em uma tela small-->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Produto
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="cadastroProduto.jsp">Cadastro Produto</a>
                    <a class="dropdown-item" href="buscarProduto.jsp">Consulta Produto</a>
                </div>
            </li>
        </ul>
    </div>

</nav>