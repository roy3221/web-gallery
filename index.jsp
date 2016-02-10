<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>Gallery</title>
    
	
  </head>
  <body>
  
 <body bgcolor="#E0FFFF" text="#000000">


<% 
//all the variables connect to the database should be declared.
	String funcID = request.getParameter("funcID");
	String gallery_id = request.getParameter("gallery_id");
	String name = request.getParameter("name");
	String description = request.getParameter("description");
	String birth_year = request.getParameter("birth_year");
	String year = request.getParameter("year");
	String country = request.getParameter("country");
	String title = request.getParameter("title");
	String artist_id = request.getParameter("artist_id");
	String detail_id = request.getParameter("detail_id");
	String link = request.getParameter("link");
	String image_id = request.getParameter("image_id");
	String type = request.getParameter("type");
	String toyear = request.getParameter("toyear");
	String fromyear = request.getParameter("fromyear");
	String location = request.getParameter("location");
	String height = request.getParameter("height");
	String width = request.getParameter("width");
	
	
	

	

%>
<%
//connect to mysql server.
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
	}
	catch(Exception e)
	{
		out.println("can't load mysql driver");
		out.println(e.toString());
	}
%>

<table>
<Tr>
<th><Title</th>
</Tr>
</table>
<b>1. List All the gallery:</b>
<form method="post">
    		<input name="funcID" type="hidden" value="1">
    		<input type="submit" value="GO!"/>
</form>

<b>2. List All the image:</b>
<form method="post">
    		<input name="funcID" type="hidden" value="2">
    		<input type="submit" value="GO!"/>
</form>

<b>5. Create a new gallery:</b>
<form method="post">
    		  <input name="funcID" type="hidden" value="5">
		Name: <input name="name" type="text">
		Description: <input name="description" type="text">
    		  <input type="submit" value="Add"/>
</form>

<b>6. Create a new artist:</b>
<form method="post">
    		  <input name="funcID" type="hidden" value="6">
    	Artist ID: <input name="artist_id" type="text">	  
		Name: <input name="name" type="text">
		Birth year: <input name="birth_year" type="text">
		Country: <input name="country" type="text">
		Description: <input name="description" type="text">
    		    <br><input type="submit" value="Add"/>
</form>	

<b>7. Create a new image:</b>
<form method="post">
    		  <input name="funcID" type="hidden" value="7">
    	Image_id:<input name="image_id" type="text">
    	<br> 	  
		Title: <input name="title" type="text">
		<br> 
		Link: <input name="link" type="text">
		<br> 
		Gallery_id: <input name="gallery_id" type="text">
		<br> 
		Artist_id: <input name="artist_id" type="text">
		<br> 
		Detail_id: <input name="detail_id" type="text">
		<br> 
		year: <input name="year" type="text">
		<br> 
		type: <input name="type" type="text">
		<br> 
		width: <input name="width" type="text">
		<br> 
		height: <input name="height" type="text">
		<br> 
		location: <input name="location" type="text">
		<br> 
		description: <input name="description" type="text">
		<br> 
		
		
    		  <input type="submit" value="Add"/>
</form>	
	<br>

<b>8. Delete an image:</b>
<form method="post">
    		  <input name="funcID" type="hidden" value="8">
        Image_id:<input name="image_id" type="text">
    		  <input type="submit" value="Delete"/>
</form>	
<br>
<b>9. Modify an image:</b>
<form method="post">
    		  <input name="funcID" type="hidden" value="9">
        Which image do you want to modify?
         <br> Image id: <input name="image_id" type="text">
          <br>
            <br>Please input the new information for this artist.
            <br>
        Title: <input name="title" type="text">
		<br> 
		Link: <input name="link" type="text">
		<br> 
		Gallery_id: <input name="gallery_id" type="text">
		<br> 
		Artist_id: <input name="artist_id" type="text">
		<br> 
		Detail_id: <input name="detail_id" type="text">
		<br> 
		year: <input name="year" type="text">
		<br> 
		type: <input name="type" type="text">
		<br> 
		width: <input name="width" type="text">
		<br> 
		height: <input name="height" type="text">
		<br> 
		location: <input name="location" type="text">
		<br> 
		description: <input name="description" type="text">
		<br> 
    		 <br> <input type="submit" value="modify"/>
</form>
<br>	
<b>10. Modify an artist:</b>
<form method="post">
    		  	  <input name="funcID" type="hidden" value="10">
    	Which artist do you want to modify? 
    	<br>Artist id:<input name="artist_id" type="text">
    	<br>
    	  <br>Please input the new information for this artist.
		  <br>Name: <input name="name" type="text">
		Birth_year: <input name="birth_year" type="text">
		Country: <input name="country" type="text">
		Description: <input name="description" type="text">
		<br>
    		  <br><input type="submit" value="modify"/>
</form>	
<br>
<b>11. Modify a gallery:</b>
<form method="post">
    		  	  <input name="funcID" type="hidden" value="11">
   		Which gallery do you want to modify?  
   		<br><input name="gallery_id" type="text">
   		<br>
   		<br>Please input the new information for this artist.
   		<br>
		Name: <input name="name" type="text">
		Description: <input name="description" type="text">
		<br>
    		 <br> <input type="submit" value="modify"/>
</form>	
<br>
<b>12. Find the images by type:</b>
<form method="post">
    		  	  <input name="funcID" type="hidden" value="12">
       
		Type: <input name="type" type="text">
		
    		  <input type="submit" value="find"/>
</form>	
<br>
<b>13. Find the images by a given range of creation year:</b>
<form method="post">
    		  	  <input name="funcID" type="hidden" value="13">
       
		Creation Year from: <input name="fromyear" type="text">
		to:<input name="toyear" type="text">
    		    <input type="submit" value="find"/>
</form>	
<br>
<b>14. Find the images by artist name:</b>
<form method="post">
    		  	  <input name="funcID" type="hidden" value="14">
       
		Artist name:<input name="name" type="text">
    		  <input type="submit" value="find"/>
</form>
<br>
<b>15. Find the images by location:</b>
<form method="post">
    		  	  <input name="funcID" type="hidden" value="15">
       
		Image location: <input name="location" type="text">
    		  <input type="submit" value="find"/>
</form>		
<br>
<b>16. Find artists by country:</b>
<form method="post">
    		  	  <input name="funcID" type="hidden" value="16">
       
		Country: <input name="country" type="text">
    		  <input type="submit" value="find"/>
</form>	
<br>
<b>17. Find artists by birth_year:</b>
<form method="post">
    		  	  <input name="funcID" type="hidden" value="17">
       
		Birth_year: <input name="birth_year" type="text">
    		  <input type="submit" value="find"/>
</form>		
<br>
<% if(funcID!=null) {				
	try {
		String url="jdbc:mysql://127.0.0.1:3306/gallery";
		String id="gallery";
		String pwd="eecs221";
		Connection con= DriverManager.getConnection(url,id,pwd); 
	
		int func=Integer.valueOf(funcID);
		Statement stmt;
		PreparedStatement pstmt;
		ResultSet rs;
		switch(func) {
			case 1:
				stmt = con.createStatement(); // Statements allow to issue SQL queries to the database
				String sql="SELECT * FROM gallery";
				rs=stmt.executeQuery(sql); // Result set get the result of the SQL query
				out.println("<table border=\"1\">");
				out.println("<caption> Gallery List </caption>");
				out.println("<tr>");
				out.println("<th>Gallery_id</th>");
				out.println("<th>Name</th>");
				out.println("<th>Description</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("gallery_id")+"</td>");
					out.println("<td>"+rs.getString("name")+"</td>");
					out.println("<td>"+rs.getString("description")+"</td>");
					out.println("</tr>");
				}
				rs.close();
				stmt.close();
				out.println("</table>");
				break;
			case 2:
				stmt = con.createStatement(); // Statements allow to issue SQL queries to the database
				String sql1="SELECT image_id, title, link, gallery_id FROM image";
				
				rs=stmt.executeQuery(sql1); // Result set get the result of the SQL query
				
				out.println("<table border=\"1\">");
				out.println("<caption> Image List </caption>");
				out.println("<tr>");
				out.println("<th>Image_id</th>");
				out.println("<th>Title</th>");
				out.println("<th>Link</th>");
				out.println("<th>Gallery_id</th>");
				out.println("<th>Show me the details</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("image_id")+"</td>");
					out.println("<td>"+rs.getString("title")+"</td>");
					out.println("<td>"+rs.getString("link")+"</td>");
					out.println("<td>"+rs.getString("gallery_id")+"</td>");

					out.println("<td><form method='post'>");
					out.println("<input name='funcID' type='hidden' value='3'>");
					out.println("<input name='image_id' type='hidden' value='"+rs.getString("image_id")+"'>");
					out.println("<input name='link' type='hidden' value='"+rs.getString("link")+"'>");
					out.println("<input type='submit' value='Show me!'/>");
					out.println("</form></td>");
					out.println("</tr>");
				}
				//list the Number of Image in Each Gallery 
				rs.close();
				stmt.close();
				stmt = con.createStatement();
				String sql2="SELECT gallery_id, count(*) as num FROM image GROUP BY gallery_id";
				rs=stmt.executeQuery(sql2);
				out.println("</table>");
				out.println("<table border=\"1\">");
				out.println("<caption> The Number of Image in Each Gallery </caption>");
				out.println("<tr>");
				out.println("<th>Gallery_id</th>");
				out.println("<th>Number of Image(s) </th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("gallery_id")+"</td>");
					out.println("<td>"+rs.getString("num")+"</td>");
					out.println("</tr>");
				}
				rs.close();
				stmt.close();
				out.println("</table>");
				break;
			case 3:
				out.println("<br>");
				out.println("image details");
				out.println("<br>");
				stmt = con.createStatement(); 
				rs=stmt.executeQuery("SELECT * FROM image as t, detail as s where s.image_id=t.image_id and t.image_id='"+image_id+"'"); // Result set get the result of the SQL query
				out.println("<table border=\"1\">");
				out.println("<caption>Information about this image</caption>");
				out.println("<tr>");
				out.println("<th>year</th>");
				out.println("<th>type</th>");
				out.println("<th>width</th>");
				out.println("<th>height</th>");
				out.println("<th>location</th>");
				out.println("<th>description</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("year")+"</td>");
					out.println("<td>"+rs.getString("type")+"</td>");
					out.println("<td>"+rs.getString("width")+"</td>");
					out.println("<td>"+rs.getString("height")+"</td>");
					out.println("<td>"+rs.getString("location")+"</td>");
					out.println("<td>"+rs.getString("description")+"</td>");
					out.println("</tr>");
				}
				rs.close();
				stmt.close();
				out.println("</table>");
				out.println("<br>");
				stmt = con.createStatement(); 
				rs=stmt.executeQuery("SELECT name FROM image as t, artist as s where s.artist_id=t.artist_id and t.image_id='"+image_id+"'"); // Result set get the result of the SQL query
				out.println("<table border=\"1\">");
				out.println("<caption>Information about this image</caption>");
				out.println("<tr>");
				out.println("<th>name</th>");
				out.println("<th>Show me the details</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("name")+"</td>");
					out.println("<td><form method='post'>");
					out.println("<input name='funcID' type='hidden' value='4'>");
					out.println("<input name='name' type='hidden' value='"+rs.getString("name")+"'>");
					out.println("<input type='submit' value='Show me!'/>");
					out.println("</form></td>");
					out.println("</tr>");
				}
				rs.close();
				stmt.close();
				out.println("</table>");
				out.println("<br>");
				out.print("<img src='"+link+"' />");
				break;
			case 4:
				out.println("<br>");
				out.println("artist details");
				out.println("<br>");
				stmt = con.createStatement(); 
				rs=stmt.executeQuery("SELECT * FROM artist where name='"+name+"'"); // Result set get the result of the SQL query
				out.println("<table border=\"1\">");
				out.println("<caption>Information about this artist</caption>");
				out.println("<tr>");
				out.println("<th>artist_id</th>");
				out.println("<th>name</th>");
				out.println("<th>birth_year</th>");
				out.println("<th>country</th>");
				out.println("<th>description</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("artist_id")+"</td>");
					out.println("<td>"+rs.getString("name")+"</td>");
					out.println("<td>"+rs.getString("birth_year")+"</td>");
					out.println("<td>"+rs.getString("country")+"</td>");
					out.println("<td>"+rs.getString("description")+"</td>");
					out.println("</tr>");
				}
				rs.close();
				stmt.close();
				out.println("</table>");
				out.println("<br>");
				break;
			case 5:
				// PreparedStatements can use variables and are more efficient
				pstmt = con.prepareStatement("insert into gallery values (default,?,?)",Statement.RETURN_GENERATED_KEYS);
				// Use ? to represent the variables
				pstmt.clearParameters();
				//Parameters start with 1
			    pstmt.setString(1, name);
				pstmt.setString(2, description);
				pstmt.executeUpdate();
				rs=pstmt.getGeneratedKeys();
				while (rs.next()) {
					out.println("Successfully added. Gallery_ID:"+rs.getInt(1));
				}
				rs.close();
				pstmt.close();
				break;
				
			case 6:
				// PreparedStatements can use variables and are more efficient
				pstmt = con.prepareStatement("insert into artist values (?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
				// Use ? to represent the variables
				pstmt.clearParameters();
				//Parameters start with 1
				pstmt.setString(1, artist_id);
			    pstmt.setString(2, name);
				pstmt.setString(3, birth_year);
				pstmt.setString(4, country);
				pstmt.setString(5, description);
				pstmt.executeUpdate();
				rs=pstmt.getGeneratedKeys();
				while (rs.next()) {
					out.println("Successfully added. Artist_ID:"+rs.getInt(1));
				}
				rs.close();
				pstmt.close();
				out.println("Successfully added an Artist");
				break;
			case 7:
				// PreparedStatements can use variables and are more efficient
				pstmt = con.prepareStatement("insert into image(image_id,title,link,gallery_id,artist_id,detail_id) values (?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
				// Use ? to represent the variables
				pstmt.clearParameters();
				//Parameters start with 1
				 pstmt.setString(1, image_id);
			    pstmt.setString(2, title);
				pstmt.setString(3, link);
				pstmt.setString(4, gallery_id);
				pstmt.setString(5, artist_id);
				pstmt.setString(6, detail_id);
				pstmt.executeUpdate();
				rs=pstmt.getGeneratedKeys();
				while (rs.next()) {
					out.println("Successfully added. image:"+rs.getInt(1));
				}
				rs.close();
				pstmt.close();
				pstmt = con.prepareStatement("insert into detail values (?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
				// Use ? to represent the variables
				pstmt.clearParameters();
				//Parameters start with 1
			    pstmt.setString(1, detail_id);
				pstmt.setString(2, image_id);
				pstmt.setString(3, year);
				pstmt.setString(4, type);
				pstmt.setString(5, width);
				pstmt.setString(6, height);
				pstmt.setString(7, location);
				pstmt.setString(8, description);
				pstmt.executeUpdate();
				rs=pstmt.getGeneratedKeys();
				while (rs.next()) {
					out.println("Successfully update the details about the image:"+rs.getInt(1));
				}
				rs.close();
				pstmt.close();
				break;
			case 8:
				String deletedImage=request.getParameter("image_id");
				stmt = con.createStatement();
				int rows=stmt.executeUpdate("delete from image where image_id="+ deletedImage);
					out.println("Successfully delete "+rows+" image");
	
				stmt.close();
				stmt = con.createStatement();
				int drow=stmt.executeUpdate("delete from detail where image_id="+ image_id);
				out.println("<br>");
				out.println("Successfully delete the details of the image");
	
				stmt.close();
				break;
			case 9:
				String updateImage=request.getParameter("image_id");
				String updateTitle=request.getParameter("title");
				String updateLink=request.getParameter("link");
				stmt = con.createStatement();
				stmt.executeUpdate("Update image Set title='"+updateTitle+"', link= '"+updateLink+"', gallery_id= "+gallery_id+",artist_id="+artist_id+", detail_id= "+detail_id+"  where image_id= "+updateImage);
				out.println("Successfully modified image: "+updateImage);
					
				stmt.close();
				stmt = con.createStatement();
				stmt.executeUpdate("Update detail Set image_id= '"+image_id+"',year= '"+year+"',type='"+type+"', width= '"+width+"', height= '"+height+"', location= '"+location+"', description= '"+description+"' where detail_id="+detail_id);
					
				stmt.close();
				break;
			case 10:
				String updateName=request.getParameter("name");
				String updateBirth_year=request.getParameter("birth_year");
				String updateCountry=request.getParameter("country");
				String updateDescriptionG=request.getParameter("description");
				stmt = con.createStatement();
				stmt.executeUpdate("Update artist Set name='"+updateName+"', birth_year= '"+updateBirth_year+"', country= '"+updateCountry+"', description= '"+updateDescriptionG+"' where artist_id= "+artist_id);
				out.println("Successfully modified artist id: "+artist_id);	
				stmt.close();
				break;
			case 11:
				String updateGname=request.getParameter("name");
				String updateDescription=request.getParameter("description");
				String updateGallery_id=request.getParameter("gallery_id");
				stmt = con.createStatement();
				stmt.executeUpdate("Update gallery Set name='"+updateGname+"', description= '"+updateDescription+"' where gallery_id= "+updateGallery_id);
				out.println("Successfully modified gallery: "+updateGallery_id);
					
				stmt.close();
				break;
			case 12:
				stmt = con.createStatement();
				rs=stmt.executeQuery("Select t.* From image as t, detail as s Where s.detail_id = t.detail_id and s.type= '"+type+"'");
				out.println("Successfully find image(s) in type of "+type);
				out.println("<table border=\"1\">");
				out.println("<caption> Images in type of "+type+" </caption>");
				out.println("<tr>");
				out.println("<th>Image_id</th>");
				out.println("<th>Title</th>");
				out.println("<th>Link</th>");
				out.println("<th>Gallery_id</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("image_id")+"</td>");
					out.println("<td>"+rs.getString("title")+"</td>");
					out.println("<td>"+rs.getString("link")+"</td>");
					out.println("<td>"+rs.getString("gallery_id")+"</td>");
					out.println("</tr>");
				}
				rs.close();	
				stmt.close();
				break;
			case 13:
				stmt = con.createStatement();
				rs=stmt.executeQuery("Select t.* From image as t, detail as s Where s.detail_id = t.detail_id and s.year>= "+fromyear+" and s.year<= "+toyear);
				out.println("Successfully find image(s) created from "+fromyear+" to "+toyear);
				out.println("<table border=\"1\">");
				out.println("<caption> image(s) created from "+fromyear+" to "+toyear+" </caption>");
				out.println("<tr>");
				out.println("<th>Image_id</th>");
				out.println("<th>Title</th>");
				out.println("<th>Link</th>");
				out.println("<th>Gallery_id</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("image_id")+"</td>");
					out.println("<td>"+rs.getString("title")+"</td>");
					out.println("<td>"+rs.getString("link")+"</td>");
					out.println("<td>"+rs.getString("gallery_id")+"</td>");
					out.println("</tr>");
				}
				rs.close();		
				stmt.close();
				break;
			case 14:
				stmt = con.createStatement();
				rs=stmt.executeQuery("Select t.* From image as t, artist as s Where s.artist_id = t.artist_id and s.name= '"+name+"'");
				out.println("Successfully find image(s) created by "+name);
				out.println("<table border=\"1\">");
				out.println("<caption> image(s) created by "+name+" </caption>");
				out.println("<tr>");
				out.println("<th>Image_id</th>");
				out.println("<th>Title</th>");
				out.println("<th>Link</th>");
				out.println("<th>Gallery_id</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("image_id")+"</td>");
					out.println("<td>"+rs.getString("title")+"</td>");
					out.println("<td>"+rs.getString("link")+"</td>");
					out.println("<td>"+rs.getString("gallery_id")+"</td>");
					out.println("</tr>");
				}
				rs.close();		
				stmt.close();
				break;
			case 15:
				stmt = con.createStatement();
				rs=stmt.executeQuery("Select t.* From image as t, detail as s Where s.detail_id = t.detail_id and s.location= '"+location+"'");
				out.println("Successfully find image(s) that located in "+location);
				out.println("<table border=\"1\">");
				out.println("<caption> image(s) located in "+location+" </caption>");
				out.println("<tr>");
				out.println("<th>Image_id</th>");
				out.println("<th>Title</th>");
				out.println("<th>Link</th>");
				out.println("<th>Gallery_id</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("image_id")+"</td>");
					out.println("<td>"+rs.getString("title")+"</td>");
					out.println("<td>"+rs.getString("link")+"</td>");
					out.println("<td>"+rs.getString("gallery_id")+"</td>");
					out.println("</tr>");
				}
				rs.close();		
				stmt.close();
				break;
			case 16:
				stmt = con.createStatement();
				rs=stmt.executeQuery("Select * From artist Where country='"+country+"'");
				out.println("Successfully find artist(s) from the country of "+country);
				out.println("<table border=\"1\">");
				out.println("<caption> artist(s) from the country of "+country+" </caption>");
				out.println("<tr>");
				out.println("<th>Artist_id</th>");
				out.println("<th>Name</th>");
				out.println("<th>Birth_year</th>");
				out.println("<th>country</th>");
				out.println("<th>description</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("artist_id")+"</td>");
					out.println("<td>"+rs.getString("name")+"</td>");
					out.println("<td>"+rs.getString("birth_year")+"</td>");
					out.println("<td>"+rs.getString("country")+"</td>");
					out.println("<td>"+rs.getString("description")+"</td>");
					out.println("</tr>");
				}
				rs.close();		
				stmt.close();
				break;
			case 17:
				stmt = con.createStatement();
				rs=stmt.executeQuery("Select * From artist Where birth_year='"+birth_year+"'");
				out.println("<table border=\"1\">");
				out.println("<caption> artist(s) born in "+birth_year+" </caption>");
				out.println("<tr>");
				out.println("<th>Artist_id</th>");
				out.println("<th>Name</th>");
				out.println("<th>Birth_year</th>");
				out.println("<th>country</th>");
				out.println("<th>description</th>");
				out.println("</tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>"+rs.getString("artist_id")+"</td>");
					out.println("<td>"+rs.getString("name")+"</td>");
					out.println("<td>"+rs.getString("birth_year")+"</td>");
					out.println("<td>"+rs.getString("country")+"</td>");
					out.println("<td>"+rs.getString("description")+"</td>");
					out.println("</tr>");
				}
				rs.close();		
				stmt.close();
				break;
		}
		
		con.close();
	}
	catch(Exception e)
	{
			out.println(e.toString());
	} 	
		
} %>


  
  </body>
</html>
