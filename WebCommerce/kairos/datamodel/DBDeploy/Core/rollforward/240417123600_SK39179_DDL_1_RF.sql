---/***
---*** Requester Name:  Rohit Garg
---*** Purpose : Table creation for SK-39179
---*** Schema  : CORE
---*** Date of Request : 24/04/2017
---***/
-----------------------------------CREATE sk_dwn_spc_prd_attr_details------------------------

CREATE TABLE sk_dwn_spc_prd_attr_details (  
prd_attr_id VARCHAR2(225) NOT NULL,  
prd_attr_spectrum_detail_id VARCHAR2 (225) NOT NULL,  
prd_attr_identifier VARCHAR2 (225) NOT NULL,  
prd_priority NUMBER(3) NOT NULL,  
PRIMARY KEY (prd_attr_id)  
); 