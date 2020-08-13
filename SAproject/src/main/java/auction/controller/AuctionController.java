package auction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * auction 관련 파일을 실행시키기 위한 컨트롤러
 * @Controller는 컨트롤러라는 뜻이고,
 * @RequestMapping("/jsp이름")은 해당하는 jsp이름으로 요청이 들어오면 실행한다는 뜻이다. 매핑 문제가 생긴 거면 여기서 발생!!
 * 이떄, return "폴더이름/jsp이름" 으로 반환해줘야 한다.
 * 제대로 작동하는지 확인하기 위해 System.out.println 으로 콘솔창에 표시. 이 라인은 삭제해도 됨.
 * 
 *  */

@Controller
public class AuctionController {
	
	// 경매 메인 화면
	@RequestMapping("/gList")
	public String intro(Model model) {
		System.out.println("경매 메인 컨트롤러 실행됨");
		return "auction/gList";
	}
	
	// 경매 등록
	@RequestMapping("/gWrite")
	public String write(Model model) {
		System.out.println("경매 등록 컨트롤러 실행됨");
		return "auction/gWrite";
	}
}
