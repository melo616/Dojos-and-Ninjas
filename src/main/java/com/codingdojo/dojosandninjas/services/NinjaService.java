package com.codingdojo.dojosandninjas.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	@Autowired
	private NinjaRepository ninjaRepo;
	
	//create
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
 }
