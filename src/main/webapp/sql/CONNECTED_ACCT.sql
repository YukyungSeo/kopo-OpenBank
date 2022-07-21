REM ***********************************************************************************************
REM SCRIPT 용도   : CONNECTED_ACCT(연결된 계좌) 테이블 생성 및 데이터 삽입
REM 작성자         : 서유경
REM 작성일         : 2022-07-12, Version 1
REM 수정일
REM
REM 주의사항       : 1. DBA 권한을 가진 사용자로 테이블을 생성할 것
REM
REM 수정사항 FORMAT     YYYY-MM-DD  수정자 수정내용
REM 수정사항
REM ***********************************************************************************************

DROP TABLE &1.CONNECTED_ACCT;

CREATE TABLE &1.CONNECTED_ACCT(
    BANKCODE            NUMBER(3),      
    ACCOUNT_NO          VARCHAR(20),
    MEMBER_ID           VARCHAR(20)     NOT NULL,
    CONSTRAINT FK_CONNECTED_ACCT_MEMBER_MEMBER_ID FOREIGN KEY (MEMBER_ID)
        REFERENCES &1.MEMBER(ID),
    CONSTRAINT PK_CONNECTED_ACCT     PRIMARY KEY(BANKCODE, ACCOUNT_NO)
);
