REM ***********************************************************************************************
REM SCRIPT 용도   : 예외처리 기록
REM 작성자         : 서유경
REM 작성일         : 2022-07-12, Version 1
REM 수정일
REM
REM 주의사항
REM
REM 수정사항 FORMAT     YYYY-MM-DD  수정자 수정내용
REM 수정사항
REM ***********************************************************************************************

DROP TABLE &1.EXCEPTION_LOG;

CREATE  TABLE  &1.EXCEPTION_LOG( 
    LOG_DATE        DATE   DEFAULT SYSDATE,      -- 로그 기록 일자 
    PROGRAM_NAME    VARCHAR2(100),               -- EXCEPTION 발생 프로그램
    ERROR_MESSAGE   VARCHAR2(250),               -- EXCEPTION MESSAGE
    DESCRIPTION     VARCHAR2(250)                -- 비고사항
);