<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Invalid Secret Key!");
            window.location.href="file_acc.jsp";
        }
       function InvalidAlert()
        {
            alert("Failed!");
            window.location.href="spam.jsp";
        }

        </script>
        

    </head>
</html>

<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String uid = (String) session.getAttribute("ssid");
    System.out.println(uid);
    Connection con = SqlConnection.getConnection();
    Connection con1 = SqlConnection.getConnection();
    Statement st = con.createStatement();
    Statement st1 = con1.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from ureg where id='" + uid + "' ");
        if (rs.next()) {

            int a = rs.getInt("spam");
            int c = a + 1;

            st1.executeUpdate("update ureg set spam='" + c + "' where id='" + uid + "'");


           // response.sendRedirect("file_acc.jsp?msg=Invalid_Secret_Key");
            out.println("<script>UserAlert();</script>");
        } else {
            //response.sendRedirect("spam.jsp?msgg=failed");
            out.println("<script>InvalidAlert();</script>");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }
%>