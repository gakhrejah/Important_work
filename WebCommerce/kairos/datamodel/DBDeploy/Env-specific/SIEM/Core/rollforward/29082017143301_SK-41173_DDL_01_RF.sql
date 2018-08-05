/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :		 	SK-41173: modying the column definition for login field in order to support different character sets.
*** Schema  :		 	Core/Staging
*** Date of Request : 	August 29, 2017
***/

alter table sk_dps_user modify (login nvarchar2(50));

commit;