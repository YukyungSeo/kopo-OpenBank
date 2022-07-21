REM ***********************************************************************************************
REM SCRIPT �뵵   : ����ó�� ���
REM �ۼ���         : ������
REM �ۼ���         : 2022-07-12, Version 1
REM ������
REM
REM ���ǻ���
REM
REM �������� FORMAT     YYYY-MM-DD  ������ ��������
REM ��������
REM ***********************************************************************************************

DROP TABLE &1.EXCEPTION_LOG;

CREATE  TABLE  &1.EXCEPTION_LOG( 
    LOG_DATE        DATE   DEFAULT SYSDATE,      -- �α� ��� ���� 
    PROGRAM_NAME    VARCHAR2(100),               -- EXCEPTION �߻� ���α׷�
    ERROR_MESSAGE   VARCHAR2(250),               -- EXCEPTION MESSAGE
    DESCRIPTION     VARCHAR2(250)                -- ������
);