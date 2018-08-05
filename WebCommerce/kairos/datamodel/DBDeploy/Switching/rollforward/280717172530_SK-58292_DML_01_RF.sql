/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	adding new att at regional level
*** Schema  :		 	PUBLISHING
*** Date of Request : 	July 28, 2017
***/

alter table sk_prd_ctlg_dtls add(np_delivery_time_class varchar2(1),
				rp_delivery_time_class varchar2(1),
				bb_delivery_time_class varchar2(1),
				sp_delivery_time_class varchar2(1)
				);


