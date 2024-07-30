<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Login Succesful!");
            window.location.href="user_home.jsp";
        }
       function InvalidAlert()
        {
            alert("Invalid Credentials!");
            window.location.href="user.jsp";
        }

        </script>
        

    </head>
</html>

<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String name = "-";
    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from checktime where ctime LIKE '%" + name + "%'");
        if (rs.next()) {
            System.out.println("true");

//            response.sendRedirect("user_home.jsp?msg=success");
            out.println("<script>UserAlert();</script>");
        } else {
            System.out.println("Fales");
//            response.sendRedirect("user.jsp?msgg=failed");
            out.println("<script>InvalidAlert();</script>");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }
%>