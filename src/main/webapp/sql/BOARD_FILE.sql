REM ***********************************************************************************************
REM SCRIPT 용도   : BOARD_FILE(게시글파일) 테이블 생성 및 데이터 삽입
REM 작성자         : 서유경
REM 작성일         : 2022-07-12, Version 1
REM 수정일
REM
REM 주의사항       : 1. DBA 권한을 가진 사용자로 테이블을 생성할 것
REM
REM 수정사항 FORMAT     YYYY-MM-DD  수정자 수정내용
REM 수정사항
REM ***********************************************************************************************

DROP TABLE &1.BOARD_FILE;
DROP SEQUENCE &1.SEQ_BOARD_FILE;

CREATE TABLE &1.BOARD_FILE(
    FILE_SEQ        NUMBER(10)      CONSTRAINT PK_BOARD_FILE PRIMARY KEY,
    BOARD_SEQ       NUMBER(10)      NOT NULL,
    PATH            VARCHAR2(400),
    ORI_NAME        VARCHAR2(100),
    SAVE_NAME       VARCHAR2(100),
    FILE_SIZE       NUMBER(10),
    CONSTRAINT FK_BOARD_FILE_BOARD_BOARD_SEQ FOREIGN KEY(BOARD_SEQ) 
        REFERENCES &1.BOARD(BOARD_SEQ)
);

CREATE SEQUENCE &1.SEQ_BOARD_FILE
    INCREMENT BY    1
    START WITH      0
    MAXVALUE        9999999999
    MINVALUE        0
    NOCYCLE
    NOCACHE;