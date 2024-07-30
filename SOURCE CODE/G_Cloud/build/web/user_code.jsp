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
         function Admin()
        {
            alert("Your Account Is Blocked For Verification!");
            window.location.href="user.jsp";
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

    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String role = request.getParameter("role");
    System.out.println("User Login : " + name + " : " + password + " : " + role);
    System.out.println(password);
    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from ureg where name='" + name + "' AND pass='" + password + "' AND role='" + role + "' ");
        if (rs.next()) {
            String status = rs.getString("status");
            session.setAttribute("ssname", rs.getString("name"));
            session.setAttribute("ssemail", rs.getString("email"));
            session.setAttribute("ssstate", rs.getString("state"));
            session.setAttribute("sscountry", rs.getString("country"));
            session.setAttribute("ssrole", rs.getString("role"));
            session.setAttribute("ssid", rs.getString("id"));

            if (status.equalsIgnoreCase("Accepted")) {
                // response.sendRedirect("user_home.jsp?msg=success");
                out.println("<script>UserAlert();</script>");
                
            } else if (status.equalsIgnoreCase("Blocked")) {
               //  response.sendRedirect("user.jsp?msg=Your_Account_Blocked");
                out.println("<script>Admin();</script>");

            }

        } else {
            // response.sendRedirect("user.jsp?msgg=failed");
            out.println("<script>InvalidAlert();</script>");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }
%>