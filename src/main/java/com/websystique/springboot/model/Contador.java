package com.websystique.springboot.model;

import java.io.Serializable;
import java.math.BigInteger;

public class Contador implements Serializable {

	private static final long serialVersionUID = 8841927610870497382L;

	private String activity;
	private BigInteger quatidade;

	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
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
		result = prime * result + ((activity == null) ? 0 : activity.hashCode());
		result = prime * result + ((quatidade == null) ? 0 : quatidade.hashCode());
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
		Contador other = (Contador) obj;
		if (activity == null) {
			if (other.activity != null)
				return false;
		} else if (!activity.equals(other.activity))
			return false;
		if (quatidade == null) {
			if (other.quatidade != null)
				return false;
		} else if (!quatidade.equals(other.quatidade))
			return false;
		return true;
	}

}
