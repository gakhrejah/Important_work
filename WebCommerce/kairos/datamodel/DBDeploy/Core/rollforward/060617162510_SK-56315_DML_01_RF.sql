/***
*** Requester Name:  	Alok Bansal
*** Purpose :		 	SK-56315
*** Schema  :		 	atgcore, staging
*** Date of Request : 	June 06, 2017
***/

UPDATE SK_ATTACHMENT SET FILE_PATH = REPLACE(FILE_PATH,'/interface/j_siem/TSIE30C0','/interface/j_siem/TSIE40C0')  WHERE FILE_PATH LIKE '/interface/j_siem/TSIE30C0/attachments%';

COMMIT;