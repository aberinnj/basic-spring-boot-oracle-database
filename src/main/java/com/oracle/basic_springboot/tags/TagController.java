package com.oracle.basic_springboot.tags;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path= "/api/v1/tags")
public class TagController {

  @Autowired
  private TagRepository repository;

  @GetMapping
  public List<Tag> getTags() {
    return repository.findAll();
  }

}
