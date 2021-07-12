# JPACRUDProject

## Project Overview
This project is designed to model a dynamic working database and query website. Users can view or add information about specific rock climbs, as well as update or delete that information from the database.

### Spring MVC and Spring Boot

### Java Persistence API (JPA)

### SQL
Another key highlight of this project is the use of SQL data manipulation language. This particular website allows the user to not only read from the database but also, insert, update and/or delete entries from the database. We accomplished this in our model by using JDBC to connect to the database and run SQL commands from our application code. When the user adds a film to the database, we used INSERT SQL statements. When they updated film information, we used UPDATE SQL statements. And finally, when the client deletes a film from the database, we used DELETE SQL statements. All of these statements were executed using data the client sent in through our web pages forms in order to supply the statement with the data needed to insert, update or delete the correct film.

### Other Technologies Used
This dynamic web project combines the multiple implementation capabilities of a single Interface with the ability to manipulate information in an operational database with the addition of Bootstrap front end framework. This project also displays our ability to navigate a database and properly create a SQL command that brings back accurate information in response to the request.

* PRG (Post redirect Get): In order to handle some of the client requests without messing up the database, we utilized the PRG pattern. For example, when the user adds a film to the database, it is handled as a post request initially to update the database. But we only allow the data to be used one time before redirecting the request to another mapping that returns a view to the user. Now when they refresh the page, they cannot continuously add that film to the database.


* Bootstrap: Although we didn't really dive deep into the power of Bootstrap, our project does have very simple Bootstrap styling elements.

* Gradle: We utilized Gradle as our build automation tool for this project. This was essential for managing our projects dependencies such as the Spring framework, java servlets, JDBC, and JSTL.
