package com.glowup.brand.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "TB_COM_USER")
@Getter
@Setter
@ToString
public class User {

   @Id
   @Column(name = "id")
   private String userId;
   @Column(name = "pw")
   private String userPassword;
   
}