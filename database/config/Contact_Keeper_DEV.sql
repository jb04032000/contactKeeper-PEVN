--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-10-17 11:55:54

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 213 (class 1259 OID 24838)
-- Name: Contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Contacts" (
    id integer NOT NULL,
    "user" integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    type character varying(255),
    date timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Contacts" OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24837)
-- Name: Contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Contacts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Contacts_id_seq" OWNER TO postgres;

--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 212
-- Name: Contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Contacts_id_seq" OWNED BY public."Contacts".id;


--
-- TOC entry 209 (class 1259 OID 24821)
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24827)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    date timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24826)
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_id_seq" OWNER TO postgres;

--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 210
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- TOC entry 3174 (class 2604 OID 24841)
-- Name: Contacts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Contacts" ALTER COLUMN id SET DEFAULT nextval('public."Contacts_id_seq"'::regclass);


--
-- TOC entry 3173 (class 2604 OID 24830)
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- TOC entry 3326 (class 0 OID 24838)
-- Dependencies: 213
-- Data for Name: Contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Contacts" (id, "user", name, email, phone, type, date, "createdAt", "updatedAt") FROM stdin;
1	1	Dummy Name 1	test1@test.test	7898789789	Personal	2022-09-26 13:21:51.613+05:30	2022-09-26 13:21:51.613+05:30	2022-09-26 13:21:51.613+05:30
2	2	Dummy Name 2	test2@test.test	7898789788	Personal	2022-09-26 13:21:51.613+05:30	2022-09-26 13:21:51.613+05:30	2022-09-26 13:21:51.613+05:30
3	10	contact1	contact1@email.com	2222222222	Personal	\N	2022-09-27 16:40:09.393+05:30	2022-09-27 16:40:09.393+05:30
4	10	contact2	contact2@email.com	1111111111	Personal	\N	2022-09-27 16:44:40.279+05:30	2022-09-27 16:44:40.279+05:30
6	10	contact2	contact2@email.com	1111111111	Personal	2022-09-27 16:57:43.336+05:30	2022-09-27 16:57:43.337+05:30	2022-09-27 16:57:43.337+05:30
7	10	contact3 updated	contact3@email.com	1111111111	Office	2022-09-27 17:01:17.822+05:30	2022-09-27 17:01:17.823+05:30	2022-09-27 17:27:32.095+05:30
56	71	sdfds 	dfssfdsd@frfs.freert	45345	Personal	2022-10-14 18:15:32.343+05:30	2022-10-14 18:15:32.344+05:30	2022-10-17 10:27:27.822+05:30
57	71	sadasd 	sdas@asdfsdf.sdf	5436588888888888	Personal	2022-10-14 18:34:38.243+05:30	2022-10-14 18:34:38.245+05:30	2022-10-17 10:36:08.109+05:30
13	40	om 	om@om.om	5555555555	Personal	2022-10-03 12:41:22.167+05:30	2022-10-03 12:41:22.167+05:30	2022-10-03 13:26:36.795+05:30
15	40	octy	octy@octy.octy	4447874544	Professional	2022-10-03 14:11:42.669+05:30	2022-10-03 14:11:42.67+05:30	2022-10-03 14:11:42.67+05:30
18	40	namename	name@name.name	4445544554	Personal	2022-10-14 12:30:08.741+05:30	2022-10-14 12:30:08.741+05:30	2022-10-14 12:30:08.741+05:30
19	40	name	name@nameas.name	444555445744	Personal	2022-10-14 12:30:38.965+05:30	2022-10-14 12:30:38.965+05:30	2022-10-14 12:30:38.965+05:30
14	40	raj  update	raj@raj.raj	6666666666	Professional	2022-10-03 12:41:35.602+05:30	2022-10-03 12:41:35.602+05:30	2022-10-14 14:27:55.244+05:30
55	71	zcxz	weq@adfsf.dsf	5356534564	Professional	2022-10-14 18:14:45.356+05:30	2022-10-14 18:14:45.357+05:30	2022-10-14 18:14:45.357+05:30
46	71	om fghf	asd@sdf.sdf	78787878	Personal	2022-10-14 17:07:42.233+05:30	2022-10-14 17:07:42.233+05:30	2022-10-14 18:14:56.879+05:30
\.


--
-- TOC entry 3322 (class 0 OID 24821)
-- Dependencies: 209
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
20220926065615-create-users.js
20220926070251-create-contact.js
\.


--
-- TOC entry 3324 (class 0 OID 24827)
-- Dependencies: 211
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" (id, name, email, password, date, "createdAt", "updatedAt") FROM stdin;
1	Dummy Name 1	1test@test.test	qwert@1234	2022-09-26 13:10:39.446+05:30	2022-09-26 13:10:39.447+05:30	2022-09-26 13:10:39.447+05:30
2	Dummy Name 2	2test@test.test	qwert@1234	2022-09-26 13:10:39.447+05:30	2022-09-26 13:10:39.447+05:30	2022-09-26 13:10:39.447+05:30
3	Dummy Name 1	test1@test.test	qwert@1234	2022-09-26 13:20:35.571+05:30	2022-09-26 13:20:35.571+05:30	2022-09-26 13:20:35.571+05:30
4	Dummy Name 2	test2@test.test	qwert@1234	2022-09-26 13:20:35.571+05:30	2022-09-26 13:20:35.571+05:30	2022-09-26 13:20:35.571+05:30
5	UserName 1	userName1@email.com	$2a$10$XUBtqj91lfH3vUPZUMe9COcedbCtQWniCWSvQt/Lqd5X/tsCZabp2	\N	2022-09-26 16:33:49.914+05:30	2022-09-26 16:33:49.914+05:30
6	UserName 3	userName3@email.com	$2a$10$3mRSnjRvLSy.Gx2c7c.POOQcnht2StA5lvTSWZKmHpuHrCJrXk0Ua	\N	2022-09-26 17:05:21.63+05:30	2022-09-26 17:05:21.63+05:30
7	UserName 2	userName2@email.com	$2a$10$xeWMs4YpX2.2qbYZTS7NWONmmxPck/EYCYUccBIfkcN372c0EdhTi	\N	2022-09-26 17:05:36.435+05:30	2022-09-26 17:05:36.435+05:30
8	UserName 4	userName4@email.com	$2a$10$z3gwipBqT8Pv.SFWDW/5gOVIGwyX23xD8XPS8c2X.S0bO4RO7ZUOm	\N	2022-09-26 17:38:30.043+05:30	2022-09-26 17:38:30.043+05:30
9	userName 5	userName5@email.com	$2a$10$abohl19POKCcMvcQsdqcU.96XAyVl4sDEZIFK1/s.mMugyFbhdwrG	\N	2022-09-26 18:39:51.714+05:30	2022-09-26 18:39:51.714+05:30
10	userName6	userName6@email.com	$2a$10$6bsN6Q0XyYGX9d.8spYwmeJheIZZkomiOB4gx0I3YVUNBo79HaLwe	\N	2022-09-27 10:54:56.465+05:30	2022-09-27 10:54:56.465+05:30
11	raj	ra@raj.raj	$2a$10$KFEsvjJP4kt2UV1YisbF2ehwumKzU7C1FG10PjyH5nyLE.oOX4Wlu	2022-09-30 12:19:07.559+05:30	2022-09-30 12:19:07.702+05:30	2022-09-30 12:19:07.702+05:30
12	om	om@om.om	$2a$10$ZDjS4aVuUPbsq5FM6.f0CeTFUGLvraXsQRHe2PnATENQD5qMngAla	2022-09-30 12:40:04.455+05:30	2022-09-30 12:40:04.59+05:30	2022-09-30 12:40:04.59+05:30
13	om	om1@om.om	$2a$10$WI58mjyebwk19qAM7o/V5uQlaB6zY8NQ3KCH/pNDEQHdYOnZ9pFhu	2022-09-30 12:41:53.841+05:30	2022-09-30 12:41:53.946+05:30	2022-09-30 12:41:53.946+05:30
14	roy	roy@roy.roy	$2a$10$mJRgoXFE/Ce/jEVmdP5BpOYygI7yHdsgm7Bu8aiuBOGLsR2ygegMy	2022-09-30 13:05:00.877+05:30	2022-09-30 13:05:01.008+05:30	2022-09-30 13:05:01.008+05:30
15	we	test@test.test	$2a$10$gHKVcnEzV3zYHjyRHHAdwegI4YPDz6jLDe0OsCYAABZV8cZbPgOL6	2022-09-30 13:54:19.952+05:30	2022-09-30 13:54:20.161+05:30	2022-09-30 13:54:20.161+05:30
16	aaa	aaa@aaa.aaa	$2a$10$7LVsr1JdUX984tmXGzblN.SFt4WrXaHfOX4rpdgvX9fkOAEDIHELO	2022-09-30 13:56:11.556+05:30	2022-09-30 13:56:11.735+05:30	2022-09-30 13:56:11.735+05:30
17	user	user@user.user	$2a$10$jRIrgNLHnBO2SMy6wc5pROvF2GwDB3wRWp6RNoMDKFbluqzpsRUbq	2022-09-30 14:08:53.859+05:30	2022-09-30 14:08:53.992+05:30	2022-09-30 14:08:53.992+05:30
18	raj	raj2@raj2.com	$2a$10$L1yngwGy9BQgXMzilj0tseSmVIQ2gYRKYKYO5z3wgCYYcY3NF2Ily	2022-09-30 14:20:45.105+05:30	2022-09-30 14:20:45.237+05:30	2022-09-30 14:20:45.237+05:30
19	raj	test@test3.test	$2a$10$X2N36U7U0QhqeH6yT/o9Te0wPEkJ5H/o8fzT5h10ljvj1FJygRpla	2022-09-30 14:21:56.571+05:30	2022-09-30 14:21:56.706+05:30	2022-09-30 14:21:56.706+05:30
20	asdasd	asdasd@asdasdas.asdas	$2a$10$PBy50S1rS/AUqE.QJhkD5e.ctWtnBeKhgMjOBqqIOJKjMOAlDVhwi	2022-09-30 14:24:07.017+05:30	2022-09-30 14:24:07.122+05:30	2022-09-30 14:24:07.122+05:30
21	plplp	plplp@plpl.plpl	$2a$10$4ml0Tylx6AFGOjjC5k0Bjeef4ogeEro1NjpYoiNaG3wDP.nErHG/y	2022-09-30 14:30:05.531+05:30	2022-09-30 14:30:05.666+05:30	2022-09-30 14:30:05.666+05:30
22	trtr	trtr@rtrt.trt	$2a$10$u69hFeF4L68dsX19ytQMP.D0NaKl0Kz2c2n8NbYM.cQtOLWu/VPkS	2022-09-30 14:34:04.25+05:30	2022-09-30 14:34:04.384+05:30	2022-09-30 14:34:04.384+05:30
23	qqqqq	qqqq@qq.qqq	$2a$10$hAFbqb0/MdZ0X2Qm.ODk/.bdhh68QfuuNnDg1mO.bIOzF9KayxBU2	2022-09-30 14:39:32.998+05:30	2022-09-30 14:39:33.153+05:30	2022-09-30 14:39:33.153+05:30
24	wwwww	wwww@www.ww	$2a$10$0Jhq9/hRbwugBIXGZaTgsuyqEn5O68RqSxVDNYlvzuw660kp92MGC	2022-09-30 14:44:31.99+05:30	2022-09-30 14:44:32.121+05:30	2022-09-30 14:44:32.121+05:30
25	fffff	fff@fff.fff	$2a$10$b4C4t88jDmnFp9n9UTgm8.cHS8nBscrVY7Da.rbEs/FEyRYmdcgrK	2022-09-30 14:55:19.079+05:30	2022-09-30 14:55:19.215+05:30	2022-09-30 14:55:19.215+05:30
26	yyyyy	yyyy@yyy.yyy	$2a$10$dYhxe/Tnv4YR5Dpv.efJ3.KhrjcP0GDoeDBPSfDfTYK2POQUcePvi	2022-09-30 14:55:54.208+05:30	2022-09-30 14:55:54.313+05:30	2022-09-30 14:55:54.313+05:30
27	hhhh	hhh@hhh.hhh	$2a$10$FXC.0VdyLgQqGlNe8ZZbSuze9TJTGNljBPbvmeuXbxawcuNwGpevO	2022-09-30 14:57:49.882+05:30	2022-09-30 14:57:50.014+05:30	2022-09-30 14:57:50.014+05:30
28	iiii	iiii@iii.iii	$2a$10$fdJnyy.mzt04WzqUvVUbGOQ9dvcvUDycucGv4YytaePuar/oy7ECW	2022-09-30 15:00:07.122+05:30	2022-09-30 15:00:07.266+05:30	2022-09-30 15:00:07.266+05:30
29	tyry	ytryr@ytutu.tyu	$2a$10$Jyy2GEcJmkI./n4hLqROfeXSpG0Op.D2WbQxEfTbZK5D2zQt5Qat.	2022-09-30 15:03:06.683+05:30	2022-09-30 15:03:06.788+05:30	2022-09-30 15:03:06.788+05:30
30	kkkkk	kkk@hhgh.ggh	$2a$10$jp/K7bREk2n3SRFaAd6rj.zL6tULsurblUkV8xm6.i3nSfngAlcri	2022-09-30 15:03:59.986+05:30	2022-09-30 15:04:00.092+05:30	2022-09-30 15:04:00.092+05:30
31	ttt	ttt@ttt.ttt	$2a$10$XVM9z8OQAYY.Qi68hg1LS.HfU0qT0.nf05.Kwr2oL3KDPIltJ/FUG	2022-09-30 15:06:57.615+05:30	2022-09-30 15:06:57.756+05:30	2022-09-30 15:06:57.756+05:30
32	mmmmm	mmm@mmm.mmm	$2a$10$Szy7BWFGXYC9vrb3OI4zkuRc./FkXciKs4fXIHUlTaly2MLumSUAi	2022-09-30 15:07:48.784+05:30	2022-09-30 15:07:48.896+05:30	2022-09-30 15:07:48.896+05:30
33	fghfgh	fghf@dfg.dfgdf	$2a$10$wj1aYAOzhrJ.WfWLUGizcuIJTe9gRzjYEL7U/r7WxzH3nf.jtKXGC	2022-09-30 15:08:44.282+05:30	2022-09-30 15:08:44.414+05:30	2022-09-30 15:08:44.414+05:30
34	vvv	vvv@vvv.vv	$2a$10$aZEJf6/hoMqj7vhCt7tu8uFX3RuTgaI1YkB2z1slYEl.m23XUGHqa	2022-09-30 15:09:46.702+05:30	2022-09-30 15:09:46.833+05:30	2022-09-30 15:09:46.833+05:30
35	bbb	bbb@bbb.bbb	$2a$10$TbVJmqq05iajwx8RbdjePeUCMDJcSYcOL0sOlNGcIYFhhFcfudk96	2022-09-30 15:15:22.536+05:30	2022-09-30 15:15:22.714+05:30	2022-09-30 15:15:22.714+05:30
36	ddd	ddd@dd.dd	$2a$10$W/LMRJZlNzvc2M/aKJPf7uXhp0yTVAKDTsKIH5ALhwASM6MwOadY6	2022-09-30 15:19:11.766+05:30	2022-09-30 15:19:11.929+05:30	2022-09-30 15:19:11.929+05:30
37	lll	lll@ll.ll	$2a$10$1CXO6asw8qnKs0Yr5QlANelhmGydRBFo8z9yiMnl.7rDSvkNYK1LO	2022-09-30 15:19:45.76+05:30	2022-09-30 15:19:45.954+05:30	2022-09-30 15:19:45.954+05:30
38	llll	lll@ll.lll	$2a$10$yet9oqvyTHigK84dspAEH.H/kW7z6V2TZmyC9PVfOyH3oFryL4y9.	2022-09-30 15:29:52.895+05:30	2022-09-30 15:29:53.025+05:30	2022-09-30 15:29:53.025+05:30
39	nnn	nnn@nnn.nnn	$2a$10$2wj23hKc9KPlbWv6kAnxRuV526/6P6N1BInIPhIw4webPSXmkn8W2	2022-09-30 15:33:47.442+05:30	2022-09-30 15:33:47.572+05:30	2022-09-30 15:33:47.572+05:30
40	raj	raj@raj7.raj	$2a$10$uKs4nvODkFL69dKvaDeO8uZbKLnpLj2Oz6AkPWejgbg52dDY2Vl.W	2022-09-30 15:38:57.777+05:30	2022-09-30 15:38:57.922+05:30	2022-09-30 15:38:57.922+05:30
41	bbb	bbb@bb.bb	$2a$10$KtUcPm7iyOhSJVrfns80NOTe/C3EE..3ZZs/rxCoCTRpVyCWQEWyO	2022-09-30 15:40:12.222+05:30	2022-09-30 15:40:12.416+05:30	2022-09-30 15:40:12.416+05:30
42	ccccc	cc@cc.cc	$2a$10$qn1YwAEaiOvI6PVCSkmvp.L02oaqch6x70TS921mRreRBUMiOHEsC	2022-09-30 15:44:52.999+05:30	2022-09-30 15:44:53.13+05:30	2022-09-30 15:44:53.13+05:30
43	nnn	nhnhn@nhn.nhn	$2a$10$UrPrpMO5TcnZt2cGdJr6qey4uutxaOs7MjBxwy8VDHXMET33Yd75O	2022-09-30 16:09:26.269+05:30	2022-09-30 16:09:26.401+05:30	2022-09-30 16:09:26.401+05:30
44	bgbgbg	bgbgb@bgbgb.bgbgb	$2a$10$mb04QlxRwHNVckEvWGRbvu1xsPfpqF2CctgB/6FSXYrX1Tti8RLuG	2022-09-30 16:11:44.933+05:30	2022-09-30 16:11:45.063+05:30	2022-09-30 16:11:45.063+05:30
45	cvxcv	xcvxcv@xcvxcv.xcvxcv	$2a$10$86EGzHKkMolDIqHUbKIBE.P1f09qWt9aH57vsyjgT9ky8HryC/mNC	2022-09-30 16:43:45.177+05:30	2022-09-30 16:43:45.323+05:30	2022-09-30 16:43:45.323+05:30
46	new user	new@new.new	$2a$10$HeM.ch9CKrAUwB0QG5xuxOlIv5847t2ba8DTPfuFGjwkJcUGXq9hG	2022-10-13 15:39:20.298+05:30	2022-10-13 15:39:20.438+05:30	2022-10-13 15:39:20.438+05:30
47	unknown	raj@raj10.raj	$2a$10$hrmlSvOzLN0eCUrWCppK4evYkaQofNOERGAEN50biYn1xETyUyz62	2022-10-13 15:45:00.457+05:30	2022-10-13 15:45:00.603+05:30	2022-10-13 15:45:00.603+05:30
48	unknown	raj@raj11.raj	$2a$10$r.tcY5kng1NqFUjZX01/lutfPJlSwLXZV17fhCyWfO7TYFtlBH5ym	2022-10-13 15:51:50.647+05:30	2022-10-13 15:51:50.794+05:30	2022-10-13 15:51:50.794+05:30
49	unknown	raj@raj21.raj	$2a$10$d1I3cHAiMVsc.eXOye4QluypWXPodcCIPtsymL6hWVENh2HE7ak16	2022-10-13 15:53:21.052+05:30	2022-10-13 15:53:21.229+05:30	2022-10-13 15:53:21.229+05:30
50	unknown	raj@raj22.raj	$2a$10$3puAl/B4eAjdiBW6wMpa4entJjvixqV0RWMODm5itIrITq.iEf/v6	2022-10-13 15:55:12.635+05:30	2022-10-13 15:55:12.777+05:30	2022-10-13 15:55:12.777+05:30
51	unknown	raj@raj23.raj	$2a$10$PN3I0zEHKfNipK258q5nq.TdHSajYsVkV.34y/9AXyw9WCSDfbAoe	2022-10-13 16:03:06.141+05:30	2022-10-13 16:03:06.292+05:30	2022-10-13 16:03:06.292+05:30
52	unknown	raj@raj24.raj	$2a$10$rjq7KS/3v4GnrFiLlPBwTO3JOYMUwirH3jAtTBBX4RQbdxLJqCnPa	2022-10-13 16:08:36.981+05:30	2022-10-13 16:08:37.129+05:30	2022-10-13 16:08:37.129+05:30
53	unknown	raj@raj25.raj	$2a$10$SHTXtkwzZ3.hA1b28DBEtuRsrqj814MU28bP1WWB3zPTIRKs44xPm	2022-10-13 16:13:16.482+05:30	2022-10-13 16:13:16.676+05:30	2022-10-13 16:13:16.676+05:30
54	unknown	raj@raj26.raj	$2a$10$o/5MkcerYMxbcu.VdRenmeeJNzfCCbORjKXs.tXTzdKmkB9APg/wa	2022-10-13 16:26:23.153+05:30	2022-10-13 16:26:23.303+05:30	2022-10-13 16:26:23.303+05:30
55	unknown	raj@raj27.raj	$2a$10$Dc5XMY3OfXLudQgO/6dKrusqRVTJ3LtKe6XtQ/5vuWovXgvzWfhL.	2022-10-13 17:21:34.94+05:30	2022-10-13 17:21:35.089+05:30	2022-10-13 17:21:35.089+05:30
56	unknown	raj@raj28.raj	$2a$10$TGWYSvmez1i4vFu1Vy19Tupd28QZFs6ynsYF/Wboy5WM/L/HoYzbe	2022-10-13 17:26:42.073+05:30	2022-10-13 17:26:42.297+05:30	2022-10-13 17:26:42.297+05:30
57	unknown	raj@raj29.raj	$2a$10$ljOVQ8iGKpVV0Ht6G1jFp.bYYWHCnoAad4T8hwzaWcstTs57W04bK	2022-10-13 17:28:00.706+05:30	2022-10-13 17:28:00.872+05:30	2022-10-13 17:28:00.872+05:30
58	unknown	raj@raj30.raj	$2a$10$d4QWuTdvhyjzUthiARm7peHXsB34UTK0/S0uq3xLCLBnneYFMQSq6	2022-10-13 17:28:45.337+05:30	2022-10-13 17:28:45.478+05:30	2022-10-13 17:28:45.478+05:30
59	unknown	raj@raj31.raj	$2a$10$ND14h9/mh2oFe2KSlFrec.eF9yrEuuzEcoQ9qlDTKK1j38xDXpCHC	2022-10-13 17:29:23.85+05:30	2022-10-13 17:29:23.993+05:30	2022-10-13 17:29:23.993+05:30
60	unknown	raj@raj32.raj	$2a$10$xOlQEbZogITiSUXzYSO3/uFHa1pYvYESYHYMtBaOgOGgZyiInZLJi	2022-10-13 17:30:04.879+05:30	2022-10-13 17:30:05.036+05:30	2022-10-13 17:30:05.036+05:30
61	unknown	raj@raj33.raj	$2a$10$fHCSXRrQyxZk4JNWOqoQmetl90V/h8vSv6Kjf9EUwbRP5hfEftjr6	2022-10-13 17:38:52.894+05:30	2022-10-13 17:38:53.034+05:30	2022-10-13 17:38:53.034+05:30
62	unknown	raj@raj34.raj	$2a$10$JGaNeblWixd47JN2eFxfLespIY2whVTwPojU5e1VNFoaKJCOcKPt.	2022-10-13 17:43:21.5+05:30	2022-10-13 17:43:21.668+05:30	2022-10-13 17:43:21.668+05:30
63	unknown	raj@raj35.raj	$2a$10$8SASRH2kK4IPatyK4/wvp./L.1DvbUQoWr3zzG/GlGm330hI5ilzi	2022-10-13 17:44:20.67+05:30	2022-10-13 17:44:20.823+05:30	2022-10-13 17:44:20.823+05:30
64	unknown	raj@raj36.raj	$2a$10$.MS25QYWrhlfc7OU1pB0P.FbFWDZfg9RpPvjqSMa1J3koYUF8M59y	2022-10-13 17:46:25.797+05:30	2022-10-13 17:46:25.96+05:30	2022-10-13 17:46:25.96+05:30
65	unknown	raj@raj37.raj	$2a$10$.zE7CZjoG8c3Xp0F5sMuQ.iDACiPqyAVaurn7kgjWlj95kalhZhEe	2022-10-13 17:49:06.672+05:30	2022-10-13 17:49:06.812+05:30	2022-10-13 17:49:06.812+05:30
66	unknown	raj@raj38.raj	$2a$10$2CE6vaDFpb7HktQ0Hf3Sz.jZd/MVpRQSHIrazfqbRrohD9LpfMXme	2022-10-13 17:50:11.5+05:30	2022-10-13 17:50:11.645+05:30	2022-10-13 17:50:11.645+05:30
67	unknown	raj@raj39.raj	$2a$10$trWi7YCq3Q3ZrT/wz9N2z..BdGnTsiebRyUwlAfpRxFJhuqAOO7ty	2022-10-13 17:52:22.376+05:30	2022-10-13 17:52:22.525+05:30	2022-10-13 17:52:22.525+05:30
68	unknown	raj@raj350.raj	$2a$10$SDdYlV0vspo.B3ten5NeCOCdn.8QYtcaGkXUnYhPkk/gyRmMrpkCa	2022-10-13 17:54:19.558+05:30	2022-10-13 17:54:19.715+05:30	2022-10-13 17:54:19.715+05:30
69	unknown	raj@raj351.raj	$2a$10$cx1N8jyvIb/eFCHQn6yCrupK2TJ4jS5L4VF/USSfNe6O8zEkRzDHu	2022-10-13 17:55:23.576+05:30	2022-10-13 17:55:23.728+05:30	2022-10-13 17:55:23.728+05:30
70	unknown	raj@raj352.raj	$2a$10$aPu9hYA68u.C8n7WdyZ3RuIJ4Sn4WC4q01H3qr46NUbpi8FWP8a0m	2022-10-13 17:57:22.58+05:30	2022-10-13 17:57:22.73+05:30	2022-10-13 17:57:22.73+05:30
71	raj	raj@rajj555.raj	$2a$10$IphqYaQz1b5xKQTnK4A85euhcpvzYzajZaAqWynpKtZ9w53CnY/RS	2022-10-13 18:39:23.199+05:30	2022-10-13 18:39:23.342+05:30	2022-10-13 18:39:23.342+05:30
72	fgdfg	raj@rajj556.raj	$2a$10$9C/yyMfz4jiXGaWx0FbR9.O2OP2QqhLaMfmx6Qrzuy7vN.7dZVzf.	2022-10-13 18:46:29.49+05:30	2022-10-13 18:46:29.597+05:30	2022-10-13 18:46:29.597+05:30
73	fdgdfg	raj@rajj5558.raj	$2a$10$pYXcj06Ztn.3Gr1RNYM4J.IH3mfE622PlvmDUZs3d6zq8pJun0V/W	2022-10-13 18:52:29.509+05:30	2022-10-13 18:52:29.666+05:30	2022-10-13 18:52:29.666+05:30
74	sdfsdfsdf	raj@rajj5554.raj	$2a$10$vJx6WOGo3x6fpTqGk3pxS..e0g246YC07CV9xLPjuqdqDk.xEbZhS	2022-10-13 18:53:09.163+05:30	2022-10-13 18:53:09.282+05:30	2022-10-13 18:53:09.282+05:30
75	sadas	raj@rajj55545.raj	$2a$10$q4DQyzm6q/YBjG2JGkfKBeHUxykU9U4BpiNYvb0KxGKjVwKsjQOgO	2022-10-13 18:55:55.785+05:30	2022-10-13 18:55:55.929+05:30	2022-10-13 18:55:55.929+05:30
76	sdfsd	raj@rajj55455.raj	$2a$10$Xi0aZeOx.TTpe3A0jQUMEeUFf8RTnlEbe1e/pCuR2nXAaBwF9BIne	2022-10-13 18:57:05.826+05:30	2022-10-13 18:57:05.936+05:30	2022-10-13 18:57:05.936+05:30
77	dfgdfg	raj@rajj554745.raj	$2a$10$IXUN.2yrVjK0UFWguFWW5uS4hh3rGtHh0MuIP/KELH3mb9cblm9Ui	2022-10-13 18:57:52.17+05:30	2022-10-13 18:57:52.278+05:30	2022-10-13 18:57:52.278+05:30
78	dfgdf	raj@rajj5565625.raj	$2a$10$VZnDSRlI0/ikR15WyN86H.JbN6aKdO9t0AfF0W4nGKEp0KY9vB4Yu	2022-10-13 18:58:29.621+05:30	2022-10-13 18:58:29.728+05:30	2022-10-13 18:58:29.728+05:30
79	fhfghf	raj@rajj55565665.raj	$2a$10$v0fW6UH73l.uzJvbPYV.auDhbg73gsqSCXFWL8y4QNZ5PcwSA7vSy	2022-10-14 10:02:24.652+05:30	2022-10-14 10:02:24.783+05:30	2022-10-14 10:02:24.783+05:30
80	fghfhfghfgh	raj@rajj55484f5.raj	$2a$10$5hvuCN41wRz5/fCQoPRXcu1Tres9u/h2KOnERUCKJs2gxSF.l96n6	2022-10-14 10:03:09.956+05:30	2022-10-14 10:03:10.065+05:30	2022-10-14 10:03:10.065+05:30
81	asdasd	raj@rajj557895.raj	$2a$10$lcJrjc1/VeKdgrZU6KYdA.kzGcWmffaLwzFNBetzpYJXXiMdrY9J.	2022-10-14 10:14:35.491+05:30	2022-10-14 10:14:35.628+05:30	2022-10-14 10:14:35.628+05:30
82	dfsfsdf	raj@raj54555.raj	$2a$10$MYioZorMfDbnaJzBUOEmG.Yt9J3CcD/Cr0i6f41JTMMBixObVtcQa	2022-10-14 10:44:25.458+05:30	2022-10-14 10:44:25.591+05:30	2022-10-14 10:44:25.591+05:30
83	dsfsdf	raj@rajj4754555.raj	$2a$10$vcp4UCriLq9z5D04.IBnT.9Uh4fu3rPaOvFCN5KzdCier6AIRQlsK	2022-10-14 10:45:16.473+05:30	2022-10-14 10:45:16.579+05:30	2022-10-14 10:45:16.579+05:30
84	raj	email12321@email.com	$2a$10$j5D0vpUUPaoUirjF7uWwe.A/pKkHRdXFuuJmj..wBxa4HUazUqLSK	2022-10-17 11:34:33.856+05:30	2022-10-17 11:34:33.995+05:30	2022-10-17 11:34:33.995+05:30
\.


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 212
-- Name: Contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Contacts_id_seq"', 57, true);


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 210
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_id_seq"', 84, true);


--
-- TOC entry 3182 (class 2606 OID 24845)
-- Name: Contacts Contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Contacts"
    ADD CONSTRAINT "Contacts_pkey" PRIMARY KEY (id);


--
-- TOC entry 3176 (class 2606 OID 24825)
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- TOC entry 3178 (class 2606 OID 24836)
-- Name: Users Users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);


--
-- TOC entry 3180 (class 2606 OID 24834)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


-- Completed on 2022-10-17 11:55:54

--
-- PostgreSQL database dump complete
--

