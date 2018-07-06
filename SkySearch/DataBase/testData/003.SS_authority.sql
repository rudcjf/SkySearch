DELETE FROM SS_AUT_MEM_REL;
DELETE FROM SS_AUTHORITY;

-- 권한 종류
insert into SS_AUTHORITY 
(AUTHORITY_NUM,AUTHORITY_NAME) 
select 'AUTHO00001','ROLE_SYSTEM' from dual union all
select 'AUTHO00002','ROLE_ADMIN' from dual union all
select 'AUTHO00003','ROLE_USER' from dual ;


