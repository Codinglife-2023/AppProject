package com.example.APP.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.APP.entities.TreeData;

public interface TreeDataRepository extends JpaRepository<TreeData, Long> {
}
