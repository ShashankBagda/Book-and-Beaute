//import com.mysql.jdbc.Connection;
//
//import java.sql.DriverManager;
//import java.sql.Statement;
//
//public class signup {
//
//    // Step 1: Load the JDBC driver
//            Class.forName("com.mysql.jdbc.Driver");
//
//    // Step 2: Connect to the database
//    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/book_and_beaute", "root", "");
//
//    // Step 3: Create a statement
//    Statement statement = connection.createStatement();
//
//    String insertQuery = "INSERT INTO books (book_name, author, publication, publication_year, price) " +
//            "VALUES ('" + bookName + "', '" + author + "', '" + publication + "', " +
//            publicationYear + ", " + price + ")";
//
//    "INSERT INTO `users`(`Uid`, `Uname`, `Uemail`, `Uphone`, `Upass`, `Sid`, `Utype`, `Urating`) " +
//            "VALUES ('" + + "','" + name + "','" + email + "','" + phone + "','" + password + "','" + + "','" + + "','" + + "')"
//                        statement.executeUpdate(insertQuery);
//                        System.out.println("User inserted successfully!");
//}