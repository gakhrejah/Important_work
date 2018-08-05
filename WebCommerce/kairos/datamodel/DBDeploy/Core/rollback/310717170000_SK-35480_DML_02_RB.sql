/***
*** Requester Name:   Priyanshi Pandey
*** Purpose : SQL to delete (i)workflow entry for update user (a)with roles,(b)with rights (ii)update user activity (a)websso, (b)atg, (c)oud
*** Schema  : Core/Staging
*** Date of Request : 31/07/2017
***/

Delete from SK_ACTIVITY where WORKFLOW_ID='6';

Delete from SK_WORKFLOW where ID='6';


Delete from SK_ACTIVITY where WORKFLOW_ID='7';

Delete from SK_WORKFLOW where ID='7';

commit;