ALTER TABLE SK_DPS_ROLE ADD (ROLE_LEVEL NUMBER(2,0), IS_INTERNAL_USER NUMBER(1,0) DEFAULT 0);

commit;