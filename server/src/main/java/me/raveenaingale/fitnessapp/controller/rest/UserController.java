package me.raveenaingale.fitnessapp.controller.rest;

import me.raveenaingale.fitnessapp.models.User;
import me.raveenaingale.fitnessapp.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("api/users")
public class UserController {

    private final UserDAO userDAO;

    @Autowired
    public UserController(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @GetMapping
    @ResponseBody
    public List<User> getAllUsers() {
        try {
            return userDAO.list();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @GetMapping("/{id}")
    @ResponseBody
    public User getUserById(@PathVariable int id) {
        try {
            return userDAO.get(id);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @PostMapping
    @ResponseBody
    public String createUser(@RequestBody User user) {
        try {
            userDAO.create(user);
            return "User created successfully";
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @DeleteMapping(value = "/{id}/notifications/{nId}", produces = "text/plain")
    @ResponseBody
    public String deleteNotificationByUserId(@PathVariable int id, @PathVariable int nId){
        userDAO.deleteNotificationById(id, nId);
        return "Notification Deleted";
    }


}
