# AdLister #



Adlister is a web application that allows individuals to collectively buy, trade, and sell items. The applications 
connect audiences looking for specific items throughout the internet. Users are able to view Ads whether subscribe to the web app or just causually viewing.
User's that create accounts have full CRUD capability and interactively with our database.

## Technologies

### Front End
Adlister is styled using Bootstrap 5 designs patterns for major components.

### Back End
The foundations of the back end utilizes Java library such as Servlets, JSP's. The application 
data is handled using a RDBMS(MYSQL)

## Instructions

1. Clone repositorty from GitHub by occurying SSH(view repo click green button) Use following commands in terminal 
```
git clone 
```
2. Start SQL server in a seperate terminal
```
mysql.server start
```
3. Run migration.sql file to set up database
4. Create Configuration Java file in root directory with RDBMS password, username, and database name.
```
class Config {
    public String getUrl() {
        return "jdbc:mysql://localhost:3306/[database_name_here]?allowPublicKeyRetrieval=true&useSSL=false";
    }
    public String getUser() {
        return "[username_here]";
    }
    public String getPassword() {
        return "[password_here]";
    }
}
```
5. Edit run configurations of IDE using Tomcat.
6. Build war exploded artifact.
7. Update dependencies in pom.xml file to bring file to current.
8. Run Project.
