REM ***********************************************************************************************
REM SCRIPT �뵵   : ���¹�ŷ ���� ����Ʈ ��������
REM �ۼ���         : ������
REM �ۼ���         : 2022-07-08, Version 1
REM ������
REM
REM ���ǻ���       : 
REM
REM �������� FORMAT     YYYY-MM-DD  ������ ��������
REM ��������
REM ***********************************************************************************************

DROP PROCEDURE PR_OPENBACK_LIST;
CREATE OR REPLACE PROCEDURE PR_OPENBACK_LIST(
    V_ID                CONNECTED_ACCT.MEMBER_ID%TYPE,
    CUR_ACCOUNT         OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN CUR_ACCOUNT FOR
         SELECT ACCOUNT_NUMBER AS accountNo
            , 3 AS bankcode
            , 'HJ����' AS bankName
            , ID AS memberId
            , BALANCE AS amount
            , '����ݿ���' AS goodsCl
            , ACCOUNT_NAME AS goods
            , 'Y' AS available
            , TO_CHAR(OPEN_DATE, 'yyyy-mm-dd') AS regDate
        FROM O_ACCOUNT@ORCL_TO_HJORCL_LINK
        WHERE ACCOUNT_NUMBER IN (
                SELECT ACCOUNT_NO FROM CONNECTED_ACCT 
                WHERE BANKCODE = 3 AND MEMBER_ID = V_ID)
        UNION
        SELECT ACCOUNT_NO AS accountNo
            , 1 AS bankcode
            , 'SK����' AS bankName
            , ID AS memberId
            , BALANCE AS amount
            , '����ݿ���' AS goodsCl
            , ACCOUNT_NAME AS goods
            , 'Y' AS available
            , NULL AS regDate
        FROM K_ACCOUNT@ORCL_TO_SYORCL_LINK
        WHERE ACCOUNT_NO IN (
                SELECT ACCOUNT_NO FROM CONNECTED_ACCT 
                WHERE BANKCODE = 1 AND MEMBER_ID = V_ID)
        UNION
        SELECT ACCOUNT_NO AS accountNo
            , 4 AS bankcode
            , 'SM����' AS bankName
            , ID AS memberId
            , BALANCE AS amount
            , '����ݿ���' AS goodsCl
            , ACCOUNT_NAME AS goods
            , 'Y' AS available
            , NULL AS regDate
        FROM SM_ACCOUNT@ORCL_TO_SMORCL_LINK
        WHERE ACCOUNT_NO IN (
                SELECT ACCOUNT_NO FROM CONNECTED_ACCT 
                WHERE BANKCODE = 4 AND MEMBER_ID = V_ID);        
    
    EXCEPTION
      WHEN OTHERS THEN
        WRITE_LOG('PR_OPENBACK_LIST', 'Error raised in: '|| $$plsql_unit ||' at line ' || $$plsql_line || ' - '||sqlerrm, 'ID : '||V_ID);
        ROLLBACK;
END;
/

-- ����
VARIABLE CUR_A REFCURSOR;
EXEC PR_OPENBACK_LIST(2340529477, :CUR_A);
PRINT CUR_A;
SELECT * FROM CONNECTED_ACCT;

-- ����ó��
VARIABLE CUR_A REFCURSOR;
EXEC PR_OPENBACK_LIST(2340529477, :CUR_A);
PRINT CUR_A;

commit;

DESC WRITE_LOG;
SELECT * FROM EXCEPTION_LOG;

SELECT * FROM K_MEMBER@ORCL_TO_SYORCL_LINK;