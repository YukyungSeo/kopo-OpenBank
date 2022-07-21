REM ***********************************************************************************************
REM SCRIPT �뵵   : MEMBER(��) ���̺� ���� �� ������ ����
REM �ۼ���         : ������
REM �ۼ���         : 2022-07-07, Version 1
REM ������
REM
REM ���ǻ���       : 1. DBA ������ ���� ����ڷ� ���̺��� ������ ��
REM
REM �������� FORMAT     YYYY-MM-DD  ������ ��������
REM ��������
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


INSERT INTO &1.MEMBER(ID, PASSWORD, NAME, EMAIL, PHONE, BASIC_ADDR, DETAIL_ADDR, POST) VALUES('admin', 'admin', '������', 'admin@admin.com', '01000000000', null, null, null);
INSERT INTO &1.MEMBER(ID, PASSWORD, NAME, EMAIL, PHONE, BASIC_ADDR, DETAIL_ADDR, POST) VALUES('sk', '0000', '�輱��', 'ksy@naver.com', '01086396771', null, null, null);
INSERT INTO &1.MEMBER(ID, PASSWORD, NAME, EMAIL, PHONE, BASIC_ADDR, DETAIL_ADDR, POST) VALUES('2348985393', 2, '������', 'jhj@naver.com', '01099791943', null, null, null);
INSERT INTO &1.MEMBER(ID, PASSWORD, NAME, EMAIL, PHONE, BASIC_ADDR, DETAIL_ADDR, POST) VALUES(3, 3, '������', 'jsm@naver.com', '01033333333', null, null, null);

INSERT INTO &1.MEMBER(ID, NAME, EMAIL, PHONE) VALUES(2348589747, '������', 'syk332@naver.com', '01026093796');
SELECT * FROM MEMBER;
COMMIT;
DELETE FROM MEMBER WHERE ID = '1';