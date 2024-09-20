--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 16.2

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

ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.stockvalues DROP CONSTRAINT stockvalues_pkey;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.stockvalues ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.stockvalues_id_seq;
DROP TABLE public.stockvalues;
DROP EXTENSION pgagent;
-- *not* dropping schema, since initdb creates it
DROP SCHEMA pgagent;
--
-- Name: pgagent; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgagent;


ALTER SCHEMA pgagent OWNER TO postgres;

--
-- Name: SCHEMA pgagent; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA pgagent IS 'pgAgent system tables';


--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: pgagent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgagent WITH SCHEMA pgagent;


--
-- Name: EXTENSION pgagent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgagent IS 'A PostgreSQL job scheduler';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: stockvalues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stockvalues (
    id integer NOT NULL,
    kaiser numeric(5,2) DEFAULT 0,
    ness numeric(5,2) DEFAULT 0,
    isagi numeric(5,2) DEFAULT 0,
    kurona numeric(5,2) DEFAULT 0,
    kunigami numeric(5,2) DEFAULT 0,
    gagamaru numeric(5,2) DEFAULT 0,
    yukimiya numeric(5,2) DEFAULT 0,
    raichi numeric(5,2) DEFAULT 0,
    hiori numeric(5,2) DEFAULT 0,
    igarashi numeric(5,2) DEFAULT 0,
    kiyora numeric(5,2) DEFAULT 0,
    bachira numeric(5,2) DEFAULT 0,
    otoya numeric(5,2) DEFAULT 0,
    reo numeric(5,2) DEFAULT 0,
    lastchapter integer DEFAULT 0,
    chigiri numeric(5,2) DEFAULT 0,
    nagi numeric(5,2) DEFAULT 0,
    charles numeric(5,2) DEFAULT 0,
    chapa numeric(5,2) DEFAULT 0,
    rin numeric(5,2) DEFAULT 0,
    karasu numeric(5,2) DEFAULT 0,
    shidou numeric(5,2) DEFAULT 0,
    tokimitsu numeric(5,2) DEFAULT 0,
    zantetsu numeric(5,2) DEFAULT 0
    nanase numeric(5,2) DEFAULT 0
    lorenzo numeric(5,2) DEFAULT 0
    barou numeric(5,2) DEFAULT 0
    sendou numeric(5,2) DEFAULT 0
    niko numeric(5,2) DEFAULT 0
    aryu numeric(5,2) DEFAULT 0
    aiku numeric(5,2) DEFAULT 0
);


ALTER TABLE public.stockvalues OWNER TO postgres;

--
-- Name: stockvalues_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stockvalues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stockvalues_id_seq OWNER TO postgres;

--
-- Name: stockvalues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stockvalues_id_seq OWNED BY public.stockvalues.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    money numeric(100,2) DEFAULT 1000,
    kaiser integer DEFAULT 0,
    ness integer DEFAULT 0,
    isagi integer DEFAULT 0,
    kurona integer DEFAULT 0,
    kunigami integer DEFAULT 0,
    gagamaru integer DEFAULT 0,
    yukimiya integer DEFAULT 0,
    raichi integer DEFAULT 0,
    hiori integer DEFAULT 0,
    igarashi integer DEFAULT 0,
    kiyora integer DEFAULT 0,
    bachira integer DEFAULT 0,
    otoya integer DEFAULT 0,
    reo integer DEFAULT 0,
    chigiri integer DEFAULT 0,
    nagi integer DEFAULT 0,
    charles integer DEFAULT 0,
    chapa integer DEFAULT 0,
    rin integer DEFAULT 0,
    karasu integer DEFAULT 0,
    shidou integer DEFAULT 0,
    totalstockvalue numeric(100,2) DEFAULT 1000,
    tokimitsu integer DEFAULT 0,
    zantetsu integer DEFAULT 0
    nanase integer DEFAULT 0
    lorenzo integer DEFAULT 0
    barou integer DEFAULT 0
    sendou integer DEFAULT 0
    niko integer DEFAULT 0
    aryu integer DEFAULT 0
    aiku integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: stockvalues id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stockvalues ALTER COLUMN id SET DEFAULT nextval('public.stockvalues_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: pga_jobagent; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobagent (jagpid, jaglogintime, jagstation) FROM stdin;
344189	2024-05-19 17:26:40.766091+00	newvm
344538	2024-05-19 17:46:41.170743+00	newvm
\.


--
-- Data for Name: pga_jobclass; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobclass (jclid, jclname) FROM stdin;
\.


--
-- Data for Name: pga_job; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_job (jobid, jobjclid, jobname, jobdesc, jobhostagent, jobenabled, jobcreated, jobchanged, jobagentid, jobnextrun, joblastrun) FROM stdin;
1	1	updateMoneyServer			t	2024-05-18 22:44:26.350379+00	2024-05-18 22:44:26.350379+00	\N	2024-05-29 00:00:00+00	2024-05-28 00:00:00.274139+00
\.


--
-- Data for Name: pga_schedule; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
1	1	daily		t	2024-05-18 23:00:00+00	\N	{t,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{t,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{t,t,t,t,t,t,t}	{f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{f,f,f,f,f,f,f,f,f,f,f,f}
\.


--
-- Data for Name: pga_exception; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
\.


--
-- Data for Name: pga_joblog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_joblog (jlgid, jlgjobid, jlgstatus, jlgstart, jlgduration) FROM stdin;
1	1	s	2024-05-19 14:58:00.480745+00	00:00:00.572121
3	1	i	2024-05-20 00:00:01.793961+00	\N
2	1	s	2024-05-20 00:00:01.795112+00	00:00:00.598219
4	1	s	2024-05-21 00:00:02.187506+00	00:00:00.535333
5	1	s	2024-05-22 00:00:02.95656+00	00:00:00.977539
6	1	s	2024-05-23 00:00:01.239755+00	00:00:01.600976
7	1	s	2024-05-24 00:00:03.047153+00	00:00:00.60347
9	1	i	2024-05-25 00:00:04.831144+00	\N
8	1	s	2024-05-25 00:00:04.831921+00	00:00:00.529881
10	1	s	2024-05-26 00:00:00.285446+00	00:00:00.599747
11	1	s	2024-05-27 00:00:01.17908+00	00:00:00.548689
12	1	s	2024-05-28 00:00:00.304348+00	00:00:00.610056
\.


--
-- Data for Name: pga_jobstep; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
1	1	updateServer		t	s	UPDATE users set money=money+100;\nUPDATE users set totalstockvalue=totalstockvalue+100;		investors	f	\N
\.


--
-- Data for Name: pga_jobsteplog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
1	1	1	s	7311	2024-05-19 14:58:00.486698+00	00:00:00.564969	
2	2	1	s	7372	2024-05-20 00:00:01.800704+00	00:00:00.591548	
3	4	1	s	7588	2024-05-21 00:00:02.190457+00	00:00:00.531293	
4	5	1	s	7720	2024-05-22 00:00:02.95956+00	00:00:00.973465	
5	6	1	s	7856	2024-05-23 00:00:01.242399+00	00:00:01.595966	
6	7	1	s	8186	2024-05-24 00:00:03.051381+00	00:00:00.597883	
7	8	1	s	8423	2024-05-25 00:00:04.835757+00	00:00:00.524965	
8	10	1	s	8506	2024-05-26 00:00:00.289135+00	00:00:00.594941	
9	11	1	s	8569	2024-05-27 00:00:01.18216+00	00:00:00.544485	
10	12	1	s	8626	2024-05-28 00:00:00.307065+00	00:00:00.606207	
\.





--
-- Name: stockvalues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stockvalues_id_seq', 30, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 9782, true);


--
-- Name: stockvalues stockvalues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stockvalues
    ADD CONSTRAINT stockvalues_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

