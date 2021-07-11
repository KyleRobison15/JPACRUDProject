package com.skilldistillery.climbs.data;

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
		
		jpql = "SELECT c FROM Climb c";
		List<Climb> climbs = em.createQuery(jpql, Climb.class).getResultList();
		
		return climbs;
	}

	@Override
	public List<Climb> getCompletedClimbs(boolean isTicked) {
		
		jpql = "SELECT c FROM Climb c WHERE c.ticked = true";
		List<Climb> climbs = em.createQuery(jpql, Climb.class).getResultList();
		
		return climbs;
	}

	@Override
	public List<Climb> getToDoClimbs(boolean isTicked) {
		
		jpql = "SELECT c FROM Climb c WHERE c.ticked = false";
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
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteClimb(Climb climb) {
		// TODO Auto-generated method stub
		return false;
	}
	
	

}
