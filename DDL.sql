DROP TABLE GAME_INFO;
DROP TABLE TEAM_INFO;
DROP TABLE MEMBER;
DROP TABLE GAME_LOCATION;
DROP TABLE TACTIC;
DROP TABLE GAME_ROUND;
DROP TABLE GAME_RESULT;
DROP TABLE TEAM_PARTICIPATE;
DROP TABLE MANAGER;

---------------
-- GAME_INFO --
---------------

CREATE TABLE GAME_INFO
(
    ID    NUMBER NOT NULL,
    STATUS_CODE    NUMBER(3),
    MAX_PERSON_NUM    NUMBER(3),
    KIND    NUMBER(2),
    GAME_DATE    DATE,
    DURATION    NUMBER(3),
    DESCRIPTION    VARCHAR2(255),
    MAXNUM_TEAM    NUMBER(3)
);

COMMENT ON COLUMN GAME_INFO.ID IS '게임 번호';

COMMENT ON COLUMN GAME_INFO.STATUS_CODE IS '게임 상태 코드';

COMMENT ON COLUMN GAME_INFO.MAX_PERSON_NUM IS '게임 인원 수';

COMMENT ON COLUMN GAME_INFO.KIND IS '게임 종류';

COMMENT ON COLUMN GAME_INFO.DATE IS '게임 날짜';

COMMENT ON COLUMN GAME_INFO.DURATION IS '게임 시간';

COMMENT ON COLUMN GAME_INFO.DESCRIPTION IS '게임 설명';

COMMENT ON COLUMN GAME_INFO.MAXNUM_TEAM IS '참여 팀 수';

COMMENT ON TABLE GAME_INFO IS '게임 정보';

CREATE UNIQUE INDEX GAME_INFO_PK1 ON GAME_INFO
( ID );

ALTER TABLE GAME_INFO
 ADD CONSTRAINT GAME_INFO_PK1 PRIMARY KEY ( ID )
 USING INDEX GAME_INFO_PK1;

SELECT 
    ID,
    STATUS_CODE,
    MAX_PERSON_NUM,
    KIND,
    DATE,
    DURATION,
    DESCRIPTION,
    MAXNUM_TEAM
FROM GAME_INFO;

INSERT INTO GAME_INFO(ID,STATUS_CODE,MAX_PERSON_NUM,KIND,DATE,DURATION,DESCRIPTION,MAXNUM_TEAM)
    VALUES(0,0,0,0,'',0,'',0);
    
---------------
-- TEAM_INFO --
---------------

CREATE TABLE TEAM_INFO
(
    ID    NUMBER NOT NULL,
    NAME    VARCHAR2(15),
    LOGO_PATH    VARCHAR2(255),
    PRESENT_NUM    NUMBER,
    MAX_NUM    NUMBER,
    UNIFORM_COLOR_CODE    NUMBER,
    STRENGTH_CODE    NUMBER,
    LOCATION    VARCHAR2(30),
    FORMATION    VARCHAR2(255)
);

COMMENT ON COLUMN TEAM_INFO.ID IS '팀 번호';

COMMENT ON COLUMN TEAM_INFO.NAME IS '팀 이름';

COMMENT ON COLUMN TEAM_INFO.LOGO_PATH IS '팀 로고 경로';

COMMENT ON COLUMN TEAM_INFO.PRESENT_NUM IS '현원';

COMMENT ON COLUMN TEAM_INFO.MAX_NUM IS '정원';

COMMENT ON COLUMN TEAM_INFO.UNIFORM_COLOR_CODE IS '유니폼 색깔 코드';

COMMENT ON COLUMN TEAM_INFO.STRENGTH_CODE IS '전력 코드';

COMMENT ON COLUMN TEAM_INFO.LOCATION IS '활동 지역';

COMMENT ON COLUMN TEAM_INFO.FORMATION IS '포메이션';

COMMENT ON TABLE TEAM_INFO IS '팀 정보';

CREATE UNIQUE INDEX TEAM_INFO_PK ON TEAM_INFO
( ID );

ALTER TABLE TEAM_INFO
 ADD CONSTRAINT TEAM_INFO_PK PRIMARY KEY ( ID )
 USING INDEX TEAM_INFO_PK;

SELECT 
    ID,
    NAME,
    LOGO_PATH,
    PRESENT_NUM,
    MAX_NUM,
    UNIFORM_COLOR_CODE,
    STRENGTH_CODE,
    LOCATION,
    FORMATION
FROM TEAM_INFO;

INSERT INTO TEAM_INFO(ID,NAME,LOGO_PATH,PRESENT_NUM,MAX_NUM,UNIFORM_COLOR_CODE,STRENGTH_CODE,LOCATION,FORMATION)
    VALUES(0,'','',0,0,0,0,'','');
    
    
-----------------
-- MEMBER_INFO --
-----------------

CREATE TABLE MEMBER
(
    ID    NUMBER(3) NOT NULL,
    TEAM_ID    NUMBER NOT NULL,
    NICK_NAME    VARCHAR2(15) NOT NULL,
    MANNER_SCORE    NUMBER(5),
    PIC_PATH    VARCHAR2(255),
    FOOT_CODE    NUMBER(3),
    NAME    VARCHAR2(15),
    EMAIL    VARCHAR2(50),
    PASSWORD    VARCHAR2(30),
    TEL    NUMBER(13),
    POSITION    VARCHAR2(10),
    BIRTHDAY DATE
);

COMMENT ON COLUMN MEMBER.ID IS '회원 번호';

COMMENT ON COLUMN MEMBER.TEAM_ID IS '팀 번호';

COMMENT ON COLUMN MEMBER.NICK_NAME IS '닉네임';

COMMENT ON COLUMN MEMBER.MANNER_SCORE IS '매너점수';

COMMENT ON COLUMN MEMBER.PIC_PATH IS '사진경로';

COMMENT ON COLUMN MEMBER.FOOT_CODE IS '주발 코드';

COMMENT ON COLUMN MEMBER.NAME IS '이름';

COMMENT ON COLUMN MEMBER.EMAIL IS '이메일';

COMMENT ON COLUMN MEMBER.PASSWORD IS '비밀번호';

COMMENT ON COLUMN MEMBER.TEL IS '휴대폰번호';

COMMENT ON COLUMN MEMBER.POSITION IS '선호 포지션';

COMMENT ON COLUMN MEMBER.BIRTHDAY IS '생년월일';

COMMENT ON TABLE MEMBER IS '회원 정보';

CREATE UNIQUE INDEX MEMBER_PK5 ON MEMBER
( ID );

ALTER TABLE MEMBER
 ADD CONSTRAINT MEMBER_PK5 PRIMARY KEY ( ID )
 USING INDEX MEMBER_PK5;

SELECT 
    ID,
    TEAM_ID,
    NICK_NAME,
    MANNER_SCORE,
    PIC_PATH,
    FOOT_CODE,
    NAME,
    EMAIL,
    PASSWORD,
    TEL,
    POSITION,
    BIRTHDAY
FROM MEMBER;

INSERT INTO MEMBER(ID,TEAM_ID,NICK_NAME,MANNER_SCORE,PIC_PATH,FOOT_CODE,NAME,EMAIL,PASSWORD,TEL,POSITION,BIRTHDAY)
    VALUES(0,0,'',0,'',0,'','','',0,'','');

-------------------
-- GAME_LOCATION --
-------------------

CREATE TABLE GAME_LOCATION
(
    ID    NUMBER NOT NULL,
    NAME    VARCHAR2(15),
    LOCATION    VARCHAR2(30)
);

COMMENT ON COLUMN GAME_LOCATION.ID IS '게임 번호';

COMMENT ON COLUMN GAME_LOCATION.NAME IS '구장 이름';

COMMENT ON COLUMN GAME_LOCATION.LOCATION IS '구장 위치';

COMMENT ON TABLE GAME_LOCATION IS '게임장소';

CREATE UNIQUE INDEX 엔터티2_PK2 ON GAME_LOCATION
( ID );

ALTER TABLE GAME_LOCATION
 ADD CONSTRAINT GAME_LOCATION_PK2 PRIMARY KEY ( ID )
 USING INDEX GAME_LOCATION_PK2;

SELECT 
    ID,
    NAME,
    LOCATION
FROM GAME_LOCATION;

INSERT INTO GAME_LOCATION(ID,NAME,LOCATION)
    VALUES(0,'','');
    
------------
-- TACTIC --
------------

CREATE TABLE TACTIC
(
    TEAM_ID    NUMBER NOT NULL,
    ATTACK_DESCRIPTION    VARCHAR2(255),
    DEFENCE_DESCRIPTION    VARCHAR2(255),
    ETC_DESCRIPTION    VARCHAR2(255),
    ID    NUMBER NOT NULL
);

COMMENT ON COLUMN TACTIC.TEAM_ID IS '팀 번호';

COMMENT ON COLUMN TACTIC.ATTACK_DESCRIPTION IS '공격전술 설명';

COMMENT ON COLUMN TACTIC.DEFENCE_DESCRIPTION IS '수비전술 설명';

COMMENT ON COLUMN TACTIC.ETC_DESCRIPTION IS '특이사항';

COMMENT ON COLUMN TACTIC.ID IS '게임 번호';

COMMENT ON TABLE TACTIC IS '전술 전략';

CREATE UNIQUE INDEX TACTIC_PK ON TACTIC
( TEAM_ID,ID );

ALTER TABLE TACTIC
 ADD CONSTRAINT TACTIC_PK PRIMARY KEY ( TEAM_ID,ID )
 USING INDEX TACTIC_PK;

SELECT 
    TEAM_ID,
    ATTACK_DESCRIPTION,
    DEFENCE_DESCRIPTION,
    ETC_DESCRIPTION,
    ID
FROM TACTIC;

INSERT INTO TACTIC(TEAM_ID,ATTACK_DESCRIPTION,DEFENCE_DESCRIPTION,ETC_DESCRIPTION,ID)
    VALUES(0,'','','',0);

-----------------
-- GAME_ROUND --
-----------------

CREATE TABLE GAME_ROUND
(
    GAME_ID    NUMBER NOT NULL,
    ID NOT NULL,
    SCORE    NUMBER(5),
    TEAM_ID    NUMBER NOT NULL
);

COMMENT ON COLUMN GAME_ROUND.GAME_ID IS '게임 번호';

COMMENT ON COLUMN GAME_ROUND.ID IS '라운드 번호';

COMMENT ON COLUMN GAME_ROUND.SCORE IS '점수';

COMMENT ON COLUMN GAME_ROUND.TEAM_ID IS '팀 번호';

COMMENT ON TABLE GAME_ROUND IS '라운드';

CREATE UNIQUE INDEX GAME_ROUND_PK4 ON GAME_ROUND
( ID,GAME_ID,TEAM_ID );

ALTER TABLE GAME_ROUND
 ADD CONSTRAINT GAME_ROUND_PK4 PRIMARY KEY ( ID,GAME_ID,TEAM_ID )
 USING INDEX GAME_ROUND_PK4;

SELECT 
    GAME_ID,
    ID,
    SCORE,
    TEAM_ID
FROM GAME_ROUND;

INSERT INTO GAME_ROUND(GAME_ID,ID,SCORE,TEAM_ID)
    VALUES(0,'',0,0);


-----------------
-- GAME_RESULT --
-----------------

CREATE TABLE GAME_RESULT
(
    TEAM_ID    NUMBER NOT NULL,
    GAME_ID    NUMBER NOT NULL,
    WINNER_NAME    VARCHAR2(15),
    MVP_NAME    VARCHAR2(15)
);

COMMENT ON COLUMN GAME_RESULT.TEAM_ID IS '팀 번호';

COMMENT ON COLUMN GAME_RESULT.GAME_ID IS '게임 번호';

COMMENT ON COLUMN GAME_RESULT.WINNER_NAME IS '승리 팀';

COMMENT ON COLUMN GAME_RESULT.MVP_NAME IS 'MVP';

COMMENT ON TABLE GAME_RESULT IS '게임 결과';

CREATE UNIQUE INDEX GAME_RESULT_PK7 ON GAME_RESULT
( TEAM_ID,GAME_ID );

ALTER TABLE GAME_RESULT
 ADD CONSTRAINT GAME_RESULT_PK7 PRIMARY KEY ( TEAM_ID,GAME_ID )
 USING INDEX GAME_RESULT_PK7;

SELECT 
    TEAM_ID,
    GAME_ID,
    WINNER_NAME,
    MVP_NAME
FROM GAME_RESULT;

INSERT INTO GAME_RESULT(TEAM_ID,GAME_ID,WINNER_NAME,MVP_NAME)
    VALUES(0,0,'','');


----------------------
-- TEAM_PARTICIPATE --
----------------------

CREATE TABLE TEAM_PARTICIPATE
(
    ID    NUMBER NOT NULL,
    팀 번호    NUMBER NOT NULL
);

COMMENT ON COLUMN TEAM_PARTICIPATE.ID IS '게임 번호';

COMMENT ON COLUMN TEAM_PARTICIPATE.팀 번호 IS '팀 번호';

COMMENT ON TABLE TEAM_PARTICIPATE IS '참가팀';

CREATE UNIQUE INDEX 엔터티2_PK8 ON TEAM_PARTICIPATE
( ID,팀 번호 );

ALTER TABLE TEAM_PARTICIPATE
 ADD CONSTRAINT TEAM_PARTICIPATE_PK8 PRIMARY KEY ( ID,팀 번호 )
 USING INDEX TEAM_PARTICIPATE_PK8;

SELECT 
    ID,
    팀 번호
FROM TEAM_PARTICIPATE;

INSERT INTO TEAM_PARTICIPATE(ID,팀 번호)
    VALUES(0,0);

-------------
-- MANAGER --
-------------

CREATE TABLE MANAGER
(
    MANAGER_CODE    NUMBER(3) NOT NULL,
    TEAM_ID    NUMBER NOT NULL,
    MEMBER_ID    NUMBER(3) NOT NULL
);

COMMENT ON COLUMN MANAGER.MANAGER_CODE IS '직급코드';

COMMENT ON COLUMN MANAGER.TEAM_ID IS '팀 번호';

COMMENT ON COLUMN MANAGER.MEMBER_ID IS '회원 번호';

COMMENT ON TABLE MANAGER IS '팀 매니저';

CREATE UNIQUE INDEX MANAGER_PK6 ON MANAGER
( TEAM_ID,MEMBER_ID );

ALTER TABLE MANAGER
 ADD CONSTRAINT MANAGER_PK6 PRIMARY KEY ( TEAM_ID,MEMBER_ID )
 USING INDEX MANAGER_PK6;

SELECT 
    MANAGER_CODE,
    TEAM_ID,
    MEMBER_ID
FROM MANAGER;

INSERT INTO MANAGER(MANAGER_CODE,TEAM_ID,MEMBER_ID)
    VALUES(0,0,0);

