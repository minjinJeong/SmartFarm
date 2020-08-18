package myFarm.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import myFarm.entity.Farm;
import myFarm.repository.FarmRepository;

@Service
@Transactional
public class FarmService {

	@Autowired
	private FarmRepository fr;
	
	// 새 농장 페이지 만들기 (막 회원가입한 경우)
	public Farm init(String name, String num) {
		return fr.save(new Farm(name, num));
	}

	// 농장 정보 찾기
	public Farm findByfarm(String num) {
		
		Farm farm = fr.findBybusinessNum(num);
		// System.out.println("farm 호출 결과::"+farm.getFarmName());
		
		return farm;
	}
	
	// 이미지 저장하기
	public Farm insert(Farm farm) {
		return fr.save(farm);
	}

}
