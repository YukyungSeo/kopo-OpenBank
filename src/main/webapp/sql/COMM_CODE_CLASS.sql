REM ***********************************************************************************************
REM SCRIPT �뵵   : COMM_CODE_CLASS(�����ڵ�����) ���̺� ���� �� ������ ����
REM �ۼ���         : ������
REM �ۼ���         : 2022-07-12, Version 1
REM ������
REM
REM ���ǻ���       : 1. DBA ������ ���� ����ڷ� ���̺��� ������ ��
REM                 2. 1XX �� ������ ���õ� CODE ����
REM                 3. 2XX �� ��Ÿ ���񽺿� ���ߵ� CODE ����
REM
REM �������� FORMAT     YYYY-MM-DD  ������ ��������
REM ��������
REM ***********************************************************************************************

DROP TABLE &1.COMM_CODE_CLASS;

CREATE TABLE &1.COMM_CODE_CLASS(
    CODE_ID     NUMBER(3)       CONSTRAINT PK_COMM_CODE_CLASS PRIMARY KEY,
    CODE_NAME   VARCHAR2(50)
);

INSERT INTO &1.COMM_CODE_CLASS VALUES (100, '��ǰ����');
INSERT INTO &1.COMM_CODE_CLASS VALUES (110, '��ǰ');
INSERT INTO &1.COMM_CODE_CLASS VALUES (120, '����');
INSERT INTO &1.COMM_CODE_CLASS VALUES (200, '�Խñ� ����');

