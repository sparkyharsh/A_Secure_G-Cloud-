<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Verification</title>
        
         <script>
        function UserAlert()
        {
            alert("Secret Key Verified Successfully!");
            window.location.href="verify.jsp";
        }
       function InvalidAlert()
        {
            alert("Invalid Secret Key!");
            window.location.href="spam.jsp";
        }

        </script>
        

    </head>
</html>


<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Algorithm.Timing_Checking"%>
<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date"%>


<%
    

    String skey = request.getParameter("skey");
    session.setAttribute("sskey", skey);
    System.out.println("Secret Key : " + skey);

    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from upload where skey='" + skey + "'");
        if (rs.next()) {

            //String settime = rs.getString("utime");
            //DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
          //  Date date = new Date();
          //  String time = dateFormat.format(date);
          //  Calendar cal = Calendar.getInstance();
        //    System.out.println(dateFormat.format(cal.getTime()));
           // String endtime = time;

            //Timing_Checking tc = new Timing_Checking();
            //tc.TimeFunction(settime, endtime);

            //response.sendRedirect("verify.jsp?msg=success");
            out.println("<script>UserAlert();</script>");
        } else {

            //response.sendRedirect("spam.jsp?msgg=Invalid_Secret_Key");
            
            out.println("<script>InvalidAlert();</script>");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }
%>
