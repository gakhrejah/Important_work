[#ftl]
[#-- @ftlvariable name="changeLogTableName" type="java.lang.String" --]
[#-- @ftlvariable name="scripts" type="java.util.List<com.dbdeploy.scripts.ChangeScript>" --]

[#list scripts as script]
[#assign stringid="${script.id?c}" ]
[#assign folder="" ]
[#if stringid?starts_with("10") || stringid?starts_with("12") ]
	[#assign folder="Core/rollforward" ]
[/#if]
[#if stringid?starts_with("11") ]
	[#assign folder="Pub/rollforward" ]
[/#if]
[#if stringid?starts_with("13") || stringid?starts_with("14") || stringid?starts_with("15") || stringid?starts_with("16") ]
	[#assign folder="Switching/rollforward" ]
[/#if]
[#assign orgId="${stringid?substring(2)}" ]
[#assign orgDesc="${script.description?substring(2)}" ]
-- START CHANGE SCRIPT ${script}

${script.content}

INSERT INTO ${changeLogTableName} (change_number, folder, script_number, complete_dt, applied_by, description)
 VALUES (${script.id?c}, '${folder}', ${script.id?c}, CURRENT_TIMESTAMP, USER, 'DBdeploy');

COMMIT;

-- END CHANGE SCRIPT ${script}

[/#list]