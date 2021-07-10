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
	
	@Override
	public Climb findById(int id) {
		return em.find(Climb.class, id);
	}

	@Override
	public List<Climb> getAllClimbs() {
		
		String jpql = "SELECT c FROM Climb c";
		List<Climb> climbs = em.createQuery(jpql, Climb.class).getResultList();
		
		return climbs;
	}

	@Override
	public List<Climb> findByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Climb addClimb(Climb climb) {
		// TODO Auto-generated method stub
		return null;
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
