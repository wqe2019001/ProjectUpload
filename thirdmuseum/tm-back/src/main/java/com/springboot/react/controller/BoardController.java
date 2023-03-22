package com.springboot.react.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.react.model.Board;
import com.springboot.react.service.BoardService;

@CrossOrigin(origins = "http://192.168.0.30:3000") //CORS 문제를 해결하기 위해 추가
@RestController
//@RequestMapping("/api")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	//게시물 목록보기
	@GetMapping("/notice")
	public List<Board> getAllBoards() {
		return boardService.getAllBoard();
	}

	//글작성
	@PostMapping("/notice")
	public Board createBoard(@RequestBody Board board) {
		return boardService.createBoard(board);
	}
	
	//글보기
	@GetMapping("/notice/{ntcNo}")
	public ResponseEntity<Board> getBoardByNo(
			@PathVariable Integer ntcNo) {
		
		return boardService.getBoard(ntcNo);
	}

	//글수정
	@PutMapping("/notice/{ntcNo}")
	public ResponseEntity<Board> updateBoardByNo(
			@PathVariable Integer ntcNo, @RequestBody Board board){
		
		return boardService.updateBoard(ntcNo, board);
	}

	//글삭제
	@DeleteMapping("/notice/{ntcNo}")
	public ResponseEntity<Map<String, Boolean>> deleteBoardByNo(
			@PathVariable Integer ntcNo) {
		
		return boardService.deleteBoard(ntcNo);
	}

}