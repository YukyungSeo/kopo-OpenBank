REM ***********************************************************************************************
REM SCRIPT �뵵   : TRANSACTION_DETAIL(�ŷ�����) ���̺� ���� �� ������ ����
REM �ۼ���         : ������
REM �ۼ���         : 2022-07-12, Version 1
REM ������
REM
REM ���ǻ���       : 1. DBA ������ ���� ����ڷ� ���̺��� ������ ��
REM
REM �������� FORMAT     YYYY-MM-DD  ������ ��������
REM ��������
REM ����***********************************************************************************************

DROP TABLE &1.TRANSACTION_DETAIL;
DROP SEQUENCE &1.SEQ_TRANSACTION_DETAIL;

CREATE TABLE &1.TRANSACTION_DETAIL(
    TRANSACTION_SEQ     NUMBER(10)      CONSTRAINT PK_TRANSACTION_DETAIL PRIMARY KEY,
    ACTIVE_ACCT_NO      VARCHAR(20)     NOT NULL,
    TYPE                CHAR(1)         NOT NULL CONSTRAINT CH_TRANSACTION_DETAIL_TYPE CHECK(TYPE IN ('I', 'O')),
    NAME                VARCHAR2(100),
    DEAL_NAME           VARCHAR2(100),
    AMOUNT              NUMBER(15),
    BALANCE             NUMBER(15),
    DEAL_BANKCODE       NUMBER(3),
    DEAL_ACCT_NO        VARCHAR(20),
    REG_DATE            DATE            DEFAULT SYSDATE
);

CREATE SEQUENCE &1.SEQ_TRANSACTION_DETAIL
    INCREMENT BY        1
    START WITH          0
    MAXVALUE            9999999999
    MINVALUE            0
    NOCYCLE
    NOCACHE;
    
--INSERT INTO &1.TRANSACTION_DETAIL VALUES(&1.SEQ_TRANSACTION_DETAIL.NEXTVAL, 13900000000001, 'I', 'ATM', 'ATM', 1000000, 1000000, 123, 123, SYSDATE);