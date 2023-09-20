package com.nagarro.AdvanceJavaAssignment5Root.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nagarro.AdvanceJavaAssignment5Root.entity.Author;

@Repository
public interface AuthorDao extends CrudRepository<Author, Integer> {
}
