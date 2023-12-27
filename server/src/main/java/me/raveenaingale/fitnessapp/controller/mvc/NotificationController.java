package me.raveenaingale.fitnessapp.controller.mvc;

import me.raveenaingale.fitnessapp.models.Notification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/notifications")
public class NotificationController {

    @GetMapping
    public ModelAndView showNotificationsPage() {
        Map<String, List> model = new HashMap<>();
        List<Notification> notifications = new LinkedList<>();

        // Existing notifications
        notifications.add(new Notification(1,"Exciting news! Your trainer just created a personalized\n" +
                "fitness plan for you. \n" +
                "\n" +
                "Check it out now and start your journey to a healthier you!\"\n"));
        notifications.add(new Notification(2,"Great news! Your trainer has shared an inspiring\n" +
                " message with you: \n" +
                "\n" +
                "'Embrace the challenges, celebrate the progress, and \n" +
                "remember: every step forward is a victory on your \n" +
                "fitness journey!' \uD83C\uDF1F\n"));

        // Additional notifications
        notifications.add(new Notification(3,"New workout challenge alert! Are you ready to push\n" +
                "your limits and achieve new fitness milestones? 🏋️‍♀️"));
        notifications.add(new Notification(4,"Congratulations! You've earned a badge for completing\n" +
                "30 consecutive days of workouts. Keep up the great work! 🏆"));

        model.put("notifications", notifications);
        return new ModelAndView("notifications", model);
    }
}
