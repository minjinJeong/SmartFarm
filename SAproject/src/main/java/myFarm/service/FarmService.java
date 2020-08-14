package myFarm.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myFarm.entity.Farm;
import myFarm.repository.FarmRepository;

@Service
public class FarmService {

	@Autowired
	private FarmRepository fr;

	EntityManagerFactory emf;
	EntityManager em;
	EntityTransaction tx;

	// 생성자: 초기 설정
	public FarmService() {
		emf = Persistence.createEntityManagerFactory("SAproject");
		em = emf.createEntityManager();
		tx = em.getTransaction();
	}

	// 농장 정보 찾기 1
	public Farm findByfarm(String name) {
		Farm farm = fr.findByfarmName(name);
		return farm;
	}
	
	// 농장 정보 찾기 2
	public Farm findMyFarm(String name) {

		Farm farm = null;

		try {
			tx.begin();

			String jpql = "SELECT m from Farm m where m.farmName=:name";

			/* farm = em.createQuery(jpql, Farm.class).getResultList(); */

			TypedQuery<Farm> query = em.createQuery(jpql, Farm.class).setParameter("name", name);
			farm = query.getSingleResult();

			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}

		return farm;
	}
}
