package com.example.APP.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.APP.entities.TreeData;
import com.example.APP.repositories.TreeDataRepository;

@Controller
public class PreviousTreesController {

    @Autowired
    private TreeDataRepository treeDataRepository;

    @GetMapping("/previous-trees")
    public String showPreviousTrees(Model model) {
        List<TreeData> trees = treeDataRepository.findAll();
        model.addAttribute("trees", trees);
        return "previous-trees";
    }
}
