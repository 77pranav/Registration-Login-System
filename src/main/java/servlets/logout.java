package servlets;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet("/logout")
public class logout extends HttpServlet {
    protected void doGet(HttpServletRequest req,HttpServletResponse res)
        throws ServletException,IOException{
        HttpSession hs=req.getSession();
        hs.removeAttribute("name");
        res.sendRedirect("index.jsp");
    }
}
