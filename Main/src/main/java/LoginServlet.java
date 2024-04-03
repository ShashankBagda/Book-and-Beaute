import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private SessionFactory factory;

    @Override
    public void init() throws ServletException {
        super.init();
        factory = new Configuration().configure().buildSessionFactory();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        Session session = factory.openSession();
        try {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<User> criteriaQuery = builder.createQuery(User.class);
            Root<User> root = criteriaQuery.from(User.class);
            criteriaQuery.select(root).where(
                    builder.equal(root.get("name"), username),
                    builder.equal(root.get("password"), password)
            );

            User user = session.createQuery(criteriaQuery).uniqueResult();
            if (user != null) {
                // User authenticated, redirect to some page
                resp.sendRedirect("welcome.jsp");
            } else {
                // Authentication failed, redirect back to login page with error message
                resp.sendRedirect("login.jsp?error=1");
            }
        } finally {
            session.close();
        }
    }

    @Override
    public void destroy() {
        super.destroy();
        factory.close();
    }
}