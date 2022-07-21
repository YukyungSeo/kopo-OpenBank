CREATE OR REPLACE PROCEDURE PR_SELECT_ONE_ACCOUNT (
    V_BANKCODE      TRANSACTION_DETAIL.DEAL_BANKCODE%TYPE,
    V_ACCOUNT_NO    TRANSACTION_DETAIL.ACTIVE_ACCT_NO%TYPE,
    CUR_TRANSACTION OUT SYS_REFCURSOR
)
AS
BEGIN

    IF V_BANKCODE = 2 THEN
        OPEN CUR_TRANSACTION FOR
		select account_no as accountNo
            , 2 as bankcode
		    , 'SEO은행' as bankName
		    , member_id as memberId
		    , password
		    , amount
		    , a.goods_cl as goodsClCode
		    , c.name as goodsCl
		    , a.goods_code as goodsCode
		    , c2.name as goods
		    , a.available, to_char(reg_date, 'yyyy-mm-dd') as regDate
		from account a, COMM_CODE c, comm_code c2
		where (c.code_id = 100 and a.goods_cl = c.code)
		and (c2.code_id = 110 and a.goods_code = c2.code)
        and account_no = V_ACCOUNT_NO; 
        
    ELSIF V_BANKCODE = 1 THEN
        OPEN CUR_TRANSACTION FOR
        SELECT ACCOUNT_NO AS accountNo
            , 1 AS bankcode
            , 'SK은행' AS bankName
            , ID AS memberId
            , ACCOUNT_PASSWORD as password
            , BALANCE AS amount
            , '입출금예금' AS goodsCl
            , ACCOUNT_NAME AS goods
            , 'Y' AS available
            , NULL AS regDate
        FROM K_ACCOUNT@ORCL_TO_SYORCL_LINK
        WHERE ACCOUNT_NO = V_ACCOUNT_NO;
    
    ELSIF V_BANKCODE = 3 THEN
        OPEN CUR_TRANSACTION FOR 
        SELECT ACCOUNT_NUMBER AS accountNo
            , 3 AS bankcode
            , 'HJ은행' AS bankName
            , ID AS memberId
            , ACCOUNT_PASSWORD as password
            , BALANCE AS amount
            , '입출금예금' AS goodsCl
            , ACCOUNT_NAME AS goods
            , 'Y' AS available
            , TO_CHAR(OPEN_DATE, 'yyyy-mm-dd') AS regDate
        FROM O_ACCOUNT@ORCL_TO_HJORCL_LINK
        WHERE ACCOUNT_NUMBER = V_ACCOUNT_NO;
        
    ELSIF V_BANKCODE = 4 THEN
        OPEN CUR_TRANSACTION FOR   
        SELECT ACCOUNT_NO AS accountNo
            , 4 AS bankcode
            , 'SM은행' AS bankName
            , ID AS memberId
            , ACCOUNT_PASSWORD as password
            , BALANCE AS amount
            , '입출금예금' AS goodsCl
            , ACCOUNT_NAME AS goods
            , 'Y' AS available
            , NULL AS regDate
        FROM SM_ACCOUNT@ORCL_TO_SMORCL_LINK
        WHERE ACCOUNT_NO = V_ACCOUNT_NO;
    END IF;
END;
/

VARIABLE CUR_A REFCURSOR
EXEC PR_SELECT_ONE_ACCOUNT('4', '010-2609-3796', :CUR_A);
PRINT :CUR_A;

        SELECT ACCOUNT_NO AS accountNo
            , 4 AS bankcode
            , 'SM은행' AS bankName
            , ID AS memberId
            , ACCOUNT_PASSWORD as password
            , BALANCE AS amount
            , '입출금예금' AS goodsCl
            , ACCOUNT_NAME AS goods
            , 'Y' AS available
            , NULL AS regDate
        FROM SM_ACCOUNT@ORCL_TO_SMORCL_LINK
        WHERE ACCOUNT_NO = '010-2609-3796';
SELECT * FROM EXCEPTION_LOG ORDER BY LOG_DATE;