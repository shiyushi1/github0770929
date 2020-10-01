package com.kgc.service;

import com.kgc.pojo.Person;

import java.util.List;

public interface PersonService {
    List<Person> getlist();
    int add(Person person);
    int del(Long id);
}
