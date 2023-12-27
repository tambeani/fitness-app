package me.raveenaingale.fitnessapp.dao;

import me.raveenaingale.fitnessapp.models.User;
import org.hibernate.HibernateException;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.Base64;
import java.util.List;
import java.util.Map;

@Repository
public class UserDAO extends DAO {



    public UserDAO() {
    }

    public User get(long id) throws Exception {

        try {
            // Fetch user object from the database based on id
            begin();
            User user = getSession().get(User.class, id);
            commit();
            close();

            return user;
        } catch (HibernateException e) {

            rollback();
            // throw new AdException("Could not fetch user with id: " + id, e);
            throw new Exception("Exception while fetching user with id: " + id + ", " + e.getMessage());
        }

    }

    public User create(User user) throws Exception {
        try {

            // save user object in the database
            begin();
            byte[] bytes = user.getPassword().getBytes();
            ((User) user).setPassword(new String(Base64.getEncoder().encode(bytes)));
            getSession().save(user);
            commit();
            close();

            return user;
        } catch (HibernateException e) {
            rollback();
            // throw new AdException("Could not create user " + username, e);
            throw new Exception("Exception while creating user: " + e.getMessage());
        }
    }

    public void delete(User user) throws Exception {
        try {
            // save user object in the database
            begin();
            getSession().delete(user);
            commit();

        } catch (HibernateException e) {
            rollback();
            // throw new AdException("Could not create user " + username, e);
            throw new Exception("Exception while deleting user: " + e.getMessage());
        }
    }

    public List<User> list() throws Exception {
        try {
            // Fetch all user objects from the database
            begin();
            Query query = getSession().createQuery("from User");
            List<User> userList = query.list();
            commit();
            close();

            return userList;
        } catch (HibernateException e) {
            rollback();
            // throw new AdException("Could not fetch user list", e);
            throw new Exception("Exception while getting user list: " + e.getMessage());
        }
    }

    @Override
    public List search(Map<String, String> criteria) throws Exception {
        // TODO Auto-generated method stub
        return null;
    }

    public void deleteNotificationById(int id, int nId) {
        System.out.println("Deleting notification "+ nId+ " of user "+id);
    }
}
