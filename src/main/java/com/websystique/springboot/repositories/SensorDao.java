package com.websystique.springboot.repositories;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.websystique.springboot.model.Sensor;

@Repository
public class SensorDao {

	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("rawtypes")
	public List<Sensor> listar() {
		Query query = em.createNativeQuery("select * from sensores");
		List resultList = query.getResultList();
		
		List<Sensor> sensores = new ArrayList<>();
		
		Sensor sensor = null;
		
		for (Object user : resultList) {
			Object[] u = (Object[])user;

			sensor = new Sensor();
			
			sensor.setFirstName((String)u[0]);
			sensor.setSensor((String)u[1]);
			sensor.setQuatidade((BigInteger)u[2]);
			
			sensores.add(sensor);
		}
		
		return sensores;
	}
}
