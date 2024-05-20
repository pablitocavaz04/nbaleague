package users;

import java.sql.SQLException;

public interface AuthInterface {
    public User login(String username, String password) throws SQLException;
    public void logout() throws SQLException;
    public User register(String username, String name, String surname, String password) throws SQLException;
}
