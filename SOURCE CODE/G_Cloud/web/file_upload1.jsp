<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>A Secure G-Cloud-Based Framework for Government Healthcare Services</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/jquery.bxslider.css">
        <link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">	

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
                                <center><a href="#"><h1 style="color: #fff">A Secure G-Cloud-Based Framework for Government Healthcare Services</h1></a></center>
                            </div>
                            <br><br><br><br>
                            <div class="navbar-collapse collapse">							
                                <div class="menu">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation"><a href="owner_home.jsp">Owner Home</a></li>
                                        <li role="presentation"><a href="fileupload.jsp" class="active">File Upload</a></li>
                                        <li role="presentation"><a href="file_de.jsp">File Details</a></li>
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
                            <h3 style="font-size: 30px; font-family: sans-serif">Timing Enabled Proxy Re-Encryption</h3>	<br>				
                        </div>
                        <style>
                            input[type=text], select,input[type=password],input[type=email],input[type=date],input[type=file] {
                                width: 25%;
                                padding: 12px 20px;
                                margin: 8px 0;
                                color: black;
                                display: inline-block;
                                border: 1px solid #ccc;
                                border-radius: 4px;
                                box-sizing: border-box;
                            }

                            input[type=submit] {
                                width: 300px;
                                height: 50px;
                                background-color: #00abf0;
                                color: black;
                                padding: 14px 20px;
                                margin: 8px 0;
                                border: none;
                                border-radius: 4px;
                                cursor: pointer;
                            }



                            input[type=submit]:hover {
                                background-color: #3e8f3e;
                            }


                        </style>




                    </div>
                </div>
            </div>
            <div style="width:100%; margin:0 auto;">
                <div style="width: 50%; float: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img style="height: 250px; width: 400px" src="img/time enabled.jpg">

                </div>
                <div style="width: 50%; float: left">
                    <%
                        String str = (String) session.getAttribute("encStr");
                        System.out.println("EncSting : " + str);
                        DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
                        Date date = new Date();
                        String time = dateFormat.format(date);
                        Calendar cal = Calendar.getInstance();
                        System.out.println(dateFormat.format(cal.getTime()));

                    %>

                    <!--<p>Please fill in this form to create an account.</p>-->
                    <form method="get" action="re_encypt.jsp">
                        <center><table>
                                <tr>
                                    <th style="color: #080808"><label style="color: #1BBD36; font-size: 15px">File Name :</label></th>
                                    <th style="color: #080808"><textarea name="str" style="width: 300px; height: 100px"><%=str%></textarea></th>
                                </tr>

                                <tr>
                                    <th style="color: #080808"><label style="color: #1BBD36; font-size: 15px">Time Enabling:&nbsp;&nbsp;&nbsp;&nbsp;</label></th>
                                    <th style="color: #080808"><input style="width: 300px" type="text" id="fname" value="<%=time%>" name="access_time" placeholder=""></th>
                                </tr>
                                <tr>
                                    <th style="color: #080808"></th>
                                    <th style="color: #080808"><input type="submit" value="Proxy Re-Encrypt"></th>
                                </tr>

                            </table>
                        </center><br>
                    </form>
                    <br>
                    <BR><BR>



                </div>

            </div>


    </body>
</html>