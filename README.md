# SpringBoot-JPA 기반 e-learning 사이트 개발 




해당 게시글은 [[Notion]](https://www.notion.so/webdevko/Learning-Machine-4081e3b1b4b747779edb749f7d5ebd53)에 정리된 프로젝트 발표 문서를 간략히 정리한 글입니다.
좀 더 자세한 내용을 보려면 위 링크를 확인해주세요.


   <br/>


## **Introduction**   

### 1)  Problem, Customer segment 
- 오프라인에서 수업을 들을 시간이 부족한 사람들을 위한 사람들을 위한 e-러닝 시스템
    - 웹사이트 강의  
- 자신의 커리어를 찾아가고 준비하는 사람들 하지만 어떤 수업을 들어야하는지 모르는 사람들(웹, 모바일이냐 front냐 back이냐 등등)
    - 무료 샘플강의
- 사용자
    - 동영상 강의를 구매하는 사람
    - 자신이 원하는 수업을 자신이 원하는 시간,공간에서 시청하고자 하는 사람
            : 많은 시간, 비용을 들이지 않고 자신의 학습목적에 맞는 강사를 찾아 수업을 듣고 싶은 사람

  <br/>
### 2) Unique Value Proposition

- 여러 강사들의 강의를  무료체험하여 자기와 맞는 강사를 찾을 수 있다.
- 로드맵으로 자신의 커리어 방향에 맞는 강의들을 단계적으로 듣고 평가할 수 있다.

  <br/>
### 3) Solution

- 수업별 무료강의를 제공함으로써 사용자가 자신에 맞는 강사를 찾도록 도와줌- 1강은 무료제공
- 로드맵으로 패키지 강의를 할인하여 제공해 좀 더 많은 사람들이 학습계획을 쉽게 짤 수 있도록 도와줌
- 강의별 수강평을 찾아보면서 자신과 비슷한 사람들이 어떤 강의를 듣고 어떤 수강평을 남겼는지 확인해 자신의 상황에 맞는 강의를 선택하도록 한다.

  <br/>
### 4) Channels

- 인터넷, 모바일, 1대1채팅(문의)

  <br/>
### 5) Revenue Streams

- 로드맵으로 구현된 패키지강의 구매
- 오프라인 강의 구매

  <br/>
### 6) Cost Structure

- 인건비 절약( 관리자가 동영상 관리)
- 유지, 보수 비용 절약(관리자가 직접 유지, 보수)

  <br/>
### 7) Key Metrics

- A - 회원가입
- A - 무료강의 시청
- R - MD의 추천 등 강의 확인
- R - 회원제 가입 / 동영상 구입 / 패키지 구매
- R - 강의별 수강평 작성

  <br/>
### 8) Unfair Advantage

- 사용자들간의 활발한 커뮤니티
- 최고의 강사와 함께하는 오프라인 강의
- 로드맵 강의의 파격적인 할인

 <br/>

## **Project Schedule**

- 전체 일정
![image](https://user-images.githubusercontent.com/49690751/73121252-a05b6580-3fbb-11ea-97e7-cf25c7b1125c.png)

⦁ 설계 : 2019.12.26. - 2020.12.29

⦁ 개발 : 2019.12.30 - 2020.01.20

⦁ 검증 : 2020.01.20. - 2020.01.21

⦁ 배포 : 2020.01.22

 <br/>

## **Technical Specification**
![image](https://user-images.githubusercontent.com/49690751/73123722-41571a00-3fd6-11ea-99dc-a4225e3a645b.png)

 <br/>

## **Lean Canvas**
![image](https://user-images.githubusercontent.com/49690751/73121244-9afe1b00-3fbb-11ea-9952-b851ca166990.jpg)

 <br/>

## **Usecase Diagram**
### 1) 사용자 측면 유스케이스
![image](https://user-images.githubusercontent.com/49690751/73121254-a5201980-3fbb-11ea-999e-3e35a4a79eee.png)

 <br/>

### 2) 관리자 측면 유스케이스
![image](https://user-images.githubusercontent.com/49690751/73121255-a5b8b000-3fbb-11ea-8754-f8ae69c2bb95.png)

 <br/>

## **Database Modeling** #

> 테이블 설계(ERD) [클릭시 큰 이미지를 확인할 수 있습니다.](https://www.erdcloud.com/d/FhWjnizXNrH6bbjrf)

![image](https://user-images.githubusercontent.com/49690751/73121251-9fc2cf00-3fbb-11ea-857b-ad23bc04f370.png)


  <br/>
 <br/>

## **주요 기능 설명**

  <br/>
 <br/>
 
### ***메인 화면***
![image](https://user-images.githubusercontent.com/49690751/73122086-f46a4800-3fc3-11ea-8e61-f4f9da503983.gif)
> 사이트 메인화면입니다. 뷰는 **Apache tiles**를 이용해 레이아웃을 설정하였습니다. 최근에 등록된 온라인, 오프라인 강의 리스트가 노출됩니다. 상단의 내비게이션바는 스크롤을 내려도 고정되도록 하였습니다.
 

  <br/>
 <br/>

### ***회원 가입***
![image](https://user-images.githubusercontent.com/49690751/73121052-3d68cf00-3fb9-11ea-80b4-4cbf273745b3.gif)
> 모든 페이지에 **Spring Security**를 이용해 접근 권한 처리를 해주었습니다. 아이디 중복 체크와 비밀번호 확인 기능은 Ajax 비동기 통신으로 처리하였습니다.

  <br/>
 <br/>

### ***kakao 소셜 로그인***
![image](https://user-images.githubusercontent.com/49690751/73121053-3e99fc00-3fb9-11ea-8b0b-75be39c6457a.gif)
> **kakao javascript sdk**를 통해 아이디와 비밀번호를 이용해 소셜 로그인을 진행할 수 있도록 하였습니다. 

  <br/>
 <br/>
 
### ***사이트 공지사항***
![image](https://user-images.githubusercontent.com/49690751/73121073-61c4ab80-3fb9-11ea-92c5-53deab98648f.gif)
> 사이트와 관련된 공지사항을 조회할 수 있습니다. **페이징 처리**를 구현하였으며 제목을 클릭시 상세 페이지로 이동합니다.

  <br/>

### ***공지사항 업로드***
![image](https://user-images.githubusercontent.com/49690751/73121753-d7804580-3fc0-11ea-9313-d6bda0a4db5b.PNG)
>공지사항 업로드에는 **summernote html에디터**를 사용하여 작성시 폰트 스타일을 바꾸거나 이미지를 업로드할 수 있도록 하였습니다.

 <br/>

### ***교육원 소개***
![image](https://user-images.githubusercontent.com/49690751/73121077-6b4e1380-3fb9-11ea-9e0b-0093c3933194.gif)
> 교육원에 대한 정보를 조회할 수 있는 페이지입니다. 상세보기 페이지에는 **google 지도 API**를 호출하여 위도와 경도에 맞는 교육원 위치 이미지를 보여주도록 하였습니다.

  <br/>
 <br/>

### ***온라인 강의 조회, 검색 화면***
![image](https://user-images.githubusercontent.com/49690751/73121058-422d8300-3fb9-11ea-910e-3999de41aae0.gif)
> DB에 저장된 온라인 강의에 대한 검색, 조회기능을 구현하였습니다. 카테고리별, 최근 등록된 강의, 강의명 또는 강사명으로 검색할 수 있으며 상세보기를 누르면 해당 강의에 대한 상세 페이지로 이동됩니다.
**JPA PagingAndSortRepository**를 상속받아 페이징 처리 기능을 구현하였습니다.

  <br/>
 <br/>

### ***온라인 강의 구매***
![image](https://user-images.githubusercontent.com/49690751/73121069-5a050700-3fb9-11ea-844d-c489b5be7b34.gif)
> **iamport REST API**를 통해 결제 기능을 구현하였습니다. 프로모션 코드를 입력하여 DB에 입력된 할인율(%)만큼 강의를 할인하여 구매할 수 있습니다. 현재는 등록된 PG사가 없어 카카오페이 이외의 결제 수단을 이용할 수 없게 되어있습니다.


 <br/>
   <br/>

![image](https://user-images.githubusercontent.com/49690751/73121071-5ec9bb00-3fb9-11ea-95cc-ad7bf6e3be21.gif)

 <br/>
   <br/>

### ***구매한 강의 조회***
![image](https://user-images.githubusercontent.com/49690751/73122004-dfd98000-3fc2-11ea-8f0e-4cd1e6322ea6.gif)
> 강의 구매 성공시 구매 내역에 해당 강의가 저장되고, 내 강의실에서 구매한 강의들을 수강할 수 있습니다.

   <br/>



### ***온라인 강의 수강***
![image](https://user-images.githubusercontent.com/49690751/73122342-f84b9980-3fc6-11ea-81df-b552454c7c22.gif)
> 강의 수강 화면입니다. 중앙의 화면에서 동영상을 감상할 수 있으며, 상단의 내비게이션 바를 통해 이전 강의 또는 다음강의로 이동할 수 있습니다.
우측의 버튼을 누르면 오버레이 패널이 슬라이드 되며 전체 세부 강의 리스트가 표시됩니다.


  <br/>
 <br/>

### ***수강중인 강의에 대한 질문 등록***
![image](https://user-images.githubusercontent.com/49690751/73121055-3fcb2900-3fb9-11ea-84c5-fb1508bc5a4e.gif)
> 강의 수강 대시보드 좌측 사이드바에서 강의에 대한 질문을 확인할 수 있습니다. 질문을 등록하면 상단의 묻고 답하기 메뉴에서 확인가능합니다.

 <br/>
   <br/>

### ***관리자 메인화면(미구현)***
![image](https://user-images.githubusercontent.com/49690751/73121074-62f5d880-3fb9-11ea-82f2-69104d19c5b4.gif)
> **jqChart 라이브러리**와 **spring scheduler**를 사용해 월매출액과 사이트 일 방문자수를 표현하려고 했으나 프로젝트 일정상 시간이 부족하여 구현하지 못했습니다.

 <br/>
   <br/>

### ***온라인 강의 설명 & 동영상 등록***
![image](https://user-images.githubusercontent.com/49690751/73121007-b9aee280-3fb8-11ea-8e7c-f4224f61bbf6.gif)
> **Dailymotion DATA API**를 사용하였습니다. **Oauth2 기반**으로 온라인 강의 등록 버튼을 클릭하여 아이디와 비밀번호를 입력해 인증에 성공하면 강의 업로드 http 요청을 보낼수 있는 URL과 인증에 필요한 Access_token을 획득하여 저장합니다.

 <br/>
   <br/>

![image](https://user-images.githubusercontent.com/49690751/73121047-35109400-3fb9-11ea-93a9-ae1fcb09f17e.PNG)
> 업로드 완료시 json 형태로 받은 callback 데이터에서 video id를 얻을 수 있고, 이를 db에 저장하였습니다.
 
  <br/>
    <br/>
 
### ***관리자 서브 메뉴들***
![image](https://user-images.githubusercontent.com/49690751/73121075-64270580-3fb9-11ea-849c-49040cfeb851.gif)
> 온라인 강의, 오프라인 강의, 주문내역 조회, 사용자 관리, QNA 관리등 게시판과 **CRUD(검색, 등록, 수정, 삭제)기능**이 구현되어있습니다.
