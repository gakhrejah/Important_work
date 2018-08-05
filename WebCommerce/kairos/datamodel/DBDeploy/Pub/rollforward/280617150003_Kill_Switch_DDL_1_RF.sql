/***
*** Requester Name:  	Iranna Teggi
*** Purpose :		 	adding a new table for Kill Switches
*** Schema  :		 	PUB
*** Date of Request : 	June 23, 2017
***/

create table sk_kill_switch(
		id 		varchar(80) NOT NULL,
		name 		varchar(80),
		description 		varchar2(256),
		enabled 		number(1)	NOT NULL,
		CHECK (enabled IN (0, 1)),
		work_stream number(4),
		asset_version      INT           NOT NULL,
		workspace_id       VARCHAR(40)   NOT NULL,
		branch_id          VARCHAR(40)   NOT NULL,
		is_head            NUMERIC(1)    NOT NULL,
		version_deleted    NUMERIC(1)    NOT NULL,
		version_editable   NUMERIC(1)    NOT NULL,
		pred_version       INT           NULL,
		checkin_date       TIMESTAMP     NULL,
		constraints sk_kill_switch_pk primary key (id,asset_version));
		
create index sk_kill_switch_workspace_id on sk_kill_switch (workspace_id);
create index sk_kill_switch_checkin_date on sk_kill_switch (checkin_date);
