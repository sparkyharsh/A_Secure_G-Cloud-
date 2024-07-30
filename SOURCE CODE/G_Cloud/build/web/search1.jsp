<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String name = request.getParameter("name");
    String role = request.getParameter("attribute");
    session.setAttribute("sroles", role);
    System.out.println("User Login : " + name + " : " + role);
    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from upload where policy LIKE '%" + role + "%'");
        if (rs.next()) {

            session.setAttribute("ssid", rs.getString("id"));

            response.sendRedirect("result.jsp?msg=success");
        } else {
            response.sendRedirect("search.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }
%>