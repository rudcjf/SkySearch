DELETE FROM SS_AUT_MEM_REL;

delete from SS_MEMBER;


insert into skysearch.ss_member 
(MEMBER_SEQ,EMAIL,PASSWORD,NAME,PHONE,INT_LOCAL,ENABLE,REGISTER_SEQ,REGISTRY_DATE,MODIFIER_SEQ,MODIFY_DATE) 
VALUES
('SYSUID-SS001','system@skysearch.com','system123','system','0803691234','world','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS002','admin@skysearch.com','admin123','admin','0803691234','world','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS003','jake0119@skysearch.com','jake123','jake','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS004','jinwoo@skysearch.com','jinwoo123','jinwoo','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS005','inhog1993@skysearch.com','inhog123','inhog','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS006','daeyeon1993@skysearch.com','daeyeon123','haribo','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS007','kkc0121@skysearch.com','kkc0121','kyungchual','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS008','minchae@skysearch.com','minchae0929','minchae','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS009','yoogree@skysearch.com','yoogree0106','taegun','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS010','jinicat@skysearch.com','jini0924','limjinhee','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS011','redhat@skysearch.com','jogyo09','kyungtag','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS012','0knave0@skysearch.com','jhds0609','daseul','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS013','bongohdori@skysearch.com','noanimal','LeeBongHo','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS014','mrclap@skysearch.com','clap1234','ParkSooHyung','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS015','heegeon7958@skysearch.com','heegeon7958','KimHeeGeon','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS016','baaaaro@skysearch.com','baro123','YouByungUk','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS017','ej2677@skysearch.com','ej1234','KimEunJi','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS018','bohyuni@skysearch.com','rkskek123','KimBoHyun','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS019','dodu0119@skysearch.com','dodu123','LeeSeungJu','01026506850','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS020','minjeong@skysearch.com','mj0204','LeeMinJeong','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS021','scott@skysearch.com','tiger','SCOTT','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS022','antman@skysearch.com','giantman123','antman','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS023','ironman@skysearch.com','fhekwn123','RobertDauniJr','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS024','captinameri@skysearch.com','cptn123','Steven','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS025','blackpanther@skysearch.com','godpanther','ChadwickBoseman','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS026','hulk@skysearch.com','hulkbest1','Hulk','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS027','Thorsonofodin@skysearch.com','godofhammer','ChrisHemsworth','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS028','vision@skysearch.com','mindstone123','PaulBettany','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS029','human@skysearch.com','human1234','human','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS030','mc1501@skysearch.com','mc1501','SinSol','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS031','loki@skysearch.com','loki123','TomHedle','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS032','hajin@skysearch.com','hajin123','jake','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS033','hotto@skysearch.com','hotto123','jake','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now());

-- password = "123456" with BCryptPasswordEncoder() 
