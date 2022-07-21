REM ***********************************************************************************************
REM SCRIPT 용도   : 오픈뱅킹 계좌 리스트 가져오기
REM 작성자         : 서유경
REM 작성일         : 2022-07-08, Version 1
REM 수정일
REM
REM 주의사항       : 
REM
REM 수정사항 FORMAT     YYYY-MM-DD  수정자 수정내용
REM 수정사항
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
            , 'HJ은행' AS bankName
            , ID AS memberId
            , BALANCE AS amount
            , '입출금예금' AS goodsCl
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
            , 'SK은행' AS bankName
            , ID AS memberId
            , BALANCE AS amount
            , '입출금예금' AS goodsCl
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
            , 'SM은행' AS bankName
            , ID AS memberId
            , BALANCE AS amount
            , '입출금예금' AS goodsCl
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

-- 성공
VARIABLE CUR_A REFCURSOR;
EXEC PR_OPENBACK_LIST(2340529477, :CUR_A);
PRINT CUR_A;
SELECT * FROM CONNECTED_ACCT;

-- 예외처리
VARIABLE CUR_A REFCURSOR;
EXEC PR_OPENBACK_LIST(2340529477, :CUR_A);
PRINT CUR_A;

commit;

DESC WRITE_LOG;
SELECT * FROM EXCEPTION_LOG;

SELECT * FROM K_MEMBER@ORCL_TO_SYORCL_LINK;