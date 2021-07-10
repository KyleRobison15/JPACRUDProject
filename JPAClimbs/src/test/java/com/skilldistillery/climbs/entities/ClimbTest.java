package com.skilldistillery.climbs.entities;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class ClimbTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Climb climb;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("ClimbsPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		climb = em.find(Climb.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		climb = null;
	}

	@Test
	@DisplayName("TEST: Climb Entity Mappings")
	void test1() {
		assertNotNull(climb);
		assertEquals("Birdland", climb.getRouteName());
		assertEquals("5.7+", climb.getRouteGrade());
		assertEquals("Trad", climb.getRouteStyle());
		assertEquals(5, climb.getPitches());
		assertTrue(climb.getDescription().startsWith("A beautiful climb with a"));
		assertEquals("NV", climb.getStateAbbreviation());
		assertEquals("Red Rock", climb.getAreaName());
		assertEquals("Pine Creek Canyon", climb.getAreaName2());
		assertEquals("Brass Wall", climb.getCragName());
		assertEquals(36.124, climb.getAreaLatitude());
		assertEquals(-115.49, climb.getAreaLongitude());
		assertTrue(climb.isTicked());
		assertEquals(5, climb.getStars());
		assertEquals(2021, climb.getDateClimbed().getYear());
		assertEquals(1, climb.getDateClimbed().getMonthValue());
		assertEquals(24, climb.getDateClimbed().getDayOfMonth());
		assertEquals(2021, climb.getDateRecordCreated().getYear());
		assertEquals(7, climb.getDateRecordCreated().getMonthValue());
		assertEquals(9, climb.getDateRecordCreated().getDayOfMonth());
		assertEquals(2021, climb.getLastUpdate().getYear());
		assertEquals(7, climb.getLastUpdate().getMonthValue());
		assertEquals(9, climb.getLastUpdate().getDayOfMonth());
	}

}
