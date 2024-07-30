<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.ResultSetInternalMethods"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>A Secure G-Cloud-Based Framework for Government Healthcare Services Cloud System</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/jquery.bxslider.css">
        <link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">	
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body style="background: #ee9ca7;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #ffdde1, #ee9ca7);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #ffdde1, #ee9ca7); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */">
        <header>		
            <nav class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="navigation" style="background: #3a7bd5;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #3a6073, #3a7bd5);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #3a6073, #3a7bd5); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
">
                    <div class="container">					
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <div class="navbar-brand">
                                <center><a href="index2.jsp"><h1 style="color: #fff">A Secure G-Cloud-Based Framework for Government Healthcare Services</h1></a></center>
                            </div>
                            <br><br><br><br>
                            <div class="navbar-collapse collapse">							
                                <div class="menu">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation"><a href="cloud_home.jsp">Cloud Home</a></li>
                                        <li role="presentation"><a href="file_de1.jsp" class="active">File Details</a></li>
                                        <li role="presentation"><a href="owner_de1.jsp">Patient Details</a></li>
                                        <li role="presentation"><a href="user_de1.jsp">HCP Details</a></li>
                                        <li role="presentation"><a href="index.jsp">Logout</a></li>
                                    </ul>
                                </div>
                            </div>						
                        </div>
                    </div>	
            </nav>		
        </header>

        <div class="services">
            <div class="container">
                <div class="text-center">
                    <div class="services-box">
                        <div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
                            <h3 style="font-size: 35px">File Details</h3>					
                        </div>




                        <form method="post" action="bio_info_upload" enctype="multipart/form-data">

                            <style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
</style>
                            <center><table>

                                    <tr>
                                        <th style="color: #080808; background-color: #00abf0">File Id</th>
                                        <th style="color: #080808; background-color: #00abf0">File Name</th>
                                        <th style="color: #080808; background-color: #00abf0">Date & Time</th>
                                        <th style="color: #080808; background-color: #00abf0">Patient ID</th>
                                        <th style="color: #080808; background-color: #00abf0">Patient Name</th>
                                        <th style="color: #080808; background-color: #00abf0">Access Policy</th>

                                    </tr>
                                    <%

                                        Connection con = SqlConnection.getConnection();
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery("select * from upload");
                                        while (rs.next()) {
                                            String policy = rs.getString("policy");
                                            System.out.println("After : " + policy);
                                            policy = policy.replace("null", "");
                                            policy = policy.replace(",", " ");
                                            System.out.println("After : " + policy);
                                    %>
                                    <tr>
                                        <td style="color: #080808"><%=rs.getString("id")%></td>
                                        <td style="color: #080808"><%=rs.getString("fname")%></td>
                                        <td style="color: #080808"><%=rs.getString("utime")%></td>
                                        <td style="color: #080808"><%=rs.getString("oid")%></td>
                                        <td style="color: #080808"><%=rs.getString("oname")%></td>
                                        <td style="color: #080808"><%=policy%></td>


                                    </tr>

                                    <%
                                        }

                                    %>
                                </table></center><br>

                        </form>

                    </div>
                </div>
            </div>



    </body>
</html>