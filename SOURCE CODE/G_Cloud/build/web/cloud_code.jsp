<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Login Succesful!");
            window.location.href="cloud_home.jsp";
        }
       function InvalidAlert()
        {
            alert("Invalid Credentials!");
            window.location.href="cloud.jsp";
        }

        </script>
        

    </head>
</html>


<%
    String Name = request.getParameter("name");
    String pass = request.getParameter("password");
    session.setAttribute("sname",Name);
    session.setAttribute("spass",pass);

    System.out.println("Name-----*----- : " + Name);
    System.out.println("Pass-----*----- : " + pass);

    if (Name.equalsIgnoreCase("cloud") & pass.equalsIgnoreCase("cloud")) {
        
        
       // response.sendRedirect("cloud_home.jsp?msg=Success");
        out.println("<script>UserAlert();</script>");
    } else {
        //response.sendRedirect("cloud.jsp?msgg=Failed");
        out.println("<script>InvalidAlert();</script>");
    }

%>