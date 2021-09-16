package com.example.cv.repository;

import com.example.cv.model.Skill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SkillsRepository extends JpaRepository<Skill, Long> {
    @Override
    List<Skill> findAll();

    Skill save(Skill entity);

}