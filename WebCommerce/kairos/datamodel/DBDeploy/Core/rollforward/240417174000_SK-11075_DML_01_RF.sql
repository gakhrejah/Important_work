/*
Requester Name:Balmukand
Purpose : for SK-11075 
Schema  : Core
Date of Request : 24-April-2017
*/

update SK_CAN set region='de' where region is NULL;

commit;
