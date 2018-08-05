/***
*** Requester Name:  Mohit Trivedi
*** Purpose : SQL to add (i)service endpoint url changes to point to SIEM urls
*** Schema  : Core
*** Date of Request : 15/08/2017
***/

update sk_service_props set service_endpoint_name='http://del2lkairos51.sapient.com:7303' where service_name='makeRoleDefault';

commit;