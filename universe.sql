--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    htotalplanets integer,
    totalblackholes integer,
    lifetime integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer,
    iscolonized boolean,
    lifetime integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moonid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moonid_seq OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moonid_seq OWNED BY public.moon.moon_id;


--
-- Name: othercelestialphenoms; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.othercelestialphenoms (
    othercelestialphenoms_id integer NOT NULL,
    name character varying(300) NOT NULL,
    descripcion character varying(1000)
);


ALTER TABLE public.othercelestialphenoms OWNER TO freecodecamp;

--
-- Name: othercelestialphenoms_id_othercelestialphenoms_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.othercelestialphenoms_id_othercelestialphenoms_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.othercelestialphenoms_id_othercelestialphenoms_seq OWNER TO freecodecamp;

--
-- Name: othercelestialphenoms_id_othercelestialphenoms_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.othercelestialphenoms_id_othercelestialphenoms_seq OWNED BY public.othercelestialphenoms.othercelestialphenoms_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    diametro double precision,
    iscolonized boolean,
    description text,
    habitants numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planetid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planetid_seq OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planetid_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    color character varying(25),
    lifetime integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starid_seq OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starid_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moonid_seq'::regclass);


--
-- Name: othercelestialphenoms othercelestialphenoms_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.othercelestialphenoms ALTER COLUMN othercelestialphenoms_id SET DEFAULT nextval('public.othercelestialphenoms_id_othercelestialphenoms_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planetid_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_starid_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2144, 240, 1000000);
INSERT INTO public.galaxy VALUES (2, 'Alfa', 2134, 20, 1000);
INSERT INTO public.galaxy VALUES (3, 'Beta', 20, 1233, NULL);
INSERT INTO public.galaxy VALUES (4, 'Gamma', 23240, 444441233, NULL);
INSERT INTO public.galaxy VALUES (5, 'Omega', 232, 441233, NULL);
INSERT INTO public.galaxy VALUES (8, 'x', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'x', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'x', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'x', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'x', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 2, false, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', 2, false, NULL);
INSERT INTO public.moon VALUES (3, 'Drellis', 2, false, NULL);
INSERT INTO public.moon VALUES (6, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (149, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (49, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (79, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (265, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (765, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (76, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (72, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (42, 'x', 3, NULL, NULL);
INSERT INTO public.moon VALUES (82, 'x', 3, NULL, NULL);


--
-- Data for Name: othercelestialphenoms; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.othercelestialphenoms VALUES (1, 'black hole', NULL);
INSERT INTO public.othercelestialphenoms VALUES (2, 'black hole', NULL);
INSERT INTO public.othercelestialphenoms VALUES (3, 'black hole', NULL);
INSERT INTO public.othercelestialphenoms VALUES (4, 'black hole', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 1, NULL, true, NULL, 70000000, 1);
INSERT INTO public.planet VALUES (2, 'Marte', 1, NULL, false, NULL, 70000000, 1);
INSERT INTO public.planet VALUES (3, 'Nirn', 4, NULL, false, NULL, 70, 1);
INSERT INTO public.planet VALUES (4, 'Planeta Vegetta', 2, NULL, false, NULL, 70321, 1);
INSERT INTO public.planet VALUES (6, 'x', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'x', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, 'x', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (9, 'x', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (19, 'x', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, 'x', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'x', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (162, 'x', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (16, 'x', 3, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (26, 'x', 3, NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 4, 'yellow', 123333);
INSERT INTO public.star VALUES (2, 'Solaris', 4, 'dark yellow', 123333);
INSERT INTO public.star VALUES (3, 'Holox', 4, 'red', 12355);
INSERT INTO public.star VALUES (4, 'Helix', 4, 'orange', 12355);
INSERT INTO public.star VALUES (6, 'x', 4, NULL, NULL);
INSERT INTO public.star VALUES (7, 'x', 4, NULL, NULL);
INSERT INTO public.star VALUES (8, 'x', 4, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_moonid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moonid_seq', 1, false);


--
-- Name: othercelestialphenoms_id_othercelestialphenoms_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.othercelestialphenoms_id_othercelestialphenoms_seq', 1, false);


--
-- Name: planet_planetid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planetid_seq', 1, false);


--
-- Name: star_starid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: othercelestialphenoms othercelestialphenoms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.othercelestialphenoms
    ADD CONSTRAINT othercelestialphenoms_pkey PRIMARY KEY (othercelestialphenoms_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: othercelestialphenoms unique_; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.othercelestialphenoms
    ADD CONSTRAINT unique_ UNIQUE (othercelestialphenoms_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (galaxy_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (moon_id);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (planet_id);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxyid_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxyid_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet starconstraint; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT starconstraint FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

