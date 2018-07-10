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
('SYSUID-SS033','hotto@skysearch.com','hotto123','jake','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS034','hobit@skysearch.com','hobit123','hobit','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS035','martin@skysearch.com','martin123','martin','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS036','ianmckellen@skysearch.com','ianmckellen123','ianmckellen','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS037','richard@skysearch.com','richard123','richard','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS038','catevlanchett@skysearch.com','catevlanchett123','catevlanchett','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS039','orlando@skysearch.com','orlando123','orlando','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS040','evanlilly@skysearch.com','lilly121','lilly','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS041','lukeevans@skysearch.com','lukeevans29','lukeevans','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS042','aidanturner@skysearch.com','aidanturner06','aidanturner','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS043','leepace@skysearch.com','leepace924','leepace','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS044','johnnydepp@skysearch.com','johnnydepp01','johnnydepp','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS045','javierbar0@skysearch.com','javierbardem609','javierbardem','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS046','brenton14@skysearch.com','brenton14','brenton','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS047','geoffrey17@skysearch.com','geoffrey234','geoffrey','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS048','kayada@skysearch.com','kayada58','kaya','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS049','wenhamaro@skysearch.com','davidam','davidwenham','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS050','keiraknight@skysearch.com','keira87','keiraknightly','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS051','elijahhoho@skysearch.com','elijahobit','elijahwood','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS052','seanastin@skysearch.com','seanastin321','seanastin','01026506850','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS053','andyserkisis@skysearch.com','andyserkis04','andyserkis','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS054','livlove@skysearch.com','livliv','livtyler','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS055','aragonviggo@skysearch.com','viggo123','viggo','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS056','dominicmon@skysearch.com','dominicmon123','dominic','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS057','vernardbernard@skysearch.com','bernard23','bernardhill','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS058','mirandada@skysearch.com','miranda968','mirandaotto','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS059','hugoweav@skysearch.com','hugobest1','hugoweaving','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS060','harrypotter@skysearch.com','bloombloom','harrypotter','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS061','emmawat@skysearch.com','emma123','emmawatson','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS062','rupertronron@skysearch.com','ronron4','rupertgrint','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS063','geniewizz@skysearch.com','geniewizz501','bonniewright','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS064','iamvold@skysearch.com','ralph123','ralphfiennes','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS065','tomfelton@skysearch.com','tomtom123','tomfelton','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now()),
('SYSUID-SS066','helenacarter@skysearch.com','helena123','helenacarter','0803691234','01','Y','UUID-1111-1111111',now(),'UUID-1111-1111111',now());

-- password = "123456" with BCryptPasswordEncoder() 

