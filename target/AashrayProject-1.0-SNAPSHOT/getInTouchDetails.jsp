<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="modal.css">
<title>GetInTouch-Details</title>
</head>
<body>
<div class="row">
            <div class="col-sm-12">
                <h1 class="details_heading">GetInTouch-Details 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                <button class="btn btn-info"><a href="admin_home.jsp">Admin-Home</a></button> </h1>
             
            </div>
        </div>
<center>
<table border="1" cellspacing="3" cellpadding="10" width="70%" class="table">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Contact_Number</th>
    <th>Message</th>
    <th>Action</th>
  </tr>
<% 
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aashray_project","root","sukh1404");
		Statement st=con.createStatement();
		String str="select * from getintouch";
		ResultSet rs=st.executeQuery(str);
		while(rs.next())
		{
	%>
		<tr>
		<td><%=rs.getInt("Id") %></td>
		<td><%=rs.getString("Name") %></td>
		<td><%=rs.getString("Email") %></td>
		<td><%=rs.getString("Contact_Number") %></td>
		<td><%=rs.getString("Message") %></td>
		<td><a href="editRecord.jsp?id=<%=rs.getInt("Id") %>" class="btn btn-sm btn-primary">Edit</a>
		<a href="deleteRecord.jsp?id=<%=rs.getInt("Id") %>" class="btn btn-sm btn-danger">Delete</a>
		</td>
		</tr>
		<%}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
%>

</table>
</center>
</body>
</html>