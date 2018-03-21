package com.websystique.springboot.model;

import java.io.Serializable;
import java.math.BigInteger;

public class Sensor implements Serializable {

	private static final long serialVersionUID = 8841927610870497382L;

	private String sensor;
	private String firstName;
	private BigInteger quatidade;

	public String getSensor() {
		return sensor;
	}

	public void setSensor(String sensor) {
		this.sensor = sensor;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public BigInteger getQuatidade() {
		return quatidade;
	}

	public void setQuatidade(BigInteger quatidade) {
		this.quatidade = quatidade;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + ((quatidade == null) ? 0 : quatidade.hashCode());
		result = prime * result + ((sensor == null) ? 0 : sensor.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Sensor other = (Sensor) obj;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (quatidade == null) {
			if (other.quatidade != null)
				return false;
		} else if (!quatidade.equals(other.quatidade))
			return false;
		if (sensor == null) {
			if (other.sensor != null)
				return false;
		} else if (!sensor.equals(other.sensor))
			return false;
		return true;
	}

}
