REM ***********************************************************************************************
REM SCRIPT 용도   : MEMBER(고객) 테이블 생성 및 데이터 삽입
REM 작성자         : 서유경
REM 작성일         : 2022-07-07, Version 1
REM 수정일
REM
REM 주의사항       : 1. DBA 권한을 가진 사용자로 테이블을 생성할 것
REM
REM 수정사항 FORMAT     YYYY-MM-DD  수정자 수정내용
REM 수정사항
REM ***********************************************************************************************

DROP TABLE &1.MEMBER;

CREATE TABLE &1.MEMBER(
    ID              VARCHAR2(20)    CONSTRAINT PK_MEMBER PRIMARY KEY,
    PASSWORD        VARCHAR2(20),
    NAME            VARCHAR2(30)    NOT NULL,
    PHONE           VARCHAR2(11)    CONSTRAINT UK_MEMBER_PHONE UNIQUE,
    EMAIL           VARCHAR2(40),
    BASIC_ADDR      VARCHAR2(100),
    DETAIL_ADDR     VARCHAR2(100),
    POST            VARCHAR2(6),
    TYPE            CHAR(1)         DEFAULT 'U' CONSTRAINT CK_MEMBER_TYPE CHECK (TYPE IN ('S', 'U')), 
    REG_DATE        DATE            DEFAULT SYSDATE
);


INSERT INTO &1.MEMBER(ID, PASSWORD, NAME, EMAIL, PHONE, BASIC_ADDR, DETAIL_ADDR, POST) VALUES('admin', 'admin', '관리자', 'admin@admin.com', '01000000000', null, null, null);
INSERT INTO &1.MEMBER(ID, PASSWORD, NAME, EMAIL, PHONE, BASIC_ADDR, DETAIL_ADDR, POST) VALUES('sk', '0000', '김선영', 'ksy@naver.com', '01086396771', null, null, null);
INSERT INTO &1.MEMBER(ID, PASSWORD, NAME, EMAIL, PHONE, BASIC_ADDR, DETAIL_ADDR, POST) VALUES('2348985393', 2, '전형진', 'jhj@naver.com', '01099791943', null, null, null);
INSERT INTO &1.MEMBER(ID, PASSWORD, NAME, EMAIL, PHONE, BASIC_ADDR, DETAIL_ADDR, POST) VALUES(3, 3, '진수민', 'jsm@naver.com', '01033333333', null, null, null);

INSERT INTO &1.MEMBER(ID, NAME, EMAIL, PHONE) VALUES(2348589747, '서유경', 'syk332@naver.com', '01026093796');
SELECT * FROM MEMBER;
COMMIT;
DELETE FROM MEMBER WHERE ID = '1';