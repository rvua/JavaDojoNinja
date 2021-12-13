package com.codingdojo.dojosninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojosninjas.models.Dojo;
import com.codingdojo.dojosninjas.repositories.dojoRepository;

@Service
public class dojoService {
	@Autowired
	dojoRepository dojoRepo;
	
	// See all dojos
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
	
	// Create Dojo
	public Dojo create(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
	// Find one Dojo
	public Dojo oneDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		}
		else {
			return null;
		}
	}
	
}
