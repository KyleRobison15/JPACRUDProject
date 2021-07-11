package com.skilldistillery.climbs.entities;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Climb {

//////////////////////// FIELDS ///////////////////////////////

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "route_name")
	private String routeName;

	@Column(name = "route_grade")
	private String routeGrade;

	@Column(name = "route_style")
	private String routeStyle;

	private Integer pitches;

	private String description;

	@Column(name = "state_abbreviation")
	private String stateAbbreviation;

	@Column(name = "area_name")
	private String areaName;

	@Column(name = "area_name2")
	private String areaName2;

	@Column(name = "crag_name")
	private String cragName;

	@Column(name = "area_latitude")
	private Double areaLatitude;

	@Column(name = "area_longitude")
	private Double areaLongitude;

	private Boolean ticked;

	private Integer stars;

	@Column(name = "date_climbed")
	private LocalDate dateClimbed;
	
	@Column(name = "date_record_created")
	private LocalDateTime dateRecordCreated;

	@Column(name = "last_update")
	private LocalDateTime lastUpdate;

//////////////////////// CONSTRUCTORS //////////////////////////	

	public Climb() {}

//////////////////////// METHODS ///////////////////////////////
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRouteName() {
		return routeName;
	}

	public void setRouteName(String routeName) {
		this.routeName = routeName;
	}

	public String getRouteGrade() {
		return routeGrade;
	}

	public void setRouteGrade(String routeGrade) {
		this.routeGrade = routeGrade;
	}

	public String getRouteStyle() {
		return routeStyle;
	}

	public void setRouteStyle(String routeStyle) {
		this.routeStyle = routeStyle;
	}

	public int getPitches() {
		return pitches;
	}

	public void setPitches(Integer pitches) {
		this.pitches = pitches;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStateAbbreviation() {
		return stateAbbreviation;
	}

	public void setStateAbbreviation(String stateAbbreviation) {
		this.stateAbbreviation = stateAbbreviation;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getAreaName2() {
		return areaName2;
	}

	public void setAreaName2(String areaName2) {
		this.areaName2 = areaName2;
	}

	public String getCragName() {
		return cragName;
	}

	public void setCragName(String cragName) {
		this.cragName = cragName;
	}

	public double getAreaLatitude() {
		return areaLatitude;
	}

	public void setAreaLatitude(Double areaLatitude) {
		this.areaLatitude = areaLatitude;
	}

	public double getAreaLongitude() {
		return areaLongitude;
	}

	public void setAreaLongitude(Double areaLongitude) {
		this.areaLongitude = areaLongitude;
	}

	public boolean isTicked() {
		return ticked;
	}

	public void setTicked(Boolean ticked) {
		this.ticked = ticked;
	}

	public int getStars() {
		return stars;
	}

	public void setStars(Integer stars) {
		this.stars = stars;
	}

	public LocalDate getDateClimbed() {
		return dateClimbed;
	}
	
	public void setDateClimbed(String dateClimbed) {
		try {
			DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			this.dateClimbed = LocalDate.parse(dateClimbed, format);
		} catch (Exception e) {
			this.dateClimbed = null;
		}
	}

	public LocalDateTime getDateRecordCreated() {
		return dateRecordCreated;
	}

	public void setDateRecordCreated(LocalDateTime dateRecordCreated) {
		this.dateRecordCreated = dateRecordCreated;
	}

	public LocalDateTime getLastUpdate() {
		return lastUpdate;
	}

	public void setLastUpdate(LocalDateTime lastUpdate) {
		this.lastUpdate = lastUpdate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Climb [id=").append(id).append(", routeName=").append(routeName).append(", routeGrade=")
				.append(routeGrade).append(", routeStyle=").append(routeStyle).append(", pitches=").append(pitches)
				.append(", stateAbbreviation=").append(stateAbbreviation).append(", areaName=").append(areaName)
				.append(", areaName2=").append(areaName2).append(", cragName=").append(cragName)
				.append(", areaLatitude=").append(areaLatitude).append(", areaLongitude=").append(areaLongitude)
				.append(", ticked=").append(ticked).append(", stars=").append(stars).append(", dateClimbed=")
				.append(dateClimbed).append(", dateRecordCreated=").append(dateRecordCreated).append(", lastUpdate=")
				.append(lastUpdate).append("]");
		return builder.toString();
	}

}
