REM ***********************************************************************************************
REM SCRIPT �뵵   : COMM_CODE(�����ڵ�) ���̺� ���� �� ������ ����
REM �ۼ���         : ������
REM �ۼ���         : 2022-07-07, Version 1
REM ������
REM
REM ���ǻ���       : 1. DBA ������ ���� ����ڷ� ���̺��� ������ ��
REM                 2. �����ڵ����� FK�� 1XX �� ���� ���񽺿� ���õ� CODE ����
REM                 3. �����ڵ����� FK�� 2XX �� ������Ʈ ���񽺿� ���ߵ� CODE ����
REM
REM �������� FORMAT     YYYY-MM-DD  ������ ��������
REM ��������
REM ***********************************************************************************************

DROP TABLE &1.COMM_CODE;

CREATE TABLE &1.COMM_CODE(
    CODE_ID     NUMBER(3),
    CODE        NUMBER(2),
    NAME        VARCHAR2(50),
    AVAILABLE   CHAR(1)         DEFAULT 'Y'
        CONSTRAINT CK_COMM_CODE_AVAILABLE CHECK (AVAILABLE IN('Y', 'N')),
    CONSTRAINT PK_COMM_CODE     PRIMARY KEY(CODE_ID, CODE)
);

-- ��ǰ����
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (100, 00, '����ݿ���');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME, AVAILABLE) VALUES (100, 01, '���⿹��', 'N');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME, AVAILABLE) VALUES (100, 02, '��������', 'N');


-- ��ǰ
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 00, 'SEO ����̷� ����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 01, '��SEO�÷��� ����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 02, 'SEO ���ÿ��� ��Ŵ�� ����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 03, '�޿�SEO ����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 04, '����SEO ����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 05, '�ְŷ�SEO ����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 06, 'SEO ���ο��� ����Ƚ� ����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 07, 'SEO �ΰ���ġ�� ������ �����������');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 08, 'SEO �÷��� ����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 09, '����(BIG POT) ����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (110, 10, '�ູ���� ����');


-- ����
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (120, 01, 'SY����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (120, 02, 'SEO����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (120, 03, 'HJ����');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (120, 04, 'SOOMIN����');

-- �ŷ�����
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (130, 000, '��ü�Ա�');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (130, 001, '��ü�۱�');


-- �Խñ� ����
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (200, 00, '��������');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (200, 01, 'FAQ');
INSERT INTO &1.COMM_CODE(CODE_ID, CODE, NAME) VALUES (200, 02, 'QnA');


