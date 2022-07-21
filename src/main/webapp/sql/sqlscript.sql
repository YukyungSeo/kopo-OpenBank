-- 내 계좌 전체 선택
select account_no as accountNo, 2 as bankcode
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
and a.member_id = '2340529477';

-- BOARD 가져오기
DECLARE
    CURSOR CUR_HEAD_BOARD IS
        SELECT * FROM BOARD WHERE SUPER_BOARD_SEQ = NULL;    
    V_BOARD         BOARD%ROWTYPE;
    V_BOARD_LIST    BOARD%ROWRYPE;
BEGIN
    
    OPEN CUR_HEAD_BOARD;
    LOOP
        FETCH CUR_HEAD_BOARD INTO V_BOARD;
        EXIT WHEN CUR_HEAD_BOARD%NOTFOUND;
        
            SELECT B.BOARD_SEQ
                , B.BOARD_TYPE
                , C.NAME AS BOARD_TYPE_NAME
                , B.SUPER_BOARD_SEQ
                , B.WRITER
                , B.TITLE
                , B.CONTENT
                , B.VIEW_CNT
                , B.REG_DATE
            FROM BOARD B, COMM_CODE C
            WHERE B.BOARD_TYPE = C.CODE
            AND C.CODE_ID = 200
            ORDER BY SUPER_BOARD_SEQ DESC, REG_DATE DESC;
            --OFFSET ((1 - 1) * 10) ROWS
            --FETCH NEXT 10 ROWS ONLY;
        END LOOP;
        CLOSE CUR_HEAD_BOARD;
        
END;
/


            SELECT B.BOARD_SEQ
                , B.BOARD_TYPE
                , C.NAME AS BOARD_TYPE_NAME
                , B.SUPER_BOARD_SEQ
                , B.WRITER
                , B.TITLE
                , B.CONTENT
                , B.VIEW_CNT
                , B.REG_DATE
            FROM BOARD B, COMM_CODE C
            WHERE B.BOARD_TYPE = C.CODE
            AND C.CODE_ID = 200
            ORDER BY REG_DATE DESC;
            
            
-- 최상위 댓글 가져오기   
SELECT B.BOARD_SEQ
    , B.BOARD_TYPE
    , C.NAME AS BOARD_TYPE_NAME
    , B.SUPER_BOARD_SEQ
    , B.TAB_CNT
    , B.WRITER
    , M.NAME  AS WRITER_NAME
    , B.TITLE
    , B.CONTENT
    , B.VIEW_CNT
    , TO_CHAR(B.REG_DATE, 'YYYY-MM-DD') AS REG_DATE
FROM BOARD B, COMM_CODE C, MEMBER M
WHERE M.ID = B.WRITER
AND B.BOARD_TYPE = C.CODE
AND C.CODE = 2 AND C.CODE_ID = 200
AND B.SUPER_BOARD_SEQ IS NULL
ORDER BY B.REG_DATE DESC;

-- 답글 가져오기             
SELECT B.BOARD_SEQ
    , B.BOARD_TYPE
    , C.NAME AS BOARD_TYPE_NAME
    , B.SUPER_BOARD_SEQ
    , S.TITLE AS SUPER_BOARD_TITLE
    , B.TAB_CNT
    , B.WRITER
    , M.NAME  AS WRITER_NAME
    , B.TITLE
    , B.CONTENT
    , B.VIEW_CNT
    , TO_CHAR(B.REG_DATE, 'YYYY-MM-DD') AS REG_DATE
FROM BOARD B, BOARD S, COMM_CODE C, MEMBER M
WHERE M.ID = B.WRITER
AND B.BOARD_TYPE = C.CODE
AND C.CODE = 2 AND C.CODE_ID = 200
AND B.SUPER_BOARD_SEQ = S.BOARD_SEQ
AND B.BOARD_SEQ = 5;
            




-- 게시글 업로드
DECLARE
    V_SUPER_BOARD_SEQ	BOARD.SUPER_BOARD_SEQ%TYPE;
    V_TAB_CNT	BOARD.TAB_CNT%TYPE;
BEGIN
    V_SUPER_BOARD_SEQ := NULL;
    
    IF V_SUPER_BOARD_SEQ IS NOT NULL THEN
        SELECT TAB_CNT INTO V_TAB_CNT FROM BOARD WHERE BOARD_SEQ = 1;
        INSERT INTO BOARD(BOARD_SEQ, BOARD_TYPE, SUPER_BOARD_SEQ, TAB_CNT, WRITER, TITLE, CONTENT)
        VALUES(SEQ_BOARD.NEXTVAL, 2, NULL, V_TAB_CNT + 1, 1, 'TEST', 'TEST');
    ELSE
        V_TAB_CNT := 0;
        INSERT INTO BOARD(BOARD_SEQ, BOARD_TYPE, SUPER_BOARD_SEQ, WRITER, TITLE, CONTENT)
        VALUES(SEQ_BOARD.NEXTVAL, 2, NULL, 1, 'TEST', 'TEST');
    END IF;
    
    
    COMMIT;
END;
/


-- transaction 가져오기
SELECT TRANSACTION_SEQ
    , ACTIVE_ACCT_NO
    , TYPE
    , NAME
    , DEAL_NAME
    , AMOUNT
    , BALANCE
    , DEAL_BANKCODE
    , DEAL_ACCT_NO
	, TO_CHAR(REG_DATE, 'YYYY-MM-DD') AS REG_DATE
FROM TRANSACTION_DETAIL
WHERE ACTIVE_ACCT_NO = '13900000000001'
ORDER BY REG_DATE DESC;


