package com.oracle.basic_springboot.tags;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController // 1
@RequestMapping(path= "/api/v1/tags") // 2
public class TagController {

  @Autowired // 3
  private TagRepository repository;

  @GetMapping // 4
  public List<Tag> getTags() {
    return repository.findAll(); // 5
  }

}
