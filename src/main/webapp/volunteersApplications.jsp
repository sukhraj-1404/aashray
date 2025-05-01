<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Volunteer's Applications</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="modal.css">
</head>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&family=Madimi+One&family=Pacifico&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Satisfy&family=Whisper&display=swap');
	.details_heading
	{
		font-family: "Satisfy", cursive;
    color: darkblue;
    background-color: pink;
    text-decoration: 2px underline #DE3163;
	text-align: center;
	}
</style>
<body>

<div class="row">
	<div class="col-sm-12">
		<h1 class="details_heading">Volunteer's Applications
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button class="btn btn-info"><a href="admin_home.jsp">Admin-Home</a></button> </h1>
		</h1>
		
    </div>
</div>

<center>
<table border="1" cellspacing="3" cellpadding="10" width="70%" class="table">
<thead>
<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Age</th>
	<th>Email</th>
	<th>Contact</th>
	<th>Address</th>
	<th>City</th>
	<th>State</th>
	<th>Country</th>
	<th>ZipCode</th>
	<th>Occupation</th>
	<th>IDProof Name</th>
	<th>Uploaded Image</th>
	<th>Download Proof</th>
	<th>Action</th>
</tr>
</thead>
<tbody>
<%
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aashray_project","root","sukh1404");
		Statement st=con.createStatement();
		String str="select * from volunteersform";
		ResultSet rs=st.executeQuery(str);
		
		while(rs.next())
		{
			%>
			<tr>
				<td><%=rs.getInt("Id") %></td>
				<td><%=rs.getString("Name") %></td>
				<td><%=rs.getString("Age") %></td>
				<td><%=rs.getString("Email") %></td>
				<td><%=rs.getString("Contact") %></td>
				<td><%=rs.getString("Address") %></td>
				<td><%=rs.getString("City") %></td>
				<td><%=rs.getString("State") %></td>
				<td><%=rs.getString("Country") %></td>
				<td><%=rs.getString("ZipCode") %></td>
				<td><%=rs.getString("Occupation") %></td>
				<td><%=rs.getString("IDProofName") %></td>
				<%
					if(rs.getString("IDProofName").endsWith(".pdf"))
					{%>
						<th><img alt="" src="idproof/pdf.png" width="100px" height="30px"></th>
						<td>
						<a href="DownloadProof?fn=<%= rs.getString("IDProofName")%>" class="btn btn-sm btn-primary">Download</a>
						</td>
					<%}
					else
					{%>
					<th><img alt="" src="idproof/<%=rs.getString("IDProofName") %>" width="100px" height="30px"></th>
					<td>
					<a href="DownloadProof?fn=<%= rs.getString("IDProofName")%>" class="btn btn-sm btn-primary">Download</a>
					</td>
					<% }%>
				<td>
					<a href="deleteRecordVolunteer.jsp?id=<%=rs.getInt("Id") %>" class="btn btn-sm btn-danger">Delete</a>
		</td>
			</tr>
			<%
		}
}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</tbody>
</table>
</center>
        
</body>
</html>