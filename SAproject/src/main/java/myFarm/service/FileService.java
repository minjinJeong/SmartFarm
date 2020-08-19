package myFarm.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import myFarm.entity.FileUp;
import myFarm.repository.FileRepository;

@Service
@Transactional
public class FileService {

	@Autowired
	private FileRepository fr;

	private final String PATH = "assets\\FARM-IMAGES\\";

	public List<FileUp> findList(String num) {
		return fr.findByList(num);
	}

	// 이미지 저장하기
	public FileUp insert(MultipartFile file, String root_path, FileUp fileUp) throws IllegalStateException, IOException {

		// 파일 이름
		String filename = file.getOriginalFilename();

		// 파일 번호 설정
		int index = findList(fileUp.getFileId().getBusinessNum()).size();
		fileUp.setGno(index);

		String filePath = PATH + index + "_" + filename;

		System.out.println("================== file start ==================");
		System.out.println("파일 번호" + fileUp.getFileId().getGno() + "\t파일 등록 번호" + fileUp.getFileId().getBusinessNum());
		System.out.println("전체 경로" + root_path + filePath); // 전체 경로 출력
		System.out.println("================== file   END ==================");

		// 파일 저장
		file.transferTo(new File(root_path + filePath));
		fileUp.setPhoto_path(filePath);

		return fr.save(fileUp);
	}
}
