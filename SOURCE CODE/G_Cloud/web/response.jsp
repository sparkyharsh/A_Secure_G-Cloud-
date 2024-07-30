<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Secret Key Sent Succesfully!");
            window.location.href="user_req.jsp";
        }
       function InvalidAlert()
        {
            alert("Failed To Send Secret Key!");
            window.location.href="user_req.jsp";
        }

        </script>
        

    </head>
</html>

<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%@page import="Database.MailSender"%>
<%

    Connection conn = null;
    Statement stmt = null;
    Statement st = null;
    ResultSet rs = null;

    MailSender ms = new MailSender();
     String id = request.getParameter("id");
     String time = request.getParameter("time");

    try {
       
 
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "root");

        stmt = conn.createStatement();
        st = conn.createStatement();
        int i=st.executeUpdate("update request set status='Accepted' where id='"+id+"' AND time='"+time+"' ");
        rs = stmt.executeQuery("select * from request where id = '" + id + "'");

        if (rs.next()) {

            String name = rs.getString("uname");
            String email = rs.getString("uemail");
            String fname = rs.getString("fname");
            String skey = rs.getString("skey");


            String status = "No";
           

            String message = "\n\tFile Name : " + fname + "\n\n\tSecret Key : " + skey;

            ms.secretMail(message, name, email);
            
            

            //response.sendRedirect("user_req.jsp?msg=Secret_key_sent_success");
            out.println("<script>UserAlert();</script>");

        } else {
           // response.sendRedirect("user_req.jsp?message=failed");
            out.println("<script>InvalidAlert();</script>");

        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }


%>