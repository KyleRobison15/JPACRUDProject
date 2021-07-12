# JPACRUDProject

## Project Overview
This project is a fully functional, full stack, dynamic web application deployed to an Amazon EC2 web server. Users can view or add information about specific rock climbs, as well as update or delete that information from a database. It is intended to be used as a way of keeping track of climbs the user has done, and climbs the user would like to do in the future.

### Spring MVC and Spring Boot
As with any dynamic web page, this program had to handle many tasks as a result of the request/response cycle. The Spring Boot framework made it very efficient to implement my MVC and DAO design patterns in order to create a separation of concerns for handling those various responsibilities.

### Java Persistence API (JPA) and SQL
A key highlight of this project is the use of JPA and SQL create, read, update, delete (CRUD) operations. This particular website allows the user to not only read from the database but also, insert, update and/or delete climbs from the database. I accomplished this in my model by using JPA to connect to the database and run SQL commands from my application code. This was done by using the Entity Manager class from JPA to persist, update and remove climbs from the database. JPA automatically starts transactions for each of these operations, and will only commit the changes when the method is fully executed with no exceptions.

One interesting note about the update operations in particular, is that I had to create a JPA managed entity first before JPA could commit any updates.

### Other Technologies Used
* Front end design using Bootstrap, CSS, and JSP views: Once the back end functionality was completed, I spent about an entire day formatting and designing the user interface for this project. I heavily utilized Bootstrap components and the grid layout system with some CSS sprinkled in.

* MySQL Workbench: I utilized MySQL Workbench to design the climb table and generate the SQL script I needed to INSERT the initial data into my climbs database.

* PRG (Post redirect Get): In order to handle some of the client requests without messing up the database, I utilized the PRG pattern. For example, when the user adds a climb to the database, it is handled as a post request initially to update the database. But I only allow the data to be used one time before redirecting the request to another mapping that returns a view to the user. Now when the user refreshes the page, they cannot continuously add that climb to the database.

* Gradle: I utilized Gradle as our build automation tool for this project. This was essential for managing my project's dependencies and build automation.

### Lessons Learned
To put it simply, I learned a ton from completing this project. Among many many other things, here are some of the noteworthy lessons I learned:

1. It's easy to get caught up on the front end before the back end functionality is sound.
I got lost in the sauce on the front end a few times only to find out some functionality items weren't completely working. That made me realized pretty quickly how important it is to test the back end functionality thoroughly before diving into the styling. The site can look amazing.. but does it work?

2. Form compatibility with the Java entity and database fields is critical!
I spent a lot of time getting the form inputs for adding and updating climbs to map properly to my java entities. Some of this could have been avoided with a more thought out design from the outset of the design process for both my Java entities and my database data types.

3. Find a balance for the data used for testing.
I'm very glad I only inserted 4 rows of data into my database to use while I built out the site functionality. That way, I could work on getting the functionality right sooner, before moving on to adding more INSERTs to the database. However, that did limit my ability to test certain front end designs only having limited data.

4. Save often!
I ran into an issue where I didn't save my database model in MySQL Workbench and then accidentally quit out of the application. I had to redo about an hour of database creation as a result. I won't be making that mistake again.
