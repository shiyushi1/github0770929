package com.kgc.controller;

import com.kgc.pojo.Person;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class PersonController {
    @Resource
    PersonService personService;
    @RequestMapping("/list")
    public String list(Model model){
        List<Person> list=personService.getlist();

        model.addAttribute("list",list);
        return "/index";
    }
    @RequestMapping("/doadd")
    public String add(Person person){
         int i=personService.add(person);
         return "redirect:/list";
    }
    @RequestMapping("/del/{id}")
    public String del(@PathVariable Long id){
        int i=personService.del(id);
        return "redirect:/list";
    }

}
