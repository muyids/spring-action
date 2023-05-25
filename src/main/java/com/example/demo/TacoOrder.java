package com.example.demo;

import lombok.Data;

import java.time.DateTimeException;

@Data
public class TacoOrder {
    private Long id;
    private String name;
    private String street;
    private String city;
    private String state;
    private String zip;
    private String ccNumber;
    private String ccExpiration;
    private String ccCVV;
    /**
     * 生成TacoOrder的建表SQL
     * CREATE TABLE TacoOrder (
     * id BIGINT IDENTITY NOT NULL PRIMARY KEY,
     * name VARCHAR(50) NOT NULL,
     * street VARCHAR(50) NOT NULL,
     */


}