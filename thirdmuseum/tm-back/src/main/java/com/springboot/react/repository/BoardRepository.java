package com.springboot.react.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springboot.react.model.Board;

@Repository
public interface BoardRepository extends JpaRepository<Board, Integer>{
	//간단한 CRUD기능은 JpaRepository를 상속하는 것으로 구현이 가능
}
