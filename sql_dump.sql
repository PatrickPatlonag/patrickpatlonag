
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

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 82084)
-- Name: datelist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."datelist" (
    "dat_date" character varying(20) NOT NULL
);


--
-- TOC entry 196 (class 1259 OID 82072)
-- Name: student; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."student" (
    "stu_rfid" integer NOT NULL,
    "stu_id" numeric(12,0) NOT NULL,
    "stu_lname" character varying(20) NOT NULL,
    "stu_fname" character varying(20) NOT NULL,
    "stu_init" character(1),
    "stu_gender" character varying(10) NOT NULL,
    "stu_course" character varying(50) NOT NULL,
    "stu_year" character varying(10) NOT NULL,
    "stu_component" character varying(4) NOT NULL,
    "stu_contact" numeric(11,0) NOT NULL,
    "stu_pcontact" numeric(11,0) NOT NULL,
    "stu_present" integer NOT NULL,
    "stu_late" integer NOT NULL,
    "stu_absent" integer NOT NULL
);


--
-- TOC entry 197 (class 1259 OID 82079)
-- Name: summary; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."summary" (
    "sum_code" integer NOT NULL,
    "sum_id" numeric(12,0) NOT NULL,
    "sum_lname" character varying(20) NOT NULL,
    "sum_fname" character varying(20) NOT NULL,
    "sum_date" "date" NOT NULL
);


--
-- TOC entry 2921 (class 0 OID 82084)
-- Dependencies: 198
-- Data for Name: datelist; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 2919 (class 0 OID 82072)
-- Dependencies: 196
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 2920 (class 0 OID 82079)
-- Dependencies: 197
-- Data for Name: summary; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 2797 (class 2606 OID 82088)
-- Name: datelist datelist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."datelist"
    ADD CONSTRAINT "datelist_pkey" PRIMARY KEY ("dat_date");


--
-- TOC entry 2791 (class 2606 OID 82076)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."student"
    ADD CONSTRAINT "student_pkey" PRIMARY KEY ("stu_rfid");


--
-- TOC entry 2793 (class 2606 OID 82078)
-- Name: student student_stu_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."student"
    ADD CONSTRAINT "student_stu_id_key" UNIQUE ("stu_id");


--
-- TOC entry 2795 (class 2606 OID 82083)
-- Name: summary summary_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."summary"
    ADD CONSTRAINT "summary_pkey" PRIMARY KEY ("sum_code");


-- Completed on 2019-09-30 17:24:38 PST

--
-- PostgreSQL database dump complete
--

