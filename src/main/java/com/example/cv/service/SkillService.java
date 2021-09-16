package com.example.cv.service;

import com.example.cv.model.Skill;
import com.example.cv.repository.SkillsRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SkillService {
    private SkillsRepository skillsRepository;

    public SkillService(SkillsRepository skillsRepository) {
        this.skillsRepository = skillsRepository;
    }

    public List<Skill> getSkillList() {
        return skillsRepository.findAll();
    }

    public void deleteSkill(Long id) {
        skillsRepository.deleteById(id);
        System.out.println("deleting skill on id: " + id);

    }

}
