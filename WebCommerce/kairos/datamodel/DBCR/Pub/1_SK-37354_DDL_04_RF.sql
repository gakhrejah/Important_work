--bildid
create table sk_bild_id(
	asset_version   	int   not null,
	product_id	 	varchar2(40),
	sequence_num 		INTEGER NOT NUll,
	bildID 		varchar2(25),
  constraints 		sk_bild_id_pk primary key (product_id,bildID,asset_version));
  
--2dmodelid
create table sk_2d_model_id(
	asset_version   	int   not null,
	product_id	 	varchar2(40),
	sequence_num 		INTEGER NOT NUll,
	modelId_2d 		varchar2(25),
  constraints 		sk_2d_model_id_pk primary key (product_id,modelId_2d,asset_version));
  
--3dmodelid
create table sk_3d_model_id(
	asset_version   	int   not null,
	product_id	 	varchar2(40),
	sequence_num 		INTEGER NOT NUll,
	modelId_3d 		varchar2(25),
  constraints 		sk_3d_model_id_pk primary key (product_id,modelId_3d,asset_version));
  
--2DTravelDiagramId
create table sk_2d_travel_diagram_id(
	asset_version   	int   not null,
	product_id	 	varchar2(40),
	sequence_num 		INTEGER NOT NUll,
	Travel_DiagramId 		varchar2(25),
  constraints 		sk_2d_travel_diagram_id_pk primary key (product_id,Travel_DiagramId,asset_version));
  
--CAEConnectionDiagramId
create table sk_cae_conn_diagram_id(
	asset_version   	int   not null,
	product_id	 	varchar2(40),
	sequence_num 		INTEGER NOT NUll,
	CAEConnection_DiagramId 		varchar2(25),
  constraints 		sk_cae_conn_diagram_id_pk primary key (product_id,CAEConnection_DiagramId,asset_version));
  
--CAECircuitDiagramIECId
create table sk_cae_circuit_diag_iec_id(
	asset_version   	int   not null,
	product_id	 	varchar2(40),
	sequence_num 		INTEGER NOT NUll,
	CAECircuit_Diagram_IECId 		varchar2(25),
  constraints 		sk_cae_circuit_diag_iec_id_pk primary key (product_id,CAECircuit_Diagram_IECId,asset_version));
  
--CAECircuitDiagramANSIId
create table sk_cae_circuit_diag_ansi_id(
	asset_version   	int   not null,
	product_id	 	varchar2(40),
	sequence_num 		INTEGER NOT NUll,
	CAECircuit_Diagram_ANSIId 		varchar2(25),
  constraints 		sk_cae_circuit_diag_ansi_id_pk primary key (product_id,CAECircuit_Diagram_ANSIId,asset_version));
  
--eplanMacro
create table sk_eplan_macro(
	asset_version   	int   not null,
	product_id	 	varchar2(40),
	sequence_num 		INTEGER NOT NUll,
	eplan_macro 		varchar2(25),
  constraints 		sk_eplan_macro_pk primary key (product_id,eplan_macro,asset_version));