CREATE TABLE O_MEMBER(
    ID             VARCHAR2(20) PRIMARY KEY,
    NAME          VARCHAR2(20) NOT NULL,
    PASSWORD       VARCHAR2(20) NOT NULL,
    EMAIL_ID       VARCHAR2(30),
    EMAIL_DOMAIN    VARCHAR2(20),
    tel           char(11) not null UNIQUE,
    POST          CHAR(6),
    BASIC_ADDR       VARCHAR2(200),
    DETAIL_ADDR    VARCHAR2(200),
    TYPE            CHAR(1) default 'U',
    REG_DATE       DATE default sysdate,
    open_banking_state char(1) default 'F', 
    constraint open_banking_state_check CHECK(open_banking_state in('T','F'))
);

insert into o_member(id,name,password,email_id,email_domain,tel,post,basic_addr,detail_addr) 
values('aaa','서유경','aaa','kopo123','kopo.ac.kr','01026093796','2222','신동아아파트','X동 XXX호');
insert into o_member(id,name,password,email_id,email_domain,tel,post,basic_addr,detail_addr) 
values('bbb','전형진','bbb','bbb123','kopo.ac.kr','01012345678','33333','하이텍아파트','X동 XXX호');

CREATE TABLE O_ACCOUNT(
    ACCOUNT_NUMBER      varchar2(100) PRIMARY KEY, -- 계좌번호 기본키 설정
    bank_code char(4) default '03',
    ID         VARCHAR2(15) NOT NULL, -- 고객 아이디
    ACCOUNT_NAME        VARCHAR2(100) NOT NULL, -- 계좌명
    ACCOUNT_PASSWORD    NUMBER(4) NOT NULL, -- 계좌 비밀번호
    BALANCE             NUMBER(38) default 0,
    open_date  date default sysdate,
    CONSTRAINT ACCOUNT_member_member_ID_FK FOREIGN KEY(ID) REFERENCES O_member(ID)
);


insert into o_account(account_number,bank_code,id,account_name,account_password,balance) 
values('03900000000002','03','aaa','생활비통장','1234',30000000);

SELECT * FROM O_ACCOUNT;

DROP TABLE O_transaction_history;
create table O_transaction_history(
    history_no number(10) primary key,
    id varchar2(20) not null,
    account_number VARCHAR2(100) not null,
    transaction_type varchar2(20) not null,
    transaction_amount number(38) not null,
    blance number(38) not null,
    trader varchar2(20) not null,
    transaction_date date default sysdate
--    , constraint transaction_history_id_fk foreign key(id) references o_member(id)
--    , constraint transaction_history_account_number_fk foreign key(account_number) references o_account(account_number)
    
);

CREATE SEQUENCE SEQ_O_TRANSACTION_HISTORY_NO
    INCREMENT BY        1
    START WITH          0
    MAXVALUE            9999999999
    MINVALUE            0
    NOCYCLE
    NOCACHE;
    
SELECT * FROM     o_account;
COMMIT;

select * from O_transaction_history;