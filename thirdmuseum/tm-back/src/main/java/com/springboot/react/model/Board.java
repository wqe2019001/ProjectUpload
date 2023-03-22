package com.springboot.react.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import lombok.Data;

@Data
@DynamicInsert //Insert시 Null인 필드를 제외하기위해 사용
@DynamicUpdate //update시 Null인 필드를 제외하기위해 사용
@Entity
@Table(name = "TB_NOTICE")
public class Board {
	//글번호
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TB_NOTICE_SEQ")
	@SequenceGenerator(sequenceName = "TB_NOTICE_SEQ", allocationSize = 1, name = "TB_NOTICE_SEQ")
	@Column(name = "NTC_NO")
	private Integer ntcNo;
	
	//제목
	@Column(name = "NTC_TITLE")
	private String ntcTitle;
	
	//내용
	@Column(name = "NTC_CONTENT", length=4000)
	private String ntcContent;
}
