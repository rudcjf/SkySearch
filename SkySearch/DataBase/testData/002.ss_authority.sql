DELETE FROM SS_AUT_MEM_REL;
DELETE FROM SS_AUTHORITY;

insert into SS_AUTHORITY 
(AUTHORITY_NAME,NAME) 
VALUES('ROLE_SYSTEM','AUTHO00001'),
	  ('ROLE_ADMIN','AUTHO00002'),
	  ('ROLE_USER','AUTHO00003');

