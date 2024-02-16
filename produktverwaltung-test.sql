

--------------------------------------------------------------------------------
--Inhalt
--Testen von CHILD-REPORT 4-Ausgecheckt
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--Views-Suchen


SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%VW%PRODREL%';
SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%VW%RELEASE%';
SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%VW%PRODUKTE%';
SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%VW%GRUPPE%';
SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%VW%MODUL%';
SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%VW%PROD%MOD%';
SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%VW_API%PROD%';
SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%INSTANZEN%';
SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%MODULE%';
SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%VW_%INST%';
SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%VW_%PROD%REL%MOD%';


--------------------------------------------------------------------------------

SELECT * FROM vw_produkte                 prod;
SELECT * FROM vw_swbz                     swbz;
SELECT * FROM vw_prodrel_swbz             prsw;
SELECT * FROM vw_prodrel_pakete           pak;
SELECT * FROM vw_prod_releases            rel;
SELECT * FROM vw_prodrel_gruppen          grp;
SELECT * FROM vw_prodrel_issues           jira;

SELECT * FROM vw_api_prod_rel_pakete      x;
SELECT * FROM vw_api_prod_releases        x;
SELECT * FROM vw_api_prod_rel_module      x;

SELECT * FROM vw_instanzen      x;
SELECT * FROM vw_instanz_modul_versionen      x;
SELECT * FROM vw_prodrel_aktivmodule      pmod;
SELECT * FROM vw_api_prod_rel_module      pmod;
SELECT * FROM vw_module                   mod;
SELECT * FROM vw_modularten               art;
SELECT * FROM vw_modul_versionen          ver;
         SELECT * FROM bm_modul_versionen          ver;
SELECT * FROM vw_modulversion_instanzen   ins;
SELECT * FROM vw_modulversion_parameter   par;




--------------------------------------------------------------------------------
--Testen von CHILD-REPORT 4-Ausgecheckt


select * from dba_objects where object_name='BM_MV_FILE_STATUS';
select * from dba_objects where object_name like '%FILE%STATUS%';


select * from BM_MODULE                    MODUL;
select * from BM_MODULARTEN                MODART;
select * from BM_MODUL_VERSIONEN           MODVERS;
select * from BM_MV_FILE_STATUS            FS;
select * from VW_MV_FILE_STATUS            FS;

select * from dba_objects where object_name like '%BENUTZER%' AND object_type='VIEW';
select * from AMA_BENUTZER                 AB;
select * from vw_benutzer                 AB;

SELECT * FROM DBA_OBJECTS WHERE object_name LIKE '%VW%PRODUKTE%';
  select * from VW_API_AMA_PRODUKTE_RD order by produkt_kuerzel;
  select * from VW_API_AMA_PRODUKTE_RD where orgeinheit_fa='REF II/4/15' order by produkt_kuerzel;
  --
  select * from vw_api_relma_produkte;
  select * from vw_api_relma_produkte where orgeinheit_fa='REF II/4/15' order by produkt;

select * from vw_api_prod_rel_pakete pak;
select * from vw_api_prod_releases rel;
select * from vw_api_prod_rel_module m;
select * from vw_mv_file_status fs;

