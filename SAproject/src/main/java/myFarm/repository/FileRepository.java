package myFarm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import myFarm.entity.FileUp;
import myFarm.entity.FileID;

@Repository
public interface FileRepository extends JpaRepository<FileUp, FileID> {

	@Query(value="select * from gallery m where m.businessNum = ?1", nativeQuery = true)
	public List<FileUp> findByList(String num);
}
