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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 1);
INSERT INTO public.games VALUES (2, 643, 2);
INSERT INTO public.games VALUES (3, 411, 2);
INSERT INTO public.games VALUES (4, 436, 4);
INSERT INTO public.games VALUES (5, 122, 4);
INSERT INTO public.games VALUES (6, 223, 2);
INSERT INTO public.games VALUES (7, 901, 2);
INSERT INTO public.games VALUES (8, 691, 2);
INSERT INTO public.games VALUES (9, 501, 10);
INSERT INTO public.games VALUES (10, 512, 10);
INSERT INTO public.games VALUES (11, 849, 12);
INSERT INTO public.games VALUES (12, 44, 12);
INSERT INTO public.games VALUES (13, 965, 10);
INSERT INTO public.games VALUES (14, 500, 10);
INSERT INTO public.games VALUES (15, 869, 10);
INSERT INTO public.games VALUES (16, 454, 17);
INSERT INTO public.games VALUES (17, 807, 17);
INSERT INTO public.games VALUES (18, 766, 19);
INSERT INTO public.games VALUES (19, 93, 19);
INSERT INTO public.games VALUES (20, 318, 17);
INSERT INTO public.games VALUES (21, 391, 17);
INSERT INTO public.games VALUES (22, 351, 17);
INSERT INTO public.games VALUES (23, 590, 24);
INSERT INTO public.games VALUES (24, 584, 24);
INSERT INTO public.games VALUES (25, 830, 26);
INSERT INTO public.games VALUES (26, 603, 26);
INSERT INTO public.games VALUES (27, 11, 24);
INSERT INTO public.games VALUES (28, 988, 24);
INSERT INTO public.games VALUES (29, 866, 24);
INSERT INTO public.games VALUES (30, 825, 31);
INSERT INTO public.games VALUES (31, 685, 31);
INSERT INTO public.games VALUES (32, 859, 33);
INSERT INTO public.games VALUES (33, 97, 33);
INSERT INTO public.games VALUES (34, 546, 31);
INSERT INTO public.games VALUES (35, 468, 31);
INSERT INTO public.games VALUES (36, 677, 31);
INSERT INTO public.games VALUES (37, 982, 38);
INSERT INTO public.games VALUES (38, 602, 38);
INSERT INTO public.games VALUES (39, 113, 40);
INSERT INTO public.games VALUES (40, 139, 40);
INSERT INTO public.games VALUES (41, 98, 38);
INSERT INTO public.games VALUES (42, 203, 38);
INSERT INTO public.games VALUES (43, 119, 38);
INSERT INTO public.games VALUES (44, 922, 45);
INSERT INTO public.games VALUES (45, 403, 45);
INSERT INTO public.games VALUES (46, 907, 47);
INSERT INTO public.games VALUES (47, 662, 47);
INSERT INTO public.games VALUES (48, 831, 45);
INSERT INTO public.games VALUES (49, 199, 45);
INSERT INTO public.games VALUES (50, 960, 45);
INSERT INTO public.games VALUES (51, 993, 52);
INSERT INTO public.games VALUES (52, 960, 52);
INSERT INTO public.games VALUES (53, 207, 54);
INSERT INTO public.games VALUES (54, 17, 54);
INSERT INTO public.games VALUES (55, 145, 52);
INSERT INTO public.games VALUES (56, 74, 52);
INSERT INTO public.games VALUES (57, 917, 52);
INSERT INTO public.games VALUES (58, 576, 59);
INSERT INTO public.games VALUES (59, 489, 59);
INSERT INTO public.games VALUES (60, 818, 60);
INSERT INTO public.games VALUES (61, 238, 60);
INSERT INTO public.games VALUES (62, 248, 59);
INSERT INTO public.games VALUES (63, 280, 59);
INSERT INTO public.games VALUES (64, 179, 59);
INSERT INTO public.games VALUES (65, 194, 61);
INSERT INTO public.games VALUES (66, 551, 61);
INSERT INTO public.games VALUES (67, 976, 62);
INSERT INTO public.games VALUES (68, 372, 62);
INSERT INTO public.games VALUES (69, 782, 61);
INSERT INTO public.games VALUES (70, 481, 61);
INSERT INTO public.games VALUES (71, 130, 61);
INSERT INTO public.games VALUES (72, 727, 63);
INSERT INTO public.games VALUES (73, 935, 63);
INSERT INTO public.games VALUES (74, 565, 64);
INSERT INTO public.games VALUES (75, 340, 64);
INSERT INTO public.games VALUES (76, 528, 63);
INSERT INTO public.games VALUES (77, 591, 63);
INSERT INTO public.games VALUES (78, 556, 63);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'SS');
INSERT INTO public.users VALUES (2, 'user_1712430725605');
INSERT INTO public.users VALUES (4, 'user_1712430725604');
INSERT INTO public.users VALUES (9, 'ss');
INSERT INTO public.users VALUES (10, 'user_1712430832650');
INSERT INTO public.users VALUES (12, 'user_1712430832649');
INSERT INTO public.users VALUES (17, 'user_1712430876803');
INSERT INTO public.users VALUES (19, 'user_1712430876802');
INSERT INTO public.users VALUES (24, 'user_1712430946659');
INSERT INTO public.users VALUES (26, 'user_1712430946658');
INSERT INTO public.users VALUES (31, 'user_1712431317615');
INSERT INTO public.users VALUES (33, 'user_1712431317614');
INSERT INTO public.users VALUES (38, 'user_1712431503500');
INSERT INTO public.users VALUES (40, 'user_1712431503499');
INSERT INTO public.users VALUES (45, 'user_1712431508766');
INSERT INTO public.users VALUES (47, 'user_1712431508765');
INSERT INTO public.users VALUES (52, 'user_1712431626008');
INSERT INTO public.users VALUES (54, 'user_1712431626007');
INSERT INTO public.users VALUES (59, 'user_1712431692285');
INSERT INTO public.users VALUES (60, 'user_1712431692284');
INSERT INTO public.users VALUES (61, 'user_1712431872596');
INSERT INTO public.users VALUES (62, 'user_1712431872595');
INSERT INTO public.users VALUES (63, 'user_1712431883745');
INSERT INTO public.users VALUES (64, 'user_1712431883744');


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 78, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 64, true);


--
-- Name: games game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

