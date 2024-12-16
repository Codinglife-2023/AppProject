package com.example.APP.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    @GetMapping("/test-tree-result")
    public String testTreeResult(Model model) {
        model.addAttribute("treeRepresentation", "Test Tree Representation");
        return "tree-result"; // This should point to the tree-result.html template
    }
}
