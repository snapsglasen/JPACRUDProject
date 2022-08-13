package com.skilldistillery.prefectures.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.prefectures.entities.Prefecture.Prefecture;

class PrefectureTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Prefecture pref;
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAPrefectures");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		pref = em.find(Prefecture.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		pref = null;
	}

	@Test
	void test_Prefecture_entity_mapping() {
		assertNotNull(pref);
		assertEquals("Okinawa", pref.getName());
		
	}

}
