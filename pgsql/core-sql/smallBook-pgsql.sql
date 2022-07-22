CREATE DATABASE "smallBook";


\connect "smallBook"

CREATE TABLE books (
    id integer NOT NULL,
    title character varying(100),
    price integer,
    discount numeric,
    description character varying(100),
    lang character varying(100),
    publication_date timestamp with time zone
);

INSERT INTO books (id, title, price, discount, description, lang, publication_date) VALUES (1, 'SPARQL Tutorial', 43, 0.2, 'good', 'en', '2014-07-14 12:47:52+02');
INSERT INTO books (id, title, price, discount, description, lang, publication_date) VALUES (2, 'The Semantic Web', 23, 0.25, 'bad', 'en', '2011-12-08 12:30:00+01');
INSERT INTO books (id, title, price, discount, description, lang, publication_date) VALUES (3, 'Crime and Punishment', 34, 0.2, 'good', 'en', '2015-09-21 11:23:06+02');
INSERT INTO books (id, title, price, discount, description, lang, publication_date) VALUES (4, 'The Logic Book: Introduction, Second Edition', 10, 0.15, 'good', 'en', '1967-11-05 07:50:00+01');


ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);

ALTER TABLE books CLUSTER ON books_pkey;

