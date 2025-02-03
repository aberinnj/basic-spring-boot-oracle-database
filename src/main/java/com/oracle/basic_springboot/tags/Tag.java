package com.oracle.basic_springboot.tags;

import jakarta.persistence.*;

@Entity // 1
@Table(name="Tags") // 2
public class Tag {

  @Id @GeneratedValue(strategy = GenerationType.IDENTITY) // 3
  private int id;

  @Column(name = "Name") // 4
  private String name;

  @Column(name = "Color") // 5
  private String color;

  // Constructor
  public void Tag(int id, String name, String color) {
    this.id = id;
    this.name = name;
    this.color = color;
  }

  public void setId(int id) {
    this.id = id;
  }

  public int getId() {
    return id;
  }

  public void setColor(String color) {
    this.color = color;
  }

  public String getColor() {
    return color;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getName() {
    return name;
  }

}
