# web-gallery
An web application with connection to the database which realise the database management system.

tools requirs:
+ JDK or JRE
+ Apache Tomcat 7.0+
+ MySQL
+ JDBC

##Descriptions:
###create the database in MySQL.
The schemas below are for the data in a gallery. There are a total of 4 tables. The name of the database is “gallery”. Each gallery contains a number of artworks which are stored as images. Each tuple in the image table stores the title of an artwork, the link of the picture of the artwork, and the ids that can connect the artwork to the gallery, the artist and details.
Each tuple in the artist table stores the details of an artist. Each tuple in the detail table stores the detail of the artwork, including the year of creation, type of the artwork (e.g., painting), the current location of the artwork (to be simple, just country), and descriptions.

+ gallery (gallery_id, name, description) primary key(gallery_id)
+ image (image_id, title, link, gallery_id, artist_id, detail_id) primary key(image_id)
+ artist (artist_id, name, birth_year, country, description) primary key(artist_id)
+ detail (detail_id, image_id, year, type, width, height, location, description) primary key(detail_id)



###Design and implement the Web Application.
To connect MySQL from Java, you have to use the JDBC(Java Database Connectivity) driver from MySQL. The MySQL JDBC driver is called"MySQL Connector/J".It should be able to find the latest MySQL JDBC driver on this page: http://dev.mysql.com/downloads/connector/j/5.0.html.
Download the file, extract it, and put the mysql-connector-java-5.0.8-bin.jar file to the /lib directory under Tomcat. Restart Tomcat.

After those steps, we can run this applciation.
