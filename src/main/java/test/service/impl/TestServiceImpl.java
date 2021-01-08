package main.java.test.service.impl;

import org.springframework.stereotype.Service;

import main.java.test.service.TestService;

@Service("TestService")
public class TestServiceImpl implements TestService{

	@Override
	public String select() {
		return "{\"Animal\" : \"Alpaca\"}";
	}

	@Override
	public void save() {
		
	}

	@Override
	public void delete() {
		
	}
	
}