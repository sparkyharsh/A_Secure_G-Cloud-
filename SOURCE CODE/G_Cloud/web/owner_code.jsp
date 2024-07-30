<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Login Succesful!");
            window.location.href="owner_home.jsp";
        }
        function InvalidAlert()
        {
            alert("Invalid Credentials!");
            window.location.href="owner.jsp";
        }
        </script>
        

    </head>
</html>


<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String name = request.getParameter("name");
    String password = request.getParameter("pass");
    System.out.println(name);
    System.out.println(password);
    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from oreg where name='" + name + "' AND pass='" + password + "'");
        if (rs.next()) {

            session.setAttribute("soname", rs.getString("name"));
            session.setAttribute("soemail", rs.getString("email"));
            session.setAttribute("sostate", rs.getString("state"));
            session.setAttribute("socountry", rs.getString("country"));
            session.setAttribute("soid", rs.getString("id"));

           //  response.sendRedirect("owner_home.jsp?msg=success");
             out.println("<script>UserAlert();</script>");

         
        } else {
          
         // response.sendRedirect("owner.jsp?msgg=failed");
            out.println("<script>InvalidAlert();</script>");

        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }
%>