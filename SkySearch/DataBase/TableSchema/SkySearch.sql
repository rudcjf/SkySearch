SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS SS_ATTACHFILE;
DROP TABLE IF EXISTS SS_AUT_MEM_REL;
DROP TABLE IF EXISTS SS_AUTHORITY;
DROP TABLE IF EXISTS SS_COMMENT;
DROP TABLE IF EXISTS SS_SALE_INFO;
DROP TABLE IF EXISTS SS_TRAVEL_INFO;
DROP TABLE IF EXISTS SS_CITY;
DROP TABLE IF EXISTS SS_COUNTRY;
DROP TABLE IF EXISTS SS_INT_LOCAL;
DROP TABLE IF EXISTS SS_LOCAL;
DROP TABLE IF EXISTS SS_MEMBER;




/* Create Tables */

-- 파일 정보
CREATE TABLE SS_ATTACHFILE
(
	-- 파일을 N:N 관계로 연계 위해 추가
	ATTACHFILE_SEQ varchar(40) NOT NULL,
	-- 원본레코드 UNIQUE SEQ, 상담일지는 member_seq
	SOURCE_UNIQUE_SEQ varchar(40) NOT NULL,
	-- 첨부파일 유형
	ATTACHFILE_TYPE varchar(40),
	-- 원본파일_명
	ORGINALFILE_NAME varchar(200) NOT NULL,
	-- 첨부 파일명
	PHYSICALFILE_NAME varchar(200) NOT NULL,
	-- 썸네일 첨부파일명
	THUMBNAIL_NAME varchar(500),
	-- 첨부파일 저장경로
	ATTACHFILE_PATH varchar(500),
	-- 첨부파일 크기
	ATTACHFILE_SIZE decimal,
	ATTACHFILE_HEIGHT decimal,
	ATTACHFILE_WIDTH decimal,
	-- 등록자SEQ
	REGISTER_SEQ varchar(50) NOT NULL,
	-- 등록일자
	REGISTRY_DATE varchar(20) NOT NULL,
	MODIFIER_SEQ varchar(40) NOT NULL,
	-- 수정일자
	MODIFY_DATE varchar(20) NOT NULL,
	PRIMARY KEY (ATTACHFILE_SEQ)
);


-- 권한
CREATE TABLE SS_AUTHORITY
(
	-- 권한이름
	AUTHORITY_NAME varchar(20) NOT NULL,
	-- 
	-- 
	NAME varchar(60) NOT NULL,
	PRIMARY KEY (AUTHORITY_NAME)
);


-- 권한_회원_관계
CREATE TABLE SS_AUT_MEM_REL
(
	-- 회원시퀀스
	MEMBER_SEQ varchar(80) NOT NULL,
	-- 등록자SEQ
	REGISTER_SEQ varchar(50) NOT NULL,
	-- 등록일자
	REGISTRY_DATE varchar(20) NOT NULL,
	MODIFIER_SEQ varchar(40) NOT NULL,
	-- 수정일자
	MODIFY_DATE varchar(20) NOT NULL,
	-- 권한이름
	AUTHORITY_NAME varchar(20) NOT NULL
);


-- 도시
CREATE TABLE SS_CITY
(
	-- 도시시퀀스
	CITY_SEQ varchar(80) NOT NULL,
	-- 국가시퀀스
	COUNTRY_SEQ varchar(80) NOT NULL,
	-- 도시명
	CITY_NAME varchar(60),
	-- 도시주소
	CITY_ADD varchar(60),
	-- 위도 
	CITY_LATITUDE varchar(1000),
	-- 경도
	CITY_LONGITUDE varchar(1000),
	PRIMARY KEY (CITY_SEQ)
);


-- 댓글
CREATE TABLE SS_COMMENT
(
	-- 댓글시퀀스
	COMMENT_SEQ varchar(80) NOT NULL,
	-- 회원시퀀스
	MEMBER_SEQ varchar(80) NOT NULL,
	-- 댓글내용
	COMMENT_CON varchar(1000),
	-- 사용여부
	ENABLE varchar(10),
	SS_STAR varchar(20),
	-- 등록자SEQ
	REGISTER_SEQ varchar(50) NOT NULL,
	-- 등록일자
	REGISTRY_DATE varchar(20) NOT NULL,
	MODIFIER_SEQ varchar(40) NOT NULL,
	-- 수정일자
	MODIFY_DATE varchar(20) NOT NULL,
	-- 도시시퀀스
	CITY_SEQ varchar(80) NOT NULL,
	PRIMARY KEY (COMMENT_SEQ)
);


-- 국가
CREATE TABLE SS_COUNTRY
(
	-- 국가시퀀스
	COUNTRY_SEQ varchar(80) NOT NULL,
	-- 지역시퀀스
	-- 
	LOCAL_SEQ varchar(80) NOT NULL,
	-- 국가명
	COUNTRY_NAME varchar(40),
	PRIMARY KEY (COUNTRY_SEQ)
);


-- 관심지역
CREATE TABLE SS_INT_LOCAL
(
	-- 지역시퀀스
	-- 
	LOCAL_SEQ varchar(80) NOT NULL,
	-- 회원시퀀스
	MEMBER_SEQ varchar(80) NOT NULL
);


-- 지역
CREATE TABLE SS_LOCAL
(
	-- 지역시퀀스
	-- 
	LOCAL_SEQ varchar(80) NOT NULL,
	-- 지역이름
	-- 
	LOCAL_NAEM varchar(30),
	PRIMARY KEY (LOCAL_SEQ)
);


-- 회원
CREATE TABLE SS_MEMBER
(
	-- 회원시퀀스
	MEMBER_SEQ varchar(80) NOT NULL,
	-- 이메일
	EMAIL varchar(50),
	-- 패스워드
	PASSWORD varchar(30),
	-- 이름
	NAME varchar(20),
	-- 핸드폰
	PHONE varchar(40),
	-- 관심지역
	INT_LOCAL varchar(60),
	-- 사용여부
	ENABLE varchar(10),
	-- 등록자SEQ
	REGISTER_SEQ varchar(50) NOT NULL,
	-- 등록일자
	REGISTRY_DATE varchar(20) NOT NULL,
	MODIFIER_SEQ varchar(40) NOT NULL,
	-- 수정일자
	MODIFY_DATE varchar(20) NOT NULL,
	PRIMARY KEY (MEMBER_SEQ)
);


-- 특가정보
CREATE TABLE SS_SALE_INFO
(
	-- 특가시퀀스
	SALE_SEQ varchar(80) NOT NULL,
	-- 도시시퀀스
	CITY_SEQ varchar(80) NOT NULL,
	-- 항공사
	AIRLINE varchar(30),
	-- 항공사링크
	AIRLINE_LINK varchar(500),
	-- 특가시작일
	START_DATE date,
	-- 특가종료일
	END_DATE date,
	-- 가격
	PRICE varchar(100),
	-- 광고유무
	AD varchar(10),
	-- 등록자SEQ
	REGISTER_SEQ varchar(50) NOT NULL,
	-- 등록일자
	REGISTRY_DATE varchar(20) NOT NULL,
	-- 수정자 SEQ
	MODIFIER_SEQ varchar(40) NOT NULL,
	-- 수정일자
	MODIFY_DATE varchar(20) NOT NULL,
	PRIMARY KEY (SALE_SEQ)
);


-- 여행정보
CREATE TABLE SS_TRAVEL_INFO
(
	-- 여행시퀀스
	TRAVEL_SEQ varchar(80) NOT NULL,
	-- 관광지이름
	LANDMARK_NAME varchar(80),
	-- 관광지설명
	LANDMARK_EXP varchar(1500),
	LANDMARK_ADDR varchar(4000),
	VIEWS int DEFAULT 0,
	-- 등록자SEQ
	REGISTER_SEQ varchar(50) NOT NULL,
	-- 등록일자
	REGISTRY_DATE varchar(20) NOT NULL,
	MODIFIER_SEQ varchar(40) NOT NULL,
	-- 수정일자
	MODIFY_DATE varchar(20) NOT NULL,
	-- 도시시퀀스
	CITY_SEQ varchar(80) NOT NULL,
	PRIMARY KEY (TRAVEL_SEQ)
);



/* Create Foreign Keys */

ALTER TABLE SS_AUT_MEM_REL
	ADD FOREIGN KEY (AUTHORITY_NAME)
	REFERENCES SS_AUTHORITY (AUTHORITY_NAME)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE SS_COMMENT
	ADD FOREIGN KEY (CITY_SEQ)
	REFERENCES SS_CITY (CITY_SEQ)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE SS_SALE_INFO
	ADD FOREIGN KEY (CITY_SEQ)
	REFERENCES SS_CITY (CITY_SEQ)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE SS_TRAVEL_INFO
	ADD FOREIGN KEY (CITY_SEQ)
	REFERENCES SS_CITY (CITY_SEQ)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE SS_CITY
	ADD FOREIGN KEY (COUNTRY_SEQ)
	REFERENCES SS_COUNTRY (COUNTRY_SEQ)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE SS_COUNTRY
	ADD FOREIGN KEY (LOCAL_SEQ)
	REFERENCES SS_LOCAL (LOCAL_SEQ)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE SS_INT_LOCAL
	ADD FOREIGN KEY (LOCAL_SEQ)
	REFERENCES SS_LOCAL (LOCAL_SEQ)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE SS_AUT_MEM_REL
	ADD FOREIGN KEY (MEMBER_SEQ)
	REFERENCES SS_MEMBER (MEMBER_SEQ)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE SS_COMMENT
	ADD FOREIGN KEY (MEMBER_SEQ)
	REFERENCES SS_MEMBER (MEMBER_SEQ)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE SS_INT_LOCAL
	ADD FOREIGN KEY (MEMBER_SEQ)
	REFERENCES SS_MEMBER (MEMBER_SEQ)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



