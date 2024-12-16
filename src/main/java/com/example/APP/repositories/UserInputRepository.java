package com.example.APP.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.APP.entities.UserInput;

@Repository
public interface UserInputRepository extends JpaRepository<UserInput, Long> {
}
