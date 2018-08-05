/***
*** Requester Name:   Priyanshi Pandey
*** Purpose : SQL to delete (i)workflow entry for add user with roles AND (ii)user oud activity
*** Schema  : Core/Staging
*** Date of Request : 26/07/2017
***/

Delete from SK_ACTIVITY where WORKFLOW_ID='5';

Delete from SK_WORKFLOW where ID='5';


commit;