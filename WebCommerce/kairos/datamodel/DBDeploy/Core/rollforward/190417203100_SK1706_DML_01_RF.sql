-- /***
-- *** Requester Name:  Narendra Kantamani
-- *** Purpose : Insert DML;
-- *** Schema  : SMSR.CORE.CI2
-- *** Date of Request : 19/04/2017
-- ***/ --

insert into sk_punchOutFieldsMappings values('Currency','commerceItem','priceInfo.currencyCode');
insert into sk_punchOutFieldsMappings values('LineItemPrice','commerceItem','priceInfo.lineItemTotalUiValue');
insert into sk_punchOutFieldsMappings values('CustomerPrice','commerceItem','priceInfo.custPriceUiValue');
insert into sk_punchOutFieldsMappings values('LineItemNo','commerceItem','lineItemNumber');
insert into sk_punchOutFieldsMappings values('OrgID','productVO','orgId');
insert into sk_punchOutFieldsMappings values('ProductDescription','productVO','description');
insert into sk_punchOutFieldsMappings values('MFN','productVO','MFN');
insert into sk_punchOutFieldsMappings values('MLFB','productVO','MLFB');
insert into sk_punchOutFieldsMappings values('MetalSurcharge','commerceItem','priceInfo.metalSurTotalUiValue');
insert into sk_punchOutFieldsMappings values('PriceGroup','productVO','priceGroup');
insert into sk_punchOutFieldsMappings values('PriceUnit','productVO','priceUnit');
insert into sk_punchOutFieldsMappings values('Quantity','commerceItem','quantity');
insert into sk_punchOutFieldsMappings values('Commodity Code','productVO','commodityCode');
insert into sk_punchOutFieldsMappings values('CountryOfOrigin','productVO','countryOfOrigin');
insert into sk_punchOutFieldsMappings values('EAN','productVO','EAN');
insert into sk_punchOutFieldsMappings values('CustomerArticleGroup','commerceItem','articleType');
insert into sk_punchOutFieldsMappings values('CustomerArticleNumber','commerceItem','articleNo');
insert into sk_punchOutFieldsMappings values('Weight','productVO','weight');
insert into sk_punchOutFieldsMappings values('DeliveryDate','commerceItem','requestedDeliveryDate');
insert into sk_punchOutFieldsMappings values('Discount','commerceItem','priceInfo.discountUiValue');
insert into sk_punchOutFieldsMappings values('MLFBWithoutHyphen','productVO','simplifiedMLFB');
insert into sk_punchOutFieldsMappings values('ProductGroup','productVO','ProductFamily.categoryName');
insert into sk_punchOutFieldsMappings values('RegionSpecificPriceGroup','commerceItem','regionalPriceGroup');
insert into sk_punchOutFieldsMappings values('Returnable','commerceItem','returnableState');
insert into sk_punchOutFieldsMappings values('SPA','commerceItem','spaSpoCommerceProjectNo');
insert into sk_punchOutFieldsMappings values('State','commerceItem','state');
insert into sk_punchOutFieldsMappings values('StockCode','commerceItem','stockLevel');
insert into sk_punchOutFieldsMappings values('ListPrice','commerceItem','priceInfo.ListPriceUiValue');
insert into sk_punchOutFieldsMappings values('UsedListPrice','commerceItem','priceInfo.listPriceValue');
insert into sk_punchOutFieldsMappings values('Milestone','productVO','currentStage');
insert into sk_punchOutFieldsMappings values('SalesTaxClass','productVO','description');
insert into sk_punchOutFieldsMappings values('ExportControlCodes_AL','productVO','exportListNumber');
insert into sk_punchOutFieldsMappings values('ExportControlCodes_ECCN','productVO','eccn');
commit;