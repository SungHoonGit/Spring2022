package kr.co.itwill.member;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/member")
public class MemberCont {

	public MemberCont() {
		System.out.println("------------MemberCont()객체 생성 됨");
	}// end
	
	// 아이디 중복확인 페이지 불러오기
	// 결과확인 http://localhost:9095/member/idcheckform.do
	@RequestMapping("idcheckform.do")
	public String idCheckForm() {
		return "member/idCheck";
	}// idCheckForm() end
	
	
	@RequestMapping("idcheckproc.do")
	@ResponseBody
	public String idCheckProc(HttpServletRequest req) {
		String userid=req.getParameter("userid").trim();
		String message="";
		
		if(userid.length()<5 || userid.length()>15) {
			message="<span style='color:blue;font-weight:bold'> 아이디는 5~15글자 이내 입력해 주세요!! </span>";
		}else{
			if(userid.equals("itwill") || userid.equals("webmaster")) {
				message="<span style='color:red;font-weight:bold'>중복된 아이디 입니다!!</span>";
			}else{
				message="<span style='color:green;font-weight:bold'>사용가능한 아이디 입니다~</span>";
			}// if end
		} // if end
		return message;
	} // idCheckProc() end
	
	
	// 쿠키를 활용하여 아이디 중복확인을 해야만 회원가입이 가능하다.
	// 결과확인  http://localhost:9095/member/idcheckcookieform.do
	@RequestMapping("idcheckcookieform.do")
	public String idcheckCookieform() {
		return "/member/idCheck_cookie";
	} // idcheckCookieform() end
	
	
	@RequestMapping("idcheckcookieproc.do")
	@ResponseBody
	public String idCHeckCookieProc(HttpServletRequest req) {
		String userid=req.getParameter("userid").trim();
		
		String cnt="0";
		if(userid.equals("itwill") || userid.equals("webmaster")) {
			cnt="1"; // 아이디가 중복되었음
		} // if end
		
		// 1) text 응답 ---------------------------------------------------
		// return cnt;
	
		// 2) JSON 응답 ---------------------------------------------------
		JSONObject json = new JSONObject();
		json.put("count", cnt); // Key, Value
		return json.toString();
				
	}// idCHeckCookieProc() end
	
	
	@RequestMapping(value = "insert.do", method = RequestMethod.POST)
	public void insert(HttpServletRequest req) {
		
		System.out.println("아이디 : " + req.getParameter("userid"));
		System.out.println("비 번 : " + req.getParameter("passwd"));
		System.out.println("이름 : " + req.getParameter("name"));
		System.out.println("이메일 : " + req.getParameter("email"));
		
	}// insert() end
	
	
	
	
	
}// class end
