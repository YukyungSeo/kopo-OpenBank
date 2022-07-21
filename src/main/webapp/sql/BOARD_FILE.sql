REM ***********************************************************************************************
REM SCRIPT �뵵   : BOARD_FILE(�Խñ�����) ���̺� ���� �� ������ ����
REM �ۼ���         : ������
REM �ۼ���         : 2022-07-12, Version 1
REM ������
REM
REM ���ǻ���       : 1. DBA ������ ���� ����ڷ� ���̺��� ������ ��
REM
REM �������� FORMAT     YYYY-MM-DD  ������ ��������
REM ��������
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