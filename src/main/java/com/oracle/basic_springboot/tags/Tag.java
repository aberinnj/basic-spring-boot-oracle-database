package com.oracle.basic_springboot.tags;

import jakarta.persistence.*;

@Entity
@Table(name="Tags")
public class Tag {

  @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;

  @Column(name = "Name")
  private String name;

  @Column(name = "Color")
  private String color;

  public Tag() {}

  public Tag(String name) {
    this.name = name;
  }

  public Tag(String name, String color) {
    this.name = name;
    this.color = color;
  }

  public Tag(int id, String name) {
    this.id = id;
    this.name = name;
  }

  public Tag(int id, String name, String color) {
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
