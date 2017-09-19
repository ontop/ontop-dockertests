--------------------------------------------------------
--  File created - Monday-March-06-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NUMERIC
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."NUMERIC" 
   (	"ID" NUMBER(*,0), 
	"TYPE_NUMBER" NUMBER(10,6), 
	"TYPE_NUMERIC" NUMBER(10,6), 
	"TYPE_DEC" NUMBER(10,6), 
	"TYPE_DECIMAL" NUMBER(10,6), 
	"TYPE_INT" NUMBER(*,0), 
	"TYPE_INTEGER" NUMBER(*,0), 
	"TYPE_SMALLINT" NUMBER(*,0), 
	"TYPE_REAL" FLOAT(63), 
	"TYPE_FLOAT" FLOAT(126), 
	"TYPE_DOUBLE_PRECISION" FLOAT(126)
   ) ;
--------------------------------------------------------
--  DDL for Table CHARACTER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CHARACTER" 
   (	"ID" NUMBER(*,0), 
	"TYPE_VARCHAR2" VARCHAR2(100), 
	"TYPE_CHAR" CHAR(1), 
	"TYPE_CHAR_VARYING" VARCHAR2(100), 
	"TYPE_CHARACTER" CHAR(1), 
	"TYPE_CHARACTER_VARYING" VARCHAR2(100), 
	"TYPE_CLOB" CLOB, 
	"TYPE_LONG_VARCHAR" LONG, 
	"TYPE_NAT_CHAR" NCHAR(1), 
	"TYPE_NAT_CHAR_VARYING" NVARCHAR2(100), 
	"TYPE_NAT_CHARACTER" NCHAR(1), 
	"TYPE_NAT_CHARACTER_VARYING" NVARCHAR2(100), 
	"TYPE_NCLOB" NCLOB, 
	"TYPE_NVARCHAR2" NVARCHAR2(100), 
	"TYPE_VARCHAR" VARCHAR2(100), 
	"TYPE_NCHAR" NCHAR(1), 
	"TYPE_NCHAR_VARYING" NVARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table DATETIME
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DATETIME" 
   (	"ID" NUMBER(*,0), 
	"TYPE_DATE" DATE, 
	"TYPE_INTERVAL_DAY" INTERVAL DAY (2) TO SECOND (6), 
	"TYPE_INTERVAL_YEAR" INTERVAL YEAR (2) TO MONTH, 
	"TYPE_TIMESTAMP" TIMESTAMP (6)
   ) ;


--------------------------------------------------------
--  DDL for Table DATETIMES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DATETIMES"
   (	"ID" NUMBER,
	"TYPE_DATE" DATE,
	"TYPE_INTERVAL_DAY" INTERVAL DAY (2) TO SECOND (6),
	"TYPE_INTERVAL_YEAR" INTERVAL YEAR (2) TO MONTH,
	"TYPE_TIMESTAMP" TIMESTAMP (6),
	"TYPE_TIMESTAMPTZ" TIMESTAMP (6) WITH TIME ZONE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


REM INSERTING into SYSTEM.NUMERIC
SET DEFINE OFF;
Insert into SYSTEM.NUMERIC (ID,TYPE_NUMBER,TYPE_NUMERIC,TYPE_DEC,TYPE_DECIMAL,TYPE_INT,TYPE_INTEGER,TYPE_SMALLINT,TYPE_REAL,TYPE_FLOAT,TYPE_DOUBLE_PRECISION) values ('1','1','1','1','1','1','1','1','1','1','1');
REM INSERTING into SYSTEM.CHARACTER
SET DEFINE OFF;
Insert into SYSTEM.CHARACTER (ID,TYPE_VARCHAR2,TYPE_CHAR,TYPE_CHAR_VARYING,TYPE_CHARACTER,TYPE_CHARACTER_VARYING,TYPE_LONG_VARCHAR,TYPE_NAT_CHAR,TYPE_NAT_CHAR_VARYING,TYPE_NAT_CHARACTER,TYPE_NAT_CHARACTER_VARYING,TYPE_NVARCHAR2,TYPE_VARCHAR,TYPE_NCHAR,TYPE_NCHAR_VARYING) values ('1','abc','a','abc','a','abc','abc','a','abc','a','abc','abc','abc','a','abc');
REM INSERTING into SYSTEM.DATETIME
SET DEFINE OFF;
Insert into SYSTEM.DATETIME (ID,TYPE_DATE,TYPE_INTERVAL_DAY,TYPE_INTERVAL_YEAR,TYPE_TIMESTAMP) values ('1',to_date('18-MAR-13','DD-MON-RR'),null,null,to_timestamp('18-MAR-13 10:12:10','DD-MON-RR HH24:MI:SS'));
REM INSERTING into SYSTEM.DATETIMES
SET DEFINE OFF;
Insert into SYSTEM.DATETIMES (ID,TYPE_DATE,TYPE_INTERVAL_DAY,TYPE_INTERVAL_YEAR,TYPE_TIMESTAMP,TYPE_TIMESTAMPTZ) values ('1',to_date('18-MAR-13','DD-MON-RR'),null,null,to_timestamp('18-MAR-13 10:12:10,000000000','DD-MON-RR HH24:MI:SSXFF'),to_timestamp_tz('18-MAR-13 10:12:10,000000000 -08:00','DD-MON-RR HH24:MI:SSXFF TZR'));

--------------------------------------------------------
--  DDL for Index NUMERIC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."NUMERIC_PK" ON "SYSTEM"."NUMERIC" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index CHARACTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CHARACTER_PK" ON "SYSTEM"."CHARACTER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index DATETIME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."DATETIME_PK" ON "SYSTEM"."DATETIME" ("ID") 
  ;

--------------------------------------------------------
--  DDL for Index DATETIMES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."DATETIMES_PK" ON "SYSTEM"."DATETIMES" ("ID")
  ;

--------------------------------------------------------
--  Constraints for Table NUMERIC
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."NUMERIC" ADD CONSTRAINT "NUMERIC_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SYSTEM"."NUMERIC" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CHARACTER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CHARACTER" ADD CONSTRAINT "CHARACTER_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SYSTEM"."CHARACTER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DATETIME
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DATETIME" ADD CONSTRAINT "DATETIME_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SYSTEM"."DATETIME" MODIFY ("ID" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table DATETIMES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DATETIMES" ADD CONSTRAINT "DATETIMES_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SYSTEM"."DATETIMES" MODIFY ("ID" NOT NULL ENABLE);
