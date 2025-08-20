package servlets;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/registers")
public class register extends HttpServlet{
    private static final long serialVersionUID=1L;
    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
        String fullname=req.getParameter("fullname");
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        String phonenumber=req.getParameter("phonenumber");
        RequestDispatcher rd=null;
        try{
            int rowCount=JDBCWork(fullname,email,password,phonenumber);
            if(rowCount > 0){
                req.setAttribute("status","success");
                HttpSession session=req.getSession();
                session.setAttribute("name",fullname);
                rd=req.getRequestDispatcher("index.jsp");
            }else{
                req.setAttribute("status","failed");
                rd=req.getRequestDispatcher("views/register.jsp");
            }
        }catch(Exception e){
            System.out.println(e.getMessage());
            req.setAttribute("status","failed");
            rd=req.getRequestDispatcher("views/register.jsp");
        }
        rd.forward(req,res);
    }
    private static int JDBCWork(String fullname,String email,String password,String phonenumber)
            throws SQLException,ClassNotFoundException{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registeredUser","root","Psinghj77@");
        PreparedStatement pst=con.prepareStatement("Insert into users(fullname,email,password,phonenumber) values(?,?,?,?)");
        pst.setString(1,fullname);
        pst.setString(2,email);
        pst.setString(3,password);
        pst.setString(4,phonenumber);
        int ans=pst.executeUpdate();
        con.close();
        return ans;
    }
}
