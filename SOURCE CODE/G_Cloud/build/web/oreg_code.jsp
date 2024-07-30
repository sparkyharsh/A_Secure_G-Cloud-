<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Registered Succesfully!");
            window.location.href="owner.jsp";
        }
        function InvalidAlert()
        {
            alert("Register Failed!");
            window.location.href="owner_reg.jsp";
        }
        </script>
        

    </head>
</html>


<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String dob = request.getParameter("dob");
    String gen = request.getParameter("gen");
    String state = request.getParameter("state");
    String country = request.getParameter("country");

    System.out.println("User Details : " + name + email + password + dob + gen + state + country);
    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        int in = st.executeUpdate("insert into oreg (name, email, pass, dob, gender, state, country, status) values('" + name + "', '" + email + "', '" + password + "', '" + dob + "', '" + gen + "','" + state + "', '" + country + "', 'No')");
        if (in != 0) {
            
            // response.sendRedirect("owner.jsp?msg=success");
            out.println("<script>UserAlert();</script>");
        } else {
            // response.sendRedirect("owner_reg.jsp?msgg=failed");
            out.println("<script>InvalidAlert();</script>");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }



%>