--
-- Name: tb_affiliated_writers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tb_affiliated_writers (
    wr_code integer NOT NULL,
    wr_name character varying(100) NOT NULL
);


--
-- Name: tb_authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tb_authors (
    bk_code integer NOT NULL,
    wr_id integer NOT NULL
);


--
-- Name: tb_bk_gen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tb_bk_gen (
    id_bk integer NOT NULL,
    gen_name character varying(100) NOT NULL
);


--
-- Name: tb_books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tb_books (
    bk_code integer NOT NULL,
    bk_title character varying(100) NOT NULL,
    bk_type character(1) DEFAULT 'X' NOT NULL
);


--
-- Name: tb_edition; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tb_edition (
    ed_code integer NOT NULL,
    ed_type character(1) NOT NULL,
    pub_date date NOT NULL,
    n_edt integer NOT NULL,
    editor integer NOT NULL,
    bk_id integer NOT NULL
);


--
-- Name: tb_editor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tb_editor (
    ed_code integer NOT NULL,
    ed_name character varying(100) NOT NULL
);


--
-- Name: tb_emerge_authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tb_emerge_authors (
    bk_code integer NOT NULL,
    wr_id integer NOT NULL
);


--
-- Name: tb_on_prob_wr; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tb_on_prob_wr (
    wr_code integer NOT NULL,
    wr_name character varying(100) NOT NULL
);


--
-- Data for Name: tb_affiliated_writers; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (23, 'AJ Scudiere');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (25, 'Anne Rainey');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (27, 'Barbara Delinsky');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (34, 'Chas Wienke');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (43, 'D.C. Ford');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (45, 'D. E. Knobbe');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (47, 'David Cogswell');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (76, 'Douglas Clegg');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (78, 'Iris Johanesen');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (98, 'Jan Groft');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (101, 'Jeff Havens');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (102, 'Kate Pearce');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (123, 'L.C. Higgs');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (127, 'Melissa Mayhue');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (134, 'Mike Green');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (145, 'S. C. Carr');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (156, 'Shirley Tallman');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (167, 'Stacy Choen');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (178, 'Susan Lyons');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (189, 'Tim Davys');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (234, 'Tracy Richardson');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (245, 'William Boyd');


--
-- Data for Name: tb_authors; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO tb_authors (bk_code, wr_id) VALUES (1, 23);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (2, 98);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (3, 45);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (4, 76);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (5, 78);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (6, 156);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (7, 189);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (1, 189);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (8, 102);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (8, 178);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (8, 25);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (9, 47);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (10, 123);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (2, 123);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (11, 101);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (11, 145);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (11, 43);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (16, 245);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (17, 127);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (18, 234);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (19, 76);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (20, 78);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (21, 27);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (22, 167);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (23, 34);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (24, 134);


--
-- Data for Name: tb_bk_gen; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (3, 'Fiction');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (4, 'Horror');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (5, 'Mystery');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (6, 'Mystery');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (7, 'Fantasy');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (8, 'Romance');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (9, 'Biographies');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (9, 'History');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (9, 'Politics');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (10, 'Historical');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (10, 'Novels');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (11, 'Self Help');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (12, 'Horror');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (12, 'Humor');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (12, 'Fiction');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (12, 'Fantasy');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (13, 'Fantasy');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (13, 'Horror');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (14, 'Cultural');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (14, 'Music');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (15, 'Science');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (16, 'Mystery');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (17, 'Romance');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (18, 'Children');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (19, 'Horror');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (20, 'Horror');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (21, 'Romance');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (22, 'Fiction');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (23, 'History');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (24, 'Fiction');


--
-- Data for Name: tb_books; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (1, 'Resonance', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (2, 'As we Grieve', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (3, 'Runaway Storm', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (4, 'Neverland', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (5, 'Eight Days to Live', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (6, 'Scandal on Rincon Hill', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (7, 'Amberville', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (8, 'Some Like it Rough', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (9, 'Zinn for Beginners', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (10, 'Here Burns My Candle', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (11, 'How to get fired', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (12, 'The Twelve Little Hitlers', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (13, 'The story of Eight the sparrow', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (14, 'The social impact of Christina Oats songs', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (15, 'Engineering analysis of Mazzinga', 'P');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (16, 'Ordinary Thunderstorms', 'A');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (17, 'A Highlander''s Homecoming', 'A');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (18, 'Indian Summer', 'A');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (19, 'A Dark Circus', 'A');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (20, 'City of Stars', 'A');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (21, 'Not My Daughter', 'E');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (22, 'The Last Train From Paris', 'E');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (23, 'Our Boomer Years', 'E');
INSERT INTO tb_books (bk_code, bk_title, bk_type) VALUES (24, 'Path of Thunder', 'E');


--
-- Data for Name: tb_edition; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (12, 'E', '2010-02-18', 1, 76, 1);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (21, 'E', '2000-02-12', 1, 76, 2);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (23, 'S', '2004-01-02', 1, 98, 3);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (32, 'S', '2009-12-04', 1, 98, 4);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (34, 'E', '2000-07-06', 1, 23, 5);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (43, 'X', '2001-05-14', 1, 23, 6);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (45, 'S', '2005-05-05', 1, 34, 7);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (54, 'X', '2008-09-11', 1, 54, 8);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (56, 'S', '2005-02-07', 1, 12, 9);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (65, 'E', '2007-05-09', 1, 32, 10);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (67, 'X', '2004-11-03', 1, 87, 11);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (76, 'X', '2003-12-06', 1, 65, 12);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (78, 'S', '2004-05-03', 1, 21, 15);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (87, 'S', '2007-05-09', 2, 34, 7);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (89, 'S', '2010-05-01', 2, 87, 2);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (98, 'E', '2010-02-01', 2, 32, 10);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (90, 'E', '2006-05-09', 2, 23, 5);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (92, 'E', '2003-01-12', 2, 12, 6);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (91, 'X', '2009-04-18', 3, 12, 6);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (82, 'X', '2000-11-09', 1, 45, 16);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (73, 'X', '2002-04-01', 1, 21, 17);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (74, 'X', '2003-11-03', 1, 87, 18);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (99, 'X', '2006-04-01', 1, 23, 19);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (39, 'X', '2007-02-03', 2, 32, 20);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (40, 'X', '2005-03-01', 1, 32, 21);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (50, 'X', '2001-12-03', 1, 87, 22);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (70, 'X', '2009-03-11', 1, 65, 23);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id) VALUES (10, 'X', '2000-09-23', 1, 34, 24);


--
-- Data for Name: tb_editor; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO tb_editor (ed_code, ed_name) VALUES (12, 'Paul Golden');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (21, 'Pat Red');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (23, 'Simon Frost');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (32, 'Melody Albert');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (34, 'Valerio Nin');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (45, 'Victoria Rolls');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (54, 'Karl Forman');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (65, 'Fill Luckett');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (76, 'Eric Jonnes');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (87, 'Bill Sugar');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (98, 'Bill Green');


--
-- Data for Name: tb_emerge_authors; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO tb_emerge_authors (bk_code, wr_id) VALUES (14, 267);
INSERT INTO tb_emerge_authors (bk_code, wr_id) VALUES (14, 278);
INSERT INTO tb_emerge_authors (bk_code, wr_id) VALUES (15, 289);


--
-- Data for Name: tb_on_prob_wr; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO tb_on_prob_wr (wr_code, wr_name) VALUES (267, 'Peter Griffin');
INSERT INTO tb_on_prob_wr (wr_code, wr_name) VALUES (278, 'Homer Simpson');
INSERT INTO tb_on_prob_wr (wr_code, wr_name) VALUES (289, 'Jon Stewart');



-- Name: aff_wr_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_affiliated_writers
    ADD CONSTRAINT aff_wr_pk PRIMARY KEY (wr_code);


--
-- Name: bk_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_books
    ADD CONSTRAINT bk_pk PRIMARY KEY (bk_code);


--
-- Name: ed_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_editor
    ADD CONSTRAINT ed_pk PRIMARY KEY (ed_code);


--
-- Name: edition_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_edition
    ADD CONSTRAINT edition_pk PRIMARY KEY (ed_code);


--
-- Name: pk_au; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_authors
    ADD CONSTRAINT pk_au PRIMARY KEY (bk_code, wr_id);


--
-- Name: pk_emerge_authors; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_emerge_authors
    ADD CONSTRAINT pk_emerge_authors PRIMARY KEY (bk_code, wr_id);


--
-- Name: pk_gen; Type: CONSTRAINT; Schema: public; Owner: -
--
ALTER TABLE tb_bk_gen
    ADD CONSTRAINT pk_gen PRIMARY KEY (id_bk, gen_name);


--
-- Name: pr_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_on_prob_wr
    ADD CONSTRAINT pr_pk PRIMARY KEY (wr_code);


--
-- Name: fk_affiliated_writes_book; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_authors
    ADD CONSTRAINT fk_affiliated_writes_book FOREIGN KEY (wr_id) REFERENCES tb_affiliated_writers(wr_code);


--
-- Name: fk_bk_gen; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_bk_gen
    ADD CONSTRAINT fk_bk_gen FOREIGN KEY (id_bk) REFERENCES tb_books(bk_code);


--
-- Name: fk_book_has_edition; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_edition
    ADD CONSTRAINT fk_book_has_edition FOREIGN KEY (bk_id) REFERENCES tb_books(bk_code);


--
-- Name: fk_edition_has_editor; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_edition
    ADD CONSTRAINT fk_edition_has_editor FOREIGN KEY (editor) REFERENCES tb_editor(ed_code);


--
-- Name: fk_emerge_writes_book; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_emerge_authors
    ADD CONSTRAINT fk_emerge_writes_book FOREIGN KEY (wr_id) REFERENCES tb_on_prob_wr(wr_code);


--
-- Name: fk_written_book2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_emerge_authors
    ADD CONSTRAINT fk_written_book2 FOREIGN KEY (bk_code) REFERENCES tb_books(bk_code);


--
-- Name: fk_written_books; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE tb_authors
    ADD CONSTRAINT fk_written_books FOREIGN KEY (bk_code) REFERENCES tb_books(bk_code);

COMMIT