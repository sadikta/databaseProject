set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_default_workspace_id=>46090404671211859080
);
end;
/
prompt  WORKSPACE 46090404671211859080
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   11:42 Thursday March 9, 2017
--   Exported By:     TALANSADIK@GMAIL.COM
--   Export Type:     Workspace Export
--   Version:         5.1.0.00.45
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_050100
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>46090404671211859080);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace LABWORKSPACE2...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 46090438468561488737
 ,p_provisioning_company_id => 46090404671211859080
 ,p_short_name => 'LABWORKSPACE2'
 ,p_display_name => 'LABWORKSPACE2'
 ,p_first_schema_provisioned => 'LABSCHEMA2'
 ,p_company_schemas => 'LABSCHEMA2'
 ,p_ws_schema => 'LABSCHEMA2'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'LABWORKS'
 ,p_path_prefix => 'LABWORKSPACE2'
 ,p_files_version => 1
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_api.create_user_groups (
  p_id => 1665806769407224,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_api.create_user_groups (
  p_id => 1665763185407223,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_api.create_user_groups (
  p_id => 1665679484407222,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '46090404581895859080',
  p_user_name                    => 'TALANSADIK@GMAIL.COM',
  p_first_name                   => 'Sadik',
  p_last_name                    => 'Talan',
  p_description                  => '',
  p_email_address                => 'talansadik@gmail.com',
  p_web_password                 => '29263A57AC4355386AF5A36C2ABC25F5D5381F759CA78820E99B39172DEC644DB3838B9D5A20625FC020748D2F5CD4527716E60CDB1650987FEC401C9C9785D4',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '1665679484407222:1665763185407223:1665806769407224:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'LABSCHEMA2',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201703091139','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
----------------
--App Builder Preferences
--
----------------
--Click Count Logs
--
----------------
--csv data loading
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_flow_api.create_password_history (
    p_id => 3212758233392825772,
    p_user_id => 46090404581895859080,
    p_password => '83614F9820A3F7CE04AE07D5A56AC54E0F7F74014A560556FEEC6FFD8792EDBE4B06CE4858AE4B4EABB08D16482D80CEAF38BE4C8F058D5C5703D4F3D388C28E');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 7138503222899637763,
    p_user_id => 46090404581895859080,
    p_password => '29263A57AC4355386AF5A36C2ABC25F5D5381F759CA78820E99B39172DEC644DB3838B9D5A20625FC020748D2F5CD4527716E60CDB1650987FEC401C9C9785D4');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 46090458386214491035,
    p_user_id => 46090404581895859080,
    p_password => '29263A57AC4355386AF5A36C2ABC25F5D5381F759CA78820E99B39172DEC644DB3838B9D5A20625FC020748D2F5CD4527716E60CDB1650987FEC401C9C9785D4');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 46090438500352488758,
    p_user_id => 46090404581895859080,
    p_password => '3949550E1BF9549815F766297864E2A5B0A3401BF5DC8E9F9C56BCBB0B1B8D3102F08392E786805698B5EC21A597A61A41E4EAED8E25F5CCE49ECCC1D25F7A6D');
end;
/
----------------
--preferences
--
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46732286740932251227,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'F4500_1157684150404338202_SPLITTER_STATE',
    p_attribute_value => '280:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46138658377207389371,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '309:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46137245336429223830,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '78873');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1346656732708937428,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP4000_P73_R78240013758270704_SORT',
    p_attribute_value => 'fsp_sort_2_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46090525379502501977,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP4500_P1220_R11177418830226625_SORT',
    p_attribute_value => 'fsp_sort_8');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46090529536568504421,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP4500_P1225_R164053306541529880_SORT',
    p_attribute_value => 'fsp_sort_1_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1314831236318315602,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP4500_P2102_R5737432600960966_SORT',
    p_attribute_value => 'fsp_sort_2_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46138456867920743224,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP4500_P24_R12183729610626245_SORT',
    p_attribute_value => 'fsp_sort_2_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1346318855712283515,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP4500_P65_R221594212518002207_SORT',
    p_attribute_value => 'fsp_sort_5');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46136791099150210862,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46137245215886223817,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1311996523056186214,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P25_W9307709001462905',
    p_attribute_value => '9309908769463151____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46090461777198496875,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____467836414517307027');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46090529064670502084,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP_IR_4500_P1220_W467846302875971481',
    p_attribute_value => '467848523688971977____467848523688971977');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 3213192406203852777,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP_IR_4500_P12_W1486931056945387',
    p_attribute_value => '1488801884947581____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46137371996705627867,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP_IR_78873_P2_W53411274280421297583',
    p_attribute_value => '53265226948196340046____53265226948196340046');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46137405496172631197,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'FSP_IR_78873_P3_W53431542255200653910',
    p_attribute_value => '53431543559683654665____53431543559683654665');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 46137245136535223790,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 1311996863492186241,
    p_user_id => 'TALANSADIK@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P25_DATE',
    p_attribute_value => '.125');
end;
/
----------------
--query builder
--
begin
  wwv_flow_api.create_qb_saved_query (
    p_id => 46138699697833395887
    ,p_query_owner => 'LABSCHEMA2'
    ,p_title => 'deneme'
 ,p_qb_sql => 
'SELECT ename, 12*sal "YILLIK MAAŞ"'||wwv_flow.LF||
'FROM emp;'
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611210912','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'TALANSADIK@GMAIL.COM'
    ,p_last_updated_on => to_date('201611210912','YYYYMMDDHH24MI'));
end;
/
----------------
--sql scripts
--
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '435245415445205441424C45202022504552534F4E22200A20202028092250494422204E554D4245522831302C30292C200A0922544E4F22204E554D4245522831352C30292C200A0922504E414D452220564152434841523228313529204E4F54204E55';
wwv_flow_api.g_varchar2_table(2) := '4C4C20454E41424C452C200A0922504D41494C22205641524348415232283235292C200A09225042495254484441592220444154452C200A0920434F4E53545241494E542022555345525F5049445F504B22205052494D415259204B4559202822504944';
wwv_flow_api.g_varchar2_table(3) := '22290A20205553494E4720494E4445582020454E41424C452C200A0920554E49515545202822504E414D4522290A20205553494E4720494E4445582020454E41424C452C200A0920554E49515545202822504D41494C22290A20205553494E4720494E44';
wwv_flow_api.g_varchar2_table(4) := '45582020454E41424C450A202020290A2F0A435245415445205441424C4520202241444D494E22200A20202028092250494422204E554D4245522831302C30292C200A0922434F4D494422204E554D4245522831302C30292C200A09205052494D415259';
wwv_flow_api.g_varchar2_table(5) := '204B4559202822434F4D494422290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C45202022424F4E555322200A202020280922454E414D4522205641524348415232283130292C200A09224A4F42';
wwv_flow_api.g_varchar2_table(6) := '222056415243484152322839292C200A092253414C22204E554D4245522C200A0922434F4D4D22204E554D4245520A202020290A2F0A435245415445205441424C45202022434F4D4D554E49545922200A202020280922434F4D494422204E554D424552';
wwv_flow_api.g_varchar2_table(7) := '2831302C30292C200A0922434F4D4E414D452220564152434841523228323029204E4F54204E554C4C20454E41424C452C200A09205052494D415259204B4559202822434F4D494422290A20205553494E4720494E4445582020454E41424C452C200A09';
wwv_flow_api.g_varchar2_table(8) := '20554E49515545202822434F4D4E414D4522290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C452020224445505422200A202020280922444550544E4F22204E554D42455228322C30292C200A09';
wwv_flow_api.g_varchar2_table(9) := '22444E414D4522205641524348415232283134292C200A09224C4F4322205641524348415232283133290A202020290A2F0A435245415445205441424C45202022444953434F554E5422200A202020280922494422204E554D4245522831302C30292C20';
wwv_flow_api.g_varchar2_table(10) := '0A09224F4646455252415445222056415243484152322834292C200A09205052494D415259204B4559202822494422290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C4520202247414D45434F4D';
wwv_flow_api.g_varchar2_table(11) := '50414E5922200A20202028092243494422204E554D4245522831302C30292C200A0922434E414D452220564152434841523228323029204E4F54204E554C4C20454E41424C452C200A092254454C4E4F22204E554D4245522831352C30292C200A092245';
wwv_flow_api.g_varchar2_table(12) := '4D41494C22205641524348415232283230292C200A092255524C22205641524348415232283230292C200A09205052494D415259204B455920282243494422290A20205553494E4720494E4445582020454E41424C452C200A0920554E49515545202822';
wwv_flow_api.g_varchar2_table(13) := '434E414D4522290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C4520202247414D4522200A20202028092243494422204E554D4245522831302C30292C200A092247414D45494422204E554D4245';
wwv_flow_api.g_varchar2_table(14) := '522831302C30292C200A092247414D454E414D452220564152434841523228323029204E4F54204E554C4C20454E41424C452C200A0922505249434522204E554D4245522831302C3029204E4F54204E554C4C20454E41424C452C200A092247454E5245';
wwv_flow_api.g_varchar2_table(15) := '22205641524348415232283135292C200A09224147454C494D4954222056415243484152322835292C200A092252454C45415345444154452220444154452C200A09205052494D415259204B455920282247414D45494422290A20205553494E4720494E';
wwv_flow_api.g_varchar2_table(16) := '4445582020454E41424C452C200A0920554E4951554520282247414D454E414D4522290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C45202022444953434F554E5447414D4522200A2020202809';
wwv_flow_api.g_varchar2_table(17) := '22494422204E554D4245522831302C30292C200A092250524F44554354494422204E554D4245522831302C3029204E4F54204E554C4C20454E41424C452C200A09205052494D415259204B4559202822494422290A20205553494E4720494E4445582020';
wwv_flow_api.g_varchar2_table(18) := '454E41424C452C200A0920554E4951554520282250524F44554354494422290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C45202022455854524150524F4752414D22200A20202028092250524F';
wwv_flow_api.g_varchar2_table(19) := '4752414D494422204E554D4245522831302C30292C200A092247414D45494422204E554D4245522831302C30292C200A092250524F4752414D4E414D452220564152434841523228323029204E4F54204E554C4C20454E41424C452C200A092250524F47';
wwv_flow_api.g_varchar2_table(20) := '52414D505249434522204E554D4245522831302C3029204E4F54204E554C4C20454E41424C452C200A092252454C45415345444154452220444154452C200A09205052494D415259204B455920282250524F4752414D494422290A20205553494E472049';
wwv_flow_api.g_varchar2_table(21) := '4E4445582020454E41424C452C200A0920554E4951554520282250524F4752414D4E414D4522290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C45202022444953434F554E5450524F4752414D22';
wwv_flow_api.g_varchar2_table(22) := '200A202020280922494422204E554D4245522831302C30292C200A092250524F44554354494422204E554D4245522831302C3029204E4F54204E554C4C20454E41424C452C200A09205052494D415259204B4559202822494422290A20205553494E4720';
wwv_flow_api.g_varchar2_table(23) := '494E4445582020454E41424C452C200A0920554E4951554520282250524F44554354494422290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C45202022454D5022200A202020280922454D504E4F';
wwv_flow_api.g_varchar2_table(24) := '22204E554D42455228342C3029204E4F54204E554C4C20454E41424C452C200A0922454E414D4522205641524348415232283130292C200A09224A4F42222056415243484152322839292C200A09224D475222204E554D42455228342C30292C200A0922';
wwv_flow_api.g_varchar2_table(25) := '48495245444154452220444154452C200A092253414C22204E554D42455228372C32292C200A0922434F4D4D22204E554D42455228372C32292C200A0922444550544E4F22204E554D42455228322C30290A202020290A2F0A435245415445205441424C';
wwv_flow_api.g_varchar2_table(26) := '4520202247524F55504F464645525322200A2020202809224C4F575241544522204E554D42455228332C30292C200A0922484947485241544522204E554D42455228332C30292C200A09224F4646455243415445474F525922204E554D42455228332C30';
wwv_flow_api.g_varchar2_table(27) := '292C200A09205052494D415259204B45592028224F4646455243415445474F525922290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C4520202253414C455322200A20202028092253494422204E';
wwv_flow_api.g_varchar2_table(28) := '554D4245522831302C30292C200A09205052494D415259204B455920282253494422290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C4520202253414C455347414D4522200A2020202809225349';
wwv_flow_api.g_varchar2_table(29) := '4422204E554D4245522831302C30292C200A092250524F44554354494422204E554D4245522831302C3029204E4F54204E554C4C20454E41424C452C200A09225055524348415345444154452220444154452C200A092250494422204E554D4245522831';
wwv_flow_api.g_varchar2_table(30) := '302C30292C200A0922434F535422204E554D4245522831302C3029204E4F54204E554C4C20454E41424C452C200A09205052494D415259204B455920282253494422290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245';
wwv_flow_api.g_varchar2_table(31) := '415445205441424C4520202253414C455350524F4752414D22200A20202028092253494422204E554D4245522831302C30292C200A092250524F44554354494422204E554D4245522831302C3029204E4F54204E554C4C20454E41424C452C200A092250';
wwv_flow_api.g_varchar2_table(32) := '55524348415345444154452220444154452C200A092250494422204E554D4245522831302C30292C200A0922434F535422204E554D4245522831302C3029204E4F54204E554C4C20454E41424C452C200A09205052494D415259204B4559202822534944';
wwv_flow_api.g_varchar2_table(33) := '22290A20205553494E4720494E4445582020454E41424C450A202020290A2F0A435245415445205441424C4520202253414C475241444522200A202020280922475241444522204E554D4245522C200A09224C4F53414C22204E554D4245522C200A0922';
wwv_flow_api.g_varchar2_table(34) := '484953414C22204E554D4245520A202020290A2F0A435245415445205441424C452020225355425343524942455322200A202020280922494422204E554D4245522831302C30292C200A092250494422204E554D4245522831302C30292C200A0922434F';
wwv_flow_api.g_varchar2_table(35) := '4D494422204E554D4245522831302C30292C200A09205052494D415259204B4559202822494422290A20205553494E4720494E4445582020454E41424C452C200A0920554E49515545202822504944222C2022434F4D494422290A20205553494E472049';
wwv_flow_api.g_varchar2_table(36) := '4E4445582020454E41424C450A202020290A2F0A414C544552205441424C4520202241444D494E222041444420464F524549474E204B455920282250494422290A0920205245464552454E434553202022504552534F4E22202822504944222920454E41';
wwv_flow_api.g_varchar2_table(37) := '424C450A2F0A414C544552205441424C45202022434F4D4D554E495459222041444420464F524549474E204B4559202822434F4D494422290A0920205245464552454E43455320202241444D494E22202822434F4D4944222920454E41424C450A2F0A41';
wwv_flow_api.g_varchar2_table(38) := '4C544552205441424C4520202253554253435249424553222041444420464F524549474E204B455920282250494422290A0920205245464552454E434553202022504552534F4E22202822504944222920454E41424C450A2F0A414C544552205441424C';
wwv_flow_api.g_varchar2_table(39) := '4520202253554253435249424553222041444420464F524549474E204B4559202822434F4D494422290A0920205245464552454E43455320202241444D494E22202822434F4D4944222920454E41424C450A2F0A414C544552205441424C452020224741';
wwv_flow_api.g_varchar2_table(40) := '4D45222041444420464F524549474E204B455920282243494422290A0920205245464552454E43455320202247414D45434F4D50414E5922202822434944222920454E41424C450A2F0A414C544552205441424C45202022455854524150524F4752414D';
wwv_flow_api.g_varchar2_table(41) := '222041444420464F524549474E204B455920282247414D45494422290A0920205245464552454E43455320202247414D452220282247414D454944222920454E41424C450A2F0A414C544552205441424C4520202253414C455347414D45222041444420';
wwv_flow_api.g_varchar2_table(42) := '464F524549474E204B455920282253494422290A0920205245464552454E43455320202253414C455322202822534944222920454E41424C450A2F0A414C544552205441424C4520202253414C455347414D45222041444420464F524549474E204B4559';
wwv_flow_api.g_varchar2_table(43) := '20282250494422290A0920205245464552454E434553202022504552534F4E22202822504944222920454E41424C450A2F0A414C544552205441424C4520202253414C455347414D45222041444420464F524549474E204B455920282250524F44554354';
wwv_flow_api.g_varchar2_table(44) := '494422290A0920205245464552454E43455320202247414D452220282247414D454944222920454E41424C450A2F0A414C544552205441424C4520202253414C455350524F4752414D222041444420464F524549474E204B455920282253494422290A09';
wwv_flow_api.g_varchar2_table(45) := '20205245464552454E43455320202253414C455322202822534944222920454E41424C450A2F0A414C544552205441424C4520202253414C455350524F4752414D222041444420464F524549474E204B455920282250494422290A092020524546455245';
wwv_flow_api.g_varchar2_table(46) := '4E434553202022504552534F4E22202822504944222920454E41424C450A2F0A414C544552205441424C4520202253414C455350524F4752414D222041444420464F524549474E204B455920282250524F44554354494422290A0920205245464552454E';
wwv_flow_api.g_varchar2_table(47) := '434553202022455854524150524F4752414D2220282250524F4752414D4944222920454E41424C450A2F0A414C544552205441424C45202022444953434F554E5447414D45222041444420464F524549474E204B455920282250524F4455435449442229';
wwv_flow_api.g_varchar2_table(48) := '0A0920205245464552454E43455320202247414D452220282247414D454944222920454E41424C450A2F0A414C544552205441424C45202022444953434F554E5447414D45222041444420464F524549474E204B4559202822494422290A092020524546';
wwv_flow_api.g_varchar2_table(49) := '4552454E434553202022444953434F554E54222028224944222920454E41424C450A2F0A414C544552205441424C45202022444953434F554E5450524F4752414D222041444420464F524549474E204B455920282250524F44554354494422290A092020';
wwv_flow_api.g_varchar2_table(50) := '5245464552454E434553202022455854524150524F4752414D2220282250524F4752414D4944222920454E41424C450A2F0A414C544552205441424C45202022444953434F554E5450524F4752414D222041444420464F524549474E204B455920282249';
wwv_flow_api.g_varchar2_table(51) := '4422290A0920205245464552454E434553202022444953434F554E54222028224944222920454E41424C450A2F0A';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 3213673081922892307,
    p_flow_id => 4500,
    p_name => 'F3213673119603892307/Myscript',
    p_pathid => null,
    p_filename => 'Myscript',
    p_title => 'Myscript',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'TALANSADIK@GMAIL.COM',
    p_created_on => to_date('201701241055','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213674588368892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 2
    ,p_src_line_number => 14
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213675257011892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 4
    ,p_src_line_number => 21
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213675986088892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 6
    ,p_src_line_number => 28
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213676846315892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 8
    ,p_src_line_number => 37
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213677425185892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 10
    ,p_src_line_number => 43
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213678102322892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 12
    ,p_src_line_number => 50
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213679337795892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 14
    ,p_src_line_number => 62
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213680753990892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 16
    ,p_src_line_number => 76
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213681653619892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 18
    ,p_src_line_number => 85
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213682877238892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 20
    ,p_src_line_number => 97
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213683733143892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 22
    ,p_src_line_number => 106
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213684831071892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 24
    ,p_src_line_number => 117
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213685677232892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 26
    ,p_src_line_number => 125
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213686280884892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 28
    ,p_src_line_number => 131
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213687299939892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 30
    ,p_src_line_number => 141
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213688280149892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 32
    ,p_src_line_number => 151
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213688897749892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 34
    ,p_src_line_number => 157
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213689842493892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 36
    ,p_src_line_number => 167
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213690118702892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 38
    ,p_src_line_number => 170
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213690455396892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 40
    ,p_src_line_number => 173
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213690783690892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 42
    ,p_src_line_number => 176
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213691036412892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 44
    ,p_src_line_number => 179
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213691329940892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 46
    ,p_src_line_number => 182
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213691649345892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 48
    ,p_src_line_number => 185
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213691949996892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 50
    ,p_src_line_number => 188
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213692296353892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 52
    ,p_src_line_number => 191
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213692515913892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 54
    ,p_src_line_number => 194
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213692836085892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 56
    ,p_src_line_number => 197
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213693113450892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 58
    ,p_src_line_number => 200
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213693457610892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 60
    ,p_src_line_number => 203
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213693754059892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 62
    ,p_src_line_number => 206
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213694014978892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 64
    ,p_src_line_number => 209
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213694317906892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 66
    ,p_src_line_number => 212
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213694632605892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 68
    ,p_src_line_number => 215
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213689930962892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 37
    ,p_src_line_number => 168
    ,p_offset => 3521
    ,p_length => 44
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "ADMIN" ADD FOREIGN KEY ("PID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213690099504892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 37
    ,p_src_line_number => 169
    ,p_offset => 3566
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "PERSON" ("PID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213690274017892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 39
    ,p_src_line_number => 171
    ,p_offset => 3607
    ,p_length => 50
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "COMMUNITY" ADD FOREIGN KEY ("COMID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213690353232892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 39
    ,p_src_line_number => 172
    ,p_offset => 3658
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "ADMIN" ("COMID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213690578759892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 41
    ,p_src_line_number => 174
    ,p_offset => 3700
    ,p_length => 49
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "SUBSCRIBES" ADD FOREIGN KEY ("PID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213690661318892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 41
    ,p_src_line_number => 175
    ,p_offset => 3750
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "PERSON" ("PID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213690886639892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 43
    ,p_src_line_number => 177
    ,p_offset => 3791
    ,p_length => 51
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "SUBSCRIBES" ADD FOREIGN KEY ("COMID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213690998992892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 43
    ,p_src_line_number => 178
    ,p_offset => 3843
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "ADMIN" ("COMID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213691114136892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 45
    ,p_src_line_number => 180
    ,p_offset => 3885
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "GAME" ADD FOREIGN KEY ("CID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213691287644892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 45
    ,p_src_line_number => 181
    ,p_offset => 3929
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "GAMECOMPANY" ("CID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213691598166892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 47
    ,p_src_line_number => 184
    ,p_offset => 4030
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "GAME" ("GAMEID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213691433038892324
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 47
    ,p_src_line_number => 183
    ,p_offset => 3975
    ,p_length => 54
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "EXTRAPROGRAM" ADD FOREIGN KEY ("GAMEID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213691759422892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 49
    ,p_src_line_number => 186
    ,p_offset => 4072
    ,p_length => 48
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "SALESGAME" ADD FOREIGN KEY ("SID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213691841183892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 49
    ,p_src_line_number => 187
    ,p_offset => 4121
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "SALES" ("SID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213692035979892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 51
    ,p_src_line_number => 189
    ,p_offset => 4161
    ,p_length => 48
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "SALESGAME" ADD FOREIGN KEY ("PID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213692194609892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 51
    ,p_src_line_number => 190
    ,p_offset => 4210
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "PERSON" ("PID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213692384352892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 53
    ,p_src_line_number => 192
    ,p_offset => 4251
    ,p_length => 54
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "SALESGAME" ADD FOREIGN KEY ("PRODUCTID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213692462710892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 53
    ,p_src_line_number => 193
    ,p_offset => 4306
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "GAME" ("GAMEID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213692618081892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 55
    ,p_src_line_number => 195
    ,p_offset => 4348
    ,p_length => 51
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "SALESPROGRAM" ADD FOREIGN KEY ("SID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213692721555892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 55
    ,p_src_line_number => 196
    ,p_offset => 4400
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "SALES" ("SID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213692921547892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 57
    ,p_src_line_number => 198
    ,p_offset => 4440
    ,p_length => 51
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "SALESPROGRAM" ADD FOREIGN KEY ("PID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213693036687892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 57
    ,p_src_line_number => 199
    ,p_offset => 4492
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "PERSON" ("PID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213693290909892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 59
    ,p_src_line_number => 201
    ,p_offset => 4533
    ,p_length => 57
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "SALESPROGRAM" ADD FOREIGN KEY ("PRODUCTID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213693395149892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 59
    ,p_src_line_number => 202
    ,p_offset => 4591
    ,p_length => 50
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "EXTRAPROGRAM" ("PROGRAMID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213693536440892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 61
    ,p_src_line_number => 204
    ,p_offset => 4644
    ,p_length => 57
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "DISCOUNTGAME" ADD FOREIGN KEY ("PRODUCTID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213693642401892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 61
    ,p_src_line_number => 205
    ,p_offset => 4702
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "GAME" ("GAMEID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213693832932892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 63
    ,p_src_line_number => 207
    ,p_offset => 4744
    ,p_length => 50
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "DISCOUNTGAME" ADD FOREIGN KEY ("ID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213693968415892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 63
    ,p_src_line_number => 208
    ,p_offset => 4795
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "DISCOUNT" ("ID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213694168511892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 65
    ,p_src_line_number => 210
    ,p_offset => 4837
    ,p_length => 60
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "DISCOUNTPROGRAM" ADD FOREIGN KEY ("PRODUCTID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213694242122892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 65
    ,p_src_line_number => 211
    ,p_offset => 4898
    ,p_length => 50
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "EXTRAPROGRAM" ("PROGRAMID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213694456276892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 67
    ,p_src_line_number => 213
    ,p_offset => 4951
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ALTER TABLE  "DISCOUNTPROGRAM" ADD FOREIGN KEY ("ID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213694539717892325
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 67
    ,p_src_line_number => 214
    ,p_offset => 5005
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	  REFERENCES  "DISCOUNT" ("ID") ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213673272422892318
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "PERSON" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213673324236892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 25
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"PID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213673475093892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 51
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"TNO" NUMBER(15,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213673522435892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 73
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PNAME" VARCHAR2(15) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213673674213892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 113
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PMAIL" VARCHAR2(25), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213673727002892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 137
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PBIRTHDAY" DATE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213673899895892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 157
    ,p_length => 46
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 CONSTRAINT "USER_PID_PK" PRIMARY KEY ("PID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213673971196892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 204
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213674068294892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 228
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 UNIQUE ("PNAME")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213674186470892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 247
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213674263818892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 11
    ,p_offset => 271
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 UNIQUE ("PMAIL")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213674338992892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 12
    ,p_offset => 290
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213674431536892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 1
    ,p_src_line_number => 13
    ,p_offset => 312
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213674659032892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 3
    ,p_src_line_number => 15
    ,p_offset => 319
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "ADMIN" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213674782306892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 3
    ,p_src_line_number => 16
    ,p_offset => 342
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"PID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213674805798892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 3
    ,p_src_line_number => 17
    ,p_offset => 368
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"COMID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213674958849892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 3
    ,p_src_line_number => 18
    ,p_offset => 392
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("COMID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213675033160892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 3
    ,p_src_line_number => 19
    ,p_offset => 416
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213675103212892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 3
    ,p_src_line_number => 20
    ,p_offset => 438
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213675302668892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 5
    ,p_src_line_number => 22
    ,p_offset => 445
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "BONUS" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213675434514892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 5
    ,p_src_line_number => 23
    ,p_offset => 468
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"ENAME" VARCHAR2(10), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213675556346892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 5
    ,p_src_line_number => 24
    ,p_offset => 496
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"JOB" VARCHAR2(9), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213675684301892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 5
    ,p_src_line_number => 25
    ,p_offset => 517
    ,p_length => 15
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"SAL" NUMBER, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213675723920892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 5
    ,p_src_line_number => 26
    ,p_offset => 533
    ,p_length => 14
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"COMM" NUMBER'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213675835145892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 5
    ,p_src_line_number => 27
    ,p_offset => 548
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213676079574892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 7
    ,p_src_line_number => 29
    ,p_offset => 555
    ,p_length => 26
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "COMMUNITY" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213676143981892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 7
    ,p_src_line_number => 30
    ,p_offset => 582
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"COMID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213676260503892319
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 7
    ,p_src_line_number => 31
    ,p_offset => 610
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"COMNAME" VARCHAR2(20) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213676307679892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 7
    ,p_src_line_number => 32
    ,p_offset => 652
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("COMID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213676434958892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 7
    ,p_src_line_number => 33
    ,p_offset => 676
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213676549282892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 7
    ,p_src_line_number => 34
    ,p_offset => 700
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 UNIQUE ("COMNAME")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213676650827892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 7
    ,p_src_line_number => 35
    ,p_offset => 721
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213676711714892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 7
    ,p_src_line_number => 36
    ,p_offset => 743
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213677099733892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 9
    ,p_src_line_number => 39
    ,p_offset => 772
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"DEPTNO" NUMBER(2,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213677199083892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 9
    ,p_src_line_number => 40
    ,p_offset => 800
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"DNAME" VARCHAR2(14), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213677270829892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 9
    ,p_src_line_number => 41
    ,p_offset => 824
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"LOC" VARCHAR2(13)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213677396260892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 9
    ,p_src_line_number => 42
    ,p_offset => 844
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213676932543892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 9
    ,p_src_line_number => 38
    ,p_offset => 750
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "DEPT" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213677562612892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 11
    ,p_src_line_number => 44
    ,p_offset => 851
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "DISCOUNT" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213677664778892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 11
    ,p_src_line_number => 45
    ,p_offset => 877
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"ID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213677787811892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 11
    ,p_src_line_number => 46
    ,p_offset => 902
    ,p_length => 26
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"OFFERRATE" VARCHAR2(4), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213677870653892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 11
    ,p_src_line_number => 47
    ,p_offset => 929
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("ID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213677926961892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 11
    ,p_src_line_number => 48
    ,p_offset => 950
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213678059821892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 11
    ,p_src_line_number => 49
    ,p_offset => 972
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213678211667892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 51
    ,p_offset => 979
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "GAMECOMPANY" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213678368973892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 52
    ,p_offset => 1008
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"CID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213678451053892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 53
    ,p_offset => 1034
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"CNAME" VARCHAR2(20) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213678530640892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 54
    ,p_offset => 1074
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"TELNO" NUMBER(15,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213678600043892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 55
    ,p_offset => 1098
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"EMAIL" VARCHAR2(20), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213678769790892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 56
    ,p_offset => 1122
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"URL" VARCHAR2(20), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213678804444892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 57
    ,p_offset => 1144
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("CID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213678901095892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 58
    ,p_offset => 1166
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213679048881892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 59
    ,p_offset => 1190
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 UNIQUE ("CNAME")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213679118389892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 60
    ,p_offset => 1209
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213679240914892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 13
    ,p_src_line_number => 61
    ,p_offset => 1231
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213679410107892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 63
    ,p_offset => 1238
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "GAME" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213679562262892320
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 64
    ,p_offset => 1260
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"CID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213679610727892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 65
    ,p_offset => 1286
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"GAMEID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213679728770892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 66
    ,p_offset => 1311
    ,p_length => 42
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"GAMENAME" VARCHAR2(20) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213679881879892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 67
    ,p_offset => 1354
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PRICE" NUMBER(10,0) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213679915521892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 68
    ,p_offset => 1394
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"GENRE" VARCHAR2(15), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213680048897892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 69
    ,p_offset => 1418
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"AGELIMIT" VARCHAR2(5), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213680103372892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 70
    ,p_offset => 1444
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"RELEASEDATE" DATE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213680275621892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 71
    ,p_offset => 1466
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("GAMEID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213680378656892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 72
    ,p_offset => 1491
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213680449885892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 73
    ,p_offset => 1515
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 UNIQUE ("GAMENAME")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213680553163892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 74
    ,p_offset => 1537
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213680641313892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 15
    ,p_src_line_number => 75
    ,p_offset => 1559
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213680814336892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 17
    ,p_src_line_number => 77
    ,p_offset => 1566
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "DISCOUNTGAME" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213680996805892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 17
    ,p_src_line_number => 78
    ,p_offset => 1596
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"ID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213681003226892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 17
    ,p_src_line_number => 79
    ,p_offset => 1621
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PRODUCTID" NUMBER(10,0) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213681177054892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 17
    ,p_src_line_number => 80
    ,p_offset => 1665
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("ID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213681279123892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 17
    ,p_src_line_number => 81
    ,p_offset => 1686
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213681384690892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 17
    ,p_src_line_number => 82
    ,p_offset => 1710
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 UNIQUE ("PRODUCTID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213681418113892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 17
    ,p_src_line_number => 83
    ,p_offset => 1733
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213681554364892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 17
    ,p_src_line_number => 84
    ,p_offset => 1755
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213681790068892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 86
    ,p_offset => 1762
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "EXTRAPROGRAM" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213681800664892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 87
    ,p_offset => 1792
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"PROGRAMID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213681943858892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 88
    ,p_offset => 1824
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"GAMEID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213682077963892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 89
    ,p_offset => 1849
    ,p_length => 45
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PROGRAMNAME" VARCHAR2(20) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213682134975892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 90
    ,p_offset => 1895
    ,p_length => 46
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PROGRAMPRICE" NUMBER(10,0) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213682269308892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 91
    ,p_offset => 1942
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"RELEASEDATE" DATE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213682335531892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 92
    ,p_offset => 1964
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("PROGRAMID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213682419044892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 93
    ,p_offset => 1992
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213682556672892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 94
    ,p_offset => 2016
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 UNIQUE ("PROGRAMNAME")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213682638456892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 95
    ,p_offset => 2041
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213682756693892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 19
    ,p_src_line_number => 96
    ,p_offset => 2063
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213682967599892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 21
    ,p_src_line_number => 98
    ,p_offset => 2070
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "DISCOUNTPROGRAM" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213683091378892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 21
    ,p_src_line_number => 99
    ,p_offset => 2103
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"ID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213683165298892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 21
    ,p_src_line_number => 100
    ,p_offset => 2128
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PRODUCTID" NUMBER(10,0) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213683262991892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 21
    ,p_src_line_number => 101
    ,p_offset => 2172
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("ID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213683344479892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 21
    ,p_src_line_number => 102
    ,p_offset => 2193
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213683430364892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 21
    ,p_src_line_number => 103
    ,p_offset => 2217
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 UNIQUE ("PRODUCTID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213683562037892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 21
    ,p_src_line_number => 104
    ,p_offset => 2240
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213683628963892321
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 21
    ,p_src_line_number => 105
    ,p_offset => 2262
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213683883496892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 23
    ,p_src_line_number => 107
    ,p_offset => 2269
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "EMP" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213683981794892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 23
    ,p_src_line_number => 108
    ,p_offset => 2290
    ,p_length => 42
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"EMPNO" NUMBER(4,0) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213684044290892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 23
    ,p_src_line_number => 109
    ,p_offset => 2333
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"ENAME" VARCHAR2(10), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213684130915892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 23
    ,p_src_line_number => 110
    ,p_offset => 2357
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"JOB" VARCHAR2(9), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213684244122892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 23
    ,p_src_line_number => 111
    ,p_offset => 2378
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"MGR" NUMBER(4,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213684312177892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 23
    ,p_src_line_number => 112
    ,p_offset => 2399
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"HIREDATE" DATE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213684485684892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 23
    ,p_src_line_number => 113
    ,p_offset => 2418
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"SAL" NUMBER(7,2), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213684559794892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 23
    ,p_src_line_number => 114
    ,p_offset => 2439
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"COMM" NUMBER(7,2), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213684634727892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 23
    ,p_src_line_number => 115
    ,p_offset => 2461
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"DEPTNO" NUMBER(2,0)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213684799822892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 23
    ,p_src_line_number => 116
    ,p_offset => 2483
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213684907901892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 25
    ,p_src_line_number => 118
    ,p_offset => 2490
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "GROUPOFFERS" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213685075851892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 25
    ,p_src_line_number => 119
    ,p_offset => 2519
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"LOWRATE" NUMBER(3,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213685144483892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 25
    ,p_src_line_number => 120
    ,p_offset => 2548
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"HIGHRATE" NUMBER(3,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213685261649892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 25
    ,p_src_line_number => 121
    ,p_offset => 2574
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"OFFERCATEGORY" NUMBER(3,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213685336231892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 25
    ,p_src_line_number => 122
    ,p_offset => 2605
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("OFFERCATEGORY")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213685451615892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 25
    ,p_src_line_number => 123
    ,p_offset => 2637
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213685587540892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 25
    ,p_src_line_number => 124
    ,p_offset => 2659
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213685754999892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 27
    ,p_src_line_number => 126
    ,p_offset => 2666
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "SALES" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213685852880892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 27
    ,p_src_line_number => 127
    ,p_offset => 2689
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"SID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213685935082892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 27
    ,p_src_line_number => 128
    ,p_offset => 2715
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("SID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213686009073892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 27
    ,p_src_line_number => 129
    ,p_offset => 2737
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213686101846892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 27
    ,p_src_line_number => 130
    ,p_offset => 2759
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213686340970892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 29
    ,p_src_line_number => 132
    ,p_offset => 2766
    ,p_length => 26
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "SALESGAME" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213686443703892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 29
    ,p_src_line_number => 133
    ,p_offset => 2793
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"SID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213686527996892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 29
    ,p_src_line_number => 134
    ,p_offset => 2819
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PRODUCTID" NUMBER(10,0) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213686611519892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 29
    ,p_src_line_number => 135
    ,p_offset => 2863
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PURCHASEDATE" DATE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213686728689892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 29
    ,p_src_line_number => 136
    ,p_offset => 2886
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213686834242892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 29
    ,p_src_line_number => 137
    ,p_offset => 2908
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"COST" NUMBER(10,0) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213686923490892322
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 29
    ,p_src_line_number => 138
    ,p_offset => 2947
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("SID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213687080379892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 29
    ,p_src_line_number => 139
    ,p_offset => 2969
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213687152981892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 29
    ,p_src_line_number => 140
    ,p_offset => 2991
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213687345848892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 31
    ,p_src_line_number => 142
    ,p_offset => 2998
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "SALESPROGRAM" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213687400335892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 31
    ,p_src_line_number => 143
    ,p_offset => 3028
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"SID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213687527431892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 31
    ,p_src_line_number => 144
    ,p_offset => 3054
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PRODUCTID" NUMBER(10,0) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213687607576892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 31
    ,p_src_line_number => 145
    ,p_offset => 3098
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PURCHASEDATE" DATE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213687776581892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 31
    ,p_src_line_number => 146
    ,p_offset => 3121
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213687853689892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 31
    ,p_src_line_number => 147
    ,p_offset => 3143
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"COST" NUMBER(10,0) NOT NULL ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213687993232892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 31
    ,p_src_line_number => 148
    ,p_offset => 3182
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("SID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213688089052892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 31
    ,p_src_line_number => 149
    ,p_offset => 3204
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213688172312892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 31
    ,p_src_line_number => 150
    ,p_offset => 3226
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213688339176892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 33
    ,p_src_line_number => 152
    ,p_offset => 3233
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "SALGRADE" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213688475619892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 33
    ,p_src_line_number => 153
    ,p_offset => 3259
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"GRADE" NUMBER, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213688545961892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 33
    ,p_src_line_number => 154
    ,p_offset => 3281
    ,p_length => 17
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"LOSAL" NUMBER, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213688669418892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 33
    ,p_src_line_number => 155
    ,p_offset => 3299
    ,p_length => 15
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"HISAL" NUMBER'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213688742550892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 33
    ,p_src_line_number => 156
    ,p_offset => 3315
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213688900449892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 35
    ,p_src_line_number => 158
    ,p_offset => 3322
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE  "SUBSCRIBES" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213689057982892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 35
    ,p_src_line_number => 159
    ,p_offset => 3350
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   (	"ID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213689193634892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 35
    ,p_src_line_number => 160
    ,p_offset => 3375
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"PID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213689291017892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 35
    ,p_src_line_number => 161
    ,p_offset => 3397
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	"COMID" NUMBER(10,0), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213689349796892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 35
    ,p_src_line_number => 162
    ,p_offset => 3421
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 PRIMARY KEY ("ID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213689493369892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 35
    ,p_src_line_number => 163
    ,p_offset => 3442
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213689517444892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 35
    ,p_src_line_number => 164
    ,p_offset => 3466
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '	 UNIQUE ("PID", "COMID")'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213689640614892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 35
    ,p_src_line_number => 165
    ,p_offset => 3492
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USING INDEX  ENABLE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3213689765060892323
    ,p_file_id => 3213673081922892307
    ,p_stmt_number => 35
    ,p_src_line_number => 166
    ,p_offset => 3514
    ,p_length => 4
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   )'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '44524F50205441424C4520454D503B0D0A44524F50205441424C4520444550543B0D0A44524F50205441424C4520424F4E55533B0D0A44524F50205441424C452053414C47524144453B0D0A0D0A435245415445205441424C4520454D500D0A28454D50';
wwv_flow_api.g_varchar2_table(2) := '4E4F204E554D424552283429204E4F54204E554C4C2C0D0A454E414D45205641524348415232283130292C0D0A4A4F422056415243484152322839292C0D0A4D4752204E554D4245522834292C0D0A484952454441544520444154452C0D0A53414C204E';
wwv_flow_api.g_varchar2_table(3) := '554D42455228372C2032292C0D0A434F4D4D204E554D42455228372C2032292C0D0A444550544E4F204E554D424552283229293B0D0A0D0A2F2A5573652074686520414C5445522053455353494F4E2073746174656D656E7420746F20736574206F7220';
wwv_flow_api.g_varchar2_table(4) := '6D6F6469667920616E79206F662074686520636F6E646974696F6E73206F7220706172616D657465727320746861742061666665637420796F757220636F6E6E656374696F6E20746F207468652064617461626173652E200D0A5468652073746174656D';
wwv_flow_api.g_varchar2_table(5) := '656E7420737461797320696E2065666665637420756E74696C20796F7520646973636F6E6E6563742066726F6D207468652064617461626173652E202A2F0D0A2D2D5365747320746865206C616E677561676520696E207768696368206D657373616765';
wwv_flow_api.g_varchar2_table(6) := '732061726520646973706C617965642E0D0A616C7465722073657373696F6E20736574206E6C735F6C616E67756167653D27454E474C495348273B0D0A2D2D536574732074686520646973706C617920666F726D617420666F72206461746520616E6420';
wwv_flow_api.g_varchar2_table(7) := '74696D652076616C7565732C2061732077656C6C206173207468652072756C657320666F7220696E74657270726574696E6720616D626967756F7573206461746520696E7075742076616C7565732E200D0A616C7465722073657373696F6E2073657420';
wwv_flow_api.g_varchar2_table(8) := '6E6C735F646174655F666F726D61743D2744442D4D4F4E2D59595959273B200D0A0D0A494E5345525420494E544F20454D502056414C5545530D0A28373336392C2027534D495448272C2027434C45524B272C20373930322C0D0A544F5F444154452827';
wwv_flow_api.g_varchar2_table(9) := '31372D4445432D31393830272C202744442D4D4F4E2D5959595927292C203830302C204E554C4C2C203230293B0D0A494E5345525420494E544F20454D502056414C5545530D0A28373439392C2027414C4C454E272C202753414C45534D414E272C2037';
wwv_flow_api.g_varchar2_table(10) := '3639382C0D0A544F5F44415445282732302D4645422D31393831272C202744442D4D4F4E2D5959595927292C20313630302C203330302C203330293B0D0A494E5345525420494E544F20454D502056414C5545530D0A28373532312C202757415244272C';
wwv_flow_api.g_varchar2_table(11) := '202753414C45534D414E272C20373639382C0D0A544F5F44415445282732322D4645422D31393831272C202744442D4D4F4E2D5959595927292C20313235302C203530302C203330293B0D0A494E5345525420494E544F20454D502056414C5545530D0A';
wwv_flow_api.g_varchar2_table(12) := '28373536362C20274A4F4E4553272C20274D414E41474552272C20373833392C0D0A544F5F444154452827322D4150522D31393831272C202744442D4D4F4E2D5959595927292C20323937352C204E554C4C2C203230293B0D0A494E5345525420494E54';
wwv_flow_api.g_varchar2_table(13) := '4F20454D502056414C5545530D0A28373635342C20274D415254494E272C202753414C45534D414E272C20373639382C0D0A544F5F44415445282732382D5345502D31393831272C202744442D4D4F4E2D5959595927292C20313235302C20313430302C';
wwv_flow_api.g_varchar2_table(14) := '203330293B0D0A494E5345525420494E544F20454D502056414C5545530D0A28373639382C2027424C414B45272C20274D414E41474552272C20373833392C0D0A544F5F444154452827312D4D41592D31393831272C202744442D4D4F4E2D5959595927';
wwv_flow_api.g_varchar2_table(15) := '292C20323835302C204E554C4C2C203330293B0D0A494E5345525420494E544F20454D502056414C5545530D0A28373738322C2027434C41524B272C20274D414E41474552272C20373833392C0D0A544F5F444154452827392D4A554E2D31393831272C';
wwv_flow_api.g_varchar2_table(16) := '202744442D4D4F4E2D5959595927292C20323435302C204E554C4C2C203130293B0D0A494E5345525420494E544F20454D502056414C5545530D0A28373738382C202753434F5454272C2027414E414C595354272C20373536362C0D0A544F5F44415445';
wwv_flow_api.g_varchar2_table(17) := '282730392D4445432D31393832272C202744442D4D4F4E2D5959595927292C20333030302C204E554C4C2C203230293B0D0A494E5345525420494E544F20454D502056414C5545530D0A28373833392C20274B494E47272C2027505245534944454E5427';
wwv_flow_api.g_varchar2_table(18) := '2C204E554C4C2C0D0A544F5F44415445282731372D4E4F562D31393831272C202744442D4D4F4E2D5959595927292C20353030302C204E554C4C2C203130293B0D0A494E5345525420494E544F20454D502056414C5545530D0A28373834342C20275455';
wwv_flow_api.g_varchar2_table(19) := '524E4552272C202753414C45534D414E272C20373639382C0D0A544F5F444154452827382D5345502D31393831272C202744442D4D4F4E2D5959595927292C20313530302C20302C203330293B0D0A494E5345525420494E544F20454D502056414C5545';
wwv_flow_api.g_varchar2_table(20) := '530D0A28373837362C20274144414D53272C2027434C45524B272C20373738382C0D0A544F5F44415445282731322D4A414E2D31393833272C202744442D4D4F4E2D5959595927292C20313130302C204E554C4C2C203230293B0D0A494E534552542049';
wwv_flow_api.g_varchar2_table(21) := '4E544F20454D502056414C5545530D0A28373930302C20274A414D4553272C2027434C45524B272C20373639382C0D0A544F5F444154452827332D4445432D31393831272C202744442D4D4F4E2D5959595927292C203935302C204E554C4C2C20333029';
wwv_flow_api.g_varchar2_table(22) := '3B0D0A494E5345525420494E544F20454D502056414C5545530D0A28373930322C2027464F5244272C2027414E414C595354272C20373536362C0D0A544F5F444154452827332D4445432D31393831272C202744442D4D4F4E2D5959595927292C203330';
wwv_flow_api.g_varchar2_table(23) := '30302C204E554C4C2C203230293B0D0A494E5345525420494E544F20454D502056414C5545530D0A28373933342C20274D494C4C4552272C2027434C45524B272C20373738322C0D0A544F5F44415445282732332D4A414E2D31393832272C202744442D';
wwv_flow_api.g_varchar2_table(24) := '4D4F4E2D5959595927292C20313330302C204E554C4C2C203130293B0D0A0D0A435245415445205441424C4520444550540D0A28444550544E4F204E554D4245522832292C0D0A444E414D45205641524348415232283134292C0D0A4C4F432056415243';
wwv_flow_api.g_varchar2_table(25) := '484152322831332920293B0D0A0D0A494E5345525420494E544F20444550542056414C554553202831302C20274143434F554E54494E47272C20274E455720594F524B27293B0D0A494E5345525420494E544F20444550542056414C554553202832302C';
wwv_flow_api.g_varchar2_table(26) := '20275245534541524348272C202744414C4C415327293B0D0A494E5345525420494E544F20444550542056414C554553202833302C202753414C4553272C20274348494341474F27293B0D0A494E5345525420494E544F20444550542056414C55455320';
wwv_flow_api.g_varchar2_table(27) := '2834302C20274F5045524154494F4E53272C2027424F53544F4E27293B0D0A0D0A435245415445205441424C4520424F4E55530D0A28454E414D45205641524348415232283130292C0D0A4A4F422056415243484152322839292C0D0A53414C204E554D';
wwv_flow_api.g_varchar2_table(28) := '4245522C0D0A434F4D4D204E554D424552293B0D0A0D0A435245415445205441424C452053414C47524144450D0A284752414445204E554D4245522C0D0A4C4F53414C204E554D4245522C0D0A484953414C204E554D424552293B0D0A0D0A494E534552';
wwv_flow_api.g_varchar2_table(29) := '5420494E544F2053414C47524144452056414C5545532028312C203730302C2031323030293B0D0A494E5345525420494E544F2053414C47524144452056414C5545532028322C20313230312C2031343030293B0D0A494E5345525420494E544F205341';
wwv_flow_api.g_varchar2_table(30) := '4C47524144452056414C5545532028332C20313430312C2032303030293B0D0A494E5345525420494E544F2053414C47524144452056414C5545532028342C20323030312C2033303030293B0D0A494E5345525420494E544F2053414C47524144452056';
wwv_flow_api.g_varchar2_table(31) := '414C5545532028352C20333030312C2039393939293B';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 46090513634276500092,
    p_flow_id => 4500,
    p_name => '46090513634276500092/demo',
    p_pathid => null,
    p_filename => 'demo',
    p_title => 'demo',
    p_mime_type => 'application/octet-stream',
    p_dad_charset => 'UTF-8',
    p_created_by => 'TALANSADIK@GMAIL.COM',
    p_created_on => to_date('201611201115','YYYYMMDDHH24MI'),
    p_updated_by => 'TALANSADIK@GMAIL.COM',
    p_updated_on => to_date('201611201115','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212765594129827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 2
    ,p_src_line_number => 1
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212765700015827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 4
    ,p_src_line_number => 2
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212765916658827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 6
    ,p_src_line_number => 3
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212766172043827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 8
    ,p_src_line_number => 4
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212767176129827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 11
    ,p_src_line_number => 14
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212767342867827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 16
    ,p_src_line_number => 19
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212767533021827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 19
    ,p_src_line_number => 21
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212767918813827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 22
    ,p_src_line_number => 25
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212768395529827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 24
    ,p_src_line_number => 28
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212768732074827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 26
    ,p_src_line_number => 31
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212769123137827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 28
    ,p_src_line_number => 34
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212769501197827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 30
    ,p_src_line_number => 37
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212769921681827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 32
    ,p_src_line_number => 40
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212770335080827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 34
    ,p_src_line_number => 43
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212770793268827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 36
    ,p_src_line_number => 46
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212771124018827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 38
    ,p_src_line_number => 49
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212771561755827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 40
    ,p_src_line_number => 52
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212771944154827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 42
    ,p_src_line_number => 55
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212772319405827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 44
    ,p_src_line_number => 58
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212772795852827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 46
    ,p_src_line_number => 61
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212773171295827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 48
    ,p_src_line_number => 64
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212773602539827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 51
    ,p_src_line_number => 69
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212773817524827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 54
    ,p_src_line_number => 71
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212774072181827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 56
    ,p_src_line_number => 72
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212774249289827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 58
    ,p_src_line_number => 73
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212774456352827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 60
    ,p_src_line_number => 74
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212775017684827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 63
    ,p_src_line_number => 80
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212775568388827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 66
    ,p_src_line_number => 85
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212775790783827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 69
    ,p_src_line_number => 87
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212775982471827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 71
    ,p_src_line_number => 88
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212776193970827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 73
    ,p_src_line_number => 89
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212776306748827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 75
    ,p_src_line_number => 90
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212776589396827890
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 77
    ,p_src_line_number => 91
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212767230729827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 15
    ,p_src_line_number => 19
    ,p_offset => 519
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'alter session set nls_language=''ENGLISH'''
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212767459107827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 18
    ,p_src_line_number => 21
    ,p_offset => 683
    ,p_length => 47
    ,p_stmt_class => 2
    ,p_stmt_id => 3
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'alter session set nls_date_format=''DD-MON-YYYY'''
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212766207713827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 10
    ,p_src_line_number => 6
    ,p_offset => 79
    ,p_length => 17
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE EMP '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212766366285827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 10
    ,p_src_line_number => 7
    ,p_offset => 97
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(EMPNO NUMBER(4) NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212766497941827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 10
    ,p_src_line_number => 8
    ,p_offset => 125
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'ENAME VARCHAR2(10), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212766552698827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 10
    ,p_src_line_number => 9
    ,p_offset => 146
    ,p_length => 17
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'JOB VARCHAR2(9), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212766687839827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 10
    ,p_src_line_number => 10
    ,p_offset => 164
    ,p_length => 15
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'MGR NUMBER(4), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212766736073827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 10
    ,p_src_line_number => 11
    ,p_offset => 180
    ,p_length => 15
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'HIREDATE DATE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212766812889827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 10
    ,p_src_line_number => 12
    ,p_offset => 196
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'SAL NUMBER(7, 2), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212766994061827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 10
    ,p_src_line_number => 13
    ,p_offset => 215
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'COMM NUMBER(7, 2), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212767025585827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 10
    ,p_src_line_number => 14
    ,p_offset => 235
    ,p_length => 17
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'DEPTNO NUMBER(2))'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212773235893827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 50
    ,p_src_line_number => 66
    ,p_offset => 2333
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE DEPT '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212773315988827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 50
    ,p_src_line_number => 67
    ,p_offset => 2352
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(DEPTNO NUMBER(2), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212773477363827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 50
    ,p_src_line_number => 68
    ,p_offset => 2372
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'DNAME VARCHAR2(14), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212773596941827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 50
    ,p_src_line_number => 69
    ,p_offset => 2393
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'LOC VARCHAR2(13) )'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212774586450827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 62
    ,p_src_line_number => 76
    ,p_offset => 2634
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE BONUS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212774606160827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 62
    ,p_src_line_number => 77
    ,p_offset => 2654
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(ENAME VARCHAR2(10), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212774764049827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 62
    ,p_src_line_number => 78
    ,p_offset => 2676
    ,p_length => 17
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'JOB VARCHAR2(9), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212774871104827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 62
    ,p_src_line_number => 79
    ,p_offset => 2694
    ,p_length => 12
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'SAL NUMBER, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212774933338827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 62
    ,p_src_line_number => 80
    ,p_offset => 2707
    ,p_length => 12
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'COMM NUMBER)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212775146194827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 65
    ,p_src_line_number => 82
    ,p_offset => 2724
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE SALGRADE '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212775204817827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 65
    ,p_src_line_number => 83
    ,p_offset => 2747
    ,p_length => 15
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(GRADE NUMBER, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212775335528827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 65
    ,p_src_line_number => 84
    ,p_offset => 2763
    ,p_length => 14
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'LOSAL NUMBER, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212775445507827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 65
    ,p_src_line_number => 85
    ,p_offset => 2778
    ,p_length => 13
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'HISAL NUMBER)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212765401238827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 14
    ,p_stmt_class => 2
    ,p_stmt_id => 35
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'DROP TABLE EMP'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212765619381827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 3
    ,p_src_line_number => 2
    ,p_offset => 18
    ,p_length => 15
    ,p_stmt_class => 2
    ,p_stmt_id => 35
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'DROP TABLE DEPT'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212765842960827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 5
    ,p_src_line_number => 3
    ,p_offset => 36
    ,p_length => 16
    ,p_stmt_class => 2
    ,p_stmt_id => 35
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'DROP TABLE BONUS'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212766006146827884
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 7
    ,p_src_line_number => 4
    ,p_offset => 55
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 35
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'DROP TABLE SALGRADE'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212767602228827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 21
    ,p_src_line_number => 23
    ,p_offset => 736
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212767718117827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 21
    ,p_src_line_number => 24
    ,p_offset => 760
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7369, ''SMITH'', ''CLERK'', 7902, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212767827362827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 21
    ,p_src_line_number => 25
    ,p_offset => 792
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''17-DEC-1980'', ''DD-MON-YYYY''), 800, NULL, 20)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212768004525827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 23
    ,p_src_line_number => 26
    ,p_offset => 848
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212768182963827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 23
    ,p_src_line_number => 27
    ,p_offset => 872
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7499, ''ALLEN'', ''SALESMAN'', 7698, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212768254833827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 23
    ,p_src_line_number => 28
    ,p_offset => 907
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''20-FEB-1981'', ''DD-MON-YYYY''), 1600, 300, 30)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212768408461827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 25
    ,p_src_line_number => 29
    ,p_offset => 963
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212768525573827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 25
    ,p_src_line_number => 30
    ,p_offset => 987
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7521, ''WARD'', ''SALESMAN'', 7698, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212768660636827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 25
    ,p_src_line_number => 31
    ,p_offset => 1021
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''22-FEB-1981'', ''DD-MON-YYYY''), 1250, 500, 30)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212768888155827885
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 27
    ,p_src_line_number => 32
    ,p_offset => 1077
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212768907224827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 27
    ,p_src_line_number => 33
    ,p_offset => 1101
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7566, ''JONES'', ''MANAGER'', 7839, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212769069697827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 27
    ,p_src_line_number => 34
    ,p_offset => 1135
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''2-APR-1981'', ''DD-MON-YYYY''), 2975, NULL, 20)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212769251477827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 29
    ,p_src_line_number => 35
    ,p_offset => 1191
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212769385017827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 29
    ,p_src_line_number => 36
    ,p_offset => 1215
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7654, ''MARTIN'', ''SALESMAN'', 7698, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212769409769827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 29
    ,p_src_line_number => 37
    ,p_offset => 1251
    ,p_length => 54
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''28-SEP-1981'', ''DD-MON-YYYY''), 1250, 1400, 30)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212769655944827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 31
    ,p_src_line_number => 38
    ,p_offset => 1308
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212769764766827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 31
    ,p_src_line_number => 39
    ,p_offset => 1332
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7698, ''BLAKE'', ''MANAGER'', 7839, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212769883187827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 31
    ,p_src_line_number => 40
    ,p_offset => 1366
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''1-MAY-1981'', ''DD-MON-YYYY''), 2850, NULL, 30)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212770078842827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 33
    ,p_src_line_number => 41
    ,p_offset => 1422
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212770100600827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 33
    ,p_src_line_number => 42
    ,p_offset => 1446
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7782, ''CLARK'', ''MANAGER'', 7839, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212770252746827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 33
    ,p_src_line_number => 43
    ,p_offset => 1480
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''9-JUN-1981'', ''DD-MON-YYYY''), 2450, NULL, 10)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212770494013827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 35
    ,p_src_line_number => 44
    ,p_offset => 1536
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212770586140827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 35
    ,p_src_line_number => 45
    ,p_offset => 1560
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7788, ''SCOTT'', ''ANALYST'', 7566, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212770634196827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 35
    ,p_src_line_number => 46
    ,p_offset => 1594
    ,p_length => 54
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''09-DEC-1982'', ''DD-MON-YYYY''), 3000, NULL, 20)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212770848051827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 37
    ,p_src_line_number => 47
    ,p_offset => 1651
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212770926979827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 37
    ,p_src_line_number => 48
    ,p_offset => 1675
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7839, ''KING'', ''PRESIDENT'', NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212771032945827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 37
    ,p_src_line_number => 49
    ,p_offset => 1710
    ,p_length => 54
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''17-NOV-1981'', ''DD-MON-YYYY''), 5000, NULL, 10)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212771252668827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 39
    ,p_src_line_number => 50
    ,p_offset => 1767
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212771379639827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 39
    ,p_src_line_number => 51
    ,p_offset => 1791
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7844, ''TURNER'', ''SALESMAN'', 7698, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212771434579827886
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 39
    ,p_src_line_number => 52
    ,p_offset => 1827
    ,p_length => 50
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''8-SEP-1981'', ''DD-MON-YYYY''), 1500, 0, 30)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212771649149827887
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 41
    ,p_src_line_number => 53
    ,p_offset => 1880
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212771786557827887
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 41
    ,p_src_line_number => 54
    ,p_offset => 1904
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7876, ''ADAMS'', ''CLERK'', 7788, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212771871353827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 41
    ,p_src_line_number => 55
    ,p_offset => 1936
    ,p_length => 54
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''12-JAN-1983'', ''DD-MON-YYYY''), 1100, NULL, 20)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212772054843827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 43
    ,p_src_line_number => 56
    ,p_offset => 1993
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212772145885827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 43
    ,p_src_line_number => 57
    ,p_offset => 2017
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7900, ''JAMES'', ''CLERK'', 7698, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212772269870827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 43
    ,p_src_line_number => 58
    ,p_offset => 2049
    ,p_length => 52
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''3-DEC-1981'', ''DD-MON-YYYY''), 950, NULL, 30)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212772482827827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 45
    ,p_src_line_number => 59
    ,p_offset => 2104
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212772542602827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 45
    ,p_src_line_number => 60
    ,p_offset => 2128
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7902, ''FORD'', ''ANALYST'', 7566, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212772617169827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 45
    ,p_src_line_number => 61
    ,p_offset => 2161
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''3-DEC-1981'', ''DD-MON-YYYY''), 3000, NULL, 20)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212772826048827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 47
    ,p_src_line_number => 62
    ,p_offset => 2217
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO EMP VALUES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212772921004827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 47
    ,p_src_line_number => 63
    ,p_offset => 2241
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(7934, ''MILLER'', ''CLERK'', 7782, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212773049327827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 47
    ,p_src_line_number => 64
    ,p_offset => 2274
    ,p_length => 54
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'TO_DATE(''23-JAN-1982'', ''DD-MON-YYYY''), 1300, NULL, 10)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212773758415827888
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 53
    ,p_src_line_number => 71
    ,p_offset => 2416
    ,p_length => 54
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO DEPT VALUES (10, ''ACCOUNTING'', ''NEW YORK'')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212773954398827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 55
    ,p_src_line_number => 72
    ,p_offset => 2473
    ,p_length => 50
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO DEPT VALUES (20, ''RESEARCH'', ''DALLAS'')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212774197767827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 57
    ,p_src_line_number => 73
    ,p_offset => 2526
    ,p_length => 48
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO DEPT VALUES (30, ''SALES'', ''CHICAGO'')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212774358842827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 59
    ,p_src_line_number => 74
    ,p_offset => 2577
    ,p_length => 52
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO DEPT VALUES (40, ''OPERATIONS'', ''BOSTON'')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212775647678827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 68
    ,p_src_line_number => 87
    ,p_offset => 2796
    ,p_length => 42
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO SALGRADE VALUES (1, 700, 1200)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212775873049827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 70
    ,p_src_line_number => 88
    ,p_offset => 2841
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO SALGRADE VALUES (2, 1201, 1400)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212776063345827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 72
    ,p_src_line_number => 89
    ,p_offset => 2887
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO SALGRADE VALUES (3, 1401, 2000)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212776248089827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 74
    ,p_src_line_number => 90
    ,p_offset => 2933
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO SALGRADE VALUES (4, 2001, 3000)'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 3212776403793827889
    ,p_file_id => 46090513634276500092
    ,p_stmt_number => 76
    ,p_src_line_number => 91
    ,p_offset => 2979
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO SALGRADE VALUES (5, 3001, 9999)'
);
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 46138643571836383635,
    p_file_id => 46090513634276500092,
    p_job_id => null,
    p_run_by => 'TALANSADIK@GMAIL.COM',
    p_run_as => 'LABSCHEMA2',
    p_started => to_date('201612170250','YYYYMMDDHH24MI'),
    p_start_time => 689383636,
    p_ended => to_date('201611210910','YYYYMMDDHH24MI'),
    p_end_time => 689383710,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 46090525478573501977,
    p_file_id => 46090513634276500092,
    p_job_id => null,
    p_run_by => 'TALANSADIK@GMAIL.COM',
    p_run_as => 'LABSCHEMA2',
    p_started => to_date('201612170250','YYYYMMDDHH24MI'),
    p_start_time => 681501978,
    p_ended => to_date('201611201116','YYYYMMDDHH24MI'),
    p_end_time => 681502042,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 3212777571333828200,
    p_file_id => 46090513634276500092,
    p_job_id => null,
    p_run_by => 'TALANSADIK@GMAIL.COM',
    p_run_as => 'LABSCHEMA2',
    p_started => to_date('201701241044','YYYYMMDDHH24MI'),
    p_start_time => 1242828201,
    p_ended => to_date('201701241044','YYYYMMDDHH24MI'),
    p_end_time => 1242828279,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212777634995828201
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'DROP TABLE EMP'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828201
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828204
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212777754950828204
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 2
    ,p_stmt_num => 3
 ,p_stmt_text => 
'DROP TABLE DEPT'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828204
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828204
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212777838253828205
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 3
    ,p_stmt_num => 5
 ,p_stmt_text => 
'DROP TABLE BONUS'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828205
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828205
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212777954675828205
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 4
    ,p_stmt_num => 7
 ,p_stmt_text => 
'DROP TABLE SALGRADE'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00942: table or view does not exist'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828205
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828206
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212778080166828206
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 5
    ,p_stmt_num => 10
 ,p_stmt_text => 
'CREATE TABLE EMP (EMPNO NUMBER(4) NOT NULL, ENAME VARCHAR2(10), JOB VARCHAR2(9), MGR NUMBER(4), HIREDATE DATE, SAL NUMBER(7, 2), COMM NUMBER(7, 2), DEPTNO NUMBER(2))'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828206
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828210
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212778190369828210
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 6
    ,p_stmt_num => 15
 ,p_stmt_text => 
'alter session set nls_language=''ENGLISH'''
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Statement processed.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828210
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828224
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212778277293828226
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 7
    ,p_stmt_num => 18
 ,p_stmt_text => 
'alter session set nls_date_format=''DD-MON-YYYY'''
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Statement processed.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828226
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828244
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212778322773828245
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 8
    ,p_stmt_num => 21
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7369, ''SMITH'', ''CLERK'', 7902, TO_DATE(''17-DEC-1980'', ''DD-MON-YYYY''), 800, NULL, 20)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828245
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828253
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212778481172828253
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 9
    ,p_stmt_num => 23
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7499, ''ALLEN'', ''SALESMAN'', 7698, TO_DATE(''20-FEB-1981'', ''DD-MON-YYYY''), 1600, 300, 30)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828253
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828253
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212778545719828253
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 10
    ,p_stmt_num => 25
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7521, ''WARD'', ''SALESMAN'', 7698, TO_DATE(''22-FEB-1981'', ''DD-MON-YYYY''), 1250, 500, 30)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828253
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828253
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212778697326828254
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 11
    ,p_stmt_num => 27
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7566, ''JONES'', ''MANAGER'', 7839, TO_DATE(''2-APR-1981'', ''DD-MON-YYYY''), 2975, NULL, 20)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828254
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828254
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212778746619828254
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 12
    ,p_stmt_num => 29
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7654, ''MARTIN'', ''SALESMAN'', 7698, TO_DATE(''28-SEP-1981'', ''DD-MON-YYYY''), 1250, 1400, 30)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828254
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828254
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212778861446828254
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 13
    ,p_stmt_num => 31
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7698, ''BLAKE'', ''MANAGER'', 7839, TO_DATE(''1-MAY-1981'', ''DD-MON-YYYY''), 2850, NULL, 30)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828254
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828255
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212778977292828255
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 14
    ,p_stmt_num => 33
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7782, ''CLARK'', ''MANAGER'', 7839, TO_DATE(''9-JUN-1981'', ''DD-MON-YYYY''), 2450, NULL, 10)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828255
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828255
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212779092798828255
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 15
    ,p_stmt_num => 35
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7788, ''SCOTT'', ''ANALYST'', 7566, TO_DATE(''09-DEC-1982'', ''DD-MON-YYYY''), 3000, NULL, 20)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828255
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828256
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212779166658828256
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 16
    ,p_stmt_num => 37
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7839, ''KING'', ''PRESIDENT'', NULL, TO_DATE(''17-NOV-1981'', ''DD-MON-YYYY''), 5000, NULL, 10)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828256
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828256
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212779214967828256
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 17
    ,p_stmt_num => 39
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7844, ''TURNER'', ''SALESMAN'', 7698, TO_DATE(''8-SEP-1981'', ''DD-MON-YYYY''), 1500, 0, 30)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828256
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828256
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212779363468828256
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 18
    ,p_stmt_num => 41
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7876, ''ADAMS'', ''CLERK'', 7788, TO_DATE(''12-JAN-1983'', ''DD-MON-YYYY''), 1100, NULL, 20)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828257
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828257
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212779439013828257
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 19
    ,p_stmt_num => 43
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7900, ''JAMES'', ''CLERK'', 7698, TO_DATE(''3-DEC-1981'', ''DD-MON-YYYY''), 950, NULL, 30)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828257
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828257
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212779580960828257
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 20
    ,p_stmt_num => 45
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7902, ''FORD'', ''ANALYST'', 7566, TO_DATE(''3-DEC-1981'', ''DD-MON-YYYY''), 3000, NULL, 20)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828257
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828258
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212779630544828258
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 21
    ,p_stmt_num => 47
 ,p_stmt_text => 
'INSERT INTO EMP VALUES (7934, ''MILLER'', ''CLERK'', 7782, TO_DATE(''23-JAN-1982'', ''DD-MON-YYYY''), 1300, NULL, 10)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828258
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828258
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212779796388828258
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 22
    ,p_stmt_num => 50
 ,p_stmt_text => 
'CREATE TABLE DEPT (DEPTNO NUMBER(2), DNAME VARCHAR2(14), LOC VARCHAR2(13) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828258
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828266
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212779888972828266
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 23
    ,p_stmt_num => 53
 ,p_stmt_text => 
'INSERT INTO DEPT VALUES (10, ''ACCOUNTING'', ''NEW YORK'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828266
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828268
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212779978848828268
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 24
    ,p_stmt_num => 55
 ,p_stmt_text => 
'INSERT INTO DEPT VALUES (20, ''RESEARCH'', ''DALLAS'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828268
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828268
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212780003782828269
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 25
    ,p_stmt_num => 57
 ,p_stmt_text => 
'INSERT INTO DEPT VALUES (30, ''SALES'', ''CHICAGO'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828269
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828269
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212780153446828269
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 26
    ,p_stmt_num => 59
 ,p_stmt_text => 
'INSERT INTO DEPT VALUES (40, ''OPERATIONS'', ''BOSTON'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828269
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828269
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212780249084828269
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 27
    ,p_stmt_num => 62
 ,p_stmt_text => 
'CREATE TABLE BONUS (ENAME VARCHAR2(10), JOB VARCHAR2(9), SAL NUMBER, COMM NUMBER)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828269
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828271
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212780471279828271
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 28
    ,p_stmt_num => 65
 ,p_stmt_text => 
'CREATE TABLE SALGRADE (GRADE NUMBER, LOSAL NUMBER, HISAL NUMBER)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828271
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828273
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212780684420828273
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 29
    ,p_stmt_num => 68
 ,p_stmt_text => 
'INSERT INTO SALGRADE VALUES (1, 700, 1200)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828273
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828277
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212780806857828277
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 30
    ,p_stmt_num => 70
 ,p_stmt_text => 
'INSERT INTO SALGRADE VALUES (2, 1201, 1400)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828277
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828277
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212780989297828277
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 31
    ,p_stmt_num => 72
 ,p_stmt_text => 
'INSERT INTO SALGRADE VALUES (3, 1401, 2000)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828277
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828278
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212781024556828278
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 32
    ,p_stmt_num => 74
 ,p_stmt_text => 
'INSERT INTO SALGRADE VALUES (4, 2001, 3000)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828278
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828278
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 3212781171773828278
    ,p_result_id => 3212777571333828200
    ,p_file_id => 46090513634276500092
    ,p_seq_id => 33
    ,p_stmt_num => 76
 ,p_stmt_text => 
'INSERT INTO SALGRADE VALUES (5, 3001, 9999)'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_start_time => 1242828278
    ,p_ended => to_date('201701241044','YYYYMMDDHH24MI')
    ,p_end_time => 1242828279
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201701241044','YYYYMMDDHH24MI'));
end;
/
----------------
--sql commands
--
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1312150337212197397
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'   FOR cur_rec IN (SELECT object_name, object_type'||wwv_flow.LF||
'                     FROM user_objects'||wwv_flow.LF||
'                    WHERE object_type IN'||wwv_flow.LF||
'                             (''TABLE'','||wwv_flow.LF||
'                              ''VIEW'','||wwv_flow.LF||
'                              ''PACKAGE'','||wwv_flow.LF||
'                              ''PROCEDURE'','||wwv_flow.LF||
'                              ''FUNCTION'','||wwv_flow.LF||
'                              ''SEQUENCE'''||wwv_flow.LF||
'                   '||
'          ))'||wwv_flow.LF||
'   LOOP'||wwv_flow.LF||
'      BEGIN'||wwv_flow.LF||
'         IF cur_rec.object_type = ''TABLE'''||wwv_flow.LF||
'         THEN'||wwv_flow.LF||
'            EXECUTE IMMEDIATE    ''DROP '''||wwv_flow.LF||
'                              || cur_rec.object_type'||wwv_flow.LF||
'                              || '' "'''||wwv_flow.LF||
'                              || cur_rec.object_name'||wwv_flow.LF||
'                              || ''" CASCADE CONSTRAINTS'';'||wwv_flow.LF||
'         ELSE'||wwv_flow.LF||
'            EXECUTE IMMEDIATE    ''DROP '''||wwv_flow.LF||
'             '||
'                 || cur_rec.object_type'||wwv_flow.LF||
'                              || '' "'''||wwv_flow.LF||
'                              || cur_rec.object_name'||wwv_flow.LF||
'                              || ''"'';'||wwv_flow.LF||
'         END IF;'||wwv_flow.LF||
'      EXCEPTION'||wwv_flow.LF||
'         WHEN OTHERS'||wwv_flow.LF||
'         THEN'||wwv_flow.LF||
'            DBMS_OUTPUT.put_line (   ''FAILED: DROP '''||wwv_flow.LF||
'                                  || cur_rec.object_type'||wwv_flow.LF||
'                                  || '' "'''||wwv_flow.LF||
'           '||
'                       || cur_rec.object_name'||wwv_flow.LF||
'                                  || ''"'''||wwv_flow.LF||
'                                 );'||wwv_flow.LF||
'      END;'||wwv_flow.LF||
'   END LOOP;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011914','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1312397619255204171
 ,p_command => 
'CREATE TABLE PERSON('||wwv_flow.LF||
'PID NUMBER(10),'||wwv_flow.LF||
'TNO NUMBER(15),'||wwv_flow.LF||
'PNAME VARCHAR2(15) NOT NULL,'||wwv_flow.LF||
'PMAIL VARCHAR2(25),'||wwv_flow.LF||
'PBIRTHDAY DATE,'||wwv_flow.LF||
'UNIQUE(PNAME),'||wwv_flow.LF||
'UNIQUE(PMAIL),'||wwv_flow.LF||
'CONSTRAINT USER_PID_pk PRIMARY KEY(PID));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1312484268295206046
 ,p_command => 
'INSERT INTO PERSON VALUES'||wwv_flow.LF||
'(1,05344168919,''BAHADIR'',''bahadiryurdakul@gmail.com'',TO_DATE(''10-APR-1995'', ''DD-MON-YYYY''));'||wwv_flow.LF||
''
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1312484424249206619
 ,p_command => 
'INSERT INTO PERSON VALUES'||wwv_flow.LF||
'(2,05239999999,''SADIK'',''talansadik@gmail.com'',TO_DATE(''28-MAY-1992'', ''DD-MON-YYYY''));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1312515824769209387
 ,p_command => 
'SELECT p.pname,ABS( (SYSDATE-p.PBIRTHDAY) / 365 ) "age"'||wwv_flow.LF||
'FROM PERSON p;   '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1312983716213228423
 ,p_command => 
'SELECT p.pname,MONTHS_BETWWEN( (SYSDATE-p.PBIRTHDAY) )/12 "age"'||wwv_flow.LF||
'FROM PERSON p;   '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011919','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1312985082859230019
 ,p_command => 
'SELECT p.pname,MONTHS_BETWEEN( (SYSDATE-p.PBIRTHDAY) )/12 "age"'||wwv_flow.LF||
'FROM PERSON p;   '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313056372842231595
 ,p_command => 
'SELECT p.pname,MONTHS_BETWEEN( (SYSDATE-p.PBIRTHDAY) ) "age"'||wwv_flow.LF||
'FROM PERSON p;   '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313179815208233410
 ,p_command => 
'CREATE TABLE ADMIN('||wwv_flow.LF||
'PID NUMBER(10),'||wwv_flow.LF||
'COMID NUMBER(10),'||wwv_flow.LF||
'FOREIGN KEY(PID) REFERENCES PERSON(PID),'||wwv_flow.LF||
'PRIMARY KEY(COMID)'||wwv_flow.LF||
');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313269226704236362
 ,p_command => 
'CREATE TABLE COMMUNITY('||wwv_flow.LF||
'COMID NUMBER(10),'||wwv_flow.LF||
'COMNAME VARCHAR2(20) NOT NULL,'||wwv_flow.LF||
'FOREIGN KEY(COMID) REFERENCES ADMIN(COMID),'||wwv_flow.LF||
'UNIQUE(COMNAME),'||wwv_flow.LF||
'PRIMARY KEY(COMID));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313361232530239036
 ,p_command => 
'CREATE TABLE SUBSCRIBES('||wwv_flow.LF||
'ID NUMBER(10),'||wwv_flow.LF||
'PID NUMBER(10),'||wwv_flow.LF||
'COMID NUMBER(10),  '||wwv_flow.LF||
'FOREIGN KEY(PID) REFERENCES PERSON(PID),'||wwv_flow.LF||
'FOREIGN KEY(COMID) REFERENCES ADMIN(COMID),'||wwv_flow.LF||
'UNIQUE(PID,COMID),'||wwv_flow.LF||
'PRIMARY KEY(ID)'||wwv_flow.LF||
');'||wwv_flow.LF||
''
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313524613365248125
 ,p_command => 
'INSERT INTO ADMIN VALUES(1,101);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313524993597248835
 ,p_command => 
'INSERT INTO SUBSCRIBES VALUES(1,1,101);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313525848856249997
 ,p_command => 
'INSERT INTO ADMIN VALUES(1,102);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313526535136251440
 ,p_command => 
'INSERT INTO SUBSCRIBES VALUES(2,1,102);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313527227150252334
 ,p_command => 
'INSERT INTO SUBSCRIBES VALUES(3,2,101);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313527488294253060
 ,p_command => 
'INSERT INTO SUBSCRIBES VALUES(4,2,102);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011924','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313528016713256061
 ,p_command => 
'SELECT s.pid,s.comid'||wwv_flow.LF||
'FROM SUBSCRIBES s'||wwv_flow.LF||
'WHERE (s.pid,s.comid) NOT IN('||wwv_flow.LF||
'                    SELECT a.pid,a.comid'||wwv_flow.LF||
'                    FROM ADMIN a);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011924','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313795911702261853
 ,p_command => 
'INSERT INTO COMMUNITY VALUES'||wwv_flow.LF||
'(101,''CS-GO'');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313796103810262535
 ,p_command => 
'INSERT INTO COMMUNITY VALUES'||wwv_flow.LF||
'(102,''LEAGUE OF LEGENDS'');'||wwv_flow.LF||
''
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313796494700264168
 ,p_command => 
'SELECT s.pid,s.comid,c.comname'||wwv_flow.LF||
'FROM SUBSCRIBES s,COMMUNITY c'||wwv_flow.LF||
'WHERE (s.pid,s.comid) NOT IN('||wwv_flow.LF||
'                    SELECT a.pid,a.comid'||wwv_flow.LF||
'                    FROM ADMIN a)'||wwv_flow.LF||
'      AND'||wwv_flow.LF||
'        s.comid = c.comid'||wwv_flow.LF||
'ORDER BY S.COMID;     '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313912078177265833
 ,p_command => 
'CREATE TABLE GAMECOMPANY('||wwv_flow.LF||
'CID NUMBER(10),'||wwv_flow.LF||
'CNAME VARCHAR2(20) NOT NULL,'||wwv_flow.LF||
'TELNO NUMBER(15),'||wwv_flow.LF||
'EMAIL VARCHAR2(20),'||wwv_flow.LF||
'URL VARCHAR2(20),'||wwv_flow.LF||
'UNIQUE(CNAME),'||wwv_flow.LF||
'PRIMARY KEY(CID));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313912441202267431
 ,p_command => 
'INSERT INTO GAMECOMPANY VALUES('||wwv_flow.LF||
'50,''UBISOFT'',021624881,''ubisoft@gmail.com'',''ubisoft.com'');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313912809797268747
 ,p_command => 
'CREATE TABLE GAME('||wwv_flow.LF||
'CID NUMBER(10),'||wwv_flow.LF||
'gameId NUMBER(10),'||wwv_flow.LF||
'gameName VARCHAR2(20) NOT NULL,'||wwv_flow.LF||
'price NUMBER(10) NOT NULL,'||wwv_flow.LF||
'genre VARCHAR2(15),'||wwv_flow.LF||
'ageLimit VARCHAR2(5),'||wwv_flow.LF||
'releaseDate DATE,'||wwv_flow.LF||
'PRIMARY KEY(gameId),'||wwv_flow.LF||
'UNIQUE(gameName),'||wwv_flow.LF||
'FOREIGN KEY(CID) REFERENCES GAMECOMPANY(CID)'||wwv_flow.LF||
');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313913677869270691
 ,p_command => 
'INSERT INTO GAME VALUES('||wwv_flow.LF||
'50,100,''HITMAN'',200,''ASSASSIN'',''+13'',SYSDATE);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313955149075272175
 ,p_command => 
'CREATE TABLE EXTRAPROGRAM('||wwv_flow.LF||
'programid NUMBER(10),'||wwv_flow.LF||
'gameId NUMBER(10),'||wwv_flow.LF||
'programname VARCHAR2(20) NOT NULL,'||wwv_flow.LF||
'programprice NUMBER(10) NOT NULL,'||wwv_flow.LF||
'releasedate DATE,'||wwv_flow.LF||
'FOREIGN KEY(gameId) REFERENCES GAME(gameID),'||wwv_flow.LF||
'UNIQUE(programname),'||wwv_flow.LF||
'PRIMARY KEY(programid));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1313969806782272826
 ,p_command => 
'INSERT INTO EXTRAPROGRAM VALUES('||wwv_flow.LF||
'1,100,''sight'',25,SYSDATE);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314030389285274154
 ,p_command => 
'select e.programname,g.gamename,e.programprice,g.price,e.programprice + g.price "total price"'||wwv_flow.LF||
'from EXTRAPROGRAM e,game g'||wwv_flow.LF||
'WHERE g.gameıd=e.gameıd; '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314030876540275737
 ,p_command => 
'CREATE TABLE SALES(SID NUMBER(10),'||wwv_flow.LF||
'PRIMARY KEY(SID));'||wwv_flow.LF||
''
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314031186361276520
 ,p_command => 
'CREATE TABLE SALESGame('||wwv_flow.LF||
'SID NUMBER(10),'||wwv_flow.LF||
'productID NUMBER(10) NOT NULL,'||wwv_flow.LF||
'purchaseDate DATE,'||wwv_flow.LF||
'PID NUMBER(10),'||wwv_flow.LF||
'COST NUMBER(10) NOT NULL,'||wwv_flow.LF||
'PRIMARY KEY(SID),'||wwv_flow.LF||
'FOREIGN KEY(SID) REFERENCES SALES(SID),'||wwv_flow.LF||
'FOREIGN KEY(PID) REFERENCES PERSON(PID),'||wwv_flow.LF||
'FOREIGN KEY(productID) REFERENCES game(gameID));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314031206195277329
 ,p_command => 
'CREATE TABLE SALESPROGRAM('||wwv_flow.LF||
'SID NUMBER(10),'||wwv_flow.LF||
'productID NUMBER(10) NOT NULL,'||wwv_flow.LF||
'purchaseDate DATE,'||wwv_flow.LF||
'PID NUMBER(10),'||wwv_flow.LF||
'COST NUMBER(10) NOT NULL,'||wwv_flow.LF||
'PRIMARY KEY(SID),'||wwv_flow.LF||
'FOREIGN KEY(SID) REFERENCES SALES(SID),'||wwv_flow.LF||
'FOREIGN KEY(PID) REFERENCES PERSON(PID),'||wwv_flow.LF||
'FOREIGN KEY(productID) REFERENCES EXTRAPROGRAM(programid));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314031792290278945
 ,p_command => 
'INSERT INTO SALES VALUES(1);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314031841806279643
 ,p_command => 
'INSERT INTO SALESProgram VALUES(1,1,SYSDATE,1,200);'||wwv_flow.LF||
''
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314032346950280996
 ,p_command => 
'NSERT INTO SALES VALUES(2);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314032561351281811
 ,p_command => 
'INSERT INTO SALES VALUES(2);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314032774514282508
 ,p_command => 
'INSERT INTO SALESGame VALUES(2,100,SYSDATE,1,200);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314034404878284377
 ,p_command => 
'SELECT SUM(p.cost),e.programname'||wwv_flow.LF||
'FROM SALESProgram p,EXTRAPROGRAM e'||wwv_flow.LF||
'WHERE p.productid=e.programid'||wwv_flow.LF||
'GROUP BY e.programname;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011929','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314035118199287316
 ,p_command => 
'CREATE TABLE GROUPOFFERS('||wwv_flow.LF||
'LowRate NUMBER(3),'||wwv_flow.LF||
'HighRate NUMBER(3),'||wwv_flow.LF||
'OfferCategory NUMBER(3),'||wwv_flow.LF||
'PRIMARY KEY(OfferCategory));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011929','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314036115524289077
 ,p_command => 
'INSERT INTO GROUPOFFERS VALUES(10,20,1);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314036612119289737
 ,p_command => 
'INSERT INTO GROUPOFFERS VALUES(20,30,2);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314650469848290089
 ,p_command => 
'INSERT INTO GROUPOFFERS VALUES(30,40,3);'||wwv_flow.LF||
''
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314745015492291201
 ,p_command => 
'CREATE TABLE DISCOUNT('||wwv_flow.LF||
'ID NUMBER(10),'||wwv_flow.LF||
'OfferRate VARCHAR2(4),'||wwv_flow.LF||
'PRIMARY KEY(ID));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314746767182292444
 ,p_command => 
'CREATE TABLE DISCOUNTGAME('||wwv_flow.LF||
'ID NUMBER(10),'||wwv_flow.LF||
'productID NUMBER(10) NOT NULL,'||wwv_flow.LF||
'FOREIGN KEY(productID) REFERENCES game(gameID),'||wwv_flow.LF||
'FOREIGN KEY(ID) REFERENCES DISCOUNT(ID),'||wwv_flow.LF||
'UNIQUE(productID),'||wwv_flow.LF||
'PRIMARY KEY(ID));'||wwv_flow.LF||
''
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314747144036293142
 ,p_command => 
'CREATE TABLE DISCOUNTPROGRAM('||wwv_flow.LF||
'ID NUMBER(10),'||wwv_flow.LF||
'productID NUMBER(10) NOT NULL,'||wwv_flow.LF||
'FOREIGN KEY(productID) REFERENCES EXTRAPROGRAM(programID),'||wwv_flow.LF||
'FOREIGN KEY(ID) REFERENCES DISCOUNT(ID),'||wwv_flow.LF||
'UNIQUE(productID),'||wwv_flow.LF||
'PRIMARY KEY(ID));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314748064414294881
 ,p_command => 
'INSERT INTO DISCOUNT VALUES(1,22);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011931','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314748233351295236
 ,p_command => 
'INSERT INTO DISCOUNTGAME VALUES(1,100);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011931','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314749018551296380
 ,p_command => 
'INSERT INTO DISCOUNT VALUES(2,13);  '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011931','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314749137971296690
 ,p_command => 
'      '||wwv_flow.LF||
'INSERT INTO DISCOUNTPROGRAM VALUES(2,1);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011931','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314749489138298676
 ,p_command => 
'  '||wwv_flow.LF||
'INSERT INTO DISCOUNTPROGRAM VALUES(2,1);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011931','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314760251619301862
 ,p_command => 
'SELECT 	g.gamename, o.offercategory'||wwv_flow.LF||
'FROM	GROUPOFFERS o,   DISCOUNTGAME d,game g,DISCOUNT z'||wwv_flow.LF||
'WHERE   d.id=z.id AND'||wwv_flow.LF||
'	            z.offerrate   BETWEEN o.lowrate AND o.highrate '||wwv_flow.LF||
'                  AND'||wwv_flow.LF||
'd.productid=g.gameid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011932','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314760518028303478
 ,p_command => 
'SELECT d.id,p.productID  "program id",g.productID  "game id",a.gameName,b.programname,d.offerrate'||wwv_flow.LF||
'FROM DISCOUNTPROGRAM p , DISCOUNT d, DISCOUNTGAME g,GAME a,EXTRAPROGRAM b'||wwv_flow.LF||
'WHERE d.id=g.id OR d.id=p.id'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011932','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314760733799304661
 ,p_command => 
'SELECT d.id,p.productID  "program id",g.productID  "game id",a.gameName,b.programname,d.offerrate'||wwv_flow.LF||
'FROM DISCOUNTPROGRAM p , DISCOUNT d, DISCOUNTGAME g,GAME a,EXTRAPROGRAM b'||wwv_flow.LF||
'WHERE d.id=g.id OR d.id=p.id;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011932','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314958773582330083
 ,p_command => 
'SELECT p.pname,MONTHS_BETWEEN( (SYSDATE-p.PBIRTHDAY) / 365 ) "age"'||wwv_flow.LF||
'FROM PERSON p;  '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011936','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1314994602826714579
 ,p_command => 
'SELECT p.pname,MONTHS_BETWEEN( SYSDATE-p.PBIRTHDAY ) "age"'||wwv_flow.LF||
'FROM PERSON p;  '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011937','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1315120734528337535
 ,p_command => 
'Select abs(trunc(months_between(Sysdate, p.PBIRTHDAY)/12)) from dual'||wwv_flow.LF||
'FROM PERSON p;  '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701011938','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1344106708639107790
 ,p_command => 
'select *'||wwv_flow.LF||
'from discount;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020749','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1344115286217110977
 ,p_command => 
'select *'||wwv_flow.LF||
'from discountgame;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020750','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1344121862415732287
 ,p_command => 
'select *'||wwv_flow.LF||
'from discountgame,game'||wwv_flow.LF||
'where game.gameid=discountgame.productid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020750','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1344135855917117833
 ,p_command => 
'select *'||wwv_flow.LF||
'from discountgame,game,discount'||wwv_flow.LF||
'where game.gameid=discountgame.productid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020751','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1344225623097124518
 ,p_command => 
'select *'||wwv_flow.LF||
'from discountgame,game,discount'||wwv_flow.LF||
'where game.gameid=discountgame.productid'||wwv_flow.LF||
'and discount.id=discountgame.id;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020752','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1344228493493127734
 ,p_command => 
'select DISTINCT *'||wwv_flow.LF||
'from discountgame,game,discount'||wwv_flow.LF||
'where game.gameid=discountgame.productid'||wwv_flow.LF||
'and discount.id=discountgame.id;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020752','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1344643867298757662
 ,p_command => 
'select *'||wwv_flow.LF||
'from discountgame,game,discount'||wwv_flow.LF||
'where game.gameid=discountgame.productid'||wwv_flow.LF||
'and discount.id=discountgame.id'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'select *'||wwv_flow.LF||
'from discountprogram,extraprogram,discount'||wwv_flow.LF||
'where extraprogram.programid=discountprogram.productid'||wwv_flow.LF||
'and discount.id=discountprogram.id;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020754','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1344941369274159769
 ,p_command => 
'select *'||wwv_flow.LF||
'from discountgame,game,discount'||wwv_flow.LF||
'where game.gameid=discountgame.productid'||wwv_flow.LF||
'and discount.id=discountgame.id'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020758','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1344951043165777989
 ,p_command => 
'SELECT d.id,d.offerrate,g.gameName "name"'||wwv_flow.LF||
'FROM  DISCOUNT d, DISCOUNTGAME a,GAME g'||wwv_flow.LF||
'WHERE d.id=a.id AND'||wwv_flow.LF||
'      a.productID =g.gameId'||wwv_flow.LF||
'UNION ALL'||wwv_flow.LF||
'SELECT d.id,d.offerrate,p.programname "name"'||wwv_flow.LF||
'FROM  DISCOUNT d, DISCOUNTPROGRAM a, EXTRAPROGRAM p'||wwv_flow.LF||
'WHERE d.id=a.id AND'||wwv_flow.LF||
'      a.productID =p.programid'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020758','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1344951190208778241
 ,p_command => 
'select *'||wwv_flow.LF||
'from discountprogram,extraprogram,discount'||wwv_flow.LF||
'where extraprogram.programid=discountprogram.id'||wwv_flow.LF||
'and discount.id=discountprogram.id;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020758','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1345049659034788986
 ,p_command => 
'SELECT d.id,d.offerrate,g.gameName "name"'||wwv_flow.LF||
'FROM  DISCOUNT d, DISCOUNTGAME a,GAME g'||wwv_flow.LF||
'WHERE d.id=a.id AND'||wwv_flow.LF||
'      a.productID =g.gameId'||wwv_flow.LF||
'UNION ALL'||wwv_flow.LF||
'SELECT d.id,d.offerrate,p.programname "name"'||wwv_flow.LF||
'FROM  DISCOUNT d, DISCOUNTPROGRAM a, EXTRAPROGRAM p'||wwv_flow.LF||
'WHERE d.id=a.id AND'||wwv_flow.LF||
'      a.productID =p.programid'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020800','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1345098809191792890
 ,p_command => 
'SELECT d.id,g.gameName "name"'||wwv_flow.LF||
'FROM  DISCOUNT d, DISCOUNTGAME a,GAME g'||wwv_flow.LF||
'WHERE d.id=a.id AND'||wwv_flow.LF||
'      a.productID =g.gameId'||wwv_flow.LF||
'UNION ALL'||wwv_flow.LF||
'SELECT d.id,p.programname "name"'||wwv_flow.LF||
'FROM  DISCOUNT d, DISCOUNTPROGRAM a, EXTRAPROGRAM p'||wwv_flow.LF||
'WHERE d.id=a.id AND'||wwv_flow.LF||
'      a.productID =p.programid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020800','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1345100932453796499
 ,p_command => 
'SELECT p.pname,ABS( (SYSDATE-p.PBIRTHDAY) / 365 ) "age"'||wwv_flow.LF||
'FROM PERSON p; '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020801','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1345117411702210505
 ,p_command => 
'SELECT s.pid,s.comid,c.comname,p.pname'||wwv_flow.LF||
'FROM SUBSCRIBES s,COMMUNITY c,PERSON p'||wwv_flow.LF||
'WHERE (s.pid,s.comid) NOT IN('||wwv_flow.LF||
'                    SELECT a.pid,a.comid'||wwv_flow.LF||
'                    FROM ADMIN a)'||wwv_flow.LF||
'      AND'||wwv_flow.LF||
'        s.comid = c.comid AND'||wwv_flow.LF||
'        s.pid = p.pid'||wwv_flow.LF||
'       '||wwv_flow.LF||
''||wwv_flow.LF||
'ORDER BY S.COMID; '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020806','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1345279321305813864
 ,p_command => 
'SELECT s.pid,s.comid,c.comname'||wwv_flow.LF||
'FROM SUBSCRIBES s,COMMUNITY c'||wwv_flow.LF||
'WHERE (s.pid,s.comid) NOT IN('||wwv_flow.LF||
'                    SELECT a.pid,a.comid'||wwv_flow.LF||
'                    FROM ADMIN a)'||wwv_flow.LF||
'      AND'||wwv_flow.LF||
'        s.comid = c.comid'||wwv_flow.LF||
'ORDER BY S.COMID; '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020804','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1345541714395828954
 ,p_command => 
'SELECT s.pid,s.comid,c.comname,p.pname'||wwv_flow.LF||
'FROM SUBSCRIBES s,COMMUNITY c,PERSON p'||wwv_flow.LF||
'WHERE (s.pid,s.comid) NOT IN('||wwv_flow.LF||
'                    SELECT a.pid,a.comid'||wwv_flow.LF||
'                    FROM ADMIN a)'||wwv_flow.LF||
'      AND'||wwv_flow.LF||
'        s.comid = c.comid AND'||wwv_flow.LF||
'     '||wwv_flow.LF||
'       '||wwv_flow.LF||
''||wwv_flow.LF||
'ORDER BY S.COMID; '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020806','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1345609192957836145
 ,p_command => 
'SELECT s.pid,s.comid,c.comname,p.pname'||wwv_flow.LF||
'FROM SUBSCRIBES s,COMMUNITY c,PERSON p'||wwv_flow.LF||
'WHERE (s.pid,s.comid)  IN('||wwv_flow.LF||
'                    SELECT a.pid,a.comid'||wwv_flow.LF||
'                    FROM ADMIN a)'||wwv_flow.LF||
'      AND'||wwv_flow.LF||
'        s.comid = c.comid AND'||wwv_flow.LF||
'        s.pid = p.pid'||wwv_flow.LF||
'ORDER BY S.COMID; '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020808','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1345609898256837127
 ,p_command => 
'NOT'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020808','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1345610538408837525
 ,p_command => 
'SELECT s.pid,s.comid,c.comname,p.pname'||wwv_flow.LF||
'FROM SUBSCRIBES s,COMMUNITY c,PERSON p'||wwv_flow.LF||
'WHERE (s.pid,s.comid) NOT IN('||wwv_flow.LF||
'                    SELECT a.pid,a.comid'||wwv_flow.LF||
'                    FROM ADMIN a)'||wwv_flow.LF||
'      AND'||wwv_flow.LF||
'        s.comid = c.comid AND'||wwv_flow.LF||
'        s.pid = p.pid'||wwv_flow.LF||
'ORDER BY S.COMID; '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020808','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1346664405013325556
 ,p_command => 
'select g.gamename,e.programname'||wwv_flow.LF||
'from game g ,extraprogram e'||wwv_flow.LF||
'where e.gameid=g.gameid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020825','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1346734371998329945
 ,p_command => 
'select g.gamename,e.programname,(g.price+e.price) TotalPrice'||wwv_flow.LF||
'from game g ,extraprogram e'||wwv_flow.LF||
'where e.gameid=g.gameid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020826','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1346777714793330848
 ,p_command => 
'select g.gamename,e.programname,(g.price+e.price) '||wwv_flow.LF||
'from game g ,extraprogram e'||wwv_flow.LF||
'where e.gameid=g.gameid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020826','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1346945644609333824
 ,p_command => 
'select g.gamename,e.programname,(g.price+e.programprice) TotalPrice'||wwv_flow.LF||
'from game g ,extraprogram e'||wwv_flow.LF||
'where e.gameid=g.gameid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020827','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1348398385934395663
 ,p_command => 
'select p.pid,p.pname'||wwv_flow.LF||
'from person p,discountgame dg,game g,salesgame sg'||wwv_flow.LF||
'where dg.productid=g.gameid'||wwv_flow.LF||
'AND g.gameid=sg.productid'||wwv_flow.LF||
'AND sg.pid=p.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020837','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1349332400391423850
 ,p_command => 
'select p.pid,p.pname,c.comname'||wwv_flow.LF||
'from person p,discountgame dg,game g,salesgame sg,subscribes s,community c'||wwv_flow.LF||
'where dg.productid=g.gameid'||wwv_flow.LF||
'AND g.gameid=sg.productid'||wwv_flow.LF||
'AND sg.pid=p.pid'||wwv_flow.LF||
'AND p.pid= s.pid'||wwv_flow.LF||
'AND s.comid=c.comid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1349355656454431899
 ,p_command => 
'select p.pid,p.pname,c.comname'||wwv_flow.LF||
'from person p,discountgame dg,game g,salesgame sg,subscribes s,community c,admin a'||wwv_flow.LF||
'where dg.productid=g.gameid'||wwv_flow.LF||
'AND g.gameid=sg.productid'||wwv_flow.LF||
'AND sg.pid=p.pid'||wwv_flow.LF||
'AND p.pid= s.pid'||wwv_flow.LF||
'AND s.comid=c.comid'||wwv_flow.LF||
'AND p.pid=a.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020843','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1349366737791433950
 ,p_command => 
'select DISTINCT p.pid,p.pname,c.comname'||wwv_flow.LF||
'from person p,discountgame dg,game g,salesgame sg,subscribes s,community c,admin a'||wwv_flow.LF||
'where dg.productid=g.gameid'||wwv_flow.LF||
'AND g.gameid=sg.productid'||wwv_flow.LF||
'AND sg.pid=p.pid'||wwv_flow.LF||
'AND p.pid= s.pid'||wwv_flow.LF||
'AND s.comid=c.comid'||wwv_flow.LF||
'AND p.pid=a.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020843','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1350488711847093314
 ,p_command => 
'select DISTINCT p.pid,p.pname,c.comname'||wwv_flow.LF||
'from person p,discountgame dg,game g,salesgame sg,subscribes s,community c,admin a'||wwv_flow.LF||
'where dg.productid=g.gameid'||wwv_flow.LF||
'AND g.gameid=sg.productid'||wwv_flow.LF||
'AND sg.pid=p.pid'||wwv_flow.LF||
'AND a.pid= s.pid'||wwv_flow.LF||
'AND s.comid=c.comid'||wwv_flow.LF||
'AND p.pid=a.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020850','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1350501583369094268
 ,p_command => 
'select p.pid,p.pname,c.comname'||wwv_flow.LF||
'from person p,discountgame dg,game g,salesgame sg,subscribes s,community c,admin a'||wwv_flow.LF||
'where dg.productid=g.gameid'||wwv_flow.LF||
'AND g.gameid=sg.productid'||wwv_flow.LF||
'AND sg.pid=p.pid'||wwv_flow.LF||
'AND a.pid= s.pid'||wwv_flow.LF||
'AND s.comid=c.comid'||wwv_flow.LF||
'AND p.pid=a.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020851','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1350522712330095215
 ,p_command => 
'DISTINCT '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020851','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1350523484834096140
 ,p_command => 
'select DISTINCT p.pid,p.pname,c.comname'||wwv_flow.LF||
'from person p,discountgame dg,game g,salesgame sg,subscribes s,community c,admin a'||wwv_flow.LF||
'where dg.productid=g.gameid'||wwv_flow.LF||
'AND g.gameid=sg.productid'||wwv_flow.LF||
'AND sg.pid=p.pid'||wwv_flow.LF||
'AND p.pid= s.pid'||wwv_flow.LF||
'AND s.comid=c.comid'||wwv_flow.LF||
'AND p.pid=a.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020851','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1361693479623507603
 ,p_command => 
'SELECT p.pname,p.PMAIL,(SYSDATE-p.PBIRTHDAY) / 365 "age"'||wwv_flow.LF||
'FROM PERSON p,Community c,Subscribes s'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=101  AND'||wwv_flow.LF||
'      p.pid = s.pid'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701020959','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1362509142348909395
 ,p_command => 
'select c.telno,c.url'||wwv_flow.LF||
'from gamecompany c, game g'||wwv_flow.LF||
'where g.cid=c.cid'||wwv_flow.LF||
'and g.agelimit=''+13'';'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021003','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1362825166603528805
 ,p_command => 
'SELECT p.pname,p.PMAIL,(SYSDATE-p.PBIRTHDAY) / 365 "age"'||wwv_flow.LF||
'FROM PERSON p,Subscribes s'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=101  AND'||wwv_flow.LF||
'      p.pid = s.pid;'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT count(*)'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021003','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1362825586939528996
 ,p_command => 
'SELECT p.pname,p.PMAIL,(SYSDATE-p.PBIRTHDAY) / 365 "age"'||wwv_flow.LF||
'FROM PERSON p,Subscribes s'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=101  AND'||wwv_flow.LF||
'      p.pid = s.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021003','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1363239367456932513
 ,p_command => 
'SELECT p.pname,p.PMAIL,(SYSDATE-p.PBIRTHDAY) / 365 "age"'||wwv_flow.LF||
'FROM PERSON p,Subscribes s'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=101  AND'||wwv_flow.LF||
'      p.pid = s.pid;'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,GAMESALES gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      gc.cid=50 AND'||wwv_flow.LF||
'      gc.cid = g.cid;'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021007','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1363265858169550651
 ,p_command => 
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,GAMESALES gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      gc.cid=50 AND'||wwv_flow.LF||
'      gc.cid = g.cid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021007','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1363267245235553317
 ,p_command => 
'SELECT p.pname,p.PMAIL,(SYSDATE-p.PBIRTHDAY) / 365 "age"'||wwv_flow.LF||
'FROM PERSON p,Subscribes s'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=101  AND'||wwv_flow.LF||
'      p.pid = s.pid;'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      gc.cid=50 AND'||wwv_flow.LF||
'      gc.cid = g.cid;'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021007','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1363268056307553753
 ,p_command => 
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      gc.cid=50 AND'||wwv_flow.LF||
'      gc.cid = g.cid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021007','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1364210184690566582
 ,p_command => 
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021009','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1364290249614572197
 ,p_command => 
'SELECT p.pname,p.PMAIL,(SYSDATE-p.PBIRTHDAY) / 365 "age"'||wwv_flow.LF||
'FROM PERSON p,Subscribes s'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=101  AND'||wwv_flow.LF||
'      p.pid = s.pid;'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      gc.cid=50 AND'||wwv_flow.LF||
'      gc.cid = g.cid AND'||wwv_flow.LF||
'      gc.pid=p.pid;'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021010','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1364370360944572553
 ,p_command => 
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      gc.cid=50 AND'||wwv_flow.LF||
'      gc.cid = g.cid AND'||wwv_flow.LF||
'      gc.pid=p.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021010','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1364371850476573984
 ,p_command => 
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      gc.cid=50 AND'||wwv_flow.LF||
'      gc.cid = g.cid AND'||wwv_flow.LF||
'      gs.pid =p.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021011','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1364625873702584193
 ,p_command => 
'SELECT p.pname,p.PMAIL,(SYSDATE-p.PBIRTHDAY) / 365 "age"'||wwv_flow.LF||
'FROM PERSON p,Subscribes s'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=101  AND'||wwv_flow.LF||
'      p.pid = s.pid;'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      gs.pid =p.pid  AND'||wwv_flow.LF||
'      gc.cid = g.cid AND'||wwv_flow.LF||
'      gc.cid=50;'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021012','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1364626192323584439
 ,p_command => 
'select (game.price*discount.offerrate)/100'||wwv_flow.LF||
'from salesgame sg, discountgame dg,community, subscribes'||wwv_flow.LF||
'where salesgame.pid=subsrices.pid'||wwv_flow.LF||
'and subscribes.comid=community.comid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021012','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1364626452520584542
 ,p_command => 
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      gs.pid =p.pid  AND'||wwv_flow.LF||
'      gc.cid = g.cid AND'||wwv_flow.LF||
'      gc.cid=50;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021012','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1364997769469601229
 ,p_command => 
'SELECT p.pname,p.PMAIL,(SYSDATE-p.PBIRTHDAY) / 365 "age"'||wwv_flow.LF||
'FROM PERSON p,Subscribes s'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=101  AND'||wwv_flow.LF||
'      p.pid = s.pid;'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      g.gameID = gs.productID AND'||wwv_flow.LF||
'      gs.pid =p.pid  AND'||wwv_flow.LF||
'      gc.cid = g.cid AND'||wwv_flow.LF||
'      gc.cid=50;'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      '
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021015','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1365016232095601479
 ,p_command => 
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      g.gameID = gs.productID AND'||wwv_flow.LF||
'      gs.pid =p.pid  AND'||wwv_flow.LF||
'      gc.cid = g.cid AND'||wwv_flow.LF||
'      gc.cid=50;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021015','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1365040260555602362
 ,p_command => 
'SELECT p.pname,p.PMAIL,(SYSDATE-p.PBIRTHDAY) / 365 "age"'||wwv_flow.LF||
'FROM PERSON p,Subscribes s'||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=101  AND'||wwv_flow.LF||
'      p.pid = s.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021015','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1365040536562603182
 ,p_command => 
'SELECT count(distinct p.pname)'||wwv_flow.LF||
'FROM PERSON p,Subscribes s,SALESGAME gs,GAME g,GAMECOMPANY gc '||wwv_flow.LF||
'WHERE '||wwv_flow.LF||
'      s.comid=102 AND'||wwv_flow.LF||
'      p.pid = s.pid AND'||wwv_flow.LF||
'      g.gameID = gs.productID AND'||wwv_flow.LF||
'      gs.pid =p.pid  AND'||wwv_flow.LF||
'      gc.cid = g.cid AND'||wwv_flow.LF||
'      gc.cid=50;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021015','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1365173626807997741
 ,p_command => 
'select sg.cost'||wwv_flow.LF||
'from salesgame sg,community c,person p, subscribes s'||wwv_flow.LF||
'where c.comid=s.comid'||wwv_flow.LF||
'and comid=''102'''||wwv_flow.LF||
'and s.pid=p.pid'||wwv_flow.LF||
'and sg.pid=p.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021017','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1365294947660002967
 ,p_command => 
'select sg.cost'||wwv_flow.LF||
'from salesgame sg,community c,person p, subscribes s'||wwv_flow.LF||
'where s.comid=102'||wwv_flow.LF||
'and s.pid=p.pid'||wwv_flow.LF||
'and sg.pid=p.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021018','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1365314069329617656
 ,p_command => 
'select sg.cost'||wwv_flow.LF||
'from salesgame sg,community c,person p, subscribes s'||wwv_flow.LF||
'where c.comid=s.comid'||wwv_flow.LF||
'and comid=102'||wwv_flow.LF||
'and s.pid=p.pid'||wwv_flow.LF||
'and sg.pid=p.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021018','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 1365402636478621230
 ,p_command => 
'select DISTINCT sg.cost'||wwv_flow.LF||
'from salesgame sg,community c,person p, subscribes s'||wwv_flow.LF||
'where s.comid=102'||wwv_flow.LF||
'and s.pid=p.pid'||wwv_flow.LF||
'and sg.pid=p.pid;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201701021018','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721478941970267297
 ,p_command => 
'select ename,empno'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where sal > '||wwv_flow.LF||
'(SELECT AVG(sal)'||wwv_flow.LF||
'from emp);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721734915856273275
 ,p_command => 
'select ename,empno'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where sal > AVG(sal);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721736115438274128
 ,p_command => 
'select ename,empno'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where sal > (AVG(sal));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721745310154892164
 ,p_command => 
'select ename,empno'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where sal > '||wwv_flow.LF||
'(SELECT AVG(sal)'||wwv_flow.LF||
'from emp);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721764630393895875
 ,p_command => 
'select ename,empno'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where sal > '||wwv_flow.LF||
'(SELECT AVG(sal)'||wwv_flow.LF||
'from emp);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721765372260277878
 ,p_command => 
'select ename,empno'||wwv_flow.LF||
'where sal > '||wwv_flow.LF||
'SELECT AVG(sal)'||wwv_flow.LF||
'from emp;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721765714988279410
 ,p_command => 
'select ename,empno,sal'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where sal > '||wwv_flow.LF||
'(SELECT AVG(sal)'||wwv_flow.LF||
'from emp);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721770588072283281
 ,p_command => 
'select ename,empno,salo'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where sal > '||wwv_flow.LF||
'(SELECT AVG(sal) salo'||wwv_flow.LF||
'from emp);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721880776513913803
 ,p_command => 
'select deptno,sal'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where(AVG(sal)'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'group by deptno);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721907236249297919
 ,p_command => 
'select deptno,sal'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where(min(sal)'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'group by deptno);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721939932054301145
 ,p_command => 
'select deptno,sal'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where(min(sal)'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'group by dept.deptno=emp.deptno);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721965975917302427
 ,p_command => 
'select deptno,sal'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where(min(sal)'||wwv_flow.LF||
'from dept'||wwv_flow.LF||
'group by dept.deptno=emp.deptno);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46721991809815307879
 ,p_command => 
'select deptno, min(sal)'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'group by deptno'||wwv_flow.LF||
'order by deptno;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280921','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46722300934901964950
 ,p_command => 
'select sysdate'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611280928','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46730963235127460817
 ,p_command => 
'UPDATE EMP'||wwv_flow.LF||
'SET DEPTNO=20'||wwv_flow.LF||
'WHERE EMPNO =7782;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281234','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731075898883462842
 ,p_command => 
'SELECT EMP'||wwv_flow.LF||
'SET DEPTNO=20'||wwv_flow.LF||
'WHERE EMPNO =7782;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281234','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731136768709093010
 ,p_command => 
'UPDATE EMO'||wwv_flow.LF||
'SET (JOB,DEPTNO) ='||wwv_flow.LF||
'(SELECT JOB,DEPTNO'||wwv_flow.LF||
'FROM EMP'||wwv_flow.LF||
'WHERE EMPNO =7499)'||wwv_flow.LF||
'WHERE EMPNO = 7698;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281236','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731164627125480955
 ,p_command => 
'UPDATE EMP'||wwv_flow.LF||
'SET (JOB,DEPTNO) ='||wwv_flow.LF||
'(SELECT JOB,DEPTNO'||wwv_flow.LF||
'FROM EMP'||wwv_flow.LF||
'WHERE EMPNO =7499)'||wwv_flow.LF||
'WHERE EMPNO = 7698;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281237','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731305093128109397
 ,p_command => 
'UPDATE EMPNO'||wwv_flow.LF||
'WHERE ENAME = ''KING'''||wwv_flow.LF||
'FROM EMP'||wwv_flow.LF||
'EMPNO=1000;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281239','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731400515580123258
 ,p_command => 
'UPDATE EMPLOYEE'||wwv_flow.LF||
'SET DEPTNO =(SELECT DEPTNO'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where empno = 7788)'||wwv_flow.LF||
'where job =(select job'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where empno=7788);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281241','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731443624737522622
 ,p_command => 
'delete [from] departöemt'||wwv_flow.LF||
'where dname =  ''development'''
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281244','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731446688209135224
 ,p_command => 
'UPDATE EMP'||wwv_flow.LF||
'SET DEPTNO =(SELECT DEPTNO'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where empno = 7788)'||wwv_flow.LF||
'where job =(select job'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where empno=7788);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281243','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731582500814531288
 ,p_command => 
'select emp'||wwv_flow.LF||
'where deptno = (select deptno'||wwv_flow.LF||
'from dept'||wwv_flow.LF||
'where dname = ''SALES'')'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281245','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731583518805532305
 ,p_command => 
'select emp'||wwv_flow.LF||
'where deptno = (select deptno'||wwv_flow.LF||
'from dept'||wwv_flow.LF||
'where dname = ''SALES'');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281245','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731720544576179685
 ,p_command => 
'rollback'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281251','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731793388253202447
 ,p_command => 
'create table mehmet'||wwv_flow.LF||
'(deptno NUMBER(2),'||wwv_flow.LF||
'dname  VARCHAR(12)'||wwv_flow.LF||
');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281254','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46731955103089584479
 ,p_command => 
'create table mehmet'||wwv_flow.LF||
'(deptno NUMBER(2),'||wwv_flow.LF||
'dname  VARCHAR(12),'||wwv_flow.LF||
');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281254','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46732111619020228192
 ,p_command => 
'create table depğt30'||wwv_flow.LF||
'as '||wwv_flow.LF||
'select empno , ename, sal*12 ANNSAL, h,redate'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where deptno =30;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281259','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46732161785260229227
 ,p_command => 
'create table depğt30'||wwv_flow.LF||
'as '||wwv_flow.LF||
'select empno , ename, sal*12 ANNSAL, hiredate'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where deptno =30;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281259','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46732165688408613286
 ,p_command => 
'create table depğt30'||wwv_flow.LF||
'as '||wwv_flow.LF||
'select empno , ename, sal*12 ANNSAL, hiredate'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where deptno =30;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281259','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46732175396448232549
 ,p_command => 
'from emp;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281259','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46732177196325233546
 ,p_command => 
'select *'||wwv_flow.LF||
'from emp;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281259','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46732253848008246066
 ,p_command => 
'alter table dept30'||wwv_flow.LF||
'modify (ename varchar2(15));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281302','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46732268437920248683
 ,p_command => 
'alter table dept30'||wwv_flow.LF||
'drop column *;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281302','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46732285494400249617
 ,p_command => 
'alter table dept30'||wwv_flow.LF||
'drop column job;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281302','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46732293592105256389
 ,p_command => 
'drop table mehmet;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281303','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46732318411261258100
 ,p_command => 
'drop table dept30;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281304','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46735677974940326280
 ,p_command => 
'create table employee('||wwv_flow.LF||
'empno NUMBER(5),'||wwv_flow.LF||
'ename VARCHAR2(14) NOT NULL,'||wwv_flow.LF||
'deptno NUMBER(10),'||wwv_flow.LF||
'CONSTRAINT dept_deptno_pk PRIMARY KEY(deptno));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281315','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46735685146100706967
 ,p_command => 
'create table employee('||wwv_flow.LF||
'empno NUMBER(5),'||wwv_flow.LF||
'ename VARCHAR2(14) NOT NULL,'||wwv_flow.LF||
'deptno NUMBER(10),'||wwv_flow.LF||
'CONSTRAIN dept_deptno_pk PRIMARY KEY(deptno)'||wwv_flow.LF||
');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281315','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46735686824901708148
 ,p_command => 
'create table employee('||wwv_flow.LF||
'empno NUMBER(5),'||wwv_flow.LF||
'ename VARCHAR2(14) NOT NULL,'||wwv_flow.LF||
'deptno NUMBER(10),'||wwv_flow.LF||
'CONSTRAIN dept_deptno_pk PRIMARY KEY(deptno));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281315','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46735760994031718748
 ,p_command => 
'delete employee;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281317','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46735771797756336433
 ,p_command => 
'create table employee('||wwv_flow.LF||
'empno NUMBER(5),'||wwv_flow.LF||
'ename VARCHAR2(14) NOT NULL,'||wwv_flow.LF||
'deptno NUMBER(10),'||wwv_flow.LF||
'CONSTRAINT dept_deptno_pk PRIMARY KEY(deptno));'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281317','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46736119792287745405
 ,p_command => 
'drop table DEPĞT30;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281321','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737126384269864896
 ,p_command => 
'create view sado as'||wwv_flow.LF||
'select ename'||wwv_flow.LF||
'from emp;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737263208597502424
 ,p_command => 
'create view clerk as'||wwv_flow.LF||
'select ename,sal'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where job=''CLERK'';'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281344','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737349737818898682
 ,p_command => 
'insert into clerk'||wwv_flow.LF||
'values (''SUE'',8000);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281347','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737354806102903040
 ,p_command => 
'insert into clerk'||wwv_flow.LF||
'values (1230,''SUE'',8000);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281347','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737488282875915780
 ,p_command => 
'create view clerk as'||wwv_flow.LF||
'select empno, ename,job,sal'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where job=''CLERK'';'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281349','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737496391710535605
 ,p_command => 
'create view clerk as'||wwv_flow.LF||
'select empno, ename,job,sal'||wwv_flow.LF||
'from emp'||wwv_flow.LF||
'where job=''CLERK'';'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281350','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737511183901917726
 ,p_command => 
'drop view clerk;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281350','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737515539120921078
 ,p_command => 
'insert into clerk'||wwv_flow.LF||
'values (1234,''SUE'',''CLERK'',8000);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281350','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737521268862923701
 ,p_command => 
'select *'||wwv_flow.LF||
'from clerk'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281351','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737595387432925548
 ,p_command => 
'select *'||wwv_flow.LF||
'from emp'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281351','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737602392537927037
 ,p_command => 
'select *'||wwv_flow.LF||
'from clerk;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281351','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737633059161933187
 ,p_command => 
'update clerk'||wwv_flow.LF||
'set sal =1000'||wwv_flow.LF||
'where ename=''JAMES'';'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281352','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 46737660648252934846
 ,p_command => 
'select *'||wwv_flow.LF||
'from clerk;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201611281353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47408041072937602749
 ,p_command => 
'SELECT empno,ename,job,mgr,hiredate,sal,comm,deptno'||wwv_flow.LF||
'FROM emp;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041325','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47408071560388612371
 ,p_command => 
'SELECT DISTINCT job'||wwv_flow.LF||
'FROM emp;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041327','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47408131969001642667
 ,p_command => 
'SELECT ename,job,deptno'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE job=''CLERK'';'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041332','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47408264885865668848
 ,p_command => 
'SELECT ename,sal,comm'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal<=comm;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041336','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47408567885812738182
 ,p_command => 
'SELECT ename name,sal "Monthly Salary"'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal>1000'||wwv_flow.LF||
'AND deptno IN (10,20)'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47408997946033397756
 ,p_command => 
'SELECT ename ,deptno'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE job IN (''PRESIDENT'',''MANAGER'')'||wwv_flow.LF||
'ORDER BY ename;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041355','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47409002434326406040
 ,p_command => 
'SELECT ename ,job,sal'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE job NOT IN (1000,3000,5000);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041356','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47409003196122407164
 ,p_command => 
'SELECT ename ,job,sal'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal NOT IN (1000,3000,5000);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041356','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47421310251627796942
 ,p_command => 
'SELECT emp.ename,emp.sal,salgrade.grade, salgrade.losal,salgrade.hisal'||wwv_flow.LF||
'FROM emp,salgrade'||wwv_flow.LF||
'WHERE emp.sal BETWEEN salgrade.losal AND salgrade.hisal'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041748','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47421319120017183427
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'FROM salgrade;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041749','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47421639369537213112
 ,p_command => 
'SELECT emp.ename,emp.sal,salgrade.grade, salgrade.losal,salgrade.hisal'||wwv_flow.LF||
'FROM emp,salgrade'||wwv_flow.LF||
'WHERE emp.sal <= salgrade.hisal;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041754','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47421697791033825773
 ,p_command => 
'SELECT emp.ename,emp.sal,salgrade.grade'||wwv_flow.LF||
'FROM emp,salgrade;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041753','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47421886890665216931
 ,p_command => 
'SELECT emp.ename,emp.sal,salgrade.grade, salgrade.losal,salgrade.hisal'||wwv_flow.LF||
'FROM emp,salgrade'||wwv_flow.LF||
'WHERE emp.sal <= salgrade.hisal;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041754','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47421958816794836274
 ,p_command => 
'SELECT emp.ename,emp.sal,salgrade.grade, salgrade.losal,salgrade.hisal'||wwv_flow.LF||
'FROM emp,salgrade'||wwv_flow.LF||
'WHERE emp.sal >= salgrade.hisal;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041755','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47422126286224838587
 ,p_command => 
'SELECT emp.ename,emp.sal,salgrade.grade, salgrade.losal,salgrade.hisal'||wwv_flow.LF||
'FROM emp,salgrade'||wwv_flow.LF||
'WHERE emp.sal <= salgrade.hisal;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041755','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47422132330833841298
 ,p_command => 
'SELECT emp.ename,emp.sal,salgrade.grade, salgrade.losal,salgrade.hisal'||wwv_flow.LF||
'FROM emp,salgrade'||wwv_flow.LF||
'WHERE emp.sal>=salgrade.losal;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041755','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47422839426230899573
 ,p_command => 
'SELECT emp.ename, dept.dname'||wwv_flow.LF||
'FROM emp,dept'||wwv_flow.LF||
'WHERE emp.ename LIKE ''%K%'''||wwv_flow.LF||
'AND emp.deptno=dept.deptno;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041805','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47423088635174301073
 ,p_command => 
'SELECT emp.ename, emp.job, dept.dname, emp.sal, salgrade.grade'||wwv_flow.LF||
'FROM emp,dept,salgrade'||wwv_flow.LF||
'WHERE emp.deptno=dept.deptno'||wwv_flow.LF||
'AND (emp.sal BETWEEN salgrade.losal AND salgrade.hisal);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041808','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47424017917998955011
 ,p_command => 
'SELECT COUNT(DISTINCT deptno)'||wwv_flow.LF||
'FROM emp;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041814','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47424033970573957485
 ,p_command => 
'SELECT COUNT(deptno)'||wwv_flow.LF||
'FROM emp;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041815','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47427642227097239069
 ,p_command => 
'SELECT emp.ename,emp.sal'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE job ='||wwv_flow.LF||
'(SELECT job'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE ename =''JONES'')'||wwv_flow.LF||
'AND hiredate >='||wwv_flow.LF||
'(SELECT hiredate'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE ename=''JONES'');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47427642507927240164
 ,p_command => 
'SELECT emp.ename,emp.sal'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE job ='||wwv_flow.LF||
'(SELECT job'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE ename =''JONES'')'||wwv_flow.LF||
'AND hiredate ='||wwv_flow.LF||
'(SELECT hiredate'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE ename=''JONES'');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47427673074378624124
 ,p_command => 
'SELECT emp.ename,emp.sal'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE job ='||wwv_flow.LF||
'(SELECT job'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE ename =''JONES'')'||wwv_flow.LF||
'AND hiredate >'||wwv_flow.LF||
'(SELECT hiredate'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE ename=''JONES'');'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041902','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428120371344285005
 ,p_command => 
'SELECT emp.empno, emp.ename'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE emp.sal>AVG(sal);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041909','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428139460968286479
 ,p_command => 
'SELECT emp.empno, emp.ename'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE emp.sal>AVG(emp.sal);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041910','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428141574417287349
 ,p_command => 
'SELECT emp.empno, emp.ename'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal>AVG(emp.sal);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041910','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428180807713290461
 ,p_command => 
'SELECT empno, ename'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal> AVG(sal);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041910','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428208333303293844
 ,p_command => 
'SELECT empno, ename'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal> (SELECT AVG(sal)'||wwv_flow.LF||
'FROM emp;);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041911','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428219781418294457
 ,p_command => 
'SELECT empno, ename'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal> (SELECT AVG(sal)'||wwv_flow.LF||
'FROM emp);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041911','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428367312913305610
 ,p_command => 
'SELECT deptno,sal'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal = ALL'||wwv_flow.LF||
'(SELECT min(sal)'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'GROUP BY deptno);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041913','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428436803603311095
 ,p_command => 
'SELECT deptno,sal'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal <'||wwv_flow.LF||
'(SELECT min(sal)'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'GROUP BY deptno);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041914','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428616758349316309
 ,p_command => 
'SELECT deptno,min(sal)'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'GROUP BY deptno;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428696375615702338
 ,p_command => 
'SELECT deptno,sal'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal =IN'||wwv_flow.LF||
'(SELECT min(sal)'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'GROUP BY deptno);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428720014512321031
 ,p_command => 
'SELECT deptno,sal'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'WHERE sal = IN'||wwv_flow.LF||
'(SELECT min(sal)'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'GROUP BY deptno);'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428721731255321908
 ,p_command => 
'(SELECT min(sal)'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'GROUP BY deptno;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 47428739053519322700
 ,p_command => 
'SELECT min(sal)'||wwv_flow.LF||
'FROM emp'||wwv_flow.LF||
'GROUP BY deptno;'
    ,p_created_by => 'TALANSADIK@GMAIL.COM'
    ,p_created_on => to_date('201612041916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'LABSCHEMA2');
end;
/
----------------
--user access log
--
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'TALANSADIK@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201703091136','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'TALANSADIK@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201703091137','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'TALANSADIK@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201703091138','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'TALANSADIK@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201703091138','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'TALANSADIK@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201703091141','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'TALANSADIK@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201703091141','YYYYMMDDHH24MI'),
    p_ip_address => '141.146.114.42',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
 
prompt ...RESTful Services
 
begin
wwv_flow_api.remove_restful_service(
 p_id=>wwv_flow_api.id(46090438861818488791)
,p_name=>'oracle.example.hr'
);
 
end;
/
prompt --application/restful_services/oracle_example_hr
begin
wwv_flow_api.create_restful_module(
 p_id=>wwv_flow_api.id(46090438861818488791)
,p_name=>'oracle.example.hr'
,p_uri_prefix=>'hr/'
,p_parsing_schema=>'LABSCHEMA2'
,p_items_per_page=>10
,p_status=>'PUBLISHED'
,p_row_version_number=>16
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(46090440275912488794)
,p_module_id=>wwv_flow_api.id(46090438861818488791)
,p_uri_template=>'empinfo/'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(46090440378331488794)
,p_template_id=>wwv_flow_api.id(46090440275912488794)
,p_source_type=>'QUERY'
,p_format=>'CSV'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>'select * from emp'
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(46090438936365488792)
,p_module_id=>wwv_flow_api.id(46090438861818488791)
,p_uri_template=>'employees/'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(46090439093519488792)
,p_template_id=>wwv_flow_api.id(46090438936365488792)
,p_source_type=>'QUERY'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_items_per_page=>7
,p_require_https=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno "$uri", empno, ename',
'  from (',
'       select emp.*',
'            , row_number() over (order by empno) rn',
'         from emp',
'       ) tmp',
' where rn between :row_offset and :row_count '))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(46090439130081488792)
,p_module_id=>wwv_flow_api.id(46090438861818488791)
,p_uri_template=>'employees/{id}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(46090439257584488793)
,p_template_id=>wwv_flow_api.id(46090439130081488792)
,p_source_type=>'QUERY_1_ROW'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from emp',
' where empno = :id'))
);
wwv_flow_api.create_restful_param(
 p_id=>wwv_flow_api.id(46090439369375488793)
,p_handler_id=>wwv_flow_api.id(46090439257584488793)
,p_name=>'ID'
,p_bind_variable_name=>'ID'
,p_source_type=>'HEADER'
,p_access_method=>'IN'
,p_param_type=>'STRING'
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(46090439457931488793)
,p_module_id=>wwv_flow_api.id(46090438861818488791)
,p_uri_template=>'employeesfeed/'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(46090439527544488793)
,p_template_id=>wwv_flow_api.id(46090439457931488793)
,p_source_type=>'FEED'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_items_per_page=>25
,p_require_https=>'NO'
,p_source=>'select empno, ename from emp order by deptno, ename'
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(46090439615478488794)
,p_module_id=>wwv_flow_api.id(46090438861818488791)
,p_uri_template=>'employeesfeed/{id}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(46090439796650488794)
,p_template_id=>wwv_flow_api.id(46090439615478488794)
,p_source_type=>'QUERY'
,p_format=>'CSV'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>'select * from emp where empno = :id'
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(46090439893554488794)
,p_module_id=>wwv_flow_api.id(46090438861818488791)
,p_uri_template=>'empsec/{empname}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(46090439943090488794)
,p_template_id=>wwv_flow_api.id(46090439893554488794)
,p_source_type=>'QUERY'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno, ename, deptno, job from emp ',
'	where ((select job from emp where ename = :empname) IN (''PRESIDENT'', ''MANAGER'')) ',
'    OR  ',
'    (deptno = (select deptno from emp where ename = :empname)) ',
'order by deptno, ename',
''))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(46090440015120488794)
,p_module_id=>wwv_flow_api.id(46090438861818488791)
,p_uri_template=>'empsecformat/{empname}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(46090440116972488794)
,p_template_id=>wwv_flow_api.id(46090440015120488794)
,p_source_type=>'PLSQL'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  prevdeptno     number;',
'  total_rows     number;',
'  deptloc        varchar2(20);',
'  deptname       varchar2(20);',
'  ',
'  CURSOR         getemps is select * from emp ',
'                             start with ename = :empname',
'                           connect by prior empno = mgr',
'                             order siblings by deptno, ename;',
'BEGIN',
'  sys.htp.htmlopen;',
'  sys.htp.headopen;',
'  sys.htp.title(''Hierarchical Department Report for Employee ''|| apex_escape.html(:empname));',
'  sys.htp.headclose;',
'  sys.htp.bodyopen;',
' ',
'  for l_employee in getemps ',
'  loop',
'      if l_employee.deptno != prevdeptno or prevdeptno is null then',
'          select dname, loc ',
'            into deptname, deptloc ',
'            from dept ',
'           where deptno = l_employee.deptno;',
'           ',
'          if prevdeptno is not null then',
'              sys.htp.print(''</ul>'');',
'          end if;',
'',
'          sys.htp.print(''Department '' || apex_escape.html(deptname) || '' located in '' || apex_escape.html(deptloc) || ''<p/>'');',
'          sys.htp.print(''<ul>'');',
'      end if;',
'',
'      sys.htp.print(''<li>'' || apex_escape.html(l_employee.ename) || '', ''  || apex_escape.html(l_employee.empno) || '', '' || ',
'                        apex_escape.html(l_employee.job) || '', '' || apex_escape.html(l_employee.sal) || ''</li>'');',
'',
'      prevdeptno := l_employee.deptno;',
'      total_rows := getemps%ROWCOUNT;',
'      ',
'  end loop;',
'',
'  if total_rows > 0 then',
'      sys.htp.print(''</ul>'');',
'  end if;',
'',
'  sys.htp.bodyclose;',
'  sys.htp.htmlclose;',
'END;'))
);
end;
/
-- SET SCHEMA
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'LABSCHEMA2';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA LABSCHEMA2 - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_050100
-- Exported 11:42 Thursday March 9, 2017 by: TALANSADIK@GMAIL.COM
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 11:42 Thursday March 9, 2017 by: TALANSADIK@GMAIL.COM
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'LABWORKSPACE2';
 
end;
/

begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
