<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Time_Enabled_proxy_re-encyprtion_success!");
            window.location.href="fileupload.jsp";
        }
       function InvalidAlert()
        {
            alert("Upload Failed!");
            window.location.href="fileupload.jsp";
        }

        </script>
        

    </head>
</html>

<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String wtime = (String) session.getAttribute("stime");

    String access_time = request.getParameter("access_time");

    String str = request.getParameter("str");
    System.out.println("Proxy Re-Encrypt : " + str + wtime + "\nSet Time : " + access_time);
    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        int in = st.executeUpdate("update upload set utime='" + access_time + "' where  utime='" + wtime + "'");
        if (in != 0) {

            //response.sendRedirect("fileupload.jsp?msg=Time_Enabled_proxy_re-encyprtion_success");
            out.println("<script>UserAlert();</script>");
        } else {
           // response.sendRedirect("fileupload.jsp?msgg=failed");
            out.println("<script>InvalidAlert();</script>");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }
%>