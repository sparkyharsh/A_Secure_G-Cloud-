<%--
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Secret Key Verified!");
            window.location.href="verified.jsp";
        }
       function InvalidAlert()
        {
            alert("Invalid Key!");
            window.location.href="user.jsp";
        }

        </script>
        

    </head>
</html>
--%>

<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String name = "-";
    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from checktime where ctime LIKE '%" + name + "%'");
        if (rs.next()) {

           response.sendRedirect("verified.jsp?msg=success");
           // out.println("<script>UserAlert();</script>");
        } else {

            response.sendRedirect("user.jsp?msgg=failed");
            //out.println("<script>InvalidAlert();</script>");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }
%>
