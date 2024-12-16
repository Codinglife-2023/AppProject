package com.example.APP.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.APP.entities.NumberEntity;

@Repository
public interface NumberRepository extends JpaRepository<NumberEntity, Long> {
}
    
