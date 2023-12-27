package me.raveenaingale.fitnessapp.controller.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class DashboardController {
    @GetMapping("/home")
    public String loadUserDashboard(){
        return "user-dashboard";
    }

    @GetMapping("/workouts")
    public String loadWorkoutDashboard(){
        return "workout-dashboard";
    }
}
