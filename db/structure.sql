--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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
-- Name: examples; Type: TABLE; Schema: public; Owner: crimsonknight
--

CREATE TABLE public.examples (
    id integer NOT NULL,
    random jsonb NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.examples OWNER TO crimsonknight;

--
-- Name: examples_id_seq; Type: SEQUENCE; Schema: public; Owner: crimsonknight
--

CREATE SEQUENCE public.examples_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.examples_id_seq OWNER TO crimsonknight;

--
-- Name: examples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crimsonknight
--

ALTER SEQUENCE public.examples_id_seq OWNED BY public.examples.id;


--
-- Name: migration_versions; Type: TABLE; Schema: public; Owner: crimsonknight
--

CREATE TABLE public.migration_versions (
    id integer NOT NULL,
    version character varying(17) NOT NULL
);


ALTER TABLE public.migration_versions OWNER TO crimsonknight;

--
-- Name: migration_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: crimsonknight
--

CREATE SEQUENCE public.migration_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migration_versions_id_seq OWNER TO crimsonknight;

--
-- Name: migration_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crimsonknight
--

ALTER SEQUENCE public.migration_versions_id_seq OWNED BY public.migration_versions.id;


--
-- Name: examples id; Type: DEFAULT; Schema: public; Owner: crimsonknight
--

ALTER TABLE ONLY public.examples ALTER COLUMN id SET DEFAULT nextval('public.examples_id_seq'::regclass);


--
-- Name: migration_versions id; Type: DEFAULT; Schema: public; Owner: crimsonknight
--

ALTER TABLE ONLY public.migration_versions ALTER COLUMN id SET DEFAULT nextval('public.migration_versions_id_seq'::regclass);


--
-- Name: examples examples_pkey; Type: CONSTRAINT; Schema: public; Owner: crimsonknight
--

ALTER TABLE ONLY public.examples
    ADD CONSTRAINT examples_pkey PRIMARY KEY (id);


--
-- Name: migration_versions migration_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: crimsonknight
--

ALTER TABLE ONLY public.migration_versions
    ADD CONSTRAINT migration_versions_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

