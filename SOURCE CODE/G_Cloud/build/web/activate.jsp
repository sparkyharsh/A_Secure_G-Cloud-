<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Account Activated!");
            window.location.href="user_de.jsp";
        }
        function InvalidAlert()
        {
            alert("Failed!");
            window.location.href="user_de.jsp";
        }
        </script>
        

    </head>
</html>

<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String id = request.getParameter("id");


    System.out.println("User ID : " + id);
    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        int in = st.executeUpdate("update ureg set status='Accepted' where  id='" + id + "'");
        if (in != 0) {

            // response.sendRedirect("user_de.jsp?msg=Account_Activated");
            out.println("<script>UserAlert();</script>");
        } else {
            // response.sendRedirect("user_de.jsp?msgg=failed");
            out.println("<script>InvalidAlert();</script>");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }
%>