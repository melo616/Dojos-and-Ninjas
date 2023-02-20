package com.codingdojo.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {

	@Autowired
	private DojoRepository dojoRepo;
	
	//create dojo
	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
	//get one dojo
	public Dojo oneDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}
	
	//find all dojos (used for dropdown when creating a ninja)
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
}
