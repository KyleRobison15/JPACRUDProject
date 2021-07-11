package com.skilldistillery.climbs.data;

import java.util.List;

import com.skilldistillery.climbs.entities.Climb;

public interface ClimbDAO {

	public Climb findById(int id);
	public List<Climb> getAllClimbs();
	public List<Climb> getCompletedClimbs(boolean isTicked);
	public List<Climb> getToDoClimbs(boolean isTicked);
	public List<Climb> findByKeyword(String keyword);
	public Climb addClimb(Climb climb);
	public boolean updateClimb(Climb climb);
	public boolean deleteClimb(Climb climb);
	
	
}
