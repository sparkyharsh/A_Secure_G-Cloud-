<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Login Succesfully!");
            window.location.href="ta_home.jsp";
        }
        function InvalidAlert()
        {
             alert("Invalid Credentials!");
            window.location.href="auth.jsp";
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

    if (Name.equalsIgnoreCase("ta") & pass.equalsIgnoreCase("ta")) {
        
        
       // response.sendRedirect("ta_home.jsp?msg=Success");
        out.println("<script>UserAlert();</script>");
    } else {
        //response.sendRedirect("auth.jsp?msgg=Failed");
        out.println("<script>InvalidAlert();</script>");
    }

%>