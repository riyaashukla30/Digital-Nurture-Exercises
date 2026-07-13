package com.cognizant.springlearn.controller;

import java.util.*;
import org.springframework.web.bind.annotation.*;
import com.cognizant.springlearn.model.Country;
import com.cognizant.springlearn.service.CountryService;

@RestController
public class CountryController {
    private final CountryService service;
    public CountryController(CountryService service){ this.service = service; }

    @GetMapping("/country")
    public Country getIndia(){ return new Country("IN","India"); }

    @GetMapping("/countries")
    public List<Country> getAll(){ return service.getAll(); }

    @GetMapping("/countries/{code}")
    public Country getCountry(@PathVariable String code){ return service.getCountry(code); }
}
