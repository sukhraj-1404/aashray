<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete Records</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="modal.css">
</head>
<body>
<div class="container">
<h1>Delete Record</h1>
<% 
    // Retrieve record details from the database based on ID
    int id = Integer.parseInt(request.getParameter("id"));
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aashray_project", "root", "sukh1404");
     // Prepare a SQL statement to delete the record with the given ID
        String query = "DELETE FROM volunteersform WHERE Id=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setInt(1, id);
        
     // Execute the delete statement
        int rowsDeleted = pstmt.executeUpdate();
     
     // Close the PreparedStatement and connection
        pstmt.close();
        con.close();
        
     // Check if the record was deleted successfully
        if (rowsDeleted > 0) {
%>
<div class="alert alert-success" role="alert">
    Record deleted successfully!!
</div>
<% 
    } else {
%>
<div class="alert alert-danger" role="alert">
    Error occurred while deleting the record.
</div>
<% 
    }
} catch(Exception e) {
    e.printStackTrace();
}
%>
<a href="volunteersApplications.jsp" class="btn btn-primary">Back to Records</a>
</div>
</body>
</html>