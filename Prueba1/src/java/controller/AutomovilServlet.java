package controller;

import service.AutomovilService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AutomovilServlet")
public class AutomovilServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        AutomovilService service = new AutomovilService();

        request.setAttribute("hashMap", service.getHashMap());
        request.setAttribute("linkedHashMap", service.getLinkedHashMap());
        request.setAttribute("treeMap", service.getTreeMap());

        RequestDispatcher dispatcher =
                request.getRequestDispatcher("listarAutos.jsp");
        dispatcher.forward(request, response);
    }
}
