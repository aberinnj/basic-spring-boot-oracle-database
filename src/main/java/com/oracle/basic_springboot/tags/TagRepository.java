package com.oracle.basic_springboot.tags;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository // 1
public interface TagRepository extends JpaRepository<Tag, Integer> {  // 2


}
