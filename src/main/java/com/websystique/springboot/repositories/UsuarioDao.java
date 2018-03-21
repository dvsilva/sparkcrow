package com.websystique.springboot.repositories;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.websystique.springboot.model.Usuario;

@Repository
public class UsuarioDao {

	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("rawtypes")
	public List<Usuario> listar() {
		Query query = em.createNativeQuery("select * from usuarios");
		List resultList = query.getResultList();
		
		List<Usuario> usuarios = new ArrayList<>();
		
		Usuario usuario = null;
		
		for (Object user : resultList) {
			Object[] u = (Object[])user;

			usuario = new Usuario();
			
			usuario.setFirstName((String)u[0]);
			usuario.setLocation((String)u[1]);
			usuario.setSensor((String)u[2]);
			usuario.setLatitude((String)u[3]);
			usuario.setLongitude((String)u[4]);
			usuario.setQuantidade((BigInteger)u[5]);
			
			usuarios.add(usuario);
		}
		
		return usuarios;
	}
}
