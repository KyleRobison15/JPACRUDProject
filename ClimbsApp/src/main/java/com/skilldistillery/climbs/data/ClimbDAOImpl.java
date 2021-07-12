package com.skilldistillery.climbs.data;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.climbs.entities.Climb;

@Service
@Transactional
public class ClimbDAOImpl implements ClimbDAO {

	@PersistenceContext
	private EntityManager em;
	private String jpql;
	
	@Override
	public Climb findById(int id) {
		return em.find(Climb.class, id);
	}

	@Override
	public List<Climb> getAllClimbs() {
		
		jpql = "SELECT c FROM Climb c ORDER BY c.routeName";
		List<Climb> climbs = em.createQuery(jpql, Climb.class).getResultList();
		
		return climbs;
	}

	@Override
	public List<Climb> getCompletedClimbs() {
		
		jpql = "SELECT c FROM Climb c WHERE c.ticked = true ORDER BY c.routeName";
		List<Climb> climbs = em.createQuery(jpql, Climb.class).getResultList();
		
		return climbs;
	}

	@Override
	public List<Climb> getToDoClimbs() {
		
		jpql = "SELECT c FROM Climb c WHERE c.ticked = false ORDER BY c.routeName";
		List<Climb> climbs = em.createQuery(jpql, Climb.class).getResultList();
		
		return climbs;
	}

	@Override
	public List<Climb> findByKeyword(String keyword) {
		
		jpql = "SELECT c FROM Climb c"
				+ " WHERE c.routeName LIKE :keyword"
				+ " OR c.description LIKE :keyword"
				+ " OR c.stateAbbreviation LIKE :keyword"
				+ " OR c.areaName LIKE :keyword"
				+ " OR c.areaName2 LIKE :keyword"
				+ " OR c.cragName LIKE :keyword";
		
		List<Climb> climbs = em.createQuery(jpql, Climb.class)
				.setParameter("keyword", "%" + keyword + "%")
				.getResultList();
				
		return climbs;
	}

	@Override
	public Climb addClimb(Climb climb) {
		
		// Conditional logic to set fields to null based on form input
		
		if (climb.getRouteGrade().equals("Select a Grade")) {
			climb.setRouteGrade(null);
		}
		
		if (climb.getStateAbbreviation().equals("Select a State")) {
			climb.setStateAbbreviation(null);
		}
		
		if (climb.getAreaLatitude() == 0.00) {
			climb.setAreaLatitude(null);
		}
		
		if (climb.getAreaLongitude() == 0.00) {
			climb.setAreaLongitude(null);
		}
		
		if (climb.getStars() == 0) {
			climb.setStars(null);
		}
		
		if (climb.getDescription().isEmpty()) {
			climb.setDescription(null);
		}
		
		if (climb.getAreaName().isEmpty()) {
			climb.setAreaName(null);
		}
		
		if (climb.getAreaName2().isEmpty()) {
			climb.setAreaName2(null);
		}
		
		if (climb.getCragName().isEmpty()) {
			climb.setCragName(null);
		}
		
		// Insert climb into database
		em.persist(climb);
		
		// Return climb with auto-incremented Id
		return climb;
	}

	@Override
	public boolean updateClimb(Climb climb) {
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String now = LocalDate.now().format(format);
		
		Climb managedClimb = em.find(Climb.class, climb.getId());
		managedClimb.setRouteName(climb.getRouteName());
		managedClimb.setRouteGrade(climb.getRouteGrade());
		managedClimb.setRouteStyle(climb.getRouteStyle());
		managedClimb.setPitches(climb.getPitches());
		managedClimb.setDescription(climb.getDescription());
		managedClimb.setStateAbbreviation(climb.getStateAbbreviation());
		managedClimb.setAreaName(climb.getAreaName());
		managedClimb.setAreaName2(climb.getAreaName2());
		managedClimb.setCragName(climb.getCragName());
		managedClimb.setAreaLatitude(climb.getAreaLatitude());
		managedClimb.setAreaLongitude(climb.getAreaLongitude());
		managedClimb.setTicked(climb.isTicked());
		managedClimb.setStars(climb.getStars());
		
		if (climb.getDateClimbed() == null) {
			managedClimb.setDateClimbed(now);
		} else {
			managedClimb.setDateClimbed(climb.getDateClimbed().format(format));
		}
		
		return true;
	}

	@Override
	public boolean deleteClimb(Climb climb) {
		em.remove(climb);
		return true;
	}
	
	

}
