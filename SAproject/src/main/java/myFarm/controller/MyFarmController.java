package myFarm.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import myFarm.entity.Farm;
import myFarm.entity.FileID;
import myFarm.entity.FileUp;
import myFarm.service.FarmService;
import myFarm.service.FileService;

/*
 * auction 관련 파일을 실행시키기 위한 컨트롤러
 * @Controller는 컨트롤러라는 뜻이고,
 * @RequestMapping("/jsp이름")은 해당하는 jsp이름으로 요청이 들어오면 실행한다는 뜻이다. 매핑 문제가 생긴 거면 여기서 발생!!
 * 이떄, return "폴더이름/jsp이름" 으로 반환해줘야 한다.
 * 제대로 작동하는지 확인하기 위해 System.out.println 으로 콘솔창에 표시. 이 라인은 삭제해도 됨.
 * 
 *  */

@Controller
public class MyFarmController {

	@Autowired(required = true)
	FarmService farmServ;
	
	@Autowired(required = true)
	FileService fileServ;
	
	/**
	 * name, BusinessNum는 세션 등으로 저장되어 있어야 한다 
	 * */
	private String name = "Lee";
	private String BusinessNum = "123456";

	private Farm myFarm;
	private List<FileUp> myGallery;

	// 농장 메인 화면
	@RequestMapping("/FarmPageMain")
	public String intro(Model model) {

		System.out.println("농장 메인 컨트롤러 실행됨");
		
		// 농장 정보 가져오기
		myFarm = farmServ.findByfarm(BusinessNum);
		if (myFarm == null) {
			myFarm = farmServ.init(name, BusinessNum);
		}
		model.addAttribute("farm", myFarm);
		
		// 갤러리 정보 가져오기
		myGallery = fileServ.findList(BusinessNum);
		if(myGallery == null) System.out.println("아무것도 찾지 못했다.");
		else System.out.println(myGallery);
		model.addAttribute("gallerys", myGallery);

		return "myFarm/FarmPageMain";
	}

	@RequestMapping("/FarmPageWrite")
	public String write(Model model) {

		System.out.println("농장 글쓰기 컨트롤러 실행됨");

		model.addAttribute("farm", myFarm);

		return "myFarm/FarmPageWrite";
	}

	// 이미지와 코멘트 저장
	@PostMapping("/insert")
	public String insert(@RequestParam("filename") MultipartFile file, FileUp fileUp, HttpServletRequest request) throws Exception {

		System.out.println("================== file start ==================");
		System.out.println("파일 이름: " + file.getName());
		System.out.println("파일 실제 이름: " + file.getOriginalFilename());
		System.out.println("파일 크기: " + file.getSize());
		System.out.println("content type: " + file.getContentType());
		System.out.println("코멘트: " + fileUp.getComment());
		System.out.println("================== file   END ==================");

		String root_path = request.getSession().getServletContext().getRealPath("/");	// 파일 경로
		
		FileID id = new FileID();
		id.setBusinessNum(myFarm.getBusinessNum());
		fileUp.setFileId(id);
		
		fileServ.insert(file, root_path, fileUp);
		
		return "redirect:FarmPageMain";
	}

	@RequestMapping("/FarmPageModify")
	public String modify(Model model) {
		System.out.println("농장 수정 컨트롤러 실행됨");
		return "myFarm/FarmPageModify";
	}

	@RequestMapping("/FarmPageReview")
	public String review(Model model) {
		System.out.println("농장 리뷰 컨트롤러 실행됨");
		return "myFarm/FarmPageReview";
	}
}
