REM ***********************************************************************************************
REM SCRIPT �뵵   : CONNECTED_ACCT(����� ����) ���̺� ���� �� ������ ����
REM �ۼ���         : ������
REM �ۼ���         : 2022-07-12, Version 1
REM ������
REM
REM ���ǻ���       : 1. DBA ������ ���� ����ڷ� ���̺��� ������ ��
REM
REM �������� FORMAT     YYYY-MM-DD  ������ ��������
REM ��������
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
