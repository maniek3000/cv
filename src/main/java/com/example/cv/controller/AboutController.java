package com.example.cv.controller;

import com.example.cv.model.Skill;
import com.example.cv.repository.SkillsRepository;
import com.example.cv.service.SkillService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AboutController {

    private final SkillsRepository skillsRepository;
    private final SkillService skillService;

    public AboutController(SkillsRepository skillsRepository, SkillService skillService) {
        this.skillsRepository = skillsRepository;
        this.skillService = skillService;

    }


    @RequestMapping(value = {"/about"}, method = RequestMethod.GET)
    public String getAbout(Model model) {
        List<Skill> list = skillsRepository.findAll();
        model.addAttribute("skill", list);
        return "about";
    }

    @RequestMapping(value = {"/addNewSkill"}, method = RequestMethod.GET)
    public String getAddNewSkill() {
        return "skills/addNewSkill";
    }

    @RequestMapping(value = {"/addNewSkill"}, method = RequestMethod.POST)
    public RedirectView postAddNewSkill(@ModelAttribute Skill newSkill) {
        skillsRepository.save(newSkill);
        return new RedirectView("/about");
    }

    @RequestMapping(value = {"/editSkills"}, method = RequestMethod.GET)
    public String getEditSkills(Model model) {
        List<Skill> list = skillsRepository.findAll();
        model.addAttribute("skill",list);
        return "skills/editSkills";
    }

    @RequestMapping(value = {"/editSkills/{id}"}, method = RequestMethod.POST)
    public RedirectView postEditSkills(@PathVariable Long id, @ModelAttribute Skill newSkill) {
        skillsRepository.save(newSkill);
        return new RedirectView("/editSkills");
    }

    @RequestMapping(value = {"/deleteSkill/{id}"}, method = RequestMethod.POST)
    public RedirectView postDeleteSkill(@PathVariable String id) {
        skillService.deleteSkill(Long.parseLong(id));
        return new RedirectView("/editSkills");
    }
}
