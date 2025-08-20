package servlets;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.IOException;

@WebServlet("/loggedin")
public class login extends HttpServlet{
    protected void doPost(HttpServletRequest req,HttpServletResponse res)
        throws ServletException,IOException{
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        RequestDispatcher rd=null;
        try{
            String name=JDBCChecking(email,password);
            if(name != ""){
                HttpSession session=req.getSession();
                session.setAttribute("name",name);
                req.setAttribute("status","success");
                rd=req.getRequestDispatcher("index.jsp");
            }else{
                req.setAttribute("status","failed");
                rd=req.getRequestDispatcher("views/login.jsp");
            }
        }catch(Exception e){
            System.out.println(e.getMessage());
            req.setAttribute("status","failed");
            rd=req.getRequestDispatcher("views/login.jsp");
        }
        rd.forward(req,res);
    }
    private static String JDBCChecking(String email,String password)
            throws SQLException,ClassNotFoundException{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registeredUser","root","Psinghj77@");
        PreparedStatement pst=con.prepareStatement("Select * from users where email=? and password=?");
        pst.setString(1,email);
        pst.setString(2,password);
        ResultSet rs=pst.executeQuery();
        if(rs.next()){
            System.out.println(rs.getString("fullname"));
            return rs.getString("fullname");
        }
        return "";
    }

}
