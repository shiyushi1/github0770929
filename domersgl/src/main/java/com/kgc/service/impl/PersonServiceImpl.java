package com.kgc.service.impl;

import com.kgc.mapper.PersonMapper;
import com.kgc.pojo.Person;
import com.kgc.pojo.PersonExample;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import javax.annotation.Resource;
import java.util.List;

@Service("personService")
public class PersonServiceImpl implements PersonService {
    @Resource
    PersonMapper personMapper;
    @Override
    public List<Person> getlist() {
        PersonExample example=new PersonExample();
        PersonExample.Criteria criteria=example.createCriteria();
        List<Person> list=personMapper.selectByExample(null);
        return list;
    }

    @Override
    public int add(Person person) {
        int i=personMapper.insertSelective(person);
        return i;
    }

    @Override
    public int del(@PathVariable Long id) {
        int i=personMapper.deleteByPrimaryKey(id);
        return i;
    }
}
