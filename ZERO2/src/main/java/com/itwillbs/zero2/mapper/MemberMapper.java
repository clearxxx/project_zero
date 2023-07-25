package com.itwillbs.zero2.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.zero2.vo.MemberVO;

@Mapper
public interface MemberMapper {

	// 아이디로 회원정보 조회
	MemberVO findById(String sId);

	// 프로필 이미지 변경
	void updateById(@Param("sId") String sId, @Param("member_id") String member_id, @Param("member_passwd") String member_passwd
		,@Param("member_nickname") String member_nickname, @Param("member_image") String member_image, @Param("member_idx") int member_idx);

	
}
