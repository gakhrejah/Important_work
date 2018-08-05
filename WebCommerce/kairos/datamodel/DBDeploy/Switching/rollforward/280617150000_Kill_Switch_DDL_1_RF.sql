/***
*** Requester Name:  	Iranna Teggi
*** Purpose :		 	adding a new table for Kill Switches
*** Schema  :		 	SWITCH_A,SWITCH_B,SWITCH_STAGE_A,SWITCH_STAGE_B
*** Date of Request : 	June 23, 2017
***/

create table sk_kill_switch(
		id 		varchar(80) NOT NULL,
		name 		varchar(80),
		description 		varchar2(256),
		enabled 		number(1)	NOT NULL,
		CHECK (enabled IN (0, 1)),
		work_stream number(4),
		constraints sk_kill_switch_pk primary key (id));
