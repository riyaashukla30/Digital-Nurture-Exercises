package com.cognizant.springlearn.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cognizant.springlearn.exception.CountryNotFoundException;
import com.cognizant.springlearn.model.Country;

@Service
public class CountryService {

    List<Country> list = List.of(
        new Country("IN","India"),
        new Country("US","USA"),
        new Country("JP","Japan"),
        new Country("DE","Germany")
    );

    public List<Country> getAll(){
        return list;
    }

    public Country getCountry(String code){
        return list.stream()
                .filter(country -> country.getCode().equalsIgnoreCase(code))
                .findFirst()
                .orElseThrow(() -> new CountryNotFoundException());
    }
}