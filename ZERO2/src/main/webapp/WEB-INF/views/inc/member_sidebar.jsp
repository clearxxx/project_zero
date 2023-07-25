<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath }/resources/css/sidebar.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.0.js"></script>
<script type="text/javascript">

</script>
<div class="sidebar">
<!--   <p class="title"> 마이페이지 </p> -->
<!--   <ul class="nav flex-column"> -->
  
    		<%-- 마이페이지 사이드 --%>
  		<div class="my lg">
			<div class="snb_area">
				<a href="/member_main" class="nuxt-link-active">
					<h2 class="snb_main_title title">마이 페이지</h2>
				</a>
				<nav class="snb">
					<div class="snb_list">
<!-- 						<strong data-v-7bcac446="" class="snb_title">쇼핑 정보</strong> -->
						<ul class="snb_menu">
							<li class="menu_item">
								<a href="/my/buying" class="menu_link"> 구매 내역 </a>
							</li>
							<li  class="menu_item">
								<a href="member_mystore" class="menu_link"> 판매 스토어 </a>
							</li>
							<li class="menu_item">
								<a href="/my/inventory" class="menu_link"> 보관 판매 </a>
							</li>
							<li class="menu_item">
								<a href="/saved" class="menu_link"> 관심 상품 </a>
							</li>
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 					<div data-v-7bcac446="" class="snb_list"> -->
<!-- 						<strong data-v-7bcac446="" class="snb_title">내 정보</strong> -->
<!-- 						<ul data-v-bd8504ea="" data-v-7bcac446="" class="snb_menu"> -->
							<li class="menu_item">
								<a href="member_profile" class="menu_link"> 로그인 정보 </a>
							</li>
							<li class="menu_item menu_on">
								<a href="member_profile" class="menu_link nuxt-link-exact-active nuxt-link-active" aria-current="page"> 프로필 관리 </a>
							</li>
							<li class="menu_item">
								<a href="member_address" class="menu_link"> 주소록 </a>
							</li>
							<li class="menu_item">
								<a href="#" class="menu_link"> 결제 정보 </a>
							</li>
							<li class="menu_item">
								<a href="member_account" class="menu_link"> 나의 계좌 </a>
							</li>
							<li class="menu_item">
								<a href="#" class="menu_link"> Z페이 </a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
<!-- 	</ul> -->
</div>