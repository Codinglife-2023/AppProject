package com.example.APP.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.APP.entities.UserInput;
import com.example.APP.repositories.UserInputRepository;

@Controller
public class UserInputController {

    @Autowired
    private UserInputRepository UserInputRepository;

    @GetMapping("/enter-numbers")
    public String showInputPage(Model model) {
        // Retrieve all saved inputs from the database
        List<UserInput> savedInputs = UserInputRepository.findAll();
        model.addAttribute("savedInputs", savedInputs);
        return "enter-numbers";
    }

    @PostMapping("/process-numbers")
    public String processNumbers(@RequestParam("numbers") String numbers, Model model) {
        // Save the entered numbers to the database
        UserInput userInput = new UserInput();
        userInput.setNumbers(numbers);
        UserInputRepository.save(userInput);

        // Add the result to the model
        model.addAttribute("result", "You entered: " + numbers);

        // Retrieve all saved inputs from the database
        List<UserInput> savedInputs = UserInputRepository.findAll();
        model.addAttribute("savedInputs", savedInputs);

        return "result";
    }
}
