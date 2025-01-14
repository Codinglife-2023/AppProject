--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6 (Postgres.app)
-- Dumped by pg_dump version 16.6 (Homebrew)

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
-- Name: example_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.example_entity (
    id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE public.example_entity OWNER TO postgres;

--
-- Name: example_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.example_entity ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.example_entity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.numbers (
    id bigint NOT NULL,
    "values" character varying(255) NOT NULL,
    submitted_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.numbers OWNER TO postgres;

--
-- Name: numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.numbers_id_seq OWNER TO postgres;

--
-- Name: numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.numbers_id_seq OWNED BY public.numbers.id;


--
-- Name: tree_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tree_data (
    id bigint NOT NULL,
    input_numbers character varying(255) NOT NULL,
    tree_representation character varying(255) NOT NULL
);


ALTER TABLE public.tree_data OWNER TO postgres;

--
-- Name: tree_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tree_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tree_data_id_seq OWNER TO postgres;

--
-- Name: tree_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tree_data_id_seq OWNED BY public.tree_data.id;


--
-- Name: trees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trees (
    id bigint NOT NULL,
    input_numbers character varying(255) NOT NULL,
    tree_structure character varying(255) NOT NULL
);


ALTER TABLE public.trees OWNER TO postgres;

--
-- Name: trees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trees_id_seq OWNER TO postgres;

--
-- Name: trees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trees_id_seq OWNED BY public.trees.id;


--
-- Name: user_input; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_input (
    id bigint NOT NULL,
    numbers character varying(255)
);


ALTER TABLE public.user_input OWNER TO postgres;

--
-- Name: user_input_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.user_input ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.user_input_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: numbers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.numbers ALTER COLUMN id SET DEFAULT nextval('public.numbers_id_seq'::regclass);


--
-- Name: tree_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tree_data ALTER COLUMN id SET DEFAULT nextval('public.tree_data_id_seq'::regclass);


--
-- Name: trees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trees ALTER COLUMN id SET DEFAULT nextval('public.trees_id_seq'::regclass);


--
-- Name: example_entity example_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.example_entity
    ADD CONSTRAINT example_entity_pkey PRIMARY KEY (id);


--
-- Name: numbers numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.numbers
    ADD CONSTRAINT numbers_pkey PRIMARY KEY (id);


--
-- Name: tree_data tree_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tree_data
    ADD CONSTRAINT tree_data_pkey PRIMARY KEY (id);


--
-- Name: trees trees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trees
    ADD CONSTRAINT trees_pkey PRIMARY KEY (id);


--
-- Name: user_input user_input_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_input
    ADD CONSTRAINT user_input_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

