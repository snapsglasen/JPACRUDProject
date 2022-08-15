package com.skilldistillery.prefectures.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.prefectures.entities.Prefecture.Prefecture;

@Service
@Transactional
public class PrefectureDAOImpl implements PrefectureDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Prefecture findById(int prefId) {
		return em.find(Prefecture.class, prefId);
	}

	@Override
	public List<Prefecture> findAll() {
		String jpql = "SELECT p FROM Prefecture p ORDER BY p.id";
		List<Prefecture> prefsList = em.createQuery(jpql, Prefecture.class).getResultList();
		System.out.println(prefsList);
		return prefsList;

	}

	

	@Override
	public Prefecture create(Prefecture pref) {
		em.persist(pref);
		return pref;
	}

	@Override
	public Prefecture update(int id, Prefecture pref) {
		Prefecture updatedPref = em.find(Prefecture.class, id);

		if (updatedPref != null) {
			updatedPref.setName(pref.getName());
			updatedPref.setCapital(pref.getCapital());
			updatedPref.setAverageSnowfall(pref.getAverageSnowfall());
			updatedPref.setBorderWater(pref.getBorderWater());
			updatedPref.setPopulation(pref.getPopulation());

		}

		return updatedPref;
	}

	@Override
	public boolean delete (Prefecture pref) {
		em.remove(pref);
		//boolean deleted = false;
//		Prefecture deletePref = em.find(Prefecture.class, pref);
//
//		if (deletePref != null) {
//			em.remove(deletePref);
//			deleted = em.contains(deletePref);
//		}
		return true;
	}

}
