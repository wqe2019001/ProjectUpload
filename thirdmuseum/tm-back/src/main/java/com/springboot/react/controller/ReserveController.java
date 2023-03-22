package com.springboot.react.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.react.model.Reserve;
import com.springboot.react.service.ReserveService;

@RestController
public class ReserveController {
	@Autowired
	private ReserveService reserveService;

	@RequestMapping(value = "insertProcess.do")
	public void insertProcess(Reserve reserve) {
		reserveService.insert(reserve);
	}

	@RequestMapping(value = "updateProcess.do")
	public void updateProcess(Reserve reserve) {
		reserveService.update(reserve);
	}

	@RequestMapping(value = "reserve.do")
	public void deleteProcess(Reserve reserve) {
		reserveService.delete(reserve);
	}

	@RequestMapping(value = "view.do")
	public Reserve viewReserve() {
		Reserve reserve = reserveService.select();
		return reserve;
	}

}