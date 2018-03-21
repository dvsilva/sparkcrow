package com.websystique.springboot.repositories;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.websystique.springboot.model.Contador;

@Repository
public class ContadorDao {

	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("rawtypes")
	public List<Contador> listar() {
		Query query = em.createNativeQuery("select * from contador");
		List resultList = query.getResultList();
		
		List<Contador> contadores = new ArrayList<>();
		
		Contador contador = null;
		
		for (Object user : resultList) {
			Object[] u = (Object[])user;

			contador = new Contador();
			
			contador.setActivity((String)u[0]);
			contador.setQuatidade((BigInteger)u[1]);
			
			contadores.add(contador);
		}
		
		return contadores;
	}
}
