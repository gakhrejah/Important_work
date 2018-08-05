/***
*** Requester Name: Yogalakshmi P
*** Purpose : create RTD_PRODUCT_RELATIONSHIP view
*** Schema  : SWITCHING
*** Date of Request : 11/05/2017
***/
create or replace view RTD_PRODUCT_RELATIONSHIP as 
select dense_rank() over (partition by product.MLFB, catalogueReln.CATALOG_ID order by accessories.SEQUENCE_NUM  )-1 as Priority,
    product.MLFB                            as Product_MLFB,
    'A'                                     as Type,
    productRef.MLFB                         as Accessory_MLFB,
    productRef.SALES_ORGID,
    productRef.SUCCESSOR_FLAG,
    productRef.FGR as PCK,
    productRef.GBK as GCK,
    productRef.REPAIR_CODE,
    productRef.SPARE_PART_SUPPLIER,
    productRef.MATERIAL_TYPE,
    productRef.MIN_BM as MINIMUM_QUANTITY,
    productRef.RP_PROD,
    productRef.ITEM_CLASS,
    productRef.ISACCESSORY,
    productRef.SUBSTITUTE_PRODUCTS,
    productRef.ISEEO_MLFB,
    productRef.IS_SERVICE_MLFB,
    productRef.MASTER_CAT,
    productRef.ETEIL_KZ as SPARE_PART_CODE,
    catalogueDetails.VMSTD ,
    catalogueDetails.PM250_DATE,
    catalogueDetails.PM280_DATE,
    catalogueDetails.PM300_DATE,
    catalogueDetails.PM400_DATE,
    catalogueDetails.PM410_DATE,
    catalogueDetails.PM490_DATE,
    catalogueDetails.PM500_DATE,
    catalogueReln.CATALOG_ID
  from SK_PRODUCT product
  inner join SK_PRODUCT_ACCESSORIES accessories
  on accessories.PRODUCT_ID=product.PRODUCT_ID
  left join SK_PRODUCT productRef
  on accessories.PRODUCT_ACCESSORIES=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_RELN catalogueReln
  ON catalogueReln.PRODUCT_ID=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_DTLS catalogueDetails
  on catalogueDetails.ID=catalogueReln.PRD_DETAILS_ID
  union all
  select dense_rank() over (partition by product.MLFB, catalogueReln.CATALOG_ID order by expansion.SEQUENCE_NUM  )-1      as Priority,
    product.MLFB                            as Product_MLFB,
    'E'                                     as Type,
    productRef.MLFB                         as Accessory_MLFB,
    productRef.SALES_ORGID,
    productRef.SUCCESSOR_FLAG,
    productRef.FGR as PCK,
    productRef.GBK as GCK,
    productRef.REPAIR_CODE,
    productRef.SPARE_PART_SUPPLIER,
    productRef.MATERIAL_TYPE,
    productRef.MIN_BM as MINIMUM_QUANTITY,
    productRef.RP_PROD,
    productRef.ITEM_CLASS,
    productRef.ISACCESSORY,
    productRef.SUBSTITUTE_PRODUCTS,
    productRef.ISEEO_MLFB,
    productRef.IS_SERVICE_MLFB,
    productRef.MASTER_CAT,
    productRef.ETEIL_KZ as SPARE_PART_CODE,
    catalogueDetails.VMSTD ,
    catalogueDetails.PM250_DATE,
    catalogueDetails.PM280_DATE,
    catalogueDetails.PM300_DATE,
    catalogueDetails.PM400_DATE,
    catalogueDetails.PM410_DATE,
    catalogueDetails.PM490_DATE,
    catalogueDetails.PM500_DATE,
    catalogueReln.CATALOG_ID
  from SK_PRODUCT product
  inner join SK_PRODUCT_EXPANSION expansion
  on expansion.PRODUCT_ID=product.PRODUCT_ID
  left join SK_PRODUCT productRef
  on expansion.PRODUCT_EXPANSION=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_RELN catalogueReln
  on catalogueReln.PRODUCT_ID=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_DTLS catalogueDetails
  on catalogueDetails.ID=catalogueReln.PRD_DETAILS_ID
  union all
  select dense_rank() over (partition by product.MLFB, catalogueReln.CATALOG_ID order by successor.SEQUENCE_NUM  )-1 as Priority,
    product.MLFB                            as Product_MLFB,
    'SR'                                    as Type,
    productRef.MLFB                         as Accessory_MLFB,
    productRef.SALES_ORGID,
    productRef.SUCCESSOR_FLAG,
    productRef.FGR as PCK,
    productRef.GBK as GCK,
    productRef.REPAIR_CODE,
    productRef.SPARE_PART_SUPPLIER,
    productRef.MATERIAL_TYPE,
    productRef.MIN_BM as MINIMUM_QUANTITY,
    productRef.RP_PROD,
    productRef.ITEM_CLASS,
    productRef.ISACCESSORY,
    productRef.SUBSTITUTE_PRODUCTS,
    productRef.ISEEO_MLFB,
    productRef.IS_SERVICE_MLFB,
    productRef.MASTER_CAT,
    productRef.ETEIL_KZ as SPARE_PART_CODE,
    catalogueDetails.VMSTD ,
    catalogueDetails.PM250_DATE,
    catalogueDetails.PM280_DATE,
    catalogueDetails.PM300_DATE,
    catalogueDetails.PM400_DATE,
    catalogueDetails.PM410_DATE,
    catalogueDetails.PM490_DATE,
    catalogueDetails.PM500_DATE,
    catalogueReln.CATALOG_ID
  from SK_PRODUCT product
  inner join SK_SUCCESSORPRODUCTS successor
  on successor.PRODUCT_ID=product.PRODUCT_ID
  left join SK_PRODUCT productRef
  on successor.SUCCESSORPRODUCTS=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_RELN catalogueReln
  on catalogueReln.PRODUCT_ID=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_DTLS catalogueDetails
  on catalogueDetails.ID=catalogueReln.PRD_DETAILS_ID
  union all
  select dense_rank() over (partition by product.MLFB, catalogueReln.CATALOG_ID order by compatible.SEQUENCE_NUM  )-1 as Priority,
    product.MLFB                            as Product_MLFB,
    'C'                                     as Type,
    productRef.MLFB                         as Accessory_MLFB,
    productRef.SALES_ORGID,
    productRef.SUCCESSOR_FLAG,
    productRef.FGR as PCK,
    productRef.GBK as GCK,
    productRef.REPAIR_CODE,
    productRef.SPARE_PART_SUPPLIER,
    productRef.MATERIAL_TYPE,
    productRef.MIN_BM as MINIMUM_QUANTITY,
    productRef.RP_PROD,
    productRef.ITEM_CLASS,
    productRef.ISACCESSORY,
    productRef.SUBSTITUTE_PRODUCTS,
    productRef.ISEEO_MLFB,
    productRef.IS_SERVICE_MLFB,
    productRef.MASTER_CAT,
    productRef.ETEIL_KZ as SPARE_PART_CODE,
    catalogueDetails.VMSTD ,
    catalogueDetails.PM250_DATE,
    catalogueDetails.PM280_DATE,
    catalogueDetails.PM300_DATE,
    catalogueDetails.PM400_DATE,
    catalogueDetails.PM410_DATE,
    catalogueDetails.PM490_DATE,
    catalogueDetails.PM500_DATE,
    catalogueReln.CATALOG_ID
  from SK_PRODUCT product
  inner join SK_PRODUCT_COMPATIBLE compatible
  on compatible.PRODUCT_ID=product.PRODUCT_ID
  left join SK_PRODUCT productRef
  on compatible.PRODUCT_COMPATIBLE_PRODUCTS=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_RELN catalogueReln
  on catalogueReln.PRODUCT_ID=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_DTLS catalogueDetails
  on catalogueDetails.ID=catalogueReln.PRD_DETAILS_ID
  union all
  select dense_rank() over (partition by product.MLFB, catalogueReln.CATALOG_ID order by mandatory.SEQUENCE_NUM  )-1 as Priority,
    product.MLFB                            as Product_MLFB,
    'M'                                     as Type,
    productRef.MLFB                         as Accessory_MLFB,
    productRef.SALES_ORGID,
    productRef.SUCCESSOR_FLAG,
    productRef.FGR as PCK,
    productRef.GBK as GCK,
    productRef.REPAIR_CODE,
    productRef.SPARE_PART_SUPPLIER,
    productRef.MATERIAL_TYPE,
    productRef.MIN_BM as MINIMUM_QUANTITY,
    productRef.RP_PROD,
    productRef.ITEM_CLASS,
    productRef.ISACCESSORY,
    productRef.SUBSTITUTE_PRODUCTS,
    productRef.ISEEO_MLFB,
    productRef.IS_SERVICE_MLFB,
    productRef.MASTER_CAT,
    productRef.ETEIL_KZ as SPARE_PART_CODE,
    catalogueDetails.VMSTD ,
    catalogueDetails.PM250_DATE,
    catalogueDetails.PM280_DATE,
    catalogueDetails.PM300_DATE,
    catalogueDetails.PM400_DATE,
    catalogueDetails.PM410_DATE,
    catalogueDetails.PM490_DATE,
    catalogueDetails.PM500_DATE,
    catalogueReln.CATALOG_ID
  from SK_PRODUCT product
  inner join SK_PROD_MANDATORY_ADDNL mandatory
  on mandatory.PRODUCT_ID=product.PRODUCT_ID
  left join SK_PRODUCT productRef
  on mandatory.PRODUCT_MANDATORY_ADDITIONAL=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_RELN catalogueReln
  on catalogueReln.PRODUCT_ID=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_DTLS catalogueDetails
  on catalogueDetails.ID=catalogueReln.PRD_DETAILS_ID
  union all
  select dense_rank() over (partition by product.MLFB, catalogueReln.CATALOG_ID order by component.SEQUENCE_NUM  )-1 as Priority,
    product.MLFB                            as Product_MLFB,
    'CP'                                    as Type,
    productRef.MLFB                         as Accessory_MLFB,
    productRef.SALES_ORGID,
    productRef.SUCCESSOR_FLAG,
    productRef.FGR as PCK,
    productRef.GBK as GCK,
    productRef.REPAIR_CODE,
    productRef.SPARE_PART_SUPPLIER,
    productRef.MATERIAL_TYPE,
    productRef.MIN_BM as MINIMUM_QUANTITY,
    productRef.RP_PROD,
    productRef.ITEM_CLASS,
    productRef.ISACCESSORY,
    productRef.SUBSTITUTE_PRODUCTS,
    productRef.ISEEO_MLFB,
    productRef.IS_SERVICE_MLFB,
    productRef.MASTER_CAT,
    productRef.ETEIL_KZ as SPARE_PART_CODE,
    catalogueDetails.VMSTD ,
    catalogueDetails.PM250_DATE,
    catalogueDetails.PM280_DATE,
    catalogueDetails.PM300_DATE,
    catalogueDetails.PM400_DATE,
    catalogueDetails.PM410_DATE,
    catalogueDetails.PM490_DATE,
    catalogueDetails.PM500_DATE,
    catalogueReln.CATALOG_ID
  from SK_PRODUCT product
  inner join SK_PRODUCT_COMPONENT_PARTS component
  on component.PRODUCT_ID=product.PRODUCT_ID
  left join SK_PRODUCT productRef
  on component.PRODUCT_COMPONENT_PARTS=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_RELN catalogueReln
  on catalogueReln.PRODUCT_ID=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_DTLS catalogueDetails
  on catalogueDetails.ID=catalogueReln.PRD_DETAILS_ID
  union all
  select dense_rank() over (partition by product.MLFB, catalogueReln.CATALOG_ID order by similar.SEQUENCE_NUM  )-1 as Priority,
    product.MLFB                            as Product_MLFB,
    'SI'                                    as Type,
    productRef.MLFB                         as Accessory_MLFB,
    productRef.SALES_ORGID,
    productRef.SUCCESSOR_FLAG,
    productRef.FGR as PCK,
    productRef.GBK as GCK,
    productRef.REPAIR_CODE,
    productRef.SPARE_PART_SUPPLIER,
    productRef.MATERIAL_TYPE,
    productRef.MIN_BM as MINIMUM_QUANTITY,
    productRef.RP_PROD,
    productRef.ITEM_CLASS,
    productRef.ISACCESSORY,
    productRef.SUBSTITUTE_PRODUCTS,
    productRef.ISEEO_MLFB,
    productRef.IS_SERVICE_MLFB,
    productRef.MASTER_CAT,
    productRef.ETEIL_KZ as SPARE_PART_CODE,
    catalogueDetails.VMSTD ,
    catalogueDetails.PM250_DATE,
    catalogueDetails.PM280_DATE,
    catalogueDetails.PM300_DATE,
    catalogueDetails.PM400_DATE,
    catalogueDetails.PM410_DATE,
    catalogueDetails.PM490_DATE,
    catalogueDetails.PM500_DATE,
    catalogueReln.CATALOG_ID
  from SK_PRODUCT product
  inner join SK_PRODUCT_SIMILAR similar
  on similar.PRODUCT_ID=product.PRODUCT_ID
  left join SK_PRODUCT productRef
  on similar.PRODUCT_SIMILAR_PRODUCTS=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_RELN catalogueReln
  on catalogueReln.PRODUCT_ID=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_DTLS catalogueDetails
  on catalogueDetails.ID=catalogueReln.PRD_DETAILS_ID
  union all
  select dense_rank() over (partition by product.MLFB, catalogueReln.CATALOG_ID order by productRef.MLFB  )-1      as Priority,
    product.MLFB                           as Product_MLFB,
    'SE'                                   as Type,
    productRef.MLFB                        as Accessory_MLFB,
    productRef.SALES_ORGID,
    productRef.SUCCESSOR_FLAG,
    productRef.FGR as PCK,
    productRef.GBK as GCK,
    productRef.REPAIR_CODE,
    productRef.SPARE_PART_SUPPLIER,
    productRef.MATERIAL_TYPE,
    productRef.MIN_BM as MINIMUM_QUANTITY,
    productRef.RP_PROD,
    productRef.ITEM_CLASS,
    productRef.ISACCESSORY,
    productRef.SUBSTITUTE_PRODUCTS,
    productRef.ISEEO_MLFB,
    productRef.IS_SERVICE_MLFB,
    productRef.MASTER_CAT,
    productRef.ETEIL_KZ as SPARE_PART_CODE,
    catalogueDetails.VMSTD ,
    catalogueDetails.PM250_DATE,
    catalogueDetails.PM280_DATE,
    catalogueDetails.PM300_DATE,
    catalogueDetails.PM400_DATE,
    catalogueDetails.PM410_DATE,
    catalogueDetails.PM490_DATE,
    catalogueDetails.PM500_DATE,
	  catalogueReln.CATALOG_ID
  from SK_PRODUCT product
  inner join SK_PRODUCT productRef
  on product.SUBSTITUTE_PRODUCTS=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_RELN catalogueReln
  on catalogueReln.PRODUCT_ID=productRef.PRODUCT_ID
  left join SK_PRD_CTLG_DTLS catalogueDetails
  on catalogueDetails.ID=catalogueReln.PRD_DETAILS_ID;
