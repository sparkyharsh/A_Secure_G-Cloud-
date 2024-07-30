<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Key Request Sent Succesfully!");
            window.location.href="search.jsp";
        }
       function InvalidAlert()
        {
            alert("Failed To Send Key Request!");
            window.location.href="search.jsp";
        }

        </script>
        

    </head>
</html>

<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String uid = (String) session.getAttribute("ssid");
    String uname = (String) session.getAttribute("ssname");
    String uemail = (String) session.getAttribute("ssemail");
    String role = (String) session.getAttribute("ssrole");
    String country = (String) session.getAttribute("sscountry");

    System.out.println("Uid : " + uid);
    System.out.println("Name : " + uname);
    System.out.println("Email : " + uemail);
    System.out.println("role : " + role);
    System.out.println("Fname : " + country);
    String id = request.getParameter("id");
    Connection con1 = SqlConnection.getConnection();
    Statement st1 = con1.createStatement();
    try {
        ResultSet rs = st1.executeQuery("select * from upload where id='" + id + "' ");
        if (rs.next()) {

            String fid = rs.getString("id");
            String fname = rs.getString("fname");
            String owner = rs.getString("oname");
            String time = rs.getString("utime");
            String skey = rs.getString("skey");

            Connection con = SqlConnection.getConnection();
            Statement st = con.createStatement();
            st.executeUpdate("insert into request (fid, fname, owner, time, uid, uname, uemail, role, country, skey, status) values('" + fid + "','" + fname + "','" + owner + "', '" + time + "','" + uid + "','" + uname + "','" + uemail + "','" + role + "','" + country + "','" + skey + "','No')");

            //response.sendRedirect("search.jsp?msg=Request_sent_success");
            out.println("<script>UserAlert();</script>");
        } else {
           // response.sendRedirect("search.jsp?msgg=failed");
            out.println("<script>InvalidAlert();</script>");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }



%>