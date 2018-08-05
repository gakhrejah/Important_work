alter table sk_prd_ctlg_dtls add(
flag_mat varchar2(4),
matnr varchar2(40),
order_block_start_date varchar2(8)
);

alter table sk_product add(
mdq_validation_status varchar2(1)
);

