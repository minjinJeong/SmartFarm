package myFarm.controller;

import java.io.File;

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
import myFarm.service.FarmService;

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
	FarmService fs;

	private Farm myFarm;

	// 농장 메인 화면
	@RequestMapping("/FarmPageMain")
	public String intro(Model model) {

		System.out.println("농장 메인 컨트롤러 실행됨");

		myFarm = fs.findByfarm("123456");
		if (myFarm == null) {
			myFarm = fs.init("Lee", "123456");
		}

		model.addAttribute("farm", myFarm);

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
	public String insert(@RequestParam("filename") MultipartFile file, @RequestParam String content, HttpServletRequest request) throws Exception {

		System.out.println("================== file start ==================");
		System.out.println("파일 이름: " + file.getName());
		System.out.println("파일 실제 이름: " + file.getOriginalFilename());
		System.out.println("파일 크기: " + file.getSize());
		System.out.println("content type: " + file.getContentType());
		System.out.println("코멘트: " + content);
		System.out.println("================== file   END ==================");

		// Save mediaFile on system
		/*
		 * if (!file.getOriginalFilename().isEmpty()) { String path = uploadPath + "/" +
		 * file.getOriginalFilename(); file.transferTo(new File(path, file.getName()));
		 * fs.insert(path, content); }
		 */

		// 파일 이름
	    String filename = file.getOriginalFilename();
	    
		// 파일 경로
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String filePath = "assets\\FARM-IMAGES\\" + filename;
		
		// 전체 경로 출력
		System.out.println(root_path + filePath);
		
		// 파일 저장
		file.transferTo(new File(root_path + filePath));
		
		// 정보 갱신
		myFarm = fs.findByfarm("123456");
		myFarm.setPhoto(filePath);
		myFarm.setComment(content);
		myFarm = fs.insert(myFarm);

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
