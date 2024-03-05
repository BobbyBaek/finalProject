
# 🧑‍🍳 Spring-Project 냉장고를 부탁해 (24 . 1 ~ 24 . 2)
![그림1](https://github.com/sangin525/finalProject/assets/150643108/9346c2fe-42a1-4e7d-86fe-db2e0aabe2e1)
<br/>
# 🖥️ : 프로젝트 선정 배경
![캡처](https://github.com/sangin525/finalProject/assets/150643108/e6df9b9b-9b53-4ace-a74e-98d58ec932b8)
<br/>
### 점점 늘어나는 1인가구를 위해서 간단한 한끼 요리 레시피 공유,
### 간단한 식자재 상품 구매와 밥 한끼 같이 할 수 있는 동네친구를 만드는 사이트를 만들게 되었습니다.
<br/></br>

# 🧑‍🤝‍🧑 : 멤버구성 및 맡은 역할
![팀원소개](https://github.com/sangin525/finalProject/assets/150643108/e4b6aa3c-24cf-4c40-9770-6bdcc89a98a5)
<br/>

# ⚙️ : ERD CLOUD
![image](https://github.com/sangin525/finalProject/assets/150643108/810c9c7a-f384-4c78-8fe5-1d4d8b0e00f7)
<br/></br>
# 📄 : 유스케이스
![유스케이스](https://github.com/sangin525/finalProject/assets/150643108/9b3d836c-2a0c-441b-926c-831e6c1ba20b)

# 🧰 : 사용한 기술 및 개발환경
![사용언어](https://github.com/sangin525/finalProject/assets/150643108/374ba463-b77b-4fa9-9fdb-29041ef0b262)
<br/>

# ✔️ : 요구 사항
- 😀 **`사용자`**
1. 사용자는 자신의 회원정보를 입력하고 회원가입 합니다.​
2. 로그인 하지않은 사용자는 레시피, 밥친구 게시판에 글을 쓰거나 댓글을 달 수 없습니다.​
3. 로그인 하지않은 사용자는 상품구매 및, 문의를 남길 수 없습니다.
4. 개인정보 수정은 마이페이지에서 소개문구, 프로필 사진, 닉네임만 수정 할 수 있습니다.
5. 상품문의 작성은 로그인이 되어있으면 자유롭게 할 수 있지만 글에 대한 답변은 관리자 계정만 할 수 있습니다.<br/>


- 🤖 **`관리자`**
1. 관리자 계정으로 로그인시 고객문의 답변을 할 수 있습니다.​
2. 관리자 계정으로 로그인시 관리자페이지가 표시됩니다.
3. 관리자 페이지에서 이용자들의 결제내역을 확인 할 수 있습니다.​
4. 관리자 페이지에서 회원들의 정보조회가 가능합니다.
5. 공지사항 및 이벤트 등록은 관리자 계정으로 로그인 했을때만 가능합니다.<br/>


<br/><br/>

# 📌 : 주요 기능

#### `로그인` 
- DB 비밀번호 암호화 저장
- 로그인시 세션에 정보 생성

#### `회원가입`
- 이메일 중복체크
- 닉네임 중복체크
- 카카오 주소 API로 주소 등록

#### `마이페이지`
- 개인정보 수정 및 회원 탈퇴
- 프로필 사진 , 닉네임 수정가능
- 본인 올린 레시피 확인 
- 스크랩한 레시피 확인 
- 본인 레시피 조회수 확인 
- 본인 요리등급 조회 기능
- 본인 장바구니 확인
- 현재 채팅중인 대화방 확인
- 본인 구매한 제품확인

#### `사용 API`
- 카카오톡 결제서비스 API
- 카카오 주소 API
- 네이버 스마트에디터 API

#### `게시판`
- 글작성 수정 삭제기능
- 댓글 기능
- 게시판 페이징 처리

#### `레시피 `
- 레시피 등록 및 삭제기능
- 등록 레시피 조회 댓글 별점평균 기능
- 레시피 랭킹 조회순 / 쉐프 순 / 검색어 순
- 원하는 레시피 검색기능
- 레시피 스크랩 기능
- 로그인한 사용자 최근봤던 레시피 조회기능

#### `상품구매`
- 상품등록 기능
- 상품 조회 및 페이징 처리
- 카카오 API로 결제 시스템 구현
- 카카오 주소 API로 배송지 시스템 구현
- 상품 구매시 문의 기능
- 상품 문의시 비밀글 여부를 설정하여 본인과 관리자만 볼 수있는 기능
- 상품 구매시 리뷰 기능

#### `밥친구`
- 밥친구 게시글 등록 기능
- 밥친구 게시글 댓글 기능
- 밥친구 게시글 조회 및 페이징 처리
- 밥친구 게시글 대화신청 기능
- 밥친구 실시간 채팅 기능

#### `관리자`
- 관리자 계정으로 로그인시 관리자 페이지 접근
- 관리자 페이지에서 가입회원 조회기능
- 공지사항 및 이벤트 등록 및 수정 삭제 기능
- 게시판 관리
- 고객문의 답변 기능
- 주문한 상품 조회 기능

# 🔍 : 프로젝트 시연
#"이건 사진받고 나서"
<br/><br/>

# 🗨️ : 멤버 별 후기
![후기](https://github.com/sangin525/finalProject/assets/150643108/5bf88195-680f-488a-ba29-80b6293d605e)
