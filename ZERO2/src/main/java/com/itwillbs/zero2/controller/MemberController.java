package com.itwillbs.zero2.controller;

import org.sonatype.inject.Parameters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.zero2.service.MemberService;
import com.itwillbs.zero2.vo.MemberVO;
import com.itwillbs.zero2.vo.ResponseVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService member_service;
	
	// 멤버 로그인
	@GetMapping("member_login")
	public String memberLogin() {
		System.out.println("MemberController - memberlogin");
		
		return "member/member_login";
	}

	// 멤버 로그인정보
	@GetMapping("member_loginInfo")
	public String memberLoginInfo() {
		System.out.println("MemberController - memberloginInfo");
		
		return "member/member_loginInfo";
	}
	
	
	// 멤버 주소 등록
	@GetMapping("member_address")
	public String memberAddress() {
		System.out.println("MemberController - memberlogin");
		
		return "member/member_address";
	}	
	
	// 멤버 계좌 등록
	@GetMapping("member_account")
	public String memberAccount() {
		System.out.println("MemberController - memberAccount");
		
		return "member/member_account";
	}
	
	// 멤버 마이스토어
	@GetMapping("member_mystore")
	public String memberMyStore() {
		System.out.println("MemberController - memberMyStore");
		
		return "member/member_mystore";
	}
	
	// 멤버 프로필
	@GetMapping("member_profile")
	public String memberProfile() {
		System.out.println("MemberController - memberProfile");
		
		return "member/member_profile";
	}
	
	// 프로필 사진 변경
//	@GetMapping("/user/profileUpdateForm")
//    public String profileUpdateForm(Model model){
		// 유저 로그인 상태
//        String sId = (String)session.getAttribute("sId");
		// 유저 아이디 확인
//        String id = member_service.findById(sId);
//        if( sId == null) ){
//           return "redirect:/member_login";  // 로그인 창으로 이동
//        }
		
//        model.addAttribute("user", userPS);
//        return "user/profileUpdateForm"; // 프로필 사진 변경 창으로 이동
//    }
	
	
	// 프로필 변경 ajax
//	@ResponseBody
//    @PutMapping("/user/profileUpdate")
//    public MemberVO profileUpdate(@RequestParam MultipartFile profile, Model model) throws Exception{ 
//        User principal = (User) session.getAttribute("principal");
//        if( principal == null ){
//            throw new CustomApiException("로그인이 필요한 페이지 입니다.", HttpStatus.UNAUTHORIZED);
//        }
//    	String sId = "love@naver.com";
//        System.out.println(profile.getContentType());
//        if( profile.isEmpty()){
//            throw new Exception("사진이 전송 되지 않았습니다.");
//        }

//        MemberVO member = member_service.profileUpdate(profile, sId);
//        model.addAttribute("member", member);
////        return new ResponseEntity<>(new ResponseVO<>(1, "수정 성공", null), HttpStatus.OK);
//        return member;
//    }
    
    @PutMapping("/user/profileUpdate")
    public ResponseEntity<?> profileUpdate(@RequestParam MultipartFile profile, Model model) throws Exception{ 
//        User principal = (User) session.getAttribute("principal");
//        if( principal == null ){
//            throw new CustomApiException("로그인이 필요한 페이지 입니다.", HttpStatus.UNAUTHORIZED);
//        }
    	String sId = "love@naver.com";
        System.out.println(profile.getContentType());
        if( profile.isEmpty()){
            throw new Exception("사진이 전송 되지 않았습니다.");
        }

        MemberVO member = member_service.profileUpdate(profile, sId);
        model.addAttribute("member", member);
        return new ResponseEntity<>(new ResponseVO<>(1, "수정 성공", null), HttpStatus.OK);
    }
	

	
	
	// 멤버 아이디 찾기
	@GetMapping("member_find_id")
	public String memberFindId() {
		System.out.println("MemberController - memberFindId");
		
		return "member/member_find_id";
	}
	
	// 멤버 패스워드 찾기
	@GetMapping("member_find_passwd")
	public String memberFindPasswd() {
		System.out.println("MemberController - memberFindPasswd");
		
		return "member/member_find_passwd";
	}
	
	// 멤버 메인화면
	@GetMapping("member_mypage_main")
	public String memberMypageHome() {
		return "member/member_mypage_main";
	}
	
	// 멤버 중고상품 구매내역
	@GetMapping("member_mypage_buyList")
	public String memberMypageBuyList() {
		return "member/member_mypage_buyList";
	}
	
	// 멤버 경매 내역
	@GetMapping("member_mypage_auctionList")
	public String memberMypageAuctionList() {
		return "member/member_mypage_auctionList";
	}

	// 회원가입
	@GetMapping("join")
	public String join() {
		return "member/member_join";
	}
	
	// 회원가입 완료
	@PostMapping("join_pro")
	public String memberJoinPro() {
		return "member/member_join_pro";
	}
	
	
	// Z-MAN 신청
	@GetMapping("zman_join")
	public String zmanJoin() {
		return "member/member_zman_join";
	}
	
}













