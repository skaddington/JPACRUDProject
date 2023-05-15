# JPACRUDProject

## Objectives

- **What is the End Goal?**
<p>The goal of the JPA CRUD Project is to present the user with a new database of our own creation through a series of web pages in which they can search for, add, modify, and delete items in the database.

- **General Starter Setup :**
<p>Create entity(ies), JUnit test(s), persistance, Gradle in the JPA. Controller, DAO, Gradle, application properties creation in the Spring Boot. Add methods in the DAO to allow CRUD operations. Develop JSP Views and bootstrap files.  

- **MySQL Workbench :** 
<p> In order to search through a database, there first must be a database to search through. Utilizing MySQL Workbench(MWB), I created a library DB consisting of a good portion of my own personal books. Some of the included fields are title, author, number of pages, whether it was hardback or paperback, and a few more. In MWB, I created a local user, developed a book table and modified the column data types to more accurately fit the information that they would represent. A csv file import facilitated filling those columns with my gathered data. Some lines weren't as easy to import, so some did have to inputted individually. Once I felt my DB was complete, Forward Engineering in MWB pushed my DB into action.

- **JPA :** 
<p> The JPA side of my project uses a persistance file to link in my DB so that CRUD can occur. The JPA houses the entites of the DB, for this instance, just my book entity(table). As compared to our MVC Film Site Project, my entitiy has additional annotations: @Entity, @Id, @GeneratedValue and @Column. @Entity tells the program that the class matches up with a table in the DB. @Id labels that field as the primary key of that table and @GeneratedValue tells the program that it is an auto-incremented field. @Column allows the developer to change field variable names from snake_case to camelCase and still be recongized during CRUD operations. A JUnit test assures that we are indeed reaching out to the correct DB and are retrieving correct data.

- **Spring Boot :** 
<p> From there, the Spring boot side kicks in. It ties in the JPA through the dependencies listed in build.gradle and settings.gradle files. Spring boot stores the DB information as well, but in the application.properties file. The Book DAO Impl contains all the logic needed to reach out and communicated with the DB. The DAO has additional annotations this time around too: @Service, @Transactional applied to the class itself and @PersistenceContext applied to the imported Entity Manager. The DAO can now provide the DB connection service and handle the start, commit and rollback transactions. The Entity Manager can now manage fetched DB entities and convert local, detached entities into managed ones, saving them to the DB It can facilitate a few different searches and adding, updating and deleting a book. The Book Controller allows the user to navigate through the site depending on which buttons and input they make.

- **Bootstrap and Stying :** 
<p> Utilizing separate header, footer, and navbar files containing the respecctive bootstrap code allowed my JSP files to remain DRY while still opening the door to increased styling options. By adding a CSS file, I was able to let my design creativity flow as well. Images were able to be manipulated, padding added, opacity lessened, use of the 12 columns of bootstrap, and more. Overall, I am very happy with what I was able to create and look forward to modifying it and other projects with what I have learned and will learn going forward.

## Technologies Used
* JPA, Persistance, Entity Manager/EM Factory
* MySQL, CRUD, JPQL
* MySQL Workbench
* Spring MVC Framework
* Gradle, Dependencies
* HTML, JSP, POJO, DAO, JUnit Tests
* Entity, Id, Column, PersistenceContext and other Annotations
* Tag Libraries, Expression Language, Bootstrap, CSS
* Spring Tool Suite - Spring Boot
* Github, EC2
* Google - Stack Overflow, MDN, MySQL Workbench Manuals
* TA help (Thank you!)

## Lessons Learned
* JPA, JPQL
* CRUD with an Entity Manager/EM Factory
* More Annotations and their functions
* MySQL Workbench
* Most Prominent BrainBlocks
<br>- I had a couple Controller calls that weren't quite lining up for me a few times. The majority of the time it was due to a uppercase letter where it was supposed to be a lowercase or vice versa.
<br>- MySQL Workbench was a new little monster to start learning. There were multiple times that my csv file would only import a chunk of data at a time due to an odd character or input mismatch. I had to enter a few lines by hand but eventually it all got sorted out.