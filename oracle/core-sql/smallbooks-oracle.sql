CREATE TABLE "SYSTEM".books (
                                id NUMBER(*,0) NOT NULL,
                                title VARCHAR2(100),
                                price NUMBER(8,2),
                                discount NUMBER(8,2),
                                description VARCHAR2(100),
                                lang VARCHAR2(100),
                                publication_date TIMESTAMP (6) WITH TIME ZONE
);

-- Default timestamp with timezone value in Oracle is DD-MON-RR HH.MI.SSXFF AM TZR
-- Modified format used to handle these instances

INSERT INTO "SYSTEM".books (id, title, price, discount, description, lang, publication_date) VALUES (1, 'SPARQL Tutorial', 43, 0.2, 'good', 'en', to_timestamp_tz('2014-07-14 12:47:52 +02:00', 'YYYY-MM-DD HH:MI:SS TZH:TZM'));
INSERT INTO "SYSTEM".books (id, title, price, discount, description, lang, publication_date) VALUES (2, 'The Semantic Web', 23, 0.25, 'bad', 'en', to_timestamp_tz('2011-12-08 12:30:00 +01:00', 'YYYY-MM-DD HH:MI:SS TZH:TZM'));
INSERT INTO "SYSTEM".books (id, title, price, discount, description, lang, publication_date) VALUES (3, 'Crime and Punishment', 34, 0.2, 'good', 'en', to_timestamp_tz('2015-09-21 11:23:06 +02:00', 'YYYY-MM-DD HH:MI:SS TZH:TZM'));
INSERT INTO "SYSTEM".books (id, title, price, discount, description, lang, publication_date) VALUES (4, 'The Logic Book: Introduction, Second Edition', 10, 0.15, 'good', 'en', to_timestamp_tz('1967-11-05 07:50:00 +01:00', 'YYYY-MM-DD HH:MI:SS TZH:TZM'));

ALTER TABLE "SYSTEM".books ADD CONSTRAINT "books_pkey" PRIMARY KEY (id) ENABLE;