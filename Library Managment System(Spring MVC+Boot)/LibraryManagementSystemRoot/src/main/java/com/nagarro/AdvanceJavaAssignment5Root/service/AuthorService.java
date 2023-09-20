package com.nagarro.AdvanceJavaAssignment5Root.service;

import java.util.List;

import com.nagarro.AdvanceJavaAssignment5Root.entity.Author;

public interface AuthorService {

	public List<Author> findAll();

	public Author findById(int theId);

	public void save(Author theAuthor);

	public void deleteById(int theId);

}
