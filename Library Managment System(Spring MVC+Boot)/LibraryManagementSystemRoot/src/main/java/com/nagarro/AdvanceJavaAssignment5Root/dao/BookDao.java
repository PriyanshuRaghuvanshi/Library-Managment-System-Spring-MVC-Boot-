package com.nagarro.AdvanceJavaAssignment5Root.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nagarro.AdvanceJavaAssignment5Root.entity.Book;

@Repository
public interface BookDao extends CrudRepository<Book, Integer> {
}
