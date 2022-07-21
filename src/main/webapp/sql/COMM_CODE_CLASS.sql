REM ***********************************************************************************************
REM SCRIPT 용도   : COMM_CODE_CLASS(공통코드유형) 테이블 생성 및 데이터 삽입
REM 작성자         : 서유경
REM 작성일         : 2022-07-12, Version 1
REM 수정일
REM
REM 주의사항       : 1. DBA 권한을 가진 사용자로 테이블을 생성할 것
REM                 2. 1XX 는 금융과 관련된 CODE 유형
REM                 3. 2XX 는 기타 서비스와 관견된 CODE 유형
REM
REM 수정사항 FORMAT     YYYY-MM-DD  수정자 수정내용
REM 수정사항
REM ***********************************************************************************************

DROP TABLE &1.COMM_CODE_CLASS;

CREATE TABLE &1.COMM_CODE_CLASS(
    CODE_ID     NUMBER(3)       CONSTRAINT PK_COMM_CODE_CLASS PRIMARY KEY,
    CODE_NAME   VARCHAR2(50)
);

INSERT INTO &1.COMM_CODE_CLASS VALUES (100, '상품유형');
INSERT INTO &1.COMM_CODE_CLASS VALUES (110, '상품');
INSERT INTO &1.COMM_CODE_CLASS VALUES (120, '은행');
INSERT INTO &1.COMM_CODE_CLASS VALUES (200, '게시글 유형');

