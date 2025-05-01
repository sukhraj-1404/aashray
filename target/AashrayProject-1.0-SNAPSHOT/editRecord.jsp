<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GetInTouch-Update</title>
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
<% 
    // Retrieve record details from the database based on ID
    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String contact = request.getParameter("contact");
    String message = request.getParameter("message");
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aashray_project", "root", "sukh1404");
        String query = "SELECT * FROM getintouch WHERE Id=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setInt(1, id);
        ResultSet rs = pstmt.executeQuery();
        
        if (rs.next()) {
            name = rs.getString("Name");
            email = rs.getString("Email");
            contact = rs.getString("Contact_Number");
            message = rs.getString("Message");
        }
    } catch (Exception e) {
    	e.printStackTrace();
    }
%>
<div class="getInTouch">
        <div class="container">
            <h1>Get In Touch-Update</h1>
            
            <div id="ShowMess">
            <%
			String ShowMess = (String) session.getAttribute("ShowMess");
			if (ShowMess != null) {
				out.print("<p>" + ShowMess + "</p>");
				session.removeAttribute("showMessage");
			}
		%>
            </div>

<form class="form-horizontal" action="updateRecords" method="post">
	<input type="hidden" name="id" value="<%= id %>" >
                <div class="form-group">
                    <label class="control-label col-sm-2" for="name">Name:</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" minlength="3" value="<%= name %>" required>
                    </div>
                  </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-6">
                  <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" pattern="[^ @]*@[^ @]*" value="<%= email %>"  required="required">
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="contact">Contact Number:</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="contact" placeholder="Enter Contact Number" name="contact" pattern="[789][0-9]{9}" maxlength="10" value="<%= contact %>" required="required">
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="message">Message:</label>
                <div class="col-sm-6">
                    <textarea class="form-control" rows="5" id="message" placeholder="Message" name="message" minlength="20"  required><%= message %></textarea>
                </div>
              </div>
              <div class="form-group">        
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-primary">Update</button>
                  <button type="submit" class="btn btn-primary"><a href="getInTouchDetails.jsp">Show Records</button>
                </div>
              </div>
            </form>
            </div>
            </div>
</body>
</html>