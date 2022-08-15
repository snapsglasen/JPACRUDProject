package com.skilldistillery.prefectures.entities.Prefecture;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Prefecture {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String capital;
	
	@Column(name="average_snowfall")
	private Double averageSnowfall;
	
	@Column(name="border_water")
	private String borderWater;
	
	private Integer population;
	

	public Prefecture() {
		
	}
	
	

	public String getCapital() {
		return capital;
	}



	public void setCapital(String capital) {
		this.capital = capital;
	}



	public Double getAverageSnowfall() {
		return averageSnowfall;
	}



	public void setAverageSnowfall(Double averageSnowfall) {
		this.averageSnowfall = averageSnowfall;
	}



	public String getBorderWater() {
		return borderWater;
	}



	public void setBorderWater(String borderWater) {
		this.borderWater = borderWater;
	}



	public Integer getPopulation() {
		return population;
	}



	public void setPopulation(Integer population) {
		this.population = population;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Prefecture [id=" + id + ", name=" + name + ", capital=" + capital + ", averageSnowfall="
				+ averageSnowfall + ", borderWater=" + borderWater + ", population=" + population + "]";
	}
	
	
	
	
}
