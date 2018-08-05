/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		SK-52054
*** Schema  :		atgcore
*** Date of Request : 	June 07, 2017
***/

delete from sk_states where COUNTRY_CODE='US';
delete from sk_states where COUNTRY_CODE='MX';

insert into sk_states values('US',0,'US:AL');
insert into sk_states values('US',1,'US:AK');
insert into sk_states values('US',2,'US:AZ');
insert into sk_states values('US',3,'US:AR');
insert into sk_states values('US',4,'US:CA');
insert into sk_states values('US',5,'US:CO');
insert into sk_states values('US',6,'US:CT');
insert into sk_states values('US',7,'US:DE');
insert into sk_states values('US',8,'US:DC');
insert into sk_states values('US',9,'US:FL');
insert into sk_states values('US',10,'US:GA');
insert into sk_states values('US',11,'US:HI');
insert into sk_states values('US',12,'US:KS');
insert into sk_states values('US',13,'US:KY');
insert into sk_states values('US',15,'US:LA');
insert into sk_states values('US',16,'US:ME');
insert into sk_states values('US',17,'US:MD');
insert into sk_states values('US',18,'US:MA');
insert into sk_states values('US',19,'US:MI');
insert into sk_states values('US',20,'US:MN');
insert into sk_states values('US',21,'US:MS');
insert into sk_states values('US',22,'US:MO');
insert into sk_states values('US',23,'US:MT');
insert into sk_states values('US',24,'US:NE');
insert into sk_states values('US',25,'US:NV');
insert into sk_states values('US',26,'US:NH');
insert into sk_states values('US',27,'US:NJ');
insert into sk_states values('US',28,'US:NM');
insert into sk_states values('US',29,'US:NY');
insert into sk_states values('US',30,'US:NC');
insert into sk_states values('US',31,'US:ND');
insert into sk_states values('US',32,'US:OH');
insert into sk_states values('US',33,'US:OK');
insert into sk_states values('US',34,'US:OR');
insert into sk_states values('US',35,'US:PA');
insert into sk_states values('US',36,'US:RI');
insert into sk_states values('US',37,'US:SC');
insert into sk_states values('US',38,'US:SD');
insert into sk_states values('US',39,'US:TN');
insert into sk_states values('US',40,'US:TX');
insert into sk_states values('US',41,'US:UT');
insert into sk_states values('US',42,'US:VT');
insert into sk_states values('US',43,'US:VA');
insert into sk_states values('US',44,'US:WA');
insert into sk_states values('US',45,'US:WV');
insert into sk_states values('US',46,'US:WI');
insert into sk_states values('US',47,'US:WY');

insert into sk_states values('MX',0,'MX:MX-AGU');
insert into sk_states values('MX',1,'MX:MX-BCN');
insert into sk_states values('MX',2,'MX:MX-BCS');
insert into sk_states values('MX',3,'MX:MX-CAM');
insert into sk_states values('MX',4,'MX:MX-CHP');
insert into sk_states values('MX',5,'MX:MX-CHH');
insert into sk_states values('MX',6,'MX:MX-COA');
insert into sk_states values('MX',7,'MX:MX-COL');
insert into sk_states values('MX',8,'MX:MX-CMX');
insert into sk_states values('MX',9,'MX:MX-DUR');
insert into sk_states values('MX',10,'MX:MX-MEX');
insert into sk_states values('MX',11,'MX:MX-GUA');
insert into sk_states values('MX',12,'MX:MX-GRO');
insert into sk_states values('MX',13,'MX:MX-HID');
insert into sk_states values('MX',15,'MX:MX-JAL');
insert into sk_states values('MX',16,'MX:MX-MIC');
insert into sk_states values('MX',17,'MX:MX-MOR');
insert into sk_states values('MX',18,'MX:MX-NAY');
insert into sk_states values('MX',19,'MX:MX-NLE');
insert into sk_states values('MX',20,'MX:MX-OAX');
insert into sk_states values('MX',21,'MX:MX-PUE');
insert into sk_states values('MX',22,'MX:MX-QUE');
insert into sk_states values('MX',23,'MX:MX-ROO');
insert into sk_states values('MX',24,'MX:MX-SLP');
insert into sk_states values('MX',25,'MX:MX-SIN');
insert into sk_states values('MX',26,'MX:MX-SON');
insert into sk_states values('MX',27,'MX:MX-TAB');
insert into sk_states values('MX',28,'MX:MX-TAM');
insert into sk_states values('MX',29,'MX:MX-TLA');
insert into sk_states values('MX',30,'MX:MX-VER');
insert into sk_states values('MX',31,'MX:MX-YUC');
insert into sk_states values('MX',32,'MX:MX-ZAC');

commit;







