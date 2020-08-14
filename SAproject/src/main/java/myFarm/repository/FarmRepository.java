package myFarm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import myFarm.entity.Farm;

@Repository
@Transactional(readOnly = true)
public interface FarmRepository extends JpaRepository<Farm, Long> {

	/*
	 * 단건의 경우 T 형태와 Optional<T> 형태 2개로 받을 수 있다.
	 * 결과가 2건이상 나오면 javax.persistence.NonUniqueResultException 예외가 발생하고, 결과가 0건일 경우 T는 null,
	 * Optional<T>는 Optional.empty() 를 리턴한다.
	 * 
	 */
	
	// farmName으로 DB 검색
	public Farm findByfarmName(String farmName);

}
