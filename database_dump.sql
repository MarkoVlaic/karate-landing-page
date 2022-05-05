--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: about_entries; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.about_entries (
    id integer NOT NULL,
    title character varying(255),
    body text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.about_entries OWNER TO marko;

--
-- Name: about_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.about_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_entries_id_seq OWNER TO marko;

--
-- Name: about_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.about_entries_id_seq OWNED BY public.about_entries.id;


--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO marko;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO marko;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.admin_permissions_role_links OWNER TO marko;

--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO marko;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO marko;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO marko;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO marko;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.admin_users_roles_links OWNER TO marko;

--
-- Name: competition_successes; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.competition_successes (
    id integer NOT NULL,
    competition character varying(255),
    date date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.competition_successes OWNER TO marko;

--
-- Name: competition_successes_components; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.competition_successes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.competition_successes_components OWNER TO marko;

--
-- Name: competition_successes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.competition_successes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.competition_successes_components_id_seq OWNER TO marko;

--
-- Name: competition_successes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.competition_successes_components_id_seq OWNED BY public.competition_successes_components.id;


--
-- Name: competition_successes_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.competition_successes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.competition_successes_id_seq OWNER TO marko;

--
-- Name: competition_successes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.competition_successes_id_seq OWNED BY public.competition_successes.id;


--
-- Name: components_competition_competition_images; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.components_competition_competition_images (
    id integer NOT NULL
);


ALTER TABLE public.components_competition_competition_images OWNER TO marko;

--
-- Name: components_competition_competition_images_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.components_competition_competition_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_competition_competition_images_id_seq OWNER TO marko;

--
-- Name: components_competition_competition_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.components_competition_competition_images_id_seq OWNED BY public.components_competition_competition_images.id;


--
-- Name: components_competition_competitor_successes; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.components_competition_competitor_successes (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    place character varying(255)
);


ALTER TABLE public.components_competition_competitor_successes OWNER TO marko;

--
-- Name: components_competition_competitor_successes_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.components_competition_competitor_successes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_competition_competitor_successes_id_seq OWNER TO marko;

--
-- Name: components_competition_competitor_successes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.components_competition_competitor_successes_id_seq OWNED BY public.components_competition_competitor_successes.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO marko;

--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO marko;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);


ALTER TABLE public.files_related_morphs OWNER TO marko;

--
-- Name: hero_images; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.hero_images (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.hero_images OWNER TO marko;

--
-- Name: hero_images_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.hero_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hero_images_id_seq OWNER TO marko;

--
-- Name: hero_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.hero_images_id_seq OWNED BY public.hero_images.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO marko;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO marko;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.locations (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    "from" character varying(255),
    "to" character varying(255)
);


ALTER TABLE public.locations OWNER TO marko;

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_id_seq OWNER TO marko;

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;


--
-- Name: locations_weekdays_links; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.locations_weekdays_links (
    location_id integer,
    weekday_id integer
);


ALTER TABLE public.locations_weekdays_links OWNER TO marko;

--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO marko;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO marko;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO marko;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO marko;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO marko;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO marko;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO marko;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO marko;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO marko;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO marko;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO marko;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO marko;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.up_permissions_role_links OWNER TO marko;

--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO marko;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO marko;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO marko;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO marko;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.up_users_role_links OWNER TO marko;

--
-- Name: weekdays; Type: TABLE; Schema: public; Owner: marko
--

CREATE TABLE public.weekdays (
    id integer NOT NULL,
    day character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.weekdays OWNER TO marko;

--
-- Name: weekdays_id_seq; Type: SEQUENCE; Schema: public; Owner: marko
--

CREATE SEQUENCE public.weekdays_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weekdays_id_seq OWNER TO marko;

--
-- Name: weekdays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: marko
--

ALTER SEQUENCE public.weekdays_id_seq OWNED BY public.weekdays.id;


--
-- Name: about_entries id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.about_entries ALTER COLUMN id SET DEFAULT nextval('public.about_entries_id_seq'::regclass);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: competition_successes id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.competition_successes ALTER COLUMN id SET DEFAULT nextval('public.competition_successes_id_seq'::regclass);


--
-- Name: competition_successes_components id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.competition_successes_components ALTER COLUMN id SET DEFAULT nextval('public.competition_successes_components_id_seq'::regclass);


--
-- Name: components_competition_competition_images id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.components_competition_competition_images ALTER COLUMN id SET DEFAULT nextval('public.components_competition_competition_images_id_seq'::regclass);


--
-- Name: components_competition_competitor_successes id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.components_competition_competitor_successes ALTER COLUMN id SET DEFAULT nextval('public.components_competition_competitor_successes_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: hero_images id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.hero_images ALTER COLUMN id SET DEFAULT nextval('public.hero_images_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: weekdays id; Type: DEFAULT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.weekdays ALTER COLUMN id SET DEFAULT nextval('public.weekdays_id_seq'::regclass);


--
-- Data for Name: about_entries; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.about_entries (id, title, body, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
3	DRUŽENJE	Dobra radna atmosfera neizostavna je komponenta svakog izvrsnog karate kluba. Zbog toga je na treninzima vječito prisutna dobra količina humora i opuštenosti. Kada nam je potreban predah od napornih treninga aktivno se odmaramo odlaskom na Sljeme, igranjem košarke ili jednostavnim roštiljem na Bundeku.	2022-02-23 20:49:15.211	2022-02-23 20:49:16.989	2022-02-23 20:49:16.986	1	1
2	NATJECANJA	Ukoliko osjetite da su vaše vještine vrijedne pohvale ili se samo želite okušati u borbi protiv protivnika na koje niste navikli na pravom ste mjestu! Zbog velike razine odgovornosti, rada, ali i uspjeha, KK Novi Zagreb svake godine sudjeluje na velikom broju natjecanja. Iz tog razloga potičemo sve članove da se okušaju u tom svakako zahtjevnom, ali također zabavnom i zdravom okruženju.	2022-02-23 20:49:01.152	2022-02-23 20:49:24.01	2022-02-23 20:49:24.009	1	1
1	TRENING	Kroz svakodnevne treninge trudimo se sljubiti modernu inačicu drevne borilačke vještine s vježbama snage, koordinacije i izdržljivosti. Karate polaznicima svake dobi pruža priliku za stjecanje širokog spektra novih pokreta i veće prostorne snalažljivosti. Prednosti koje donosi u pogledu samoobrane nećemo niti isticati.	2022-02-23 20:48:38.267	2022-02-23 20:49:27.869	2022-02-23 20:49:27.866	1	1
\.


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::upload.read	\N	{}	[]	2022-02-23 20:25:37.278	2022-02-23 20:25:37.278	\N	\N
2	plugin::upload.assets.create	\N	{}	[]	2022-02-23 20:25:37.286	2022-02-23 20:25:37.286	\N	\N
3	plugin::upload.assets.update	\N	{}	[]	2022-02-23 20:25:37.293	2022-02-23 20:25:37.293	\N	\N
4	plugin::upload.assets.download	\N	{}	[]	2022-02-23 20:25:37.3	2022-02-23 20:25:37.3	\N	\N
5	plugin::upload.assets.copy-link	\N	{}	[]	2022-02-23 20:25:37.307	2022-02-23 20:25:37.307	\N	\N
6	plugin::upload.read	\N	{}	["admin::is-creator"]	2022-02-23 20:25:37.315	2022-02-23 20:25:37.315	\N	\N
7	plugin::upload.assets.create	\N	{}	[]	2022-02-23 20:25:37.322	2022-02-23 20:25:37.322	\N	\N
8	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2022-02-23 20:25:37.329	2022-02-23 20:25:37.329	\N	\N
9	plugin::upload.assets.download	\N	{}	[]	2022-02-23 20:25:37.336	2022-02-23 20:25:37.336	\N	\N
10	plugin::upload.assets.copy-link	\N	{}	[]	2022-02-23 20:25:37.343	2022-02-23 20:25:37.343	\N	\N
11	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-02-23 20:25:37.36	2022-02-23 20:25:37.36	\N	\N
12	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-02-23 20:25:37.368	2022-02-23 20:25:37.368	\N	\N
13	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-02-23 20:25:37.375	2022-02-23 20:25:37.375	\N	\N
14	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2022-02-23 20:25:37.382	2022-02-23 20:25:37.382	\N	\N
15	plugin::content-manager.single-types.configure-view	\N	{}	[]	2022-02-23 20:25:37.389	2022-02-23 20:25:37.389	\N	\N
16	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2022-02-23 20:25:37.396	2022-02-23 20:25:37.396	\N	\N
17	plugin::content-manager.components.configure-layout	\N	{}	[]	2022-02-23 20:25:37.402	2022-02-23 20:25:37.402	\N	\N
18	plugin::content-type-builder.read	\N	{}	[]	2022-02-23 20:25:37.41	2022-02-23 20:25:37.41	\N	\N
19	plugin::email.settings.read	\N	{}	[]	2022-02-23 20:25:37.416	2022-02-23 20:25:37.416	\N	\N
20	plugin::upload.read	\N	{}	[]	2022-02-23 20:25:37.423	2022-02-23 20:25:37.423	\N	\N
21	plugin::upload.assets.create	\N	{}	[]	2022-02-23 20:25:37.43	2022-02-23 20:25:37.43	\N	\N
22	plugin::upload.assets.update	\N	{}	[]	2022-02-23 20:25:37.437	2022-02-23 20:25:37.437	\N	\N
23	plugin::upload.assets.download	\N	{}	[]	2022-02-23 20:25:37.445	2022-02-23 20:25:37.445	\N	\N
24	plugin::upload.assets.copy-link	\N	{}	[]	2022-02-23 20:25:37.452	2022-02-23 20:25:37.452	\N	\N
25	plugin::upload.settings.read	\N	{}	[]	2022-02-23 20:25:37.459	2022-02-23 20:25:37.459	\N	\N
26	plugin::users-permissions.roles.create	\N	{}	[]	2022-02-23 20:25:37.466	2022-02-23 20:25:37.466	\N	\N
27	plugin::users-permissions.roles.read	\N	{}	[]	2022-02-23 20:25:37.477	2022-02-23 20:25:37.477	\N	\N
28	plugin::users-permissions.roles.update	\N	{}	[]	2022-02-23 20:25:37.484	2022-02-23 20:25:37.484	\N	\N
29	plugin::users-permissions.roles.delete	\N	{}	[]	2022-02-23 20:25:37.491	2022-02-23 20:25:37.491	\N	\N
30	plugin::users-permissions.providers.read	\N	{}	[]	2022-02-23 20:25:37.498	2022-02-23 20:25:37.498	\N	\N
31	plugin::users-permissions.providers.update	\N	{}	[]	2022-02-23 20:25:37.504	2022-02-23 20:25:37.504	\N	\N
32	plugin::users-permissions.email-templates.read	\N	{}	[]	2022-02-23 20:25:37.511	2022-02-23 20:25:37.511	\N	\N
33	plugin::users-permissions.email-templates.update	\N	{}	[]	2022-02-23 20:25:37.518	2022-02-23 20:25:37.518	\N	\N
34	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2022-02-23 20:25:37.525	2022-02-23 20:25:37.525	\N	\N
35	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2022-02-23 20:25:37.532	2022-02-23 20:25:37.532	\N	\N
36	plugin::i18n.locale.create	\N	{}	[]	2022-02-23 20:25:37.539	2022-02-23 20:25:37.539	\N	\N
37	plugin::i18n.locale.read	\N	{}	[]	2022-02-23 20:25:37.546	2022-02-23 20:25:37.546	\N	\N
38	plugin::i18n.locale.update	\N	{}	[]	2022-02-23 20:25:37.553	2022-02-23 20:25:37.553	\N	\N
39	plugin::i18n.locale.delete	\N	{}	[]	2022-02-23 20:25:37.56	2022-02-23 20:25:37.56	\N	\N
40	admin::marketplace.read	\N	{}	[]	2022-02-23 20:25:37.567	2022-02-23 20:25:37.567	\N	\N
41	admin::marketplace.plugins.install	\N	{}	[]	2022-02-23 20:25:37.574	2022-02-23 20:25:37.574	\N	\N
42	admin::marketplace.plugins.uninstall	\N	{}	[]	2022-02-23 20:25:37.582	2022-02-23 20:25:37.582	\N	\N
43	admin::webhooks.create	\N	{}	[]	2022-02-23 20:25:37.59	2022-02-23 20:25:37.59	\N	\N
44	admin::webhooks.read	\N	{}	[]	2022-02-23 20:25:37.598	2022-02-23 20:25:37.598	\N	\N
45	admin::webhooks.update	\N	{}	[]	2022-02-23 20:25:37.607	2022-02-23 20:25:37.607	\N	\N
46	admin::webhooks.delete	\N	{}	[]	2022-02-23 20:25:37.621	2022-02-23 20:25:37.621	\N	\N
47	admin::users.create	\N	{}	[]	2022-02-23 20:25:37.637	2022-02-23 20:25:37.637	\N	\N
48	admin::users.read	\N	{}	[]	2022-02-23 20:25:37.663	2022-02-23 20:25:37.663	\N	\N
49	admin::users.update	\N	{}	[]	2022-02-23 20:25:37.671	2022-02-23 20:25:37.671	\N	\N
50	admin::users.delete	\N	{}	[]	2022-02-23 20:25:37.679	2022-02-23 20:25:37.679	\N	\N
51	admin::roles.create	\N	{}	[]	2022-02-23 20:25:37.686	2022-02-23 20:25:37.686	\N	\N
52	admin::roles.read	\N	{}	[]	2022-02-23 20:25:37.694	2022-02-23 20:25:37.694	\N	\N
53	admin::roles.update	\N	{}	[]	2022-02-23 20:25:37.702	2022-02-23 20:25:37.702	\N	\N
54	admin::roles.delete	\N	{}	[]	2022-02-23 20:25:37.709	2022-02-23 20:25:37.709	\N	\N
55	admin::api-tokens.create	\N	{}	[]	2022-02-23 20:25:37.717	2022-02-23 20:25:37.717	\N	\N
56	admin::api-tokens.read	\N	{}	[]	2022-02-23 20:25:37.724	2022-02-23 20:25:37.724	\N	\N
57	admin::api-tokens.update	\N	{}	[]	2022-02-23 20:25:37.732	2022-02-23 20:25:37.732	\N	\N
58	admin::api-tokens.delete	\N	{}	[]	2022-02-23 20:25:37.739	2022-02-23 20:25:37.739	\N	\N
62	plugin::content-manager.explorer.delete	api::about-entry.about-entry	{}	[]	2022-02-23 20:38:00.802	2022-02-23 20:38:00.802	\N	\N
63	plugin::content-manager.explorer.publish	api::about-entry.about-entry	{}	[]	2022-02-23 20:38:00.809	2022-02-23 20:38:00.809	\N	\N
67	plugin::content-manager.explorer.delete	api::location.location	{}	[]	2022-02-24 18:06:49.533	2022-02-24 18:06:49.533	\N	\N
68	plugin::content-manager.explorer.publish	api::location.location	{}	[]	2022-02-24 18:06:49.543	2022-02-24 18:06:49.543	\N	\N
72	plugin::content-manager.explorer.delete	api::weekday.weekday	{}	[]	2022-02-24 18:17:24.358	2022-02-24 18:17:24.358	\N	\N
73	plugin::content-manager.explorer.publish	api::weekday.weekday	{}	[]	2022-02-24 18:17:24.368	2022-02-24 18:17:24.368	\N	\N
75	plugin::content-manager.explorer.create	api::weekday.weekday	{"fields": ["day", "trainings"]}	[]	2022-02-24 18:22:46.574	2022-02-24 18:22:46.574	\N	\N
77	plugin::content-manager.explorer.read	api::weekday.weekday	{"fields": ["day", "trainings"]}	[]	2022-02-24 18:22:46.592	2022-02-24 18:22:46.592	\N	\N
79	plugin::content-manager.explorer.update	api::weekday.weekday	{"fields": ["day", "trainings"]}	[]	2022-02-24 18:22:46.611	2022-02-24 18:22:46.611	\N	\N
86	plugin::content-manager.explorer.create	api::about-entry.about-entry	{"fields": ["Title", "Body"]}	[]	2022-02-24 20:42:23.294	2022-02-24 20:42:23.294	\N	\N
87	plugin::content-manager.explorer.read	api::about-entry.about-entry	{"fields": ["Title", "Body"]}	[]	2022-02-24 20:42:23.305	2022-02-24 20:42:23.305	\N	\N
88	plugin::content-manager.explorer.update	api::about-entry.about-entry	{"fields": ["Title", "Body"]}	[]	2022-02-24 20:42:23.314	2022-02-24 20:42:23.314	\N	\N
89	plugin::content-manager.explorer.create	api::location.location	{"fields": ["Name", "weekdays", "from", "to"]}	[]	2022-02-24 20:42:52.201	2022-02-24 20:42:52.201	\N	\N
90	plugin::content-manager.explorer.read	api::location.location	{"fields": ["Name", "weekdays", "from", "to"]}	[]	2022-02-24 20:42:52.212	2022-02-24 20:42:52.212	\N	\N
91	plugin::content-manager.explorer.update	api::location.location	{"fields": ["Name", "weekdays", "from", "to"]}	[]	2022-02-24 20:42:52.221	2022-02-24 20:42:52.221	\N	\N
95	plugin::content-manager.explorer.delete	api::competition-success.competition-success	{}	[]	2022-03-03 16:32:21.965	2022-03-03 16:32:21.965	\N	\N
96	plugin::content-manager.explorer.publish	api::competition-success.competition-success	{}	[]	2022-03-03 16:32:21.974	2022-03-03 16:32:21.974	\N	\N
122	plugin::content-manager.explorer.create	api::competition-success.competition-success	{"fields": ["Competition", "Date", "competitors.firstname", "competitors.lastname", "competitors.Place", "images.images"]}	[]	2022-03-03 16:47:55.002	2022-03-03 16:47:55.002	\N	\N
123	plugin::content-manager.explorer.read	api::competition-success.competition-success	{"fields": ["Competition", "Date", "competitors.firstname", "competitors.lastname", "competitors.Place", "images.images"]}	[]	2022-03-03 16:47:55.012	2022-03-03 16:47:55.012	\N	\N
124	plugin::content-manager.explorer.update	api::competition-success.competition-success	{"fields": ["Competition", "Date", "competitors.firstname", "competitors.lastname", "competitors.Place", "images.images"]}	[]	2022-03-03 16:47:55.022	2022-03-03 16:47:55.022	\N	\N
125	plugin::content-manager.explorer.create	api::hero-image.hero-image	{"fields": ["image"]}	[]	2022-03-04 20:41:36.402	2022-03-04 20:41:36.402	\N	\N
126	plugin::content-manager.explorer.read	api::hero-image.hero-image	{"fields": ["image"]}	[]	2022-03-04 20:41:36.42	2022-03-04 20:41:36.42	\N	\N
127	plugin::content-manager.explorer.update	api::hero-image.hero-image	{"fields": ["image"]}	[]	2022-03-04 20:41:36.427	2022-03-04 20:41:36.427	\N	\N
128	plugin::content-manager.explorer.delete	api::hero-image.hero-image	{}	[]	2022-03-04 20:41:36.435	2022-03-04 20:41:36.435	\N	\N
129	plugin::content-manager.explorer.publish	api::hero-image.hero-image	{}	[]	2022-03-04 20:41:36.443	2022-03-04 20:41:36.443	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
1	2
2	2
3	2
4	2
5	2
6	3
7	3
8	3
9	3
10	3
11	1
12	1
13	1
14	1
15	1
16	1
17	1
18	1
19	1
20	1
21	1
22	1
23	1
24	1
25	1
26	1
27	1
28	1
29	1
30	1
31	1
32	1
33	1
34	1
35	1
36	1
37	1
38	1
39	1
40	1
41	1
42	1
43	1
44	1
45	1
46	1
47	1
48	1
49	1
50	1
51	1
52	1
53	1
54	1
55	1
56	1
57	1
58	1
62	1
63	1
67	1
68	1
72	1
73	1
75	1
77	1
79	1
86	1
87	1
88	1
89	1
90	1
91	1
95	1
96	1
122	1
123	1
124	1
125	1
126	1
127	1
128	1
129	1
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-02-23 20:25:37.263	2022-02-23 20:25:37.263	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-02-23 20:25:37.269	2022-02-23 20:25:37.269	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2022-02-23 20:25:37.273	2022-02-23 20:25:37.273	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Marko	Vlaic	\N	vlaic.marko@gmail.com	$2a$10$8wg/gX695.rzqZPNohxoWuJuUi4LqL7z/1xEd69HVP/zZipJ9Yl1u	\N	\N	t	f	\N	2022-02-23 20:25:59.308	2022-02-23 20:25:59.308	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
1	1
\.


--
-- Data for Name: competition_successes; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.competition_successes (id, competition, date, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Državno Natjecanje	2020-10-19	2022-03-03 16:51:09.656	2022-03-13 14:39:51.438	2022-03-03 16:55:02.918	1	1
2	Another	2022-03-08	2022-03-04 11:47:28.102	2022-03-13 23:56:12.2	2022-03-04 11:47:42.443	1	1
\.


--
-- Data for Name: competition_successes_components; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.competition_successes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
23	1	1	competition.competitor-success	competitors	1
24	1	2	competition.competitor-success	competitors	2
25	1	3	competition.competitor-success	competitors	3
26	1	1	competition.competition-images	images	1
27	2	4	competition.competitor-success	competitors	1
28	2	5	competition.competitor-success	competitors	2
29	2	8	competition.competitor-success	competitors	3
30	2	6	competition.competitor-success	competitors	4
31	2	9	competition.competitor-success	competitors	5
32	2	7	competition.competitor-success	competitors	6
33	2	2	competition.competition-images	images	1
\.


--
-- Data for Name: components_competition_competition_images; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.components_competition_competition_images (id) FROM stdin;
1
2
\.


--
-- Data for Name: components_competition_competitor_successes; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.components_competition_competitor_successes (id, firstname, lastname, place) FROM stdin;
1	Martin	Bogat	first
3	Tia	Smolčić	third
6	Matija	Nasteski	third
4	Tibor	Paprika	first
9	Jakov	Bunjevac	first
5	Ivan	Zeljko	third
7	Tia	Smolcic	first
8	Jakov	Zeljko	second
2	Matija	Nasteski	second
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	comp2.jpg	comp2.jpg	comp2.jpg	1536	2048	{"large": {"ext": ".jpg", "url": "/uploads/large_comp2_e5b75f2f9a.jpg", "hash": "large_comp2_e5b75f2f9a", "mime": "image/jpeg", "name": "large_comp2.jpg", "path": null, "size": 109.87, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_comp2_e5b75f2f9a.jpg", "hash": "small_comp2_e5b75f2f9a", "mime": "image/jpeg", "name": "small_comp2.jpg", "path": null, "size": 34.18, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_comp2_e5b75f2f9a.jpg", "hash": "medium_comp2_e5b75f2f9a", "mime": "image/jpeg", "name": "medium_comp2.jpg", "path": null, "size": 67.85, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_comp2_e5b75f2f9a.jpg", "hash": "thumbnail_comp2_e5b75f2f9a", "mime": "image/jpeg", "name": "thumbnail_comp2.jpg", "path": null, "size": 5.17, "width": 117, "height": 156}}	comp2_e5b75f2f9a	.jpg	image/jpeg	316.92	/uploads/comp2_e5b75f2f9a.jpg	\N	local	\N	2022-03-03 16:44:51.433	2022-03-03 16:44:51.433	1	1
2	comp1.jpg	comp1.jpg	comp1.jpg	2048	1536	{"large": {"ext": ".jpg", "url": "/uploads/large_comp1_0ba1e0fd01.jpg", "hash": "large_comp1_0ba1e0fd01", "mime": "image/jpeg", "name": "large_comp1.jpg", "path": null, "size": 141.88, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "/uploads/small_comp1_0ba1e0fd01.jpg", "hash": "small_comp1_0ba1e0fd01", "mime": "image/jpeg", "name": "small_comp1.jpg", "path": null, "size": 42.05, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_comp1_0ba1e0fd01.jpg", "hash": "medium_comp1_0ba1e0fd01", "mime": "image/jpeg", "name": "medium_comp1.jpg", "path": null, "size": 87.36, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_comp1_0ba1e0fd01.jpg", "hash": "thumbnail_comp1_0ba1e0fd01", "mime": "image/jpeg", "name": "thumbnail_comp1.jpg", "path": null, "size": 8.84, "width": 208, "height": 156}}	comp1_0ba1e0fd01	.jpg	image/jpeg	407.05	/uploads/comp1_0ba1e0fd01.jpg	\N	local	\N	2022-03-03 16:44:51.444	2022-03-03 16:44:51.444	1	1
3	hero.jpg	hero.jpg	hero.jpg	6240	4160	{"large": {"ext": ".jpg", "url": "/uploads/large_hero_dfe5ec68ca.jpg", "hash": "large_hero_dfe5ec68ca", "mime": "image/jpeg", "name": "large_hero.jpg", "path": null, "size": 88.56, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_hero_dfe5ec68ca.jpg", "hash": "small_hero_dfe5ec68ca", "mime": "image/jpeg", "name": "small_hero.jpg", "path": null, "size": 29.27, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_hero_dfe5ec68ca.jpg", "hash": "medium_hero_dfe5ec68ca", "mime": "image/jpeg", "name": "medium_hero.jpg", "path": null, "size": 56.64, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_hero_dfe5ec68ca.jpg", "hash": "thumbnail_hero_dfe5ec68ca", "mime": "image/jpeg", "name": "thumbnail_hero.jpg", "path": null, "size": 9.03, "width": 234, "height": 156}}	hero_dfe5ec68ca	.jpg	image/jpeg	2267.83	/uploads/hero_dfe5ec68ca.jpg	\N	local	\N	2022-03-03 17:05:17.887	2022-03-03 17:05:17.887	1	1
4	comp3.jpg	comp3.jpg	comp3.jpg	1200	1600	{"large": {"ext": ".jpg", "url": "/uploads/large_comp3_1789be7971.jpg", "hash": "large_comp3_1789be7971", "mime": "image/jpeg", "name": "large_comp3.jpg", "path": null, "size": 175.64, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_comp3_1789be7971.jpg", "hash": "small_comp3_1789be7971", "mime": "image/jpeg", "name": "small_comp3.jpg", "path": null, "size": 49.14, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_comp3_1789be7971.jpg", "hash": "medium_comp3_1789be7971", "mime": "image/jpeg", "name": "medium_comp3.jpg", "path": null, "size": 105.15, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_comp3_1789be7971.jpg", "hash": "thumbnail_comp3_1789be7971", "mime": "image/jpeg", "name": "thumbnail_comp3.jpg", "path": null, "size": 6.37, "width": 117, "height": 156}}	comp3_1789be7971	.jpg	image/jpeg	322.78	/uploads/comp3_1789be7971.jpg	\N	local	\N	2022-03-04 11:47:18.767	2022-03-04 11:47:18.767	1	1
5	comp4.jpg	comp4.jpg	comp4.jpg	1536	2048	{"large": {"ext": ".jpg", "url": "/uploads/large_comp4_e5030e7233.jpg", "hash": "large_comp4_e5030e7233", "mime": "image/jpeg", "name": "large_comp4.jpg", "path": null, "size": 125.13, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_comp4_e5030e7233.jpg", "hash": "small_comp4_e5030e7233", "mime": "image/jpeg", "name": "small_comp4.jpg", "path": null, "size": 39.43, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_comp4_e5030e7233.jpg", "hash": "medium_comp4_e5030e7233", "mime": "image/jpeg", "name": "medium_comp4.jpg", "path": null, "size": 77.97, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_comp4_e5030e7233.jpg", "hash": "thumbnail_comp4_e5030e7233", "mime": "image/jpeg", "name": "thumbnail_comp4.jpg", "path": null, "size": 6.15, "width": 117, "height": 156}}	comp4_e5030e7233	.jpg	image/jpeg	410.70	/uploads/comp4_e5030e7233.jpg	\N	local	\N	2022-03-04 11:47:18.783	2022-03-04 11:47:18.783	1	1
6	Screenshot from 2021-11-12 17-37-46.png	Screenshot from 2021-11-12 17-37-46.png	Screenshot from 2021-11-12 17-37-46.png	3840	1080	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_from_2021_11_12_17_37_46_702b13a4fb.png", "hash": "large_Screenshot_from_2021_11_12_17_37_46_702b13a4fb", "mime": "image/png", "name": "large_Screenshot from 2021-11-12 17-37-46.png", "path": null, "size": 104.59, "width": 1000, "height": 281}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_from_2021_11_12_17_37_46_702b13a4fb.png", "hash": "small_Screenshot_from_2021_11_12_17_37_46_702b13a4fb", "mime": "image/png", "name": "small_Screenshot from 2021-11-12 17-37-46.png", "path": null, "size": 38.44, "width": 500, "height": 141}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_from_2021_11_12_17_37_46_702b13a4fb.png", "hash": "medium_Screenshot_from_2021_11_12_17_37_46_702b13a4fb", "mime": "image/png", "name": "medium_Screenshot from 2021-11-12 17-37-46.png", "path": null, "size": 68.14, "width": 750, "height": 211}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_from_2021_11_12_17_37_46_702b13a4fb.png", "hash": "thumbnail_Screenshot_from_2021_11_12_17_37_46_702b13a4fb", "mime": "image/png", "name": "thumbnail_Screenshot from 2021-11-12 17-37-46.png", "path": null, "size": 13.75, "width": 245, "height": 69}}	Screenshot_from_2021_11_12_17_37_46_702b13a4fb	.png	image/png	365.20	/uploads/Screenshot_from_2021_11_12_17_37_46_702b13a4fb.png	\N	local	\N	2022-03-12 21:06:34.832	2022-03-12 21:06:34.832	1	1
7	Screenshot from 2021-10-09 16-53-25.png	Screenshot from 2021-10-09 16-53-25.png	Screenshot from 2021-10-09 16-53-25.png	3840	1080	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_from_2021_10_09_16_53_25_86019b4757.png", "hash": "large_Screenshot_from_2021_10_09_16_53_25_86019b4757", "mime": "image/png", "name": "large_Screenshot from 2021-10-09 16-53-25.png", "path": null, "size": 261.23, "width": 1000, "height": 281}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_from_2021_10_09_16_53_25_86019b4757.png", "hash": "small_Screenshot_from_2021_10_09_16_53_25_86019b4757", "mime": "image/png", "name": "small_Screenshot from 2021-10-09 16-53-25.png", "path": null, "size": 79.31, "width": 500, "height": 141}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_from_2021_10_09_16_53_25_86019b4757.png", "hash": "medium_Screenshot_from_2021_10_09_16_53_25_86019b4757", "mime": "image/png", "name": "medium_Screenshot from 2021-10-09 16-53-25.png", "path": null, "size": 158.24, "width": 750, "height": 211}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_from_2021_10_09_16_53_25_86019b4757.png", "hash": "thumbnail_Screenshot_from_2021_10_09_16_53_25_86019b4757", "mime": "image/png", "name": "thumbnail_Screenshot from 2021-10-09 16-53-25.png", "path": null, "size": 24.49, "width": 245, "height": 69}}	Screenshot_from_2021_10_09_16_53_25_86019b4757	.png	image/png	1702.76	/uploads/Screenshot_from_2021_10_09_16_53_25_86019b4757.png	\N	local	\N	2022-03-12 21:06:34.837	2022-03-12 21:06:34.837	1	1
9	Screenshot from 2021-11-12 17-37-35.png	Screenshot from 2021-11-12 17-37-35.png	Screenshot from 2021-11-12 17-37-35.png	3840	1080	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_from_2021_11_12_17_37_35_06ae413bb7.png", "hash": "large_Screenshot_from_2021_11_12_17_37_35_06ae413bb7", "mime": "image/png", "name": "large_Screenshot from 2021-11-12 17-37-35.png", "path": null, "size": 420.29, "width": 1000, "height": 281}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_from_2021_11_12_17_37_35_06ae413bb7.png", "hash": "small_Screenshot_from_2021_11_12_17_37_35_06ae413bb7", "mime": "image/png", "name": "small_Screenshot from 2021-11-12 17-37-35.png", "path": null, "size": 120.84, "width": 500, "height": 141}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_from_2021_11_12_17_37_35_06ae413bb7.png", "hash": "medium_Screenshot_from_2021_11_12_17_37_35_06ae413bb7", "mime": "image/png", "name": "medium_Screenshot from 2021-11-12 17-37-35.png", "path": null, "size": 250.74, "width": 750, "height": 211}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_from_2021_11_12_17_37_35_06ae413bb7.png", "hash": "thumbnail_Screenshot_from_2021_11_12_17_37_35_06ae413bb7", "mime": "image/png", "name": "thumbnail_Screenshot from 2021-11-12 17-37-35.png", "path": null, "size": 33.75, "width": 245, "height": 69}}	Screenshot_from_2021_11_12_17_37_35_06ae413bb7	.png	image/png	2834.57	/uploads/Screenshot_from_2021_11_12_17_37_35_06ae413bb7.png	\N	local	\N	2022-03-12 21:06:34.903	2022-03-12 21:06:34.903	1	1
10	Screenshot from 2021-11-12 17-37-06.png	Screenshot from 2021-11-12 17-37-06.png	Screenshot from 2021-11-12 17-37-06.png	3840	1080	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_from_2021_11_12_17_37_06_07c28ec926.png", "hash": "large_Screenshot_from_2021_11_12_17_37_06_07c28ec926", "mime": "image/png", "name": "large_Screenshot from 2021-11-12 17-37-06.png", "path": null, "size": 420.29, "width": 1000, "height": 281}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_from_2021_11_12_17_37_06_07c28ec926.png", "hash": "small_Screenshot_from_2021_11_12_17_37_06_07c28ec926", "mime": "image/png", "name": "small_Screenshot from 2021-11-12 17-37-06.png", "path": null, "size": 120.84, "width": 500, "height": 141}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_from_2021_11_12_17_37_06_07c28ec926.png", "hash": "medium_Screenshot_from_2021_11_12_17_37_06_07c28ec926", "mime": "image/png", "name": "medium_Screenshot from 2021-11-12 17-37-06.png", "path": null, "size": 250.75, "width": 750, "height": 211}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_from_2021_11_12_17_37_06_07c28ec926.png", "hash": "thumbnail_Screenshot_from_2021_11_12_17_37_06_07c28ec926", "mime": "image/png", "name": "thumbnail_Screenshot from 2021-11-12 17-37-06.png", "path": null, "size": 33.75, "width": 245, "height": 69}}	Screenshot_from_2021_11_12_17_37_06_07c28ec926	.png	image/png	2834.62	/uploads/Screenshot_from_2021_11_12_17_37_06_07c28ec926.png	\N	local	\N	2022-03-12 21:06:35.057	2022-03-12 21:06:35.057	1	1
11	comp2.jpg	comp2.jpg	comp2.jpg	1536	2048	{"large": {"ext": ".jpg", "url": "/uploads/large_comp2_f34063344a.jpg", "hash": "large_comp2_f34063344a", "mime": "image/jpeg", "name": "large_comp2.jpg", "path": null, "size": 109.87, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_comp2_f34063344a.jpg", "hash": "small_comp2_f34063344a", "mime": "image/jpeg", "name": "small_comp2.jpg", "path": null, "size": 34.18, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_comp2_f34063344a.jpg", "hash": "medium_comp2_f34063344a", "mime": "image/jpeg", "name": "medium_comp2.jpg", "path": null, "size": 67.85, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_comp2_f34063344a.jpg", "hash": "thumbnail_comp2_f34063344a", "mime": "image/jpeg", "name": "thumbnail_comp2.jpg", "path": null, "size": 5.17, "width": 117, "height": 156}}	comp2_f34063344a	.jpg	image/jpeg	316.92	/uploads/comp2_f34063344a.jpg	\N	local	\N	2022-03-13 14:39:41.12	2022-03-13 14:39:41.12	1	1
12	martin.jpg	martin.jpg	martin.jpg	1536	2048	{"large": {"ext": ".jpg", "url": "/uploads/large_martin_4f4a5ed2d1.jpg", "hash": "large_martin_4f4a5ed2d1", "mime": "image/jpeg", "name": "large_martin.jpg", "path": null, "size": 109.87, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_martin_4f4a5ed2d1.jpg", "hash": "small_martin_4f4a5ed2d1", "mime": "image/jpeg", "name": "small_martin.jpg", "path": null, "size": 34.18, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_martin_4f4a5ed2d1.jpg", "hash": "medium_martin_4f4a5ed2d1", "mime": "image/jpeg", "name": "medium_martin.jpg", "path": null, "size": 67.85, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_martin_4f4a5ed2d1.jpg", "hash": "thumbnail_martin_4f4a5ed2d1", "mime": "image/jpeg", "name": "thumbnail_martin.jpg", "path": null, "size": 5.17, "width": 117, "height": 156}}	martin_4f4a5ed2d1	.jpg	image/jpeg	316.92	/uploads/martin_4f4a5ed2d1.jpg	\N	local	\N	2022-03-13 14:39:41.155	2022-03-13 14:39:41.155	1	1
13	comp1.jpg	comp1.jpg	comp1.jpg	2048	1536	{"large": {"ext": ".jpg", "url": "/uploads/large_comp1_3ba7e14eb8.jpg", "hash": "large_comp1_3ba7e14eb8", "mime": "image/jpeg", "name": "large_comp1.jpg", "path": null, "size": 141.88, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "/uploads/small_comp1_3ba7e14eb8.jpg", "hash": "small_comp1_3ba7e14eb8", "mime": "image/jpeg", "name": "small_comp1.jpg", "path": null, "size": 42.05, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_comp1_3ba7e14eb8.jpg", "hash": "medium_comp1_3ba7e14eb8", "mime": "image/jpeg", "name": "medium_comp1.jpg", "path": null, "size": 87.36, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_comp1_3ba7e14eb8.jpg", "hash": "thumbnail_comp1_3ba7e14eb8", "mime": "image/jpeg", "name": "thumbnail_comp1.jpg", "path": null, "size": 8.84, "width": 208, "height": 156}}	comp1_3ba7e14eb8	.jpg	image/jpeg	407.05	/uploads/comp1_3ba7e14eb8.jpg	\N	local	\N	2022-03-13 14:39:41.157	2022-03-13 14:39:41.157	1	1
14	comp3.jpg	comp3.jpg	comp3.jpg	1200	1600	{"large": {"ext": ".jpg", "url": "/uploads/large_comp3_9999ede2ac.jpg", "hash": "large_comp3_9999ede2ac", "mime": "image/jpeg", "name": "large_comp3.jpg", "path": null, "size": 175.64, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_comp3_9999ede2ac.jpg", "hash": "small_comp3_9999ede2ac", "mime": "image/jpeg", "name": "small_comp3.jpg", "path": null, "size": 49.14, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_comp3_9999ede2ac.jpg", "hash": "medium_comp3_9999ede2ac", "mime": "image/jpeg", "name": "medium_comp3.jpg", "path": null, "size": 105.15, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_comp3_9999ede2ac.jpg", "hash": "thumbnail_comp3_9999ede2ac", "mime": "image/jpeg", "name": "thumbnail_comp3.jpg", "path": null, "size": 6.37, "width": 117, "height": 156}}	comp3_9999ede2ac	.jpg	image/jpeg	322.78	/uploads/comp3_9999ede2ac.jpg	\N	local	\N	2022-03-13 14:39:41.16	2022-03-13 14:39:41.16	1	1
15	comp4.jpg	comp4.jpg	comp4.jpg	1536	2048	{"large": {"ext": ".jpg", "url": "/uploads/large_comp4_b474ac04d3.jpg", "hash": "large_comp4_b474ac04d3", "mime": "image/jpeg", "name": "large_comp4.jpg", "path": null, "size": 125.13, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_comp4_b474ac04d3.jpg", "hash": "small_comp4_b474ac04d3", "mime": "image/jpeg", "name": "small_comp4.jpg", "path": null, "size": 39.43, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_comp4_b474ac04d3.jpg", "hash": "medium_comp4_b474ac04d3", "mime": "image/jpeg", "name": "medium_comp4.jpg", "path": null, "size": 77.97, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_comp4_b474ac04d3.jpg", "hash": "thumbnail_comp4_b474ac04d3", "mime": "image/jpeg", "name": "thumbnail_comp4.jpg", "path": null, "size": 6.15, "width": 117, "height": 156}}	comp4_b474ac04d3	.jpg	image/jpeg	410.70	/uploads/comp4_b474ac04d3.jpg	\N	local	\N	2022-03-13 14:39:41.178	2022-03-13 14:39:41.178	1	1
16	comp3.jpg	comp3.jpg	comp3.jpg	1200	1600	{"large": {"ext": ".jpg", "url": "/uploads/large_comp3_f02d06152e.jpg", "hash": "large_comp3_f02d06152e", "mime": "image/jpeg", "name": "large_comp3.jpg", "path": null, "size": 175.64, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_comp3_f02d06152e.jpg", "hash": "small_comp3_f02d06152e", "mime": "image/jpeg", "name": "small_comp3.jpg", "path": null, "size": 49.14, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_comp3_f02d06152e.jpg", "hash": "medium_comp3_f02d06152e", "mime": "image/jpeg", "name": "medium_comp3.jpg", "path": null, "size": 105.15, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_comp3_f02d06152e.jpg", "hash": "thumbnail_comp3_f02d06152e", "mime": "image/jpeg", "name": "thumbnail_comp3.jpg", "path": null, "size": 6.37, "width": 117, "height": 156}}	comp3_f02d06152e	.jpg	image/jpeg	322.78	/uploads/comp3_f02d06152e.jpg	\N	local	\N	2022-03-13 23:33:29.91	2022-03-13 23:33:29.91	1	1
17	comp1.jpg	comp1.jpg	comp1.jpg	2048	1536	{"large": {"ext": ".jpg", "url": "https://karate-images-bucket.s3.eu-central-1.amazonaws.com/large_comp1_e877e3f431.jpg", "hash": "large_comp1_e877e3f431", "mime": "image/jpeg", "name": "large_comp1.jpg", "path": null, "size": 141.88, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "https://karate-images-bucket.s3.eu-central-1.amazonaws.com/small_comp1_e877e3f431.jpg", "hash": "small_comp1_e877e3f431", "mime": "image/jpeg", "name": "small_comp1.jpg", "path": null, "size": 42.05, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "https://karate-images-bucket.s3.eu-central-1.amazonaws.com/medium_comp1_e877e3f431.jpg", "hash": "medium_comp1_e877e3f431", "mime": "image/jpeg", "name": "medium_comp1.jpg", "path": null, "size": 87.36, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "https://karate-images-bucket.s3.eu-central-1.amazonaws.com/thumbnail_comp1_e877e3f431.jpg", "hash": "thumbnail_comp1_e877e3f431", "mime": "image/jpeg", "name": "thumbnail_comp1.jpg", "path": null, "size": 8.84, "width": 208, "height": 156}}	comp1_e877e3f431	.jpg	image/jpeg	407.05	https://karate-images-bucket.s3.eu-central-1.amazonaws.com/comp1_e877e3f431.jpg	\N	aws-s3	\N	2022-03-13 23:53:42.947	2022-03-13 23:53:42.947	1	1
18	comp4.jpg	comp4.jpg	comp4.jpg	1536	2048	{"large": {"ext": ".jpg", "url": "https://karate-images-bucket.s3.eu-central-1.amazonaws.com/large_comp4_2e38f10087.jpg", "hash": "large_comp4_2e38f10087", "mime": "image/jpeg", "name": "large_comp4.jpg", "path": null, "size": 125.13, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "https://karate-images-bucket.s3.eu-central-1.amazonaws.com/small_comp4_2e38f10087.jpg", "hash": "small_comp4_2e38f10087", "mime": "image/jpeg", "name": "small_comp4.jpg", "path": null, "size": 39.43, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "https://karate-images-bucket.s3.eu-central-1.amazonaws.com/medium_comp4_2e38f10087.jpg", "hash": "medium_comp4_2e38f10087", "mime": "image/jpeg", "name": "medium_comp4.jpg", "path": null, "size": 77.97, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "https://karate-images-bucket.s3.eu-central-1.amazonaws.com/thumbnail_comp4_2e38f10087.jpg", "hash": "thumbnail_comp4_2e38f10087", "mime": "image/jpeg", "name": "thumbnail_comp4.jpg", "path": null, "size": 6.15, "width": 117, "height": 156}}	comp4_2e38f10087	.jpg	image/jpeg	410.70	https://karate-images-bucket.s3.eu-central-1.amazonaws.com/comp4_2e38f10087.jpg	\N	aws-s3	\N	2022-03-13 23:55:29.962	2022-03-13 23:55:29.962	1	1
19	martin.jpg	martin.jpg	martin.jpg	1536	2048	{"large": {"ext": ".jpg", "url": "/uploads/large_martin_e6bca837ca.jpg", "hash": "large_martin_e6bca837ca", "mime": "image/jpeg", "name": "large_martin.jpg", "path": null, "size": 109.87, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_martin_e6bca837ca.jpg", "hash": "small_martin_e6bca837ca", "mime": "image/jpeg", "name": "small_martin.jpg", "path": null, "size": 34.18, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_martin_e6bca837ca.jpg", "hash": "medium_martin_e6bca837ca", "mime": "image/jpeg", "name": "medium_martin.jpg", "path": null, "size": 67.85, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_martin_e6bca837ca.jpg", "hash": "thumbnail_martin_e6bca837ca", "mime": "image/jpeg", "name": "thumbnail_martin.jpg", "path": null, "size": 5.17, "width": 117, "height": 156}}	martin_e6bca837ca	.jpg	image/jpeg	316.92	/uploads/martin_e6bca837ca.jpg	\N	local	\N	2022-03-13 23:56:02.129	2022-03-13 23:56:02.129	1	1
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
3	1	api::hero-image.hero-image	image	1
11	1	competition.competition-images	images	1
12	1	competition.competition-images	images	2
13	1	competition.competition-images	images	3
14	1	competition.competition-images	images	4
15	1	competition.competition-images	images	5
3	1	competition.competition-images	images	6
2	1	competition.competition-images	images	7
1	1	competition.competition-images	images	8
19	2	competition.competition-images	images	1
4	2	competition.competition-images	images	2
5	2	competition.competition-images	images	3
\.


--
-- Data for Name: hero_images; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.hero_images (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2022-03-04 20:41:47.332	2022-03-04 20:44:51.243	2022-03-04 20:44:51.241	1	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2022-02-23 20:25:37.233	2022-02-23 20:25:37.233	\N	\N
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.locations (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, "from", "to") FROM stdin;
1	OŠ središće	2022-02-24 18:24:10.579	2022-02-24 21:24:01.641	2022-02-24 18:24:12.554	1	1	19:00	20:00
2	OŠ zapruđe	2022-02-24 18:25:00.286	2022-02-24 21:24:14.08	2022-02-24 18:25:01.473	1	1	19:00	20:00
\.


--
-- Data for Name: locations_weekdays_links; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.locations_weekdays_links (location_id, weekday_id) FROM stdin;
1	1
1	3
1	5
2	2
2	4
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"editRelations":["role"],"edit":[[{"name":"action","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object	\N	\N
13	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
14	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
15	plugin_i18n_default_locale	"en"	string	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::about-entry.about-entry":{"kind":"collectionType","collectionName":"about_entries","info":{"singularName":"about-entry","pluralName":"about-entries","displayName":"About Entry","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string","required":true,"unique":true},"Body":{"type":"text","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"about_entries","info":{"singularName":"about-entry","pluralName":"about-entries","displayName":"About Entry","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string","required":true,"unique":true},"Body":{"type":"text","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"about-entry","connection":"default","uid":"api::about-entry.about-entry","apiName":"about-entry","globalId":"AboutEntry","actions":{},"lifecycles":{}},"api::competition-success.competition-success":{"kind":"collectionType","collectionName":"competition_successes","info":{"singularName":"competition-success","pluralName":"competition-successes","displayName":"Competition Success","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Competition":{"type":"string"},"Date":{"type":"date"},"competitors":{"type":"component","repeatable":true,"component":"competition.competitor-success"},"images":{"type":"component","repeatable":false,"component":"competition.competition-images"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"competition_successes","info":{"singularName":"competition-success","pluralName":"competition-successes","displayName":"Competition Success","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Competition":{"type":"string"},"Date":{"type":"date"},"competitors":{"type":"component","repeatable":true,"component":"competition.competitor-success"},"images":{"type":"component","repeatable":false,"component":"competition.competition-images"}},"kind":"collectionType"},"modelType":"contentType","modelName":"competition-success","connection":"default","uid":"api::competition-success.competition-success","apiName":"competition-success","globalId":"CompetitionSuccess","actions":{},"lifecycles":{}},"api::hero-image.hero-image":{"kind":"singleType","collectionName":"hero_images","info":{"singularName":"hero-image","pluralName":"hero-images","displayName":"Hero Image"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"hero_images","info":{"singularName":"hero-image","pluralName":"hero-images","displayName":"Hero Image"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false}},"kind":"singleType"},"modelType":"contentType","modelName":"hero-image","connection":"default","uid":"api::hero-image.hero-image","apiName":"hero-image","globalId":"HeroImage","actions":{},"lifecycles":{}},"api::location.location":{"kind":"collectionType","collectionName":"locations","info":{"singularName":"location","pluralName":"locations","displayName":"Training","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Name":{"type":"string"},"weekdays":{"type":"relation","relation":"manyToMany","target":"api::weekday.weekday","inversedBy":"trainings"},"from":{"type":"string"},"to":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"locations","info":{"singularName":"location","pluralName":"locations","displayName":"Training","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Name":{"type":"string"},"weekdays":{"type":"relation","relation":"manyToMany","target":"api::weekday.weekday","inversedBy":"trainings"},"from":{"type":"string"},"to":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"location","connection":"default","uid":"api::location.location","apiName":"location","globalId":"Location","actions":{},"lifecycles":{}},"api::weekday.weekday":{"kind":"collectionType","collectionName":"weekdays","info":{"singularName":"weekday","pluralName":"weekdays","displayName":"Weekday"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"day":{"type":"enumeration","enum":["pon","uto","sri","cet","pet","sub","ned"],"default":"pon","required":false},"trainings":{"type":"relation","relation":"manyToMany","target":"api::location.location","mappedBy":"weekdays"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"weekdays","info":{"singularName":"weekday","pluralName":"weekdays","displayName":"Weekday"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"day":{"type":"enumeration","enum":["pon","uto","sri","cet","pet","sub","ned"],"default":"pon","required":false},"trainings":{"type":"relation","relation":"manyToMany","target":"api::location.location","mappedBy":"weekdays"}},"kind":"collectionType"},"modelType":"contentType","modelName":"weekday","connection":"default","uid":"api::weekday.weekday","apiName":"weekday","globalId":"Weekday","actions":{},"lifecycles":{}}}	object	\N	\N
16	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
11	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
12	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::location.location	{"uid":"api::location.location","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Name","defaultSortBy":"Name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"weekdays":{"edit":{"label":"weekdays","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"weekdays","searchable":false,"sortable":false}},"from":{"edit":{"label":"from","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"from","searchable":true,"sortable":true}},"to":{"edit":{"label":"to","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"to","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","Name","createdAt","updatedAt"],"edit":[[{"name":"Name","size":6},{"name":"from","size":6}],[{"name":"to","size":6}]],"editRelations":["weekdays"]}}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::weekday.weekday	{"uid":"api::weekday.weekday","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"day":{"edit":{"label":"day","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"day","searchable":true,"sortable":true}},"trainings":{"edit":{"label":"trainings","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Name"},"list":{"label":"trainings","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","day","createdAt","updatedAt"],"edit":[[{"name":"day","size":6}]],"editRelations":["trainings"]}}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::about-entry.about-entry	{"uid":"api::about-entry.about-entry","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Body":{"edit":{"label":"Body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Body","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","Body","createdAt"],"edit":[[{"name":"Title","size":6},{"name":"Body","size":6}]],"editRelations":[]}}	object	\N	\N
23	plugin_content_manager_configuration_components::competition.competitor-success	{"uid":"competition.competitor-success","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"Place":{"edit":{"label":"Place","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Place","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","Place"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"Place","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
25	plugin_content_manager_configuration_content_types::api::hero-image.hero-image	{"uid":"api::hero-image.hero-image","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"image","size":6}]]}}	object	\N	\N
24	plugin_content_manager_configuration_components::competition.competition-images	{"uid":"competition.competition-images","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"images":{"edit":{"label":"images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"images","searchable":false,"sortable":false}}},"layouts":{"list":["id","images"],"edit":[[{"name":"images","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::competition-success.competition-success	{"uid":"api::competition-success.competition-success","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Competition","defaultSortBy":"Competition","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Competition":{"edit":{"label":"Competition","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Competition","searchable":true,"sortable":true}},"Date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Date","searchable":true,"sortable":true}},"competitors":{"edit":{"label":"competitors","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"competitors","searchable":false,"sortable":false}},"images":{"edit":{"label":"images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"images","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","Competition","Date","createdAt"],"edit":[[{"name":"Competition","size":6},{"name":"Date","size":4}],[{"name":"competitors","size":12}],[{"name":"images","size":12}]],"editRelations":[]}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
21	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_entries","indexes":[{"name":"about_entries_created_by_id_fk","columns":["created_by_id"]},{"name":"about_entries_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"about_entries_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"about_entries_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"competition_successes","indexes":[{"name":"competition_successes_created_by_id_fk","columns":["created_by_id"]},{"name":"competition_successes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"competition_successes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"competition_successes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"competition","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"hero_images","indexes":[{"name":"hero_images_created_by_id_fk","columns":["created_by_id"]},{"name":"hero_images_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"hero_images_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"hero_images_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"locations","indexes":[{"name":"locations_created_by_id_fk","columns":["created_by_id"]},{"name":"locations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"locations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"locations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"from","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"to","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"weekdays","indexes":[{"name":"weekdays_created_by_id_fk","columns":["created_by_id"]},{"name":"weekdays_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"weekdays_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"weekdays_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"day","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_competition_competition_images","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_competition_competitor_successes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"place","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"competition_successes_components","indexes":[{"name":"competition_successes_field_index","columns":["field"],"type":null},{"name":"competition_successes_component_type_index","columns":["component_type"],"type":null},{"name":"competition_successes_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"competition_successes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"competition_successes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"locations_weekdays_links","indexes":[{"name":"locations_weekdays_links_fk","columns":["location_id"]},{"name":"locations_weekdays_links_inv_fk","columns":["weekday_id"]}],"foreignKeys":[{"name":"locations_weekdays_links_fk","columns":["location_id"],"referencedColumns":["id"],"referencedTable":"locations","onDelete":"CASCADE"},{"name":"locations_weekdays_links_inv_fk","columns":["weekday_id"],"referencedColumns":["id"],"referencedTable":"weekdays","onDelete":"CASCADE"}],"columns":[{"name":"location_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"weekday_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2022-03-04 20:41:35.982	dc89df30317b7bf0c0422644bde18c09
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.auth.connect	2022-02-23 20:25:37.202	2022-02-23 20:25:37.202	\N	\N
2	plugin::users-permissions.user.me	2022-02-23 20:25:37.202	2022-02-23 20:25:37.202	\N	\N
5	plugin::users-permissions.auth.callback	2022-02-23 20:25:37.215	2022-02-23 20:25:37.215	\N	\N
6	plugin::users-permissions.auth.connect	2022-02-23 20:25:37.215	2022-02-23 20:25:37.215	\N	\N
9	plugin::users-permissions.auth.register	2022-02-23 20:25:37.215	2022-02-23 20:25:37.215	\N	\N
11	plugin::users-permissions.user.me	2022-02-23 20:25:37.215	2022-02-23 20:25:37.215	\N	\N
12	api::about-entry.about-entry.find	2022-02-23 20:52:55.723	2022-02-23 20:52:55.723	\N	\N
13	api::about-entry.about-entry.findOne	2022-02-23 20:52:55.723	2022-02-23 20:52:55.723	\N	\N
14	api::location.location.find	2022-02-24 18:29:54.27	2022-02-24 18:29:54.27	\N	\N
15	api::location.location.findOne	2022-02-24 18:29:54.27	2022-02-24 18:29:54.27	\N	\N
16	api::weekday.weekday.find	2022-02-24 20:45:52.851	2022-02-24 20:45:52.851	\N	\N
17	api::weekday.weekday.findOne	2022-02-24 20:45:52.852	2022-02-24 20:45:52.852	\N	\N
18	api::competition-success.competition-success.find	2022-03-03 16:52:06.402	2022-03-03 16:52:06.402	\N	\N
19	api::competition-success.competition-success.findOne	2022-03-03 16:52:06.402	2022-03-03 16:52:06.402	\N	\N
20	plugin::upload.content-api.find	2022-03-03 17:14:06.848	2022-03-03 17:14:06.848	\N	\N
21	plugin::upload.content-api.findOne	2022-03-03 17:14:06.848	2022-03-03 17:14:06.848	\N	\N
22	api::hero-image.hero-image.find	2022-03-04 20:42:28.728	2022-03-04 20:42:28.728	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
1	1
2	1
5	2
6	2
9	2
11	2
12	2
13	2
14	2
15	2
16	2
17	2
18	2
19	2
20	2
21	2
22	2
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2022-02-23 20:25:37.191	2022-02-23 20:25:37.191	\N	\N
2	Public	Default role given to unauthenticated user.	public	2022-02-23 20:25:37.196	2022-03-04 20:44:42.284	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.up_users_role_links (user_id, role_id) FROM stdin;
\.


--
-- Data for Name: weekdays; Type: TABLE DATA; Schema: public; Owner: marko
--

COPY public.weekdays (id, day, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	pon	2022-02-24 18:17:42.844	2022-02-24 18:17:47.169	2022-02-24 18:17:47.165	1	1
2	uto	2022-02-24 18:17:57.829	2022-02-24 18:17:58.873	2022-02-24 18:17:58.872	1	1
3	sri	2022-02-24 18:18:08.435	2022-02-24 18:18:09.361	2022-02-24 18:18:09.36	1	1
5	pet	2022-02-24 18:18:41.347	2022-02-24 18:18:42.827	2022-02-24 18:18:42.826	1	1
6	sub	2022-02-24 18:19:03.567	2022-02-24 18:19:05.452	2022-02-24 18:19:05.451	1	1
7	ned	2022-02-24 18:19:15.468	2022-02-24 18:19:16.643	2022-02-24 18:19:16.642	1	1
4	cet	2022-02-24 18:18:24.796	2022-02-24 18:19:52.842	2022-02-24 18:19:52.841	1	1
\.


--
-- Name: about_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.about_entries_id_seq', 3, true);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 129, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: competition_successes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.competition_successes_components_id_seq', 33, true);


--
-- Name: competition_successes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.competition_successes_id_seq', 2, true);


--
-- Name: components_competition_competition_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.components_competition_competition_images_id_seq', 2, true);


--
-- Name: components_competition_competitor_successes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.components_competition_competitor_successes_id_seq', 9, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.files_id_seq', 19, true);


--
-- Name: hero_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.hero_images_id_seq', 1, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.locations_id_seq', 2, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 25, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 21, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 22, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: weekdays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marko
--

SELECT pg_catalog.setval('public.weekdays_id_seq', 7, true);


--
-- Name: about_entries about_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.about_entries
    ADD CONSTRAINT about_entries_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: competition_successes_components competition_successes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.competition_successes_components
    ADD CONSTRAINT competition_successes_components_pkey PRIMARY KEY (id);


--
-- Name: competition_successes competition_successes_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.competition_successes
    ADD CONSTRAINT competition_successes_pkey PRIMARY KEY (id);


--
-- Name: components_competition_competition_images components_competition_competition_images_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.components_competition_competition_images
    ADD CONSTRAINT components_competition_competition_images_pkey PRIMARY KEY (id);


--
-- Name: components_competition_competitor_successes components_competition_competitor_successes_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.components_competition_competitor_successes
    ADD CONSTRAINT components_competition_competitor_successes_pkey PRIMARY KEY (id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: hero_images hero_images_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.hero_images
    ADD CONSTRAINT hero_images_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: weekdays weekdays_pkey; Type: CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.weekdays
    ADD CONSTRAINT weekdays_pkey PRIMARY KEY (id);


--
-- Name: about_entries_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX about_entries_created_by_id_fk ON public.about_entries USING btree (created_by_id);


--
-- Name: about_entries_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX about_entries_updated_by_id_fk ON public.about_entries USING btree (updated_by_id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: competition_successes_component_type_index; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX competition_successes_component_type_index ON public.competition_successes_components USING btree (component_type);


--
-- Name: competition_successes_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX competition_successes_created_by_id_fk ON public.competition_successes USING btree (created_by_id);


--
-- Name: competition_successes_entity_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX competition_successes_entity_fk ON public.competition_successes_components USING btree (entity_id);


--
-- Name: competition_successes_field_index; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX competition_successes_field_index ON public.competition_successes_components USING btree (field);


--
-- Name: competition_successes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX competition_successes_updated_by_id_fk ON public.competition_successes USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: hero_images_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX hero_images_created_by_id_fk ON public.hero_images USING btree (created_by_id);


--
-- Name: hero_images_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX hero_images_updated_by_id_fk ON public.hero_images USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: locations_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX locations_created_by_id_fk ON public.locations USING btree (created_by_id);


--
-- Name: locations_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX locations_updated_by_id_fk ON public.locations USING btree (updated_by_id);


--
-- Name: locations_weekdays_links_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX locations_weekdays_links_fk ON public.locations_weekdays_links USING btree (location_id);


--
-- Name: locations_weekdays_links_inv_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX locations_weekdays_links_inv_fk ON public.locations_weekdays_links USING btree (weekday_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: weekdays_created_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX weekdays_created_by_id_fk ON public.weekdays USING btree (created_by_id);


--
-- Name: weekdays_updated_by_id_fk; Type: INDEX; Schema: public; Owner: marko
--

CREATE INDEX weekdays_updated_by_id_fk ON public.weekdays USING btree (updated_by_id);


--
-- Name: about_entries about_entries_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.about_entries
    ADD CONSTRAINT about_entries_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: about_entries about_entries_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.about_entries
    ADD CONSTRAINT about_entries_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: competition_successes competition_successes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.competition_successes
    ADD CONSTRAINT competition_successes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: competition_successes_components competition_successes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.competition_successes_components
    ADD CONSTRAINT competition_successes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.competition_successes(id) ON DELETE CASCADE;


--
-- Name: competition_successes competition_successes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.competition_successes
    ADD CONSTRAINT competition_successes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: hero_images hero_images_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.hero_images
    ADD CONSTRAINT hero_images_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: hero_images hero_images_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.hero_images
    ADD CONSTRAINT hero_images_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: locations locations_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: locations locations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: locations_weekdays_links locations_weekdays_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.locations_weekdays_links
    ADD CONSTRAINT locations_weekdays_links_fk FOREIGN KEY (location_id) REFERENCES public.locations(id) ON DELETE CASCADE;


--
-- Name: locations_weekdays_links locations_weekdays_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.locations_weekdays_links
    ADD CONSTRAINT locations_weekdays_links_inv_fk FOREIGN KEY (weekday_id) REFERENCES public.weekdays(id) ON DELETE CASCADE;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: weekdays weekdays_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.weekdays
    ADD CONSTRAINT weekdays_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: weekdays weekdays_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: marko
--

ALTER TABLE ONLY public.weekdays
    ADD CONSTRAINT weekdays_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

