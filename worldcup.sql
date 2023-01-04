--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (175, 2018, 'Final', 237, 238, 2, 4);
INSERT INTO public.games VALUES (176, 2018, 'Third Place', 239, 240, 0, 2);
INSERT INTO public.games VALUES (177, 2018, 'Semi-Final', 238, 240, 1, 2);
INSERT INTO public.games VALUES (178, 2018, 'Semi-Final', 237, 239, 0, 1);
INSERT INTO public.games VALUES (179, 2018, 'Quarter-Final', 238, 241, 2, 3);
INSERT INTO public.games VALUES (180, 2018, 'Quarter-Final', 240, 242, 0, 2);
INSERT INTO public.games VALUES (181, 2018, 'Quarter-Final', 239, 243, 1, 2);
INSERT INTO public.games VALUES (182, 2018, 'Quarter-Final', 237, 244, 0, 2);
INSERT INTO public.games VALUES (183, 2018, 'Eighth-Final', 240, 245, 1, 2);
INSERT INTO public.games VALUES (184, 2018, 'Eighth-Final', 242, 246, 0, 1);
INSERT INTO public.games VALUES (185, 2018, 'Eighth-Final', 239, 247, 2, 3);
INSERT INTO public.games VALUES (186, 2018, 'Eighth-Final', 243, 248, 0, 2);
INSERT INTO public.games VALUES (187, 2018, 'Eighth-Final', 238, 249, 1, 2);
INSERT INTO public.games VALUES (188, 2018, 'Eighth-Final', 241, 250, 1, 2);
INSERT INTO public.games VALUES (189, 2018, 'Eighth-Final', 244, 251, 1, 2);
INSERT INTO public.games VALUES (190, 2018, 'Eighth-Final', 237, 252, 3, 4);
INSERT INTO public.games VALUES (191, 2014, 'Final', 253, 252, 0, 1);
INSERT INTO public.games VALUES (192, 2014, 'Third Place', 254, 243, 0, 3);
INSERT INTO public.games VALUES (193, 2014, 'Semi-Final', 252, 254, 0, 1);
INSERT INTO public.games VALUES (194, 2014, 'Semi-Final', 253, 243, 1, 7);
INSERT INTO public.games VALUES (195, 2014, 'Quarter-Final', 254, 255, 0, 1);
INSERT INTO public.games VALUES (196, 2014, 'Quarter-Final', 252, 239, 0, 1);
INSERT INTO public.games VALUES (197, 2014, 'Quarter-Final', 243, 245, 1, 2);
INSERT INTO public.games VALUES (198, 2014, 'Quarter-Final', 253, 237, 0, 1);
INSERT INTO public.games VALUES (199, 2014, 'Eighth-Final', 243, 256, 1, 2);
INSERT INTO public.games VALUES (200, 2014, 'Eighth-Final', 245, 244, 0, 2);
INSERT INTO public.games VALUES (201, 2014, 'Eighth-Final', 237, 257, 0, 2);
INSERT INTO public.games VALUES (202, 2014, 'Eighth-Final', 253, 258, 1, 2);
INSERT INTO public.games VALUES (203, 2014, 'Eighth-Final', 254, 248, 1, 2);
INSERT INTO public.games VALUES (204, 2014, 'Eighth-Final', 255, 259, 1, 2);
INSERT INTO public.games VALUES (205, 2014, 'Eighth-Final', 252, 246, 0, 1);
INSERT INTO public.games VALUES (206, 2014, 'Eighth-Final', 239, 260, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (237, 'France');
INSERT INTO public.teams VALUES (238, 'Croatia');
INSERT INTO public.teams VALUES (239, 'Belgium');
INSERT INTO public.teams VALUES (240, 'England');
INSERT INTO public.teams VALUES (241, 'Russia');
INSERT INTO public.teams VALUES (242, 'Sweden');
INSERT INTO public.teams VALUES (243, 'Brazil');
INSERT INTO public.teams VALUES (244, 'Uruguay');
INSERT INTO public.teams VALUES (245, 'Colombia');
INSERT INTO public.teams VALUES (246, 'Switzerland');
INSERT INTO public.teams VALUES (247, 'Japan');
INSERT INTO public.teams VALUES (248, 'Mexico');
INSERT INTO public.teams VALUES (249, 'Denmark');
INSERT INTO public.teams VALUES (250, 'Spain');
INSERT INTO public.teams VALUES (251, 'Portugal');
INSERT INTO public.teams VALUES (252, 'Argentina');
INSERT INTO public.teams VALUES (253, 'Germany');
INSERT INTO public.teams VALUES (254, 'Netherlands');
INSERT INTO public.teams VALUES (255, 'Costa Rica');
INSERT INTO public.teams VALUES (256, 'Chile');
INSERT INTO public.teams VALUES (257, 'Nigeria');
INSERT INTO public.teams VALUES (258, 'Algeria');
INSERT INTO public.teams VALUES (259, 'Greece');
INSERT INTO public.teams VALUES (260, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 206, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 260, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

