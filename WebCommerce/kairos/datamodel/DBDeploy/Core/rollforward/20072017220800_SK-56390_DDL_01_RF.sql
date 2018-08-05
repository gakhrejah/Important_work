/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-56390
*** Schema  :		atgcore
*** Date of Request : 	JUL 20, 2017
***/

alter table SK_ORG_PROPERTY add (ALLOW_MODIFY_AT_REGION1 NUMBER(1,0) default 0);

update SK_ORG_PROPERTY set ALLOW_MODIFY_AT_REGION1=ALLOW_MODIFY_AT_REGION;

alter table SK_ORG_PROPERTY set unused column ALLOW_MODIFY_AT_REGION;

alter table SK_ORG_PROPERTY rename column ALLOW_MODIFY_AT_REGION1 to ALLOW_MODIFY_AT_REGION;

alter table SK_ORG_PROPERTY drop unused columns;

alter table SK_ORG_PROPERTY add (USE_SYS_SETTG1 NUMBER(1,0) default 0);

update SK_ORG_PROPERTY set USE_SYS_SETTG1=USE_SYS_SETTG;

alter table SK_ORG_PROPERTY set unused column USE_SYS_SETTG;

alter table SK_ORG_PROPERTY rename column USE_SYS_SETTG1 to USE_SYS_SETTG;

alter table SK_ORG_PROPERTY drop unused columns;

commit;