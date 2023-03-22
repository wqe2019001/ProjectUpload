package com.springboot.react.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.springboot.react.exception.ResourceNotFoundException;
import com.springboot.react.model.Board;
import com.springboot.react.repository.BoardRepository;

@Service
public class BoardService {
	@Autowired
	private BoardRepository boardRepository;
	
	//게시물 목록보기 추가
	//Repository를 호출해서 글목록 데이터를 리턴하는 메소드
	public List<Board> getAllBoard(){
		//기존 findAll()에서 번호기준 정렬 추가
		//return boardRepository.findAll();
		return boardRepository.findAll(Sort.by(Sort.Direction.DESC, "ntcNo"));
	}

	//글작성
	public Board createBoard(Board board){
		return boardRepository.save(board);
	}
	
	//글보기
	public ResponseEntity<Board> getBoard(Integer ntcNo){
		Board board = boardRepository.findById(ntcNo)
				.orElseThrow(() -> new ResourceNotFoundException("Not exist Board Data by no : ["+ ntcNo +"]"));
		return ResponseEntity.ok(board);
	}
	
	//글수정 
	public ResponseEntity<Board> updateBoard(Integer ntcNo, Board updatedBoard){
		Board board = boardRepository.findById(ntcNo)
				.orElseThrow(() -> new ResourceNotFoundException("Not exist Board Data by no : ["+ ntcNo +"]"));
		board.setNtcTitle(updatedBoard.getNtcTitle());
		board.setNtcContent(updatedBoard.getNtcContent());
		
		Board endUpdatedBoard = boardRepository.save(board);
		return ResponseEntity.ok(endUpdatedBoard);
	}
	
	public ResponseEntity<Map<String, Boolean>> deleteBoard(Integer ntcNo){
		Board board = boardRepository.findById(ntcNo)
				.orElseThrow(() -> new ResourceNotFoundException("Not exist Board Data by no : ["+ ntcNo +"]"));
		
		boardRepository.delete(board);
		Map<String, Boolean> response = new HashMap<>();
		response.put("Deleted Board Data by id : ["+ ntcNo +"]", Boolean.TRUE);
		return ResponseEntity.ok(response);
	}
}
