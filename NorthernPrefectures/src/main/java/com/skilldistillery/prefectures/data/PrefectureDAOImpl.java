package com.skilldistillery.prefectures.data;

import java.util.List;

import javax.persistence.EntityManager;
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
		// TODO Auto-generated method stub
		return null;
	}

}
