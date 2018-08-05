/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	adding new att at regional level 
*** Schema  :		 	PUBLISHING
*** Date of Request : 	July 28, 2017
***/

alter table sk_prd_ctlg_dtls drop(np_delivery_time_class,
				rp_delivery_time_class,
				bb_delivery_time_class,
				sp_delivery_time_class
				);


