package com.itwillbs.zero2.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.zero2.handler.PathUtil;
import com.itwillbs.zero2.mapper.MemberMapper;
import com.itwillbs.zero2.vo.MemberVO;


@Service
public class MemberService {
	
	@Autowired
	private MemberMapper member_mapper;

	@Transactional
	public MemberVO profileUpdate(MultipartFile profile, String sId) {
        // 1번 사진을 /static/image에 UUID로 변경해서 저장
        String uuidImageName = PathUtil.writeImageFile(profile);
        
        // 2번 저장된 파일의 경로를 DB에 저장
        MemberVO member = member_mapper.findById(sId);
        member.setMember_image(uuidImageName);

        member_mapper.updateById(sId, member.getMember_id(), member.getMember_passwd(), member.getMember_nickname(), member.getMember_image(), member.getMember_idx());
        return member;
    }
	

	
}
