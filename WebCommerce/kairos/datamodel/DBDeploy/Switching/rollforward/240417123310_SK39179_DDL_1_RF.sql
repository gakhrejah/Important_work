---/***
---*** Requester Name:  Rohit Garg
---*** Purpose : Table modification for new implementation of product Spectrum
---*** Schema  : CATA and CATB
---*** Date of Request : 24/04/2017
---***/


-------------------------sk_download_attribute_list------------------------------
alter  table sk_download_attribute_list add  attributeIdentifier varchar2 (60) not null;
