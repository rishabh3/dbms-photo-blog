--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO rishabh;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO rishabh;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO rishabh;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO rishabh;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO rishabh;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO rishabh;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO rishabh;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO rishabh;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO rishabh;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO rishabh;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO rishabh;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO rishabh;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: blog_article; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_article (
    article_id character varying(10) NOT NULL,
    number_of_reads integer NOT NULL,
    article character varying(100) NOT NULL,
    user_id_id character varying(30) NOT NULL,
    photo_id_id character varying(10) NOT NULL
);


ALTER TABLE blog_article OWNER TO rishabh;

--
-- Name: blog_camera; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_camera (
    c_id character varying(10) NOT NULL,
    name character varying(50) NOT NULL,
    user_id_id character varying(30) NOT NULL
);


ALTER TABLE blog_camera OWNER TO rishabh;

--
-- Name: blog_camerafeatures; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_camerafeatures (
    cf_id integer NOT NULL,
    feature character varying(100) NOT NULL,
    camera_id_id character varying(10) NOT NULL
);


ALTER TABLE blog_camerafeatures OWNER TO rishabh;

--
-- Name: blog_camerafeatures_cf_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE blog_camerafeatures_cf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_camerafeatures_cf_id_seq OWNER TO rishabh;

--
-- Name: blog_camerafeatures_cf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE blog_camerafeatures_cf_id_seq OWNED BY blog_camerafeatures.cf_id;


--
-- Name: blog_comments; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_comments (
    id integer NOT NULL,
    comments character varying(100) NOT NULL,
    review_id_id character varying(10) NOT NULL
);


ALTER TABLE blog_comments OWNER TO rishabh;

--
-- Name: blog_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE blog_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_comments_id_seq OWNER TO rishabh;

--
-- Name: blog_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE blog_comments_id_seq OWNED BY blog_comments.id;


--
-- Name: blog_editor; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_editor (
    session_id integer NOT NULL,
    date character varying(12) NOT NULL,
    p_id_id character varying(10) NOT NULL,
    user_id_id character varying(30) NOT NULL
);


ALTER TABLE blog_editor OWNER TO rishabh;

--
-- Name: blog_editor_session_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE blog_editor_session_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_editor_session_id_seq OWNER TO rishabh;

--
-- Name: blog_editor_session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE blog_editor_session_id_seq OWNED BY blog_editor.session_id;


--
-- Name: blog_follows; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_follows (
    id integer NOT NULL,
    followed_id_id character varying(30) NOT NULL,
    follower_id_id character varying(30) NOT NULL
);


ALTER TABLE blog_follows OWNER TO rishabh;

--
-- Name: blog_follows_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE blog_follows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_follows_id_seq OWNER TO rishabh;

--
-- Name: blog_follows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE blog_follows_id_seq OWNED BY blog_follows.id;


--
-- Name: blog_genre; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_genre (
    gen_id character varying(10) NOT NULL,
    name character varying(30) NOT NULL,
    rank integer NOT NULL
);


ALTER TABLE blog_genre OWNER TO rishabh;

--
-- Name: blog_intrested_in; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_intrested_in (
    id integer NOT NULL,
    genre_id_id character varying(10) NOT NULL,
    user_id_id character varying(30) NOT NULL
);


ALTER TABLE blog_intrested_in OWNER TO rishabh;

--
-- Name: blog_intrested_in_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE blog_intrested_in_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_intrested_in_id_seq OWNER TO rishabh;

--
-- Name: blog_intrested_in_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE blog_intrested_in_id_seq OWNED BY blog_intrested_in.id;


--
-- Name: blog_participates_in; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_participates_in (
    id integer NOT NULL,
    user_id_id character varying(30) NOT NULL,
    w_id_id character varying(10) NOT NULL
);


ALTER TABLE blog_participates_in OWNER TO rishabh;

--
-- Name: blog_participates_in_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE blog_participates_in_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_participates_in_id_seq OWNER TO rishabh;

--
-- Name: blog_participates_in_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE blog_participates_in_id_seq OWNED BY blog_participates_in.id;


--
-- Name: blog_photo; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_photo (
    photo_id character varying(10) NOT NULL,
    location character varying(30) NOT NULL,
    caption text,
    image character varying(100) NOT NULL,
    number_of_downloads integer NOT NULL,
    file_type character varying(10) NOT NULL,
    camera_id_id character varying(10) NOT NULL,
    user_id_id character varying(30) NOT NULL,
    gen_id_id character varying(10) NOT NULL
);


ALTER TABLE blog_photo OWNER TO rishabh;

--
-- Name: blog_plan; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_plan (
    plan_id character varying(10) NOT NULL,
    name character varying(50) NOT NULL,
    price numeric(7,2) NOT NULL,
    duration interval NOT NULL
);


ALTER TABLE blog_plan OWNER TO rishabh;

--
-- Name: blog_plan_features; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_plan_features (
    f_id integer NOT NULL,
    features character varying(100) NOT NULL,
    plan_id_id character varying(10) NOT NULL
);


ALTER TABLE blog_plan_features OWNER TO rishabh;

--
-- Name: blog_plan_features_f_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE blog_plan_features_f_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_plan_features_f_id_seq OWNER TO rishabh;

--
-- Name: blog_plan_features_f_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE blog_plan_features_f_id_seq OWNED BY blog_plan_features.f_id;


--
-- Name: blog_review; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_review (
    review_id character varying(10) NOT NULL,
    number_of_likes integer NOT NULL,
    number_of_share integer NOT NULL,
    date character varying(12) NOT NULL,
    user_id_id character varying(30) NOT NULL
);


ALTER TABLE blog_review OWNER TO rishabh;

--
-- Name: blog_review_about; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_review_about (
    id integer NOT NULL,
    p_date character varying(12) NOT NULL,
    a_date character varying(12) NOT NULL,
    art_id_id character varying(10) NOT NULL,
    p_id_id character varying(10) NOT NULL,
    rev_id_id character varying(10) NOT NULL
);


ALTER TABLE blog_review_about OWNER TO rishabh;

--
-- Name: blog_review_about_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE blog_review_about_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_review_about_id_seq OWNER TO rishabh;

--
-- Name: blog_review_about_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE blog_review_about_id_seq OWNED BY blog_review_about.id;


--
-- Name: blog_subscribes_to; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_subscribes_to (
    id integer NOT NULL,
    date character varying(12) NOT NULL,
    plan_id_id character varying(10) NOT NULL,
    user_id_id character varying(30) NOT NULL
);


ALTER TABLE blog_subscribes_to OWNER TO rishabh;

--
-- Name: blog_subscribes_to_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE blog_subscribes_to_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_subscribes_to_id_seq OWNER TO rishabh;

--
-- Name: blog_subscribes_to_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE blog_subscribes_to_id_seq OWNED BY blog_subscribes_to.id;


--
-- Name: blog_userprofile; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_userprofile (
    u_id character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    m_init character varying(5),
    last_name character varying(30),
    username character varying(8) NOT NULL,
    dob character varying(12) NOT NULL,
    email_id character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    gender character varying(1) NOT NULL,
    phone bigint NOT NULL
);


ALTER TABLE blog_userprofile OWNER TO rishabh;

--
-- Name: blog_video_tutorials; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_video_tutorials (
    "Tut_id" character varying(10) NOT NULL,
    name character varying(30) NOT NULL,
    video character varying(100) NOT NULL,
    number_of_views integer NOT NULL,
    date date NOT NULL,
    rating integer NOT NULL,
    user_id_id character varying(30) NOT NULL
);


ALTER TABLE blog_video_tutorials OWNER TO rishabh;

--
-- Name: blog_workshop; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_workshop (
    w_id character varying(10) NOT NULL,
    name character varying(50) NOT NULL,
    price numeric(7,2) NOT NULL,
    start_date character varying(12) NOT NULL,
    duration interval NOT NULL,
    organisation character varying(50) NOT NULL
);


ALTER TABLE blog_workshop OWNER TO rishabh;

--
-- Name: blog_workshop_requirements; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE blog_workshop_requirements (
    id integer NOT NULL,
    requirement character varying(100) NOT NULL,
    w_id_id character varying(10) NOT NULL
);


ALTER TABLE blog_workshop_requirements OWNER TO rishabh;

--
-- Name: blog_workshop_requirements_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE blog_workshop_requirements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_workshop_requirements_id_seq OWNER TO rishabh;

--
-- Name: blog_workshop_requirements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE blog_workshop_requirements_id_seq OWNED BY blog_workshop_requirements.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO rishabh;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO rishabh;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO rishabh;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO rishabh;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO rishabh;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: rishabh
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO rishabh;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rishabh
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: rishabh
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO rishabh;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: cf_id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_camerafeatures ALTER COLUMN cf_id SET DEFAULT nextval('blog_camerafeatures_cf_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_comments ALTER COLUMN id SET DEFAULT nextval('blog_comments_id_seq'::regclass);


--
-- Name: session_id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_editor ALTER COLUMN session_id SET DEFAULT nextval('blog_editor_session_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_follows ALTER COLUMN id SET DEFAULT nextval('blog_follows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_intrested_in ALTER COLUMN id SET DEFAULT nextval('blog_intrested_in_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_participates_in ALTER COLUMN id SET DEFAULT nextval('blog_participates_in_id_seq'::regclass);


--
-- Name: f_id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_plan_features ALTER COLUMN f_id SET DEFAULT nextval('blog_plan_features_f_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_review_about ALTER COLUMN id SET DEFAULT nextval('blog_review_about_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_subscribes_to ALTER COLUMN id SET DEFAULT nextval('blog_subscribes_to_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_workshop_requirements ALTER COLUMN id SET DEFAULT nextval('blog_workshop_requirements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: rishabh
--



--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rishabh
--



--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add subscribes_to', 1, 'add_subscribes_to');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change subscribes_to', 1, 'change_subscribes_to');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete subscribes_to', 1, 'delete_subscribes_to');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can add camera features', 2, 'add_camerafeatures');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can change camera features', 2, 'change_camerafeatures');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can delete camera features', 2, 'delete_camerafeatures');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can add comments', 3, 'add_comments');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can change comments', 3, 'change_comments');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can delete comments', 3, 'delete_comments');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can add review', 4, 'add_review');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can change review', 4, 'change_review');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can delete review', 4, 'delete_review');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add plan_ features', 5, 'add_plan_features');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change plan_ features', 5, 'change_plan_features');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete plan_ features', 5, 'delete_plan_features');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can add follows', 6, 'add_follows');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can change follows', 6, 'change_follows');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can delete follows', 6, 'delete_follows');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can add user profile', 7, 'add_userprofile');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can change user profile', 7, 'change_userprofile');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can delete user profile', 7, 'delete_userprofile');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can add article', 8, 'add_article');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can change article', 8, 'change_article');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can delete article', 8, 'delete_article');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add video_ tutorials', 9, 'add_video_tutorials');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change video_ tutorials', 9, 'change_video_tutorials');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete video_ tutorials', 9, 'delete_video_tutorials');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can add photo', 10, 'add_photo');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can change photo', 10, 'change_photo');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can delete photo', 10, 'delete_photo');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can add genre', 11, 'add_genre');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can change genre', 11, 'change_genre');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can delete genre', 11, 'delete_genre');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can add review_ about', 12, 'add_review_about');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can change review_ about', 12, 'change_review_about');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can delete review_ about', 12, 'delete_review_about');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add camera', 13, 'add_camera');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change camera', 13, 'change_camera');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete camera', 13, 'delete_camera');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can add plan', 14, 'add_plan');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can change plan', 14, 'change_plan');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can delete plan', 14, 'delete_plan');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can add workshop_ requirements', 15, 'add_workshop_requirements');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can change workshop_ requirements', 15, 'change_workshop_requirements');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can delete workshop_ requirements', 15, 'delete_workshop_requirements');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can add participates_in', 16, 'add_participates_in');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can change participates_in', 16, 'change_participates_in');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can delete participates_in', 16, 'delete_participates_in');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add workshop', 17, 'add_workshop');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change workshop', 17, 'change_workshop');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete workshop', 17, 'delete_workshop');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can add intrested_in', 18, 'add_intrested_in');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can change intrested_in', 18, 'change_intrested_in');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can delete intrested_in', 18, 'delete_intrested_in');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can add editor', 19, 'add_editor');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can change editor', 19, 'change_editor');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can delete editor', 19, 'delete_editor');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can add log entry', 20, 'add_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can change log entry', 20, 'change_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can delete log entry', 20, 'delete_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add permission', 21, 'add_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change permission', 21, 'change_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete permission', 21, 'delete_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can add user', 22, 'add_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (65, 'Can change user', 22, 'change_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (66, 'Can delete user', 22, 'delete_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (67, 'Can add group', 23, 'add_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (68, 'Can change group', 23, 'change_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (69, 'Can delete group', 23, 'delete_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (70, 'Can add content type', 24, 'add_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (71, 'Can change content type', 24, 'change_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (72, 'Can delete content type', 24, 'delete_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (73, 'Can add session', 25, 'add_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (74, 'Can change session', 25, 'change_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (75, 'Can delete session', 25, 'delete_session');


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('auth_permission_id_seq', 78, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$30000$qBqOOfzMXL4v$Irglyy8EqFwLlSDz9OciHSx6KdGalrjKvmbCdMkOtJA=', '2017-04-09 15:04:13.437978+00', true, 'rishabh', '', '', 'rishabh97dutt@gmail.com', true, true, '2017-03-19 17:03:35.832884+00');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rishabh
--



--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rishabh
--



--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: blog_article; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_article (article_id, number_of_reads, article, user_id_id, photo_id_id) VALUES ('art01', 1, 'article/2017/03/19/art1', 'user01', 'ph09');
INSERT INTO blog_article (article_id, number_of_reads, article, user_id_id, photo_id_id) VALUES ('art02', 2, 'article/2017/03/20/art2', 'user03', 'ph07');
INSERT INTO blog_article (article_id, number_of_reads, article, user_id_id, photo_id_id) VALUES ('art03', 3, 'article/2017/03/20/art3', 'user05', 'ph09');
INSERT INTO blog_article (article_id, number_of_reads, article, user_id_id, photo_id_id) VALUES ('art05', 4, 'article/2017/03/20/art5', 'user09', 'ph06');
INSERT INTO blog_article (article_id, number_of_reads, article, user_id_id, photo_id_id) VALUES ('art07', 7, 'article/2017/03/20/art6_5Ys8kmg', 'user11', 'ph11');


--
-- Data for Name: blog_camera; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam01', 'DSLR', 'user01');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam03', 'piixel', 'user03');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam04', 'sony digi3', 'user02');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam05', 'iphone 7s', 'user10');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam06', 'iphone 6s', 'user08');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam07', 'handicam', 'user13');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam08', 'sony digi5', 'user11');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam10', 'sony xperia', 'user04');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam13', 'DSLR', 'user07');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam14', 'DSLR mini', 'user14');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam11', 'samsung galaxy 8', 'user05');
INSERT INTO blog_camera (c_id, name, user_id_id) VALUES ('cam09', 'dslr', 'user09');


--
-- Data for Name: blog_camerafeatures; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (1, 'Dust removal system', 'cam01');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (2, 'Long Battery life', 'cam01');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (5, '13Mp', 'cam03');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (6, '8Mp front', 'cam03');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (7, '15X zoom', 'cam04');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (8, 'Battery Life', 'cam04');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (9, '15Mp', 'cam05');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (10, '9Mp front', 'cam05');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (11, '13Mp', 'cam06');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (12, '10X zoom', 'cam06');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (13, '15X zoom', 'cam07');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (14, 'Long Battery life', 'cam07');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (15, '20Mp', 'cam08');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (16, 'Long Battery life', 'cam08');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (17, 'Long Battery life', 'cam09');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (18, '10Mp', 'cam09');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (19, '10X zoom', 'cam10');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (20, 'Long Battery life', 'cam10');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (21, '8Mp front', 'cam11');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (22, '13Mp', 'cam11');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (25, '20X zoom', 'cam14');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (26, '20Mp', 'cam14');
INSERT INTO blog_camerafeatures (cf_id, feature, camera_id_id) VALUES (28, '25X zoom', 'cam01');


--
-- Name: blog_camerafeatures_cf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('blog_camerafeatures_cf_id_seq', 28, true);


--
-- Data for Name: blog_comments; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_comments (id, comments, review_id_id) VALUES (1, 'Amazing', 'rv01');
INSERT INTO blog_comments (id, comments, review_id_id) VALUES (2, 'Nice', 'rv01');
INSERT INTO blog_comments (id, comments, review_id_id) VALUES (5, 'Nice', 'rv05');
INSERT INTO blog_comments (id, comments, review_id_id) VALUES (6, 'Great Amazing', 'rv02');
INSERT INTO blog_comments (id, comments, review_id_id) VALUES (7, 'Very Nice', 'rv03');


--
-- Name: blog_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('blog_comments_id_seq', 7, true);


--
-- Data for Name: blog_editor; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_editor (session_id, date, p_id_id, user_id_id) VALUES (1, '1/1/2017', 'ph03', 'user02');


--
-- Name: blog_editor_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('blog_editor_session_id_seq', 5, true);


--
-- Data for Name: blog_follows; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (1, 'user01', 'user10');
INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (3, 'user01', 'user02');
INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (4, 'user02', 'user03');
INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (5, 'user02', 'user08');
INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (7, 'user03', 'user11');
INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (8, 'user03', 'user13');
INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (9, 'user03', 'user05');
INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (14, 'user05', 'user11');
INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (17, 'user13', 'user08');
INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (18, 'user14', 'user10');
INSERT INTO blog_follows (id, followed_id_id, follower_id_id) VALUES (19, 'user10', 'user01');


--
-- Name: blog_follows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('blog_follows_id_seq', 21, true);


--
-- Data for Name: blog_genre; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_genre (gen_id, name, rank) VALUES ('gen02', 'Wedding', 4);
INSERT INTO blog_genre (gen_id, name, rank) VALUES ('gen01', 'Waterfall', 3);
INSERT INTO blog_genre (gen_id, name, rank) VALUES ('gen03', 'Animals', 4);
INSERT INTO blog_genre (gen_id, name, rank) VALUES ('gen04', 'Mountains', 3);
INSERT INTO blog_genre (gen_id, name, rank) VALUES ('gen05', 'Baby', 5);
INSERT INTO blog_genre (gen_id, name, rank) VALUES ('gen06', 'Festival', 4);
INSERT INTO blog_genre (gen_id, name, rank) VALUES ('gen07', 'Celebrity', 3);
INSERT INTO blog_genre (gen_id, name, rank) VALUES ('gen08', 'Birthday', 5);
INSERT INTO blog_genre (gen_id, name, rank) VALUES ('gen09', 'Flower', 4);
INSERT INTO blog_genre (gen_id, name, rank) VALUES ('gen10', 'Birds', 5);


--
-- Data for Name: blog_intrested_in; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (1, 'gen02', 'user02');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (2, 'gen01', 'user01');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (3, 'gen04', 'user03');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (4, 'gen10', 'user11');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (6, 'gen05', 'user02');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (7, 'gen07', 'user02');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (8, 'gen07', 'user10');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (9, 'gen08', 'user09');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (11, 'gen06', 'user13');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (12, 'gen03', 'user01');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (13, 'gen02', 'user14');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (16, 'gen01', 'user07');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (17, 'gen08', 'user04');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (18, 'gen05', 'user11');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (19, 'gen01', 'user14');
INSERT INTO blog_intrested_in (id, genre_id_id, user_id_id) VALUES (20, 'gen04', 'user05');


--
-- Name: blog_intrested_in_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('blog_intrested_in_id_seq', 20, true);


--
-- Data for Name: blog_participates_in; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (1, 'user01', 'wshop1');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (2, 'user03', 'wshop4');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (3, 'user02', 'wshop4');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (4, 'user05', 'wshop5');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (5, 'user01', 'wshop3');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (6, 'user07', 'wshop5');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (7, 'user10', 'wshop2');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (9, 'user04', 'wshop5');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (10, 'user11', 'wshop4');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (11, 'user08', 'wshop3');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (12, 'user09', 'wshop2');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (13, 'user13', 'wshop3');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (15, 'user14', 'wshop5');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (16, 'user10', 'wshop1');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (17, 'user01', 'wshop3');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (18, 'user05', 'wshop4');
INSERT INTO blog_participates_in (id, user_id_id, w_id_id) VALUES (20, 'user01', 'wshop5');


--
-- Name: blog_participates_in_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('blog_participates_in_id_seq', 20, true);


--
-- Data for Name: blog_photo; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph03', 'Usa', 'Oh My God!', 'image/2017/03/19/victoria-falls.jpg', 10, 'jpg', 'cam13', 'user01', 'gen01');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph05', 'italy', 'Alps!', 'image/2017/03/19/Nature-Mountain-HD-Wallpapers.jpg', 10, 'jpg', 'cam14', 'user14', 'gen04');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph06', 'karnataka', 'jog falls!', 'image/2017/03/19/waterfalls.jpg', 3, 'jpg', 'cam09', 'user09', 'gen01');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph07', 'Mumbai', '', 'image/2017/03/19/PH13.jpeg', 20, 'jpeg', 'cam03', 'user03', 'gen07');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph08', 'Mumbai', '', 'image/2017/03/19/PH9.jpg', 10, 'jpg', 'cam13', 'user07', 'gen07');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph09', 'Bangalore', 'Naughty', 'image/2017/03/19/PH6.png', 3, 'png', 'cam11', 'user05', 'gen05');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph11', 'Delhi', 'Birthday', 'image/2017/03/19/PH14.jpg', 6, 'jpg', 'cam08', 'user11', 'gen08');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph14', 'Bangalore', '', 'image/2017/04/09/PH11_mEHYo08.jpg', 0, 'jpg', 'cam03', 'user01', 'gen07');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('pixels', 'Bangalore', 'omg!cute', 'image/2017/04/09/PH12.jpeg', 0, 'jpeg', 'cam07', 'user01', 'gen05');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('pixile', 'Delhi', '', 'image/2017/04/09/PH14.jpg', 0, 'jpg', 'cam03', 'user03', 'gen08');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('pixilite', 'Bangalore', '', 'image/2017/04/09/PH10.jpeg', 0, 'jpeg', 'cam06', 'user02', 'gen08');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph21', 'Bengaluru', 'wow', 'image/2017/04/09/11.png', 0, 'png', 'cam01', 'user01', 'gen09');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph123', 'bangalore', 'don', 'image/2017/04/10/bg6.jpg', 0, 'jpg', 'cam01', 'user01', 'gen08');
INSERT INTO blog_photo (photo_id, location, caption, image, number_of_downloads, file_type, camera_id_id, user_id_id, gen_id_id) VALUES ('ph124', 'Bangalore', 'wow', 'image/2017/04/10/bg4.jpg', 0, 'jpg', 'cam03', 'User_DonM', 'gen01');


--
-- Data for Name: blog_plan; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_plan (plan_id, name, price, duration) VALUES ('plan1', 'Basic Plan', 2000.00, '5 days');
INSERT INTO blog_plan (plan_id, name, price, duration) VALUES ('plan2', 'Medium Plan', 5000.00, '10 days');
INSERT INTO blog_plan (plan_id, name, price, duration) VALUES ('plan4', 'Image and Context', 3000.00, '7 days');
INSERT INTO blog_plan (plan_id, name, price, duration) VALUES ('plan5', 'Studio Photography', 7000.00, '30 days');


--
-- Data for Name: blog_plan_features; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_plan_features (f_id, features, plan_id_id) VALUES (2, 'Unlimited Editor access', 'plan1');
INSERT INTO blog_plan_features (f_id, features, plan_id_id) VALUES (3, 'Unlimited Storage', 'plan2');
INSERT INTO blog_plan_features (f_id, features, plan_id_id) VALUES (4, 'Unlimited Editor access', 'plan5');
INSERT INTO blog_plan_features (f_id, features, plan_id_id) VALUES (5, 'Unlimited Storage', 'plan5');
INSERT INTO blog_plan_features (f_id, features, plan_id_id) VALUES (6, 'Unlimited Storage', 'plan4');


--
-- Name: blog_plan_features_f_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('blog_plan_features_f_id_seq', 6, true);


--
-- Data for Name: blog_review; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_review (review_id, number_of_likes, number_of_share, date, user_id_id) VALUES ('rv01', 50, 7, '19/03/2017', 'user07');
INSERT INTO blog_review (review_id, number_of_likes, number_of_share, date, user_id_id) VALUES ('rv02', 25, 5, '18/03/2017', 'user05');
INSERT INTO blog_review (review_id, number_of_likes, number_of_share, date, user_id_id) VALUES ('rv03', 20, 3, '21/03/2017', 'user08');
INSERT INTO blog_review (review_id, number_of_likes, number_of_share, date, user_id_id) VALUES ('rv05', 9, 7, '12/03/2017', 'user04');


--
-- Data for Name: blog_review_about; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_review_about (id, p_date, a_date, art_id_id, p_id_id, rev_id_id) VALUES (1, '12/03/2017', '12/03/2017', 'art01', 'ph06', 'rv01');


--
-- Name: blog_review_about_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('blog_review_about_id_seq', 2, true);


--
-- Data for Name: blog_subscribes_to; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (2, '23/03/2017', 'plan4', 'user02');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (3, '27/03/2017', 'plan1', 'user03');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (4, '15/08/2017', 'plan5', 'user10');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (5, '1/1/2017', 'plan5', 'user04');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (6, '15/08/2017', 'plan1', 'user05');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (7, '12/1/2017', 'plan1', 'user01');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (9, '20/03/2017', 'plan5', 'user11');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (12, '16/4/2017', 'plan4', 'user04');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (14, '23/03/2017', 'plan4', 'user08');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (17, '2/2/2017', 'plan5', 'user13');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (18, '25/03/2017', 'plan4', 'user01');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (19, '1/06/2017', 'plan2', 'user09');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (20, '23/03/2017', 'plan5', 'user14');
INSERT INTO blog_subscribes_to (id, date, plan_id_id, user_id_id) VALUES (15, '25/03/2017', 'plan5', 'user01');


--
-- Name: blog_subscribes_to_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('blog_subscribes_to_id_seq', 20, true);


--
-- Data for Name: blog_userprofile; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user01', 'Rishabh', '', 'Dutt', 'rdx', '29/06/1997', 'rishabh97dutt@gmail.com', 'pbkdf2_sha256$30000$P1oG0AVm3S5z$IC025Ttqkw9AhQCX2RHh6RYMWwWGpBs/PkF5bKML6Y0=', 'M', 8762450421);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user03', 'Reshma', 'G', 'Bhat', 'resh', '25/02/1997', 'rgbhat@gmail.com', 'pbkdf2_sha256$30000$ROm1omKlAG2p$oiCR5aGfnNIHU/xi7rc4Cr3qqr29FGeHFTUbSmlF+9M=', 'F', 8145673908);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user02', 'Priyanka', 'T', 'S', 'prinks', '23/03/1997', 'priyanka@gmail.com', 'pbkdf2_sha256$30000$BbvAJTv4Apfm$4xCyIYhI2PqinPjFoN7k3SzSKciJV++eGXNYtNGHTDY=', 'F', 1234567890);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user04', 'Laney', 'S', 'Griner', 'Lan', '12/03/1978', 'laneygriner@gmail.com', 'pbkdf2_sha256$30000$fg25x7JsnsKY$CmURM7qsw83wHgQuR59RmfEyxTfPHgDRNUczMuFkOuE=', 'F', 9098090980);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user05', 'Franklin', 'P', 'Richards', 'frank', '4/03/1978', 'franklin1000@gmail.com', 'pbkdf2_sha256$30000$L5qbljzz62Id$VVgJBwX2RORmy+psC+qGnm6GGt3+DBpk322sGd+CANU=', 'M', 9540546021);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user07', 'Vivan', 'G', 'Agnihotri', 'viga', '10/09/1991', 'viga1991@gmail.com', 'pbkdf2_sha256$30000$72lfZtGXj3yh$nEguvKs79DC1rABj7jbVs9kkjzsB0kta71NPs9seTzk=', 'M', 9998887770);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user08', 'Peter', 'J', 'Parker', 'pete', '27/07/1986', 'peterparker@gmail.com', 'pbkdf2_sha256$30000$1alLa6jXnZqB$bvDyO86TtC33ikHW5AnSHHC5z52HToroAbjSaR0QT9Y=', 'M', 6709809891);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user10', 'Tony', '', 'Stark', 'robert', '28/08/1990', 'tonyrobertstark@gmail.com', 'pbkdf2_sha256$30000$7ckyx6LRzE0i$YftvucGHyM436Cr/W9gSBlZiejeG7HZP4zuQ6sk0uxI=', 'M', 8885552413);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user09', 'Preetika', 'P', 'Rathod', 'preetu', '15/04/1997', 'preeturathod@gmail.com', 'pbkdf2_sha256$30000$CRiUIRCzjktm$qxQLLH8pFGwQdiZP4hhOi0qE5ldtu4QJQbVlAjx024o=', 'F', 9864354321);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user13', 'Reuben', '', 'Cherian', 'reuche', '01/01/1997', 'reuche@yahoo.com', 'pbkdf2_sha256$30000$Lwdajuy5Fv1b$VUHlVu4zcSzMqO9BCrnVOnfwff3DeiT/2YxqAqh6eM8=', 'M', 4567898123);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user14', 'Nikhil', '', 'Singh', 'nike', '18/10/1996', 'nikenikhil@gmail.com', 'pbkdf2_sha256$30000$BlGIQQQd9MQX$yQAMbJPldPZn1TQ1Hf34omt8HAdufumt/X52Omkn9/s=', 'M', 1973468257);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('user11', 'Niriksha', '', 'Kunder', 'kirik', '16/09/1996', 'nirikshakirik@gmail.com', 'pbkdf2_sha256$30000$RwfbzUiE2azt$lxS+UUX4FyJeT1dRo60cGiap2bOXeXMzUlEO3KT4TQY=', 'F', 7854987132);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('User_rdflsM', 'Rados', 'd', 'daad', 'rdfls', '29/06/1997', 'reuche@yahoo.com', 'pbkdf2_sha256$30000$8G3zhKamqVD0$Fo5tUoRXfz77jVLVRxRmGpJIccy85BmbUepBE/CkG7o=', 'M', 4576124333);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('User_rahulM', 'Rahul', '', 'Mohan', 'rahul', '29/06/1997', 'rahul97mohan@gmail.com', 'pbkdf2_sha256$30000$5phkgbzaPJ4c$y92O14WFYuaLgaUb/uBFoh/qLZVKNkHBk9cWYflmbqM=', 'M', 8762450421);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('User_JirenM', 'Jiren', '', 'Mathur', 'Jiren', '25/02/1997', 'Jiren@gmail.com', 'pbkdf2_sha256$30000$4wWJquJhF4L9$kECS87ajS6TJ8D2LiwyVppDhRZlzjDlcmHYM72vUPx4=', 'M', 7689451234);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('User_mattM', 'Mathews', '', 'Bhat', 'matt', '29/06/1997', 'mathew@gmail.com', 'pbkdf2_sha256$30000$AHBoQtXLwPZy$lM2yKopM/oMyYyViJOEyp+kr4BsnNB2MbpzaB2rwhvg=', 'M', 8145673908);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('User_rgbhatF', 'Rgbhat', '', '', 'rgbhat', '23/07/1997', 'rgbhat@gmail.com', 'pbkdf2_sha256$30000$tHCgezxpSJar$MjoULSbYgH+S3KGcVoCMH1sw7+rzgiLdE6caccQm2Ws=', 'F', 5656588984);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('User_DonM', 'Rajat', 'N', 'Nigam', 'Don', '1/07/1996', 'rjrajat07@gmail.com', 'pbkdf2_sha256$30000$OgrYCBSWXLza$wMMISAgPrfKVf+7j9Z1RUTOL5TSpwis/OQubZA+EIAY=', 'M', 9845512341);
INSERT INTO blog_userprofile (u_id, first_name, m_init, last_name, username, dob, email_id, password, gender, phone) VALUES ('User_priyaF', 'priyanka', '', '', 'priya', '23/03/1997', 'prinks123@gmail.com', 'pbkdf2_sha256$30000$jvXsh2Ed3aiS$O1gHtUmaOug0O9rx3O+mocFMW+W33SmuZ9j3YG5oMug=', 'F', 987654321);


--
-- Data for Name: blog_video_tutorials; Type: TABLE DATA; Schema: public; Owner: rishabh
--



--
-- Data for Name: blog_workshop; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_workshop (w_id, name, price, start_date, duration, organisation) VALUES ('wshop2', 'Digital Photography 1', 499.00, '13/03/2018', '1 day', 'pixels');
INSERT INTO blog_workshop (w_id, name, price, start_date, duration, organisation) VALUES ('wshop4', 'B&W Film Photo II', 299.00, '28/07/2017', '2 days 12:00:00', 'piccasa');
INSERT INTO blog_workshop (w_id, name, price, start_date, duration, organisation) VALUES ('wshop5', 'Professional Strategies Photo', 399.00, '28/02/2018', '1 day', 'da vinci');
INSERT INTO blog_workshop (w_id, name, price, start_date, duration, organisation) VALUES ('wshop1', 'Advanced Photography', 250.00, '1/4/2018', '3 days', 'pixels');
INSERT INTO blog_workshop (w_id, name, price, start_date, duration, organisation) VALUES ('wshop3', 'Night Photography', 349.00, '1/04/2017', '3 days', 'photoX');


--
-- Data for Name: blog_workshop_requirements; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (1, 'DSLR', 'wshop4');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (2, 'Tripod Stand', 'wshop4');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (3, 'Laptop', 'wshop1');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (4, 'DSLR', 'wshop1');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (5, 'DSLR', 'wshop5');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (6, 'Laptop', 'wshop5');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (7, 'Models', 'wshop4');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (8, 'Picassa', 'wshop1');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (9, 'Digital Camera', 'wshop2');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (10, 'Basic Knowledge of Photography', 'wshop2');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (11, 'Focusing Light', 'wshop3');
INSERT INTO blog_workshop_requirements (id, requirement, w_id_id) VALUES (12, 'Camera with Night View', 'wshop3');


--
-- Name: blog_workshop_requirements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('blog_workshop_requirements_id_seq', 12, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2017-03-19 17:04:01.278369+00', 'user02', 'Priyanka T S', 3, '', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2017-03-19 17:04:43.529061+00', 'user01', 'Rishabh  Dutt', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2017-03-19 17:05:04.052886+00', 'user01', 'Rishabh  Dutt', 3, '', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2017-03-19 17:15:27.976909+00', 'user01', 'Rishabh  Dutt', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2017-03-19 17:18:12.49382+00', 'user02', 'Priyanka T S', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2017-03-19 17:20:04.898317+00', 'user03', 'Reshma G Bhat', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2017-03-19 17:20:24.924703+00', 'user02', 'Priyanka T S', 2, '[{"changed": {"fields": ["phone"]}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2017-03-19 17:25:02.404707+00', 'user04', 'Laney S Griner', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2017-03-19 17:27:03.177455+00', 'user05', 'Franklin P Richards', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2017-03-19 17:29:06.767167+00', 'user06', 'Mary N Crasto', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2017-03-19 17:31:26.459707+00', 'user07', 'Vivan G Agnihotri', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2017-03-19 17:34:04.782403+00', 'user08', 'Peter J Parker', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2017-03-19 17:36:59.06627+00', 'user09', 'Preetika P Rathod', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2017-03-19 17:38:32.833747+00', 'user10', 'Tony  Stark', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2017-03-19 17:41:18.129397+00', 'user11', 'Niriksha R Kunder', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2017-03-19 17:43:14.805458+00', 'user12', 'Rajat  Nigam', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2017-03-19 17:43:48.315859+00', 'user09', 'Preetika P Rathod', 2, '[{"changed": {"fields": ["email_id"]}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2017-03-19 17:44:05.693838+00', 'user12', 'Rajat  Nigam', 2, '[{"changed": {"fields": ["username"]}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2017-03-19 17:45:32.705939+00', 'user13', 'Reuben  Cherian', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2017-03-19 17:46:52.273572+00', 'user14', 'Nikhil  Singh', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (21, '2017-03-19 17:48:12.33018+00', 'user15', 'Prateek  Mohan', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (22, '2017-03-19 17:50:38.624698+00', 'wshop1', 'Advanced Photography', 1, '[{"added": {}}]', 17, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (23, '2017-03-19 17:51:13.587639+00', 'wshop1', 'Advanced Photography', 2, '[{"changed": {"fields": ["duration"]}}]', 17, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (24, '2017-03-19 17:52:18.208387+00', 'wshop2', 'Digital Photography 1', 1, '[{"added": {}}]', 17, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (25, '2017-03-19 17:54:00.468223+00', 'wshop3', 'Night Photography', 1, '[{"added": {}}]', 17, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (26, '2017-03-19 17:55:30.868713+00', 'wshop4', 'B&W Film Photo II', 1, '[{"added": {}}]', 17, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (27, '2017-03-19 17:56:47.614777+00', 'wshop5', 'Professional Strategies Photo', 1, '[{"added": {}}]', 17, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (28, '2017-03-19 17:57:30.162992+00', '1', 'Requirement 1', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (29, '2017-03-19 17:57:49.267047+00', '2', 'Requirement 2', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (30, '2017-03-19 17:58:30.33822+00', '3', 'Requirement 3', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (31, '2017-03-19 17:58:38.343942+00', '4', 'Requirement 4', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (32, '2017-03-19 17:58:49.263975+00', '5', 'Requirement 5', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (33, '2017-03-19 18:00:46.471322+00', '6', 'Requirement 6', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (34, '2017-03-19 18:01:02.589157+00', '7', 'Requirement 7', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (35, '2017-03-19 18:01:16.860298+00', '8', 'Requirement 8', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (36, '2017-03-19 18:01:30.718906+00', '9', 'Requirement 9', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (37, '2017-03-19 18:02:13.275681+00', '10', 'Requirement 10', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (38, '2017-03-19 18:03:13.191087+00', '11', 'Requirement 11', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (39, '2017-03-19 18:04:07.803632+00', '12', 'Requirement 12', 1, '[{"added": {}}]', 15, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (40, '2017-03-19 18:05:40.962468+00', 'plan1', 'Basic Plan', 1, '[{"added": {}}]', 14, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (41, '2017-03-19 18:06:32.506124+00', 'plan2', 'Medium Plan', 1, '[{"added": {}}]', 14, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (42, '2017-03-19 18:07:17.060056+00', 'plan3', 'Photo Journalism', 1, '[{"added": {}}]', 14, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (43, '2017-03-19 18:08:12.778655+00', 'plan4', 'Image and Context', 1, '[{"added": {}}]', 14, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (44, '2017-03-19 18:09:24.070964+00', 'plan5', 'Studio Photography', 1, '[{"added": {}}]', 14, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (45, '2017-03-19 18:11:20.622707+00', 'gen01', 'Nature', 1, '[{"added": {}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (46, '2017-03-19 18:13:20.461428+00', 'gen02', 'Wedding', 1, '[{"added": {}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (47, '2017-03-19 18:13:49.83126+00', '1', 'Tony  Stark follows Rishabh  Dutt', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (48, '2017-03-19 18:14:07.223139+00', '2', 'Rajat  Nigam follows Rishabh  Dutt', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (49, '2017-03-19 18:14:16.545494+00', '3', 'Priyanka T S follows Rishabh  Dutt', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (50, '2017-03-19 18:14:28.057388+00', '4', 'Reshma G Bhat follows Priyanka T S', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (51, '2017-03-19 18:14:38.80195+00', '5', 'Peter J Parker follows Priyanka T S', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (52, '2017-03-19 18:14:50.11909+00', '6', 'Prateek  Mohan follows Priyanka T S', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (53, '2017-03-19 18:15:01.428629+00', '7', 'Niriksha R Kunder follows Reshma G Bhat', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (54, '2017-03-19 18:15:15.082638+00', '8', 'Reuben  Cherian follows Reshma G Bhat', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (55, '2017-03-19 18:15:27.54606+00', '9', 'Franklin P Richards follows Reshma G Bhat', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (56, '2017-03-19 18:15:43.497911+00', '10', 'Mary N Crasto follows Prateek  Mohan', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (57, '2017-03-19 18:15:52.856065+00', '11', 'Vivan G Agnihotri follows Prateek  Mohan', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (58, '2017-03-19 18:16:22.134004+00', '12', 'Nikhil  Singh follows Rajat  Nigam', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (59, '2017-03-19 18:16:32.972788+00', '13', 'Rajat  Nigam follows Rajat  Nigam', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (60, '2017-03-19 18:16:41.846516+00', '13', 'Rajat  Nigam follows Rajat  Nigam', 3, '', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (61, '2017-03-19 18:16:51.883817+00', '14', 'Niriksha R Kunder follows Franklin P Richards', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (62, '2017-03-19 18:17:11.364145+00', '15', 'Rajat  Nigam follows Preetika P Rathod', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (63, '2017-03-19 18:17:21.818993+00', '16', 'Mary N Crasto follows Laney S Griner', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (64, '2017-03-19 18:17:34.699099+00', '17', 'Peter J Parker follows Reuben  Cherian', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (65, '2017-03-19 18:17:45.349161+00', '18', 'Tony  Stark follows Nikhil  Singh', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (66, '2017-03-19 18:17:57.623271+00', '19', 'Rishabh  Dutt follows Tony  Stark', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (67, '2017-03-19 18:18:08.981988+00', '20', 'Niriksha R Kunder follows Prateek  Mohan', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (68, '2017-03-19 18:18:22.276808+00', '21', 'Rajat  Nigam follows Niriksha R Kunder', 1, '[{"added": {}}]', 6, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (69, '2017-03-19 18:19:21.595764+00', '1', 'Subscription 1', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (70, '2017-03-19 18:19:43.19094+00', '2', 'Subscription 2', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (71, '2017-03-19 18:20:10.50674+00', '3', 'Subscription 3', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (72, '2017-03-19 18:20:25.372956+00', '4', 'Subscription 4', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (73, '2017-03-19 18:20:41.985848+00', '5', 'Subscription 5', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (74, '2017-03-19 18:21:01.895628+00', '6', 'Subscription 6', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (75, '2017-03-19 18:21:24.420506+00', '7', 'Subscription 7', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (76, '2017-03-19 18:22:16.341798+00', '8', 'Subscription 8', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (77, '2017-03-19 18:22:47.27078+00', '9', 'Subscription 9', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (78, '2017-03-19 18:23:08.534716+00', '10', 'Subscription 10', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (79, '2017-03-19 18:23:36.85938+00', '11', 'Subscription 11', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (80, '2017-03-19 18:23:53.315634+00', '12', 'Subscription 12', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (81, '2017-03-19 18:24:04.80587+00', '12', 'Subscription 12', 2, '[{"changed": {"fields": ["date"]}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (82, '2017-03-19 18:24:24.731728+00', '13', 'Subscription 13', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (83, '2017-03-19 18:24:40.738673+00', '14', 'Subscription 14', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (84, '2017-03-19 18:25:04.865024+00', '15', 'Subscription 15', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (85, '2017-03-19 18:25:22.882818+00', '16', 'Subscription 16', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (86, '2017-03-19 18:25:55.679359+00', '17', 'Subscription 17', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (87, '2017-03-19 18:26:07.21052+00', '18', 'Subscription 18', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (88, '2017-03-19 18:26:20.044171+00', '18', 'Subscription 18', 2, '[{"changed": {"fields": ["user_id"]}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (89, '2017-03-19 18:26:47.838026+00', '19', 'Subscription 19', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (90, '2017-03-19 18:27:08.785008+00', '20', 'Subscription 20', 1, '[{"added": {}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (91, '2017-03-19 18:27:31.13183+00', '15', 'Subscription 15', 2, '[{"changed": {"fields": ["user_id"]}}]', 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (92, '2017-03-19 18:29:20.80229+00', 'gen03', 'Animals', 1, '[{"added": {}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (93, '2017-03-19 18:29:29.436688+00', 'gen01', 'Waterfall', 2, '[{"changed": {"fields": ["name"]}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (94, '2017-03-19 18:29:33.705668+00', 'gen01', 'Waterfall', 2, '[]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (95, '2017-03-19 18:29:40.006299+00', 'gen03', 'Animals', 2, '[{"changed": {"fields": ["rank"]}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (96, '2017-03-19 18:29:57.004151+00', 'gen04', 'Mountains', 1, '[{"added": {}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (97, '2017-03-19 18:30:21.700517+00', 'gen05', 'Baby', 1, '[{"added": {}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (98, '2017-03-19 18:30:43.51993+00', 'gen06', 'Festival', 1, '[{"added": {}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (99, '2017-03-19 18:31:02.972811+00', 'gen07', 'Celebrity', 1, '[{"added": {}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (100, '2017-03-19 18:31:26.075488+00', 'gen08', 'Birthday', 1, '[{"added": {}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (101, '2017-03-19 18:31:43.956647+00', 'gen09', 'Flower', 1, '[{"added": {}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (102, '2017-03-19 18:32:02.066869+00', 'gen10', 'Birds', 1, '[{"added": {}}]', 11, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (103, '2017-03-19 18:32:19.113181+00', '1', 'Priyanka T S intrested in Wedding', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (104, '2017-03-19 18:32:28.694991+00', '2', 'Rishabh  Dutt intrested in Waterfall', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (105, '2017-03-19 18:32:40.103644+00', '3', 'Reshma G Bhat intrested in Mountains', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (106, '2017-03-19 18:32:51.68319+00', '4', 'Niriksha R Kunder intrested in Birds', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (107, '2017-03-19 18:33:00.275962+00', '5', 'Rajat  Nigam intrested in Flower', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (108, '2017-03-19 18:33:11.646577+00', '6', 'Priyanka T S intrested in Baby', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (109, '2017-03-19 18:33:22.527174+00', '7', 'Priyanka T S intrested in Celebrity', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (110, '2017-03-19 18:33:33.363365+00', '8', 'Tony  Stark intrested in Celebrity', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (111, '2017-03-19 18:33:42.828494+00', '9', 'Preetika P Rathod intrested in Birthday', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (112, '2017-03-19 18:33:53.281734+00', '10', 'Rajat  Nigam intrested in Baby', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (113, '2017-03-19 18:34:04.180433+00', '11', 'Reuben  Cherian intrested in Festival', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (114, '2017-03-19 18:34:14.026504+00', '12', 'Rishabh  Dutt intrested in Animals', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (115, '2017-03-19 18:34:22.919027+00', '13', 'Nikhil  Singh intrested in Wedding', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (116, '2017-03-19 18:34:41.545171+00', '14', 'Prateek  Mohan intrested in Flower', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (117, '2017-03-19 18:34:54.732408+00', '15', 'Mary N Crasto intrested in Baby', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (118, '2017-03-19 18:35:07.695561+00', '16', 'Vivan G Agnihotri intrested in Waterfall', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (119, '2017-03-19 18:35:17.651277+00', '17', 'Laney S Griner intrested in Birthday', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (120, '2017-03-19 18:35:27.722514+00', '18', 'Niriksha R Kunder intrested in Baby', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (121, '2017-03-19 18:35:38.960883+00', '19', 'Nikhil  Singh intrested in Waterfall', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (122, '2017-03-19 18:35:51.657996+00', '20', 'Franklin P Richards intrested in Mountains', 1, '[{"added": {}}]', 18, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (123, '2017-03-19 18:36:22.119976+00', '1', 'Feature 1', 1, '[{"added": {}}]', 5, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (124, '2017-03-19 18:38:05.801292+00', '1', 'Participation 1', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (125, '2017-03-19 18:38:14.229347+00', '2', 'Participation 2', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (126, '2017-03-19 18:38:22.35273+00', '3', 'Participation 3', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (127, '2017-03-19 18:38:29.614737+00', '4', 'Participation 4', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (128, '2017-03-19 18:38:39.106907+00', '5', 'Participation 5', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (129, '2017-03-19 18:38:50.717887+00', '6', 'Participation 6', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (130, '2017-03-19 18:38:59.08515+00', '7', 'Participation 7', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (131, '2017-03-19 18:39:13.731287+00', '8', 'Participation 8', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (132, '2017-03-19 18:39:22.788405+00', '9', 'Participation 9', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (133, '2017-03-19 18:39:38.245411+00', '10', 'Participation 10', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (134, '2017-03-19 18:39:49.411909+00', '11', 'Participation 11', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (135, '2017-03-19 18:40:00.440816+00', '12', 'Participation 12', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (136, '2017-03-19 18:40:11.922467+00', '13', 'Participation 13', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (137, '2017-03-19 18:40:19.570058+00', '14', 'Participation 14', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (138, '2017-03-19 18:40:28.404359+00', '15', 'Participation 15', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (139, '2017-03-19 18:40:37.227661+00', '16', 'Participation 16', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (140, '2017-03-19 18:40:45.564276+00', '17', 'Participation 17', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (141, '2017-03-19 18:40:55.643335+00', '18', 'Participation 18', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (142, '2017-03-19 18:41:11.659237+00', '19', 'Participation 19', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (143, '2017-03-19 18:41:34.377065+00', '20', 'Participation 20', 1, '[{"added": {}}]', 16, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (144, '2017-03-19 19:09:28.301287+00', 'cam01', 'DSLR', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (145, '2017-03-19 19:09:43.369735+00', 'cam02', 'Iphone', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (146, '2017-03-19 19:09:57.131237+00', 'cam03', 'piixel', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (147, '2017-03-19 19:10:22.05072+00', 'cam04', 'sony digi3', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (148, '2017-03-19 19:10:41.379828+00', 'cam05', 'iphone 7s', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (149, '2017-03-19 19:11:01.536876+00', 'cam06', 'iphone 6s', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (150, '2017-03-19 19:11:24.801729+00', 'cam07', 'handicam', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (151, '2017-03-19 19:11:57.176988+00', 'cam08', 'sony digi5', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (152, '2017-03-19 19:12:23.665711+00', 'cam09', 'sony xs', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (153, '2017-03-19 19:13:20.876098+00', 'cam10', 'sony xperia', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (154, '2017-03-19 19:13:43.557254+00', 'cam11', 'samsung galaxy 8', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (155, '2017-03-19 19:14:06.566293+00', 'cam12', 'samsung note', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (156, '2017-03-19 19:14:27.911804+00', 'cam13', 'DSLR', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (157, '2017-03-19 19:14:59.159087+00', 'cam14', 'DSLR mini', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (158, '2017-03-19 19:15:23.39272+00', 'cam15', 'DSLR', 1, '[{"added": {}}]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (159, '2017-03-19 19:16:16.788417+00', '1', 'Feature 1', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (160, '2017-03-19 19:16:37.004783+00', '2', 'Feature 2', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (161, '2017-03-19 19:17:08.916276+00', '3', 'Feature 3', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (162, '2017-03-19 19:17:22.9171+00', '4', 'Feature 4', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (163, '2017-03-19 19:17:37.721506+00', '5', 'Feature 5', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (164, '2017-03-19 19:17:54.783447+00', '6', 'Feature 6', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (165, '2017-03-19 19:18:08.841701+00', '7', 'Feature 7', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (166, '2017-03-19 19:18:29.28067+00', '8', 'Feature 8', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (167, '2017-03-19 19:18:45.377815+00', '9', 'Feature 9', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (168, '2017-03-19 19:18:58.646602+00', '10', 'Feature 10', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (169, '2017-03-19 19:19:32.139074+00', '11', 'Feature 11', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (170, '2017-03-19 19:19:42.588584+00', '12', 'Feature 12', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (171, '2017-03-19 19:19:59.087832+00', '13', 'Feature 13', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (172, '2017-03-19 19:20:08.211669+00', '14', 'Feature 14', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (173, '2017-03-19 19:20:24.621326+00', '15', 'Feature 15', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (174, '2017-03-19 19:20:38.200615+00', '16', 'Feature 16', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (175, '2017-03-19 19:21:03.034914+00', '17', 'Feature 17', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (176, '2017-03-19 19:21:12.98997+00', '18', 'Feature 18', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (177, '2017-03-19 19:21:28.163261+00', '19', 'Feature 19', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (178, '2017-03-19 19:21:41.329276+00', '20', 'Feature 20', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (179, '2017-03-19 19:22:00.756057+00', '21', 'Feature 21', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (180, '2017-03-19 19:22:12.71009+00', '22', 'Feature 22', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (181, '2017-03-19 19:22:26.164157+00', '23', 'Feature 23', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (182, '2017-03-19 19:22:37.117928+00', '24', 'Feature 24', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (183, '2017-03-19 19:22:54.317029+00', '25', 'Feature 25', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (184, '2017-03-19 19:23:09.206683+00', '26', 'Feature 26', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (185, '2017-03-19 19:23:19.145611+00', '27', 'Feature 27', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (186, '2017-03-19 19:23:29.932563+00', '28', 'Feature 28', 1, '[{"added": {}}]', 2, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (187, '2017-03-19 19:25:02.340747+00', 'ph01', 'Photo ph01', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (188, '2017-03-19 19:26:23.116066+00', 'ph02', 'Photo ph02', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (189, '2017-03-19 19:29:26.238178+00', 'ph03', 'Photo ph03', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (190, '2017-03-19 19:31:17.482114+00', 'ph04', 'Photo ph04', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (191, '2017-03-19 19:32:44.246914+00', 'ph05', 'Photo ph05', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (192, '2017-03-19 19:34:16.378765+00', 'ph06', 'Photo ph06', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (193, '2017-03-19 19:43:56.867188+00', 'ph07', 'Photo ph07', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (194, '2017-03-19 19:44:39.311764+00', 'ph08', 'Photo ph08', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (195, '2017-03-19 19:45:30.044983+00', 'cam11', 'samsung galaxy 8', 2, '[]', 13, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (196, '2017-03-19 19:45:32.712456+00', 'ph09', 'Photo ph09', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (197, '2017-03-19 19:47:16.61054+00', 'ph10', 'Photo ph10', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (198, '2017-03-19 19:48:06.03413+00', 'ph11', 'Photo ph11', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (210, '2017-03-19 19:55:33.780269+00', 'art01', 'Article art01', 1, '[{"added": {}}]', 8, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (199, '2017-03-19 19:49:09.90883+00', '1', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (200, '2017-03-19 19:49:27.389152+00', '2', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (201, '2017-03-19 19:49:40.92541+00', '3', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (202, '2017-03-19 19:49:49.528549+00', '4', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (203, '2017-03-19 19:50:05.308389+00', '5', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (204, '2017-03-19 19:50:14.251385+00', '6', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (205, '2017-03-19 19:50:36.369697+00', '7', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (206, '2017-03-19 19:50:52.981995+00', '8', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (207, '2017-03-19 19:51:02.016621+00', '9', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (208, '2017-03-19 19:51:11.071311+00', '10', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (209, '2017-03-19 19:51:31.490642+00', '11', 'BelongsTo object', 1, '[{"added": {}}]', NULL, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (211, '2017-03-20 05:18:23.831248+00', 'art01', 'Article art01', 2, '[{"changed": {"fields": ["photo_id"]}}]', 8, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (212, '2017-03-20 07:41:46.364639+00', 'ph01', 'Photo ph01', 2, '[{"changed": {"fields": ["gen_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (213, '2017-03-20 07:42:19.14343+00', 'ph02', 'Photo ph02', 2, '[{"changed": {"fields": ["gen_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (214, '2017-03-20 07:42:34.863844+00', 'ph03', 'Photo ph03', 2, '[]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (215, '2017-03-20 07:42:49.514034+00', 'ph04', 'Photo ph04', 2, '[{"changed": {"fields": ["gen_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (216, '2017-03-20 07:43:20.526171+00', 'ph05', 'Photo ph05', 2, '[{"changed": {"fields": ["gen_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (217, '2017-03-20 07:43:33.175586+00', 'ph06', 'Photo ph06', 2, '[]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (218, '2017-03-20 07:44:39.000972+00', 'ph07', 'Photo ph07', 2, '[{"changed": {"fields": ["gen_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (219, '2017-03-20 07:45:10.044982+00', 'ph08', 'Photo ph08', 2, '[{"changed": {"fields": ["gen_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (220, '2017-03-20 07:45:33.690811+00', 'ph09', 'Photo ph09', 2, '[{"changed": {"fields": ["gen_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (221, '2017-03-20 07:46:12.082801+00', 'ph09', 'Photo ph09', 2, '[{"changed": {"fields": ["gen_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (222, '2017-03-20 07:46:21.54602+00', 'ph10', 'Photo ph10', 2, '[{"changed": {"fields": ["gen_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (223, '2017-03-20 07:46:35.836813+00', 'ph11', 'Photo ph11', 2, '[{"changed": {"fields": ["gen_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (224, '2017-03-20 07:47:49.693474+00', 'art01', 'Article art01', 2, '[]', 8, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (225, '2017-03-20 07:56:19.585336+00', 'art02', 'Article art02', 1, '[{"added": {}}]', 8, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (226, '2017-03-20 07:57:27.975978+00', 'art03', 'Article art03', 1, '[{"added": {}}]', 8, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (227, '2017-03-20 07:58:00.311435+00', 'art04', 'Article art04', 1, '[{"added": {}}]', 8, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (228, '2017-03-20 07:59:17.89231+00', 'art05', 'Article art05', 1, '[{"added": {}}]', 8, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (229, '2017-03-20 08:00:01.218428+00', 'art06', 'Article art06', 1, '[{"added": {}}]', 8, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (230, '2017-03-20 08:02:27.203704+00', 'art07', 'Article art07', 1, '[{"added": {}}]', 8, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (231, '2017-03-20 08:06:55.5243+00', 'rv01', 'Review rv01', 1, '[{"added": {}}]', 4, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (232, '2017-03-20 08:07:18.531245+00', 'rv02', 'Review rv02', 1, '[{"added": {}}]', 4, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (233, '2017-03-20 08:10:06.757333+00', 'rv03', 'Review rv03', 1, '[{"added": {}}]', 4, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (234, '2017-03-20 08:11:56.500957+00', 'rv04', 'Review rv04', 1, '[{"added": {}}]', 4, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (235, '2017-03-20 08:12:23.620745+00', 'rv05', 'Review rv05', 1, '[{"added": {}}]', 4, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (236, '2017-03-20 08:14:23.090929+00', '1', 'Session id: 1', 1, '[{"added": {}}]', 19, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (237, '2017-03-20 08:14:38.382934+00', '2', 'Session id: 2', 1, '[{"added": {}}]', 19, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (238, '2017-03-20 08:14:53.207757+00', '3', 'Session id: 3', 1, '[{"added": {}}]', 19, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (239, '2017-03-20 08:15:11.483441+00', '4', 'Session id: 4', 1, '[{"added": {}}]', 19, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (240, '2017-03-20 08:15:27.906597+00', '5', 'Session id: 5', 1, '[{"added": {}}]', 19, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (241, '2017-03-20 08:16:21.907579+00', '1', 'Review About Photo ph06 and Article art01', 1, '[{"added": {}}]', 12, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (242, '2017-03-20 08:16:47.84271+00', '2', 'Review About Photo ph07 and Article art02', 1, '[{"added": {}}]', 12, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (243, '2017-03-20 08:17:18.642923+00', '1', 'Comment 1', 1, '[{"added": {}}]', 3, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (244, '2017-03-20 08:17:26.99354+00', '2', 'Comment 2', 1, '[{"added": {}}]', 3, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (245, '2017-03-20 08:17:34.683578+00', '3', 'Comment 3', 1, '[{"added": {}}]', 3, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (246, '2017-03-20 08:17:43.199295+00', '4', 'Comment 4', 1, '[{"added": {}}]', 3, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (247, '2017-03-20 08:17:54.352349+00', '5', 'Comment 5', 1, '[{"added": {}}]', 3, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (248, '2017-03-20 08:18:10.653211+00', '6', 'Comment 6', 1, '[{"added": {}}]', 3, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (249, '2017-03-20 08:18:22.109982+00', '7', 'Comment 7', 1, '[{"added": {}}]', 3, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (250, '2017-03-20 08:19:46.401976+00', '2', 'Feature 2', 1, '[{"added": {}}]', 5, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (251, '2017-03-20 08:20:11.755393+00', '3', 'Feature 3', 1, '[{"added": {}}]', 5, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (252, '2017-03-20 08:20:55.311769+00', '4', 'Feature 4', 1, '[{"added": {}}]', 5, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (253, '2017-03-20 08:21:04.997083+00', '5', 'Feature 5', 1, '[{"added": {}}]', 5, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (254, '2017-03-20 08:21:15.712838+00', '6', 'Feature 6', 1, '[{"added": {}}]', 5, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (255, '2017-03-20 18:06:43.615367+00', 'plan3', 'Photo Journalism', 3, '', 14, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (256, '2017-03-20 18:21:11.899221+00', 'ph12', 'Photo ph12', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (257, '2017-03-20 18:21:26.845892+00', 'ph12', 'Photo ph12', 2, '[{"changed": {"fields": ["camera_id"]}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (258, '2017-04-02 06:40:36.288573+00', 'user11', 'Niriksha  Kunder', 2, '[{"changed": {"fields": ["m_init"]}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (259, '2017-04-02 06:41:45.405834+00', 'user06', 'Mary N Crasto', 3, '', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (260, '2017-04-03 09:55:42.165828+00', 'wshop1', 'Advanced Photography', 2, '[{"changed": {"fields": ["start_date"]}}]', 17, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (261, '2017-04-03 09:55:42.370031+00', 'wshop1', 'Advanced Photography', 2, '[]', 17, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (262, '2017-04-03 09:55:57.70025+00', 'wshop3', 'Night Photography', 2, '[{"changed": {"fields": ["start_date"]}}]', 17, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (263, '2017-04-09 09:17:25.508007+00', 'User_rishi', 'Rishi  ', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (264, '2017-04-09 09:20:37.818718+00', 'User_rishix', 'Rishi S ', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (265, '2017-04-09 09:24:43.551567+00', 'User_rishi', 'Rishikesh  ', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (266, '2017-04-09 09:26:54.968275+00', 'User_rishiM', 'don  ', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (267, '2017-04-09 09:27:12.308367+00', 'User_rishix', 'Rishi S ', 3, '', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (268, '2017-04-09 09:27:12.350318+00', 'User_rishiM', 'don  ', 3, '', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (269, '2017-04-09 09:27:12.361334+00', 'User_rishi', 'Rishikesh  ', 3, '', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (270, '2017-04-09 15:05:58.245672+00', 'User_rdflsM', 'Rados d daad', 1, '[{"added": {}}]', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (271, '2017-04-10 09:07:04.920684+00', 'user12', 'Rajat  Nigam', 3, '', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (272, '2017-04-10 09:14:33.340926+00', 'ph01', 'Photo ph01', 1, '[{"added": {}}]', 10, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (273, '2017-04-10 09:18:03.736203+00', 'User_sanjuM', 'Sanjana  M', 3, '', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (274, '2017-04-10 09:26:26.568341+00', 'User_pbF', 'priya  badrinath', 3, '', 7, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (275, '2017-04-10 09:51:34.308031+00', 'user15', 'Prateek  Mohan', 3, '', 7, 1);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 275, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'blog', 'subscribes_to');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'blog', 'camerafeatures');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'blog', 'comments');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'blog', 'review');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'blog', 'plan_features');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'blog', 'follows');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'blog', 'userprofile');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'blog', 'article');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'blog', 'video_tutorials');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'blog', 'photo');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'blog', 'genre');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'blog', 'review_about');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'blog', 'camera');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'blog', 'plan');
INSERT INTO django_content_type (id, app_label, model) VALUES (15, 'blog', 'workshop_requirements');
INSERT INTO django_content_type (id, app_label, model) VALUES (16, 'blog', 'participates_in');
INSERT INTO django_content_type (id, app_label, model) VALUES (17, 'blog', 'workshop');
INSERT INTO django_content_type (id, app_label, model) VALUES (18, 'blog', 'intrested_in');
INSERT INTO django_content_type (id, app_label, model) VALUES (19, 'blog', 'editor');
INSERT INTO django_content_type (id, app_label, model) VALUES (20, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (21, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (22, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (23, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (24, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (25, 'sessions', 'session');


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('django_content_type_id_seq', 26, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2017-03-19 15:39:30.017261+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2017-03-19 15:39:30.726438+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2017-03-19 15:39:30.970158+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2017-03-19 15:39:31.003253+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2017-03-19 15:39:31.080824+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2017-03-19 15:39:31.114039+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0003_alter_user_email_max_length', '2017-03-19 15:39:31.147139+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0004_alter_user_username_opts', '2017-03-19 15:39:31.167119+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0005_alter_user_last_login_null', '2017-03-19 15:39:31.202858+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0006_require_contenttypes_0002', '2017-03-19 15:39:31.214007+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2017-03-19 15:39:31.235442+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0008_alter_user_username_max_length', '2017-03-19 15:39:31.302866+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'blog', '0001_initial', '2017-03-19 15:39:34.220611+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'sessions', '0001_initial', '2017-03-19 15:39:34.385654+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'blog', '0002_auto_20170319_1546', '2017-03-19 15:46:58.34135+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'blog', '0003_auto_20170319_1609', '2017-03-19 16:09:44.047563+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'blog', '0004_auto_20170319_1812', '2017-03-19 18:13:02.231071+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'blog', '0005_auto_20170319_1943', '2017-03-19 19:43:07.885699+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'blog', '0005_auto_20170320_0514', '2017-03-20 05:15:11.056427+00');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'blog', '0006_auto_20170409_0920', '2017-04-09 09:20:28.357847+00');


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rishabh
--

SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: rishabh
--

INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2gewcoaaac28v7ogabklvocgggunpfk9', 'ZDI3Njg3YmYzZTIwZGNiODZkZTA0NTQxZjJiZjg1MmUzNzM0NjQ3MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjhiMjI2ZWY2MmJiNmMxZGRkNDFiMzhkZGE5NWNjOTdkNDM3ZjRiZWQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-04-17 09:55:19.221037+00');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('n4eoaabc23kx5zdsw66ac5o45oqht4hs', 'MTQxNDg5NWExOTcyMDViODZhMGVlYzE2NThiMmMxZmE2MWEyODM0Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjhiMjI2ZWY2MmJiNmMxZGRkNDFiMzhkZGE5NWNjOTdkNDM3ZjRiZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-04-23 09:23:59.592492+00');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('duqy77gfxr2p71pn5a7zemnflz09vhri', 'YmM0Y2Q3Y2ViZWIwZjYwYzMwNzNjOWEwZjA0MzAzOTQ0ZWYxZGU0NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjhiMjI2ZWY2MmJiNmMxZGRkNDFiMzhkZGE5NWNjOTdkNDM3ZjRiZWQiLCJ1c2VybmFtZSI6InByaXlhIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJsb2dnZWRfaW4iOnRydWUsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-04-24 09:52:35.141011+00');


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_article_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_article
    ADD CONSTRAINT blog_article_pkey PRIMARY KEY (article_id);


--
-- Name: blog_camera_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_camera
    ADD CONSTRAINT blog_camera_pkey PRIMARY KEY (c_id);


--
-- Name: blog_camerafeatures_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_camerafeatures
    ADD CONSTRAINT blog_camerafeatures_pkey PRIMARY KEY (cf_id);


--
-- Name: blog_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_comments
    ADD CONSTRAINT blog_comments_pkey PRIMARY KEY (id);


--
-- Name: blog_editor_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_editor
    ADD CONSTRAINT blog_editor_pkey PRIMARY KEY (session_id);


--
-- Name: blog_editor_user_id_id_fa462bf2_uniq; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_editor
    ADD CONSTRAINT blog_editor_user_id_id_fa462bf2_uniq UNIQUE (user_id_id, p_id_id);


--
-- Name: blog_follows_followed_id_id_ef6349de_uniq; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_follows
    ADD CONSTRAINT blog_follows_followed_id_id_ef6349de_uniq UNIQUE (followed_id_id, follower_id_id);


--
-- Name: blog_follows_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_follows
    ADD CONSTRAINT blog_follows_pkey PRIMARY KEY (id);


--
-- Name: blog_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_genre
    ADD CONSTRAINT blog_genre_pkey PRIMARY KEY (gen_id);


--
-- Name: blog_intrested_in_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_intrested_in
    ADD CONSTRAINT blog_intrested_in_pkey PRIMARY KEY (id);


--
-- Name: blog_participates_in_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_participates_in
    ADD CONSTRAINT blog_participates_in_pkey PRIMARY KEY (id);


--
-- Name: blog_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_photo
    ADD CONSTRAINT blog_photo_pkey PRIMARY KEY (photo_id);


--
-- Name: blog_plan_features_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_plan_features
    ADD CONSTRAINT blog_plan_features_pkey PRIMARY KEY (f_id);


--
-- Name: blog_plan_features_plan_id_id_d47d9889_uniq; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_plan_features
    ADD CONSTRAINT blog_plan_features_plan_id_id_d47d9889_uniq UNIQUE (plan_id_id, features);


--
-- Name: blog_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_plan
    ADD CONSTRAINT blog_plan_pkey PRIMARY KEY (plan_id);


--
-- Name: blog_review_about_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_review_about
    ADD CONSTRAINT blog_review_about_pkey PRIMARY KEY (id);


--
-- Name: blog_review_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_review
    ADD CONSTRAINT blog_review_pkey PRIMARY KEY (review_id);


--
-- Name: blog_subscribes_to_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_subscribes_to
    ADD CONSTRAINT blog_subscribes_to_pkey PRIMARY KEY (id);


--
-- Name: blog_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_userprofile
    ADD CONSTRAINT blog_userprofile_pkey PRIMARY KEY (u_id);


--
-- Name: blog_video_tutorials_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_video_tutorials
    ADD CONSTRAINT blog_video_tutorials_pkey PRIMARY KEY ("Tut_id");


--
-- Name: blog_workshop_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_workshop
    ADD CONSTRAINT blog_workshop_pkey PRIMARY KEY (w_id);


--
-- Name: blog_workshop_requirements_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_workshop_requirements
    ADD CONSTRAINT blog_workshop_requirements_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_article_18624dd3; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_article_18624dd3 ON blog_article USING btree (user_id_id);


--
-- Name: blog_article_86ac172d; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_article_86ac172d ON blog_article USING btree (photo_id_id);


--
-- Name: blog_article_article_id_9c0e32cd_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_article_article_id_9c0e32cd_like ON blog_article USING btree (article_id varchar_pattern_ops);


--
-- Name: blog_article_photo_id_id_78cd5401_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_article_photo_id_id_78cd5401_like ON blog_article USING btree (photo_id_id varchar_pattern_ops);


--
-- Name: blog_article_user_id_id_0de48a05_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_article_user_id_id_0de48a05_like ON blog_article USING btree (user_id_id varchar_pattern_ops);


--
-- Name: blog_camera_18624dd3; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_camera_18624dd3 ON blog_camera USING btree (user_id_id);


--
-- Name: blog_camera_c_id_2737d26b_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_camera_c_id_2737d26b_like ON blog_camera USING btree (c_id varchar_pattern_ops);


--
-- Name: blog_camera_user_id_id_3d635ff0_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_camera_user_id_id_3d635ff0_like ON blog_camera USING btree (user_id_id varchar_pattern_ops);


--
-- Name: blog_camerafeatures_b51ba4bb; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_camerafeatures_b51ba4bb ON blog_camerafeatures USING btree (camera_id_id);


--
-- Name: blog_camerafeatures_camera_id_id_f01e68c4_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_camerafeatures_camera_id_id_f01e68c4_like ON blog_camerafeatures USING btree (camera_id_id varchar_pattern_ops);


--
-- Name: blog_comments_9c11c288; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_comments_9c11c288 ON blog_comments USING btree (review_id_id);


--
-- Name: blog_comments_review_id_id_03e1a092_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_comments_review_id_id_03e1a092_like ON blog_comments USING btree (review_id_id varchar_pattern_ops);


--
-- Name: blog_editor_18624dd3; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_editor_18624dd3 ON blog_editor USING btree (user_id_id);


--
-- Name: blog_editor_578d431e; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_editor_578d431e ON blog_editor USING btree (p_id_id);


--
-- Name: blog_editor_p_id_id_77f75237_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_editor_p_id_id_77f75237_like ON blog_editor USING btree (p_id_id varchar_pattern_ops);


--
-- Name: blog_editor_user_id_id_daecb098_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_editor_user_id_id_daecb098_like ON blog_editor USING btree (user_id_id varchar_pattern_ops);


--
-- Name: blog_follows_39b12cc3; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_follows_39b12cc3 ON blog_follows USING btree (follower_id_id);


--
-- Name: blog_follows_3e409027; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_follows_3e409027 ON blog_follows USING btree (followed_id_id);


--
-- Name: blog_follows_followed_id_id_82dc6b67_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_follows_followed_id_id_82dc6b67_like ON blog_follows USING btree (followed_id_id varchar_pattern_ops);


--
-- Name: blog_follows_follower_id_id_a656b589_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_follows_follower_id_id_a656b589_like ON blog_follows USING btree (follower_id_id varchar_pattern_ops);


--
-- Name: blog_genre_gen_id_e79eb777_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_genre_gen_id_e79eb777_like ON blog_genre USING btree (gen_id varchar_pattern_ops);


--
-- Name: blog_intrested_in_076741e7; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_intrested_in_076741e7 ON blog_intrested_in USING btree (genre_id_id);


--
-- Name: blog_intrested_in_18624dd3; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_intrested_in_18624dd3 ON blog_intrested_in USING btree (user_id_id);


--
-- Name: blog_intrested_in_genre_id_id_ecfefcec_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_intrested_in_genre_id_id_ecfefcec_like ON blog_intrested_in USING btree (genre_id_id varchar_pattern_ops);


--
-- Name: blog_intrested_in_user_id_id_e9f1c745_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_intrested_in_user_id_id_e9f1c745_like ON blog_intrested_in USING btree (user_id_id varchar_pattern_ops);


--
-- Name: blog_participates_in_18624dd3; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_participates_in_18624dd3 ON blog_participates_in USING btree (user_id_id);


--
-- Name: blog_participates_in_db9ed172; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_participates_in_db9ed172 ON blog_participates_in USING btree (w_id_id);


--
-- Name: blog_participates_in_user_id_id_85275f4c_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_participates_in_user_id_id_85275f4c_like ON blog_participates_in USING btree (user_id_id varchar_pattern_ops);


--
-- Name: blog_participates_in_w_id_id_627d0574_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_participates_in_w_id_id_627d0574_like ON blog_participates_in USING btree (w_id_id varchar_pattern_ops);


--
-- Name: blog_photo_18624dd3; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_photo_18624dd3 ON blog_photo USING btree (user_id_id);


--
-- Name: blog_photo_813ff5d7; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_photo_813ff5d7 ON blog_photo USING btree (gen_id_id);


--
-- Name: blog_photo_b51ba4bb; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_photo_b51ba4bb ON blog_photo USING btree (camera_id_id);


--
-- Name: blog_photo_camera_id_id_a2487ca2_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_photo_camera_id_id_a2487ca2_like ON blog_photo USING btree (camera_id_id varchar_pattern_ops);


--
-- Name: blog_photo_gen_id_id_e6ac5cbd_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_photo_gen_id_id_e6ac5cbd_like ON blog_photo USING btree (gen_id_id varchar_pattern_ops);


--
-- Name: blog_photo_photo_id_1464d19b_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_photo_photo_id_1464d19b_like ON blog_photo USING btree (photo_id varchar_pattern_ops);


--
-- Name: blog_photo_user_id_id_a7d458b9_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_photo_user_id_id_a7d458b9_like ON blog_photo USING btree (user_id_id varchar_pattern_ops);


--
-- Name: blog_plan_features_ad0ccc49; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_plan_features_ad0ccc49 ON blog_plan_features USING btree (plan_id_id);


--
-- Name: blog_plan_features_plan_id_id_506bee29_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_plan_features_plan_id_id_506bee29_like ON blog_plan_features USING btree (plan_id_id varchar_pattern_ops);


--
-- Name: blog_plan_plan_id_cd24c0e6_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_plan_plan_id_cd24c0e6_like ON blog_plan USING btree (plan_id varchar_pattern_ops);


--
-- Name: blog_review_18624dd3; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_review_18624dd3 ON blog_review USING btree (user_id_id);


--
-- Name: blog_review_about_2ad177fc; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_review_about_2ad177fc ON blog_review_about USING btree (art_id_id);


--
-- Name: blog_review_about_578d431e; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_review_about_578d431e ON blog_review_about USING btree (p_id_id);


--
-- Name: blog_review_about_918bbbb9; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_review_about_918bbbb9 ON blog_review_about USING btree (rev_id_id);


--
-- Name: blog_review_about_art_id_id_e39d2a99_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_review_about_art_id_id_e39d2a99_like ON blog_review_about USING btree (art_id_id varchar_pattern_ops);


--
-- Name: blog_review_about_p_id_id_5074404b_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_review_about_p_id_id_5074404b_like ON blog_review_about USING btree (p_id_id varchar_pattern_ops);


--
-- Name: blog_review_about_rev_id_id_2e4240bc_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_review_about_rev_id_id_2e4240bc_like ON blog_review_about USING btree (rev_id_id varchar_pattern_ops);


--
-- Name: blog_review_review_id_6bc9ee21_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_review_review_id_6bc9ee21_like ON blog_review USING btree (review_id varchar_pattern_ops);


--
-- Name: blog_review_user_id_id_df7a384e_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_review_user_id_id_df7a384e_like ON blog_review USING btree (user_id_id varchar_pattern_ops);


--
-- Name: blog_subscribes_to_18624dd3; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_subscribes_to_18624dd3 ON blog_subscribes_to USING btree (user_id_id);


--
-- Name: blog_subscribes_to_ad0ccc49; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_subscribes_to_ad0ccc49 ON blog_subscribes_to USING btree (plan_id_id);


--
-- Name: blog_subscribes_to_plan_id_id_5010bec7_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_subscribes_to_plan_id_id_5010bec7_like ON blog_subscribes_to USING btree (plan_id_id varchar_pattern_ops);


--
-- Name: blog_subscribes_to_user_id_id_491e37d8_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_subscribes_to_user_id_id_491e37d8_like ON blog_subscribes_to USING btree (user_id_id varchar_pattern_ops);


--
-- Name: blog_userprofile_u_id_e0f08f6b_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_userprofile_u_id_e0f08f6b_like ON blog_userprofile USING btree (u_id varchar_pattern_ops);


--
-- Name: blog_video_tutorials_18624dd3; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_video_tutorials_18624dd3 ON blog_video_tutorials USING btree (user_id_id);


--
-- Name: blog_video_tutorials_Tut_id_b136a19e_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX "blog_video_tutorials_Tut_id_b136a19e_like" ON blog_video_tutorials USING btree ("Tut_id" varchar_pattern_ops);


--
-- Name: blog_video_tutorials_user_id_id_544e49c4_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_video_tutorials_user_id_id_544e49c4_like ON blog_video_tutorials USING btree (user_id_id varchar_pattern_ops);


--
-- Name: blog_workshop_requirements_db9ed172; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_workshop_requirements_db9ed172 ON blog_workshop_requirements USING btree (w_id_id);


--
-- Name: blog_workshop_requirements_w_id_id_4e7f4633_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_workshop_requirements_w_id_id_4e7f4633_like ON blog_workshop_requirements USING btree (w_id_id varchar_pattern_ops);


--
-- Name: blog_workshop_w_id_47c38e21_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX blog_workshop_w_id_47c38e21_like ON blog_workshop USING btree (w_id varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: rishabh
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_article_photo_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_article
    ADD CONSTRAINT blog_article_photo_id_id_fkey FOREIGN KEY (photo_id_id) REFERENCES blog_photo(photo_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_article_user_id_id_0de48a05_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_article
    ADD CONSTRAINT blog_article_user_id_id_0de48a05_fk FOREIGN KEY (user_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_camera_user_id_id_3d635ff0_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_camera
    ADD CONSTRAINT blog_camera_user_id_id_3d635ff0_fk FOREIGN KEY (user_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_camerafeatures_camera_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_camerafeatures
    ADD CONSTRAINT blog_camerafeatures_camera_id_id_fkey FOREIGN KEY (camera_id_id) REFERENCES blog_camera(c_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_comments_review_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_comments
    ADD CONSTRAINT blog_comments_review_id_id_fkey FOREIGN KEY (review_id_id) REFERENCES blog_review(review_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_editor_p_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_editor
    ADD CONSTRAINT blog_editor_p_id_id_fkey FOREIGN KEY (p_id_id) REFERENCES blog_photo(photo_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_editor_user_id_id_daecb098_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_editor
    ADD CONSTRAINT blog_editor_user_id_id_daecb098_fk FOREIGN KEY (user_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_follows_followed_id_id_82dc6b67_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_follows
    ADD CONSTRAINT blog_follows_followed_id_id_82dc6b67_fk FOREIGN KEY (followed_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_follows_follower_id_id_a656b589_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_follows
    ADD CONSTRAINT blog_follows_follower_id_id_a656b589_fk FOREIGN KEY (follower_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_intrested_in_genre_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_intrested_in
    ADD CONSTRAINT blog_intrested_in_genre_id_id_fkey FOREIGN KEY (genre_id_id) REFERENCES blog_genre(gen_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_intrested_in_user_id_id_e9f1c745_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_intrested_in
    ADD CONSTRAINT blog_intrested_in_user_id_id_e9f1c745_fk FOREIGN KEY (user_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_participates_in_user_id_id_85275f4c_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_participates_in
    ADD CONSTRAINT blog_participates_in_user_id_id_85275f4c_fk FOREIGN KEY (user_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_participates_in_w_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_participates_in
    ADD CONSTRAINT blog_participates_in_w_id_id_fkey FOREIGN KEY (w_id_id) REFERENCES blog_workshop(w_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_photo_camera_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_photo
    ADD CONSTRAINT blog_photo_camera_id_id_fkey FOREIGN KEY (camera_id_id) REFERENCES blog_camera(c_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_photo_gen_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_photo
    ADD CONSTRAINT blog_photo_gen_id_id_fkey FOREIGN KEY (gen_id_id) REFERENCES blog_genre(gen_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_photo_user_id_id_a7d458b9_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_photo
    ADD CONSTRAINT blog_photo_user_id_id_a7d458b9_fk FOREIGN KEY (user_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_plan_features_plan_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_plan_features
    ADD CONSTRAINT blog_plan_features_plan_id_id_fkey FOREIGN KEY (plan_id_id) REFERENCES blog_plan(plan_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_review_about_art_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_review_about
    ADD CONSTRAINT blog_review_about_art_id_id_fkey FOREIGN KEY (art_id_id) REFERENCES blog_article(article_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_review_about_p_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_review_about
    ADD CONSTRAINT blog_review_about_p_id_id_fkey FOREIGN KEY (p_id_id) REFERENCES blog_photo(photo_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_review_about_rev_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_review_about
    ADD CONSTRAINT blog_review_about_rev_id_id_fkey FOREIGN KEY (rev_id_id) REFERENCES blog_review(review_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_review_user_id_id_df7a384e_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_review
    ADD CONSTRAINT blog_review_user_id_id_df7a384e_fk FOREIGN KEY (user_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_subscribes_to_plan_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_subscribes_to
    ADD CONSTRAINT blog_subscribes_to_plan_id_id_fkey FOREIGN KEY (plan_id_id) REFERENCES blog_plan(plan_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_subscribes_to_user_id_id_491e37d8_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_subscribes_to
    ADD CONSTRAINT blog_subscribes_to_user_id_id_491e37d8_fk FOREIGN KEY (user_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_video_tutorials_user_id_id_544e49c4_fk; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_video_tutorials
    ADD CONSTRAINT blog_video_tutorials_user_id_id_544e49c4_fk FOREIGN KEY (user_id_id) REFERENCES blog_userprofile(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_workshop_requirements_w_id_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY blog_workshop_requirements
    ADD CONSTRAINT blog_workshop_requirements_w_id_id_fkey FOREIGN KEY (w_id_id) REFERENCES blog_workshop(w_id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rishabh
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

