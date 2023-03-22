package com.glowup.brand.model;

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
@Table(name = "TB_CONTACT")
public class Contact {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TB_CONTACT_SEQ")
	@SequenceGenerator(sequenceName = "TB_CONTACT_SEQ", allocationSize = 1, name = "TB_CONTACT_SEQ")
	@Column(name = "CON_NO")
	private int conNo;
	
	@Column(name = "CON_REG_ID")
	private String conRegId;
	
	@Column(name = "CON_EMAIL")
	private String conEmail;

	@Column(name = "CON_PHONE")
	private String conPhone;
	
	@Column(name = "CON_CONTENT", length=4000)
	private String conContent;
}
