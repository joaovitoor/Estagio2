package br.com.teste.cefet.controller;

import br.com.teste.cefet.dao.ExceptionDAO;
import br.com.teste.cefet.model.Produto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BuscarProdutoController2")
public class BuscarProdutoController2 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String descricao = request.getParameter("descricao");
        String idProduto = request.getParameter("idProduto");

        String[] arrayParametros = {descricao, idProduto};

        if (descricao==null && idProduto==null){
            String mensagem = "Preencha corretamente o campo";
            request.setAttribute("mensagem", mensagem);
            RequestDispatcher dispatcher = request.getRequestDispatcher("buscarProduto.jsp");
            dispatcher.forward(request, response);
        }

        if (idProduto!=null && idProduto.length() > 0){
            try {

                Produto produto = new Produto();
                Produto result = produto.buscarProdutoPorId(idProduto);
                request.setAttribute("produto", result);
                RequestDispatcher dispatcher = request.getRequestDispatcher("buscarProduto.jsp");
                dispatcher.forward(request, response);
            }catch (ExceptionDAO | ServletException | IOException e){
                response.getWriter().write("Erro ao realizar consulta: " + e);
            }
        }
        if (descricao!=null && descricao.length() > 0){
            try {
                Produto produto = new Produto();
                Produto result = produto.buscarProdutoPorDescricao(descricao);
                request.setAttribute("produto", result);
                RequestDispatcher dispatcher = request.getRequestDispatcher("buscarProduto.jsp");
                dispatcher.forward(request, response);
            }catch (ExceptionDAO | ServletException | IOException e){
                response.getWriter().write("Erro ao realizar consulta: " + e);
            }
        }


    }

}
