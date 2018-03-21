package com.websystique.springboot.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.websystique.springboot.model.Contador;
import com.websystique.springboot.model.Sensor;
import com.websystique.springboot.model.Usuario;
import com.websystique.springboot.repositories.ContadorDao;
import com.websystique.springboot.repositories.SensorDao;
import com.websystique.springboot.repositories.UsuarioDao;

@RestController
@RequestMapping("/api")
public class RestApiController {

	public static final Logger logger = LoggerFactory.getLogger(RestApiController.class);

	@Autowired
	private UsuarioDao usuarioDao; 
	
	@Autowired
	private ContadorDao contadorDao;
	
	@Autowired
	private SensorDao sensorDao;
	
	@RequestMapping(value = "/user/", method = RequestMethod.GET)
	public ResponseEntity<List<Usuario>> listAllUsers() {
		List<Usuario> users = usuarioDao.listar();
		return new ResponseEntity<List<Usuario>>(users, HttpStatus.OK);
	}

	@RequestMapping(value = "/sensor/", method = RequestMethod.GET)
	public ResponseEntity<List<Sensor>> listAllSensors() {
		List<Sensor> sensors = sensorDao.listar();
		return new ResponseEntity<List<Sensor>>(sensors, HttpStatus.OK);
	}

	@RequestMapping(value = "/contador/", method = RequestMethod.GET)
	public ResponseEntity<List<Contador>> listAllConters() {
		List<Contador> contadors = contadorDao.listar();
		return new ResponseEntity<List<Contador>>(contadors, HttpStatus.OK);
	}
}