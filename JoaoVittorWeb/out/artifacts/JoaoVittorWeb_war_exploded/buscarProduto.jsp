<%--
  Created by IntelliJ IDEA.
  User: 15836968730
  Date: 11/02/2020
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@page import="br.com.teste.cefet.model.Produto"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Consulta de Produtos</title>
    <link rel="stylesheet" href="CSS/bootstrap-4.1.3-dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
    <header>
        <%@include file="EstruturasComunsJSP/navbar.jsp"%>
    </header>



            <p style="text-align: center">
                <%
                    String mensagem = (String) request.getAttribute("mensagem");
                    if( mensagem != null){
                        out.print(mensagem);
                    }
                %>
            </p>

            <div class="container-fluid">
            <form class="form-inline" action="http://localhost:8080/JoaoVittorWeb_war_exploded//BuscarProdutoController2" method="get">
                    <table align="center">
                        <thead>
                        <tr><th>Consultar um produto</th></tr>
                        </thead>
                        <tbody>
                        <tr><td>Insira a Descrição ou ID do poroduto</td></tr>
                        <tr>
                            <td><div class="form-group"><label>ID:<input type="text" class="form-control" name="idProduto"></label></div></td>
                            <td><div class="form-group"><label>Descrição:<input type="text" class="form-control" name="descricao"></label></div></td>
                            <td><button type="submit" class="btn btn-primary" value="Buscar" name="buscar">Buscar</button></td>
                        </tr>
                        </tbody>
                    </table>
            </form>
            </div>

            <%
               if (request.getAttribute("produto")!=null){
                    Produto produto = (Produto)request.getAttribute("produto");

            %>
            <p>
                <%
                    String mensagem2 = (String) request.getAttribute("mensagem");
                    if(mensagem != null){
                        out.print(mensagem2);
                    }
                %>
            </p>


    <div class="container-fluid">
        <div class="card border-info">
            <div class="card-header" style="background-color: #9fcdff">
                <div style="text-align: center;">Alteração/Exclusão de Cadastro</div>
            </div>
            <div class="card-body text-primary">
                <form class="form-inline" action="http://localhost:8080/JoaoVittorWeb_war_exploded//AlterarProdutoController" method="post">
                       <table class="table-responsive" align="center">

                           <thead>

                                        <input type="hidden" name="idProduto" value="<%out.print(produto.getIdProduto());%>"/></th> </tr>

                                <tr>
                                    <th scope="col">Descrição</th>
                                    <th scope="col">Quantidade</th>
                                    <th scope="col">Preço</th>
                                    <th scope="col">Fornecedor</th>
                                    <th scope="col">Vendas On-line</th>
                                </tr>
                            </thead>
                            <tbody>


                                    <tr>
                                        <td><div class="form-group"><label><input type="text" class="form-control" name="descricao" value="<%out.print(produto.getDescricao());%>">
                                        </label></div></td>
                                        <td><div class="form-group"><label><input type="text" class="form-control" name="quantidade" value="<%out.print(produto.getQuantidade());%>">
                                        </label></div></td>
                                        <td><div class="form-group"><label><input type="text" class="form-control" name="preco" value="<%out.print(produto.getPreco());%>"></label></div></td>

                                        <td><label><select style="width: 200px" class="custom-select" name="fornecedor">
                                            <option <%if (produto.getFornecedor().equals("Assai")){
                                                        out.print("selected=selected");}%>>Assai</option>
                                            <option <%if (produto.getFornecedor().equals("Ceasa")){
                                                        out.print("selected=selected");}%>>Ceasa</option>
                                            <option <%if (produto.getFornecedor().equals("Guanabara")){
                                                        out.print("selected=selected");}%>>Guanabara</option>
                                            <option <% if (produto.getFornecedor().equals("Atacadao")){
                                                        out.print("selected=selected");}%>>Atacadao</option>
                                        </select></label></td>

                                        <td><label>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="vendasonline" value="sim"
                                                    <%if (produto.getVendasOnline().equals("sim")){out.print("checked=checked");}%>><label class="form-check-label">Sim</label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="vendasonline" value="nao"
                                                    <%if (produto.getVendasOnline().equals("nao")){out.print("checked=checked");}%>><label class="form-check-label">Não</label>
                                            </div>
                                        </label></td>
                                        <td>
                                            <button type="submit" value="Alterar" class="btn btn-outline-primary">Alterar</button>
                                            <button type="reset" class="btn btn-outline-warning" value="Limpar">Limpar</button>
                                            <a href="http://localhost:8080/JoaoVittorWeb_war_exploded//ExcluirProdutoController?id=<%out.print(produto.getIdProduto());%>"><img src="Imagens/lixeira.png" width="35" height="25" alt="excluir"></a>
                                        </td>

                                    </tr>

                            </tbody>

                    </table>
                </form>
            </div>

                <% } %>
        </div>
    </div>

    <div class="fixed-bottom">
    <footer class="modal-footer">
        <a href="index.jsp" class="btn btn-primary btn-lg active" role="button">Voltar Início</a>
        <a href="cadastroProduto.jsp" class="btn btn-secondary btn-lg active">Cadastrar</a>
    </footer>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="CSS/bootstrap-4.1.3-dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>
