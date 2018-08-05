/***
*** Requester Name:  	Swaminath Chengannagari
*** Purpose :		 	SK-41034
*** Schema  :		 	atgcore
*** Date of Request : 	May 11, 2017
***/

UPDATE SK_PROPERTY SET GROUP_ID = 'Order_Mgmt' where PROPERTY_ID = 'Display_Payment_Terms_Order_Mamt' AND GROUP_ID = 'Cart_Display';


COMMIT;