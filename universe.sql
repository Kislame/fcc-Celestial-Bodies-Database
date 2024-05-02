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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(100) NOT NULL,
    mass numeric NOT NULL,
    diameter integer,
    gravitational_pull integer,
    has_event_horizon boolean,
    is_rotating boolean,
    galaxy_id integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    size integer NOT NULL,
    age numeric NOT NULL,
    has_life boolean,
    is_spiral boolean,
    color text NOT NULL,
    distance_from_earth integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    diameter numeric,
    mass numeric NOT NULL,
    is_inhabited boolean,
    has_water boolean,
    surface_temperature integer NOT NULL,
    orbit_period integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    radius numeric,
    mass numeric NOT NULL,
    has_atmosphere boolean,
    has_water boolean,
    temperature integer NOT NULL,
    orbit_period integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type text,
    mass numeric NOT NULL,
    temperature integer NOT NULL,
    age integer,
    has_planetary_system boolean,
    is_main_sequence boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 4310000, 44, 9, true, true, 1);
INSERT INTO public.black_hole VALUES (2, 'M87*', 6500000000, 230, 10, true, true, 2);
INSERT INTO public.black_hole VALUES (3, 'Messier 87*', 6500000000, 230, 10, true, true, 2);
INSERT INTO public.black_hole VALUES (4, 'Cygnus X-1', 15, 10, 8, true, false, 3);
INSERT INTO public.black_hole VALUES (5, 'TON 618', 66000000000, 90, 10, true, true, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 13.6, true, true, 'Blue', 1000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000, 10.1, false, true, 'Red', 2000000);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 80000, 9.2, false, true, 'Yellow', 3000000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 60000, 8.7, false, true, 'Brown', 2500000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 90000, 9.5, true, true, 'Green', 1800000);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 70000, 8.9, true, true, 'Purple', 2200000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3475, 73000000000000000000000, false, false, 197, 27, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 22.2, 0.000000010659, false, false, -27, 0, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 12.4, 0.0000000024, false, false, -40, 1, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5262, 148190000000000000000000, false, false, 110, 7, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 4821, 107590000000000000000000, false, false, 134, 17, 5);
INSERT INTO public.moon VALUES (6, 'Io', 3643, 89300000000000000000000, false, false, 130, 2, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 3121, 48000000000000000000000, false, false, 102, 4, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 5152, 134550000000000000000000, false, false, 94, 16, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 504.2, 108000000000000000000, false, true, 75, 1, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 396, 37500000000000000000, false, false, 64, 1, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 2706.8, 21400000000000000000000, false, false, -235, -6, 8);
INSERT INTO public.moon VALUES (12, 'Larissa', 194, 3500000000000000000, false, false, 96, 1, 8);
INSERT INTO public.moon VALUES (13, 'Miranda', 235.8, 65900000000000000000, false, false, 60, 1, 8);
INSERT INTO public.moon VALUES (14, 'Charon', 1212, 1586000000000000000000, false, false, 53, 6, 9);
INSERT INTO public.moon VALUES (15, 'Nix', 23, 45000000000000000, false, false, -237, 25, 9);
INSERT INTO public.moon VALUES (16, 'Hydra', 30, 42000000000000000, false, false, -223, 38, 9);
INSERT INTO public.moon VALUES (17, 'Kerberos', 13, 16500000000000000, false, false, -231, 32, 9);
INSERT INTO public.moon VALUES (18, 'Styx', 10, 7500000000000000, false, false, -233, 20, 9);
INSERT INTO public.moon VALUES (19, 'Proteus', 436, 52300000000000000000, false, false, -195, 1, 7);
INSERT INTO public.moon VALUES (20, 'Nereid', 170, 31000000000000000000, false, false, -220, 360, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2439, 330000000000000000000000, false, false, 167, 88, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 6052, 4870000000000000000000000, true, false, 464, 225, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 6371, 5970000000000000000000000, true, true, 288, 365, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 3390, 642000000000000000000000, true, false, 210, 687, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 69911, 1898000000000000000000000000, true, false, 165, 4333, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 58232, 568000000000000000000000000, true, false, 134, 10759, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 25362, 86800000000000000000000000, true, false, 76, 30687, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 24622, 102000000000000000000000000, true, false, 72, 60190, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 12300, 36000000000000000000000, true, true, 262, 289, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 7000, 6000000000000000000000, true, true, 189, 130, 2);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 12800, 15000000000000000000000, true, true, 232, 37, 3);
INSERT INTO public.planet VALUES (12, 'Gliese 667Cc', 7800, 20000000000000000000000, true, true, 279, 28, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type', 1989000000000000000000000000000, 5778, 5, true, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'M-type', 244700000000000000000000000000, 3042, 5, true, false, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'G-type', 2240000000000000000000000000000, 5790, 6, true, true, 1);
INSERT INTO public.star VALUES (4, 'Barnard''s Star', 'M-type', 330000000000000000000000000000, 3134, 7, true, false, 2);
INSERT INTO public.star VALUES (5, 'Sirius', 'A-type', 2020000000000000000000000000000, 9940, 3, true, true, 2);
INSERT INTO public.star VALUES (6, 'Altair', 'A-type', 1800000000000000000000000000000, 7550, 1, true, true, 2);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

