DECLARE
    V_SUPER_BOARD_SEQ BOARD.BOARD_SEQ%TYPE;
    CUR_BOARD	SYS_REFCURSOR;
BEGIN
    SELECT SUPER_BOARD_SEQ INTO V_SUPER_BOARD_SEQ FROM BOARD WHERE BOARD_SEQ = ${ boardSeq };
    
    IF V_SUPER_BOARD_SEQ IS NULL
        <include refid="selectHead">
            <property name="boardType" value="${ boardType }"/>
        </include>
        AND B.BOARD_SEQ = ${ boardSeq }
    ELSE
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
        AND C.CODE = #{ boardType } AND C.CODE_ID = 200
        AND B.SUPER_BOARD_SEQ = S.BOARD_SEQ
        AND B.BOARD_SEQ = ${ boardSeq }
    END IF;
END