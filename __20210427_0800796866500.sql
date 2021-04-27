--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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

--
-- Name: posts(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.posts(_url text) RETURNS text
    LANGUAGE sql IMMUTABLE PARALLEL SAFE
    AS $$
        SELECT string_agg(token, '' ORDER BY alias DESC)
        FROM ts_debug(_url) q
        WHERE q.alias in ('protocol', 'host');
    $$;


ALTER FUNCTION public.posts(_url text) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    article_url text,
    article_title text,
    article_summary text,
    article_host text,
    article_favicon text,
    article_date date
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sites (
    id bigint NOT NULL,
    site_url text,
    site_title text,
    site_favicon text
);


ALTER TABLE public.sites OWNER TO postgres;

--
-- Name: sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sites_id_seq OWNER TO postgres;

--
-- Name: sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sites_id_seq OWNED BY public.sites.id;


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites ALTER COLUMN id SET DEFAULT nextval('public.sites_id_seq'::regclass);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, article_url, article_title, article_summary, article_host, article_favicon, article_date) FROM stdin;
62	https://resevoir.net//about	https://resevoir.net//about	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-12-17
63	https://resevoir.net//annotation	https://resevoir.net//annotation	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-15
1147	https://tendigits.space/notes/ae-modular/	AE Modular	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-05-31
1148	https://tendigits.space/notes/site-11ty-setup/	This website's setup with 11ty	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-05-30
1149	https://tendigits.space/notes/hello/	Setting up this website	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-05-20
773	http://q.pfiffer.org/posts/2014-09-01-Wander.html	 Wander	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-09-01
42	https://writing.natwelch.com/post/714	2020: Year in Review	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2021-01-02
43	https://writing.natwelch.com/post/713	Bugs Fixed on Vacation	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2020-11-05
64	https://resevoir.net//auto-rickshaw	https://resevoir.net//auto-rickshaw	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-08-25
774	http://q.pfiffer.org/posts/2014-08-29-Market_Forces.html	 Market Forces	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-08-29
17	https://notes.neeasade.net/systemd-user-services.html	systemd user services	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2021-01-02
18	https://notes.neeasade.net/search-term-playlists.html	search term playlists	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-12-13
19	https://notes.neeasade.net/color-spaces.html	reasoning about colors	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-11-24
20	https://notes.neeasade.net/my-shell-prompt.html	my shell prompt	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-11-09
65	https://resevoir.net//bicycles	https://resevoir.net//bicycles	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-10-09
21	https://notes.neeasade.net/Automata-tiling-backgrounds-2.html	Automata tiling backgrounds 2	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-08-14
44	https://writing.natwelch.com/post/711	Tales from Isolation: Coding	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2020-04-05
45	https://writing.natwelch.com/post/710	2019: Year in Review	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2020-01-02
46	https://writing.natwelch.com/post/703	Nat Welch Manifesto	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-12-01
47	https://writing.natwelch.com/post/709	Inspiration	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-11-10
48	https://writing.natwelch.com/post/708	Exercise of Grandmasters	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-10-12
49	https://writing.natwelch.com/post/707	reportd: Self hosted CSP reporting	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-10-05
51	https://writing.natwelch.com/post/705	Hack a satellite	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-09-22
66	https://resevoir.net//biking	https://resevoir.net//biking	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-19
67	https://resevoir.net//bricolage	https://resevoir.net//bricolage	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-26
68	https://resevoir.net//chasmic	https://resevoir.net//chasmic	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-22
70	https://resevoir.net//community-network-project	https://resevoir.net//community-network-project	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-07-23
315	https://longest.voyage/log/apolitical/	Apolitical	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-10-09
317	https://longest.voyage/log/waiting/	Waiting	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-07-24
775	http://q.pfiffer.org/posts/2014-08-29-Panic_Measures.html	 Panic Measures	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-08-29
749	http://q.pfiffer.org/posts/2019-08-29-Camping_plus_others_megamix.html	 Camping + Others Megamix	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2019-08-29
750	http://q.pfiffer.org/posts/2019-05-12-Emerald_Outback_2019.html	 Oregon Emerald Outback 2019	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2019-05-12
32	https://aless.co/2020/	2020	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2020-12-11
33	https://aless.co/typed-web-workers/	Typed Web Workers	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2020-04-30
34	https://aless.co/gatsby-wasm-plugin/	Building a Gatsby Plugin with Wasm	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2020-01-06
35	https://aless.co/2019/	2019	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-12-01
36	https://aless.co/resume-as-code/	Resume as Code	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-10-08
37	https://aless.co/how-to-build-a-keyboard/	How to Build a Keyboard, Pt.1	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-05-27
335	https://kokorobot.ca/site/conversion.html	Conversion charts	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2020-12-14
334	https://kokorobot.ca/site/rug.html	Rope mats	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2020-12-07
751	http://q.pfiffer.org/posts/2019-04-07-Moab_2019.html	 Moab 2019	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2019-04-07
788	http://q.pfiffer.org/posts/2013-10-23-Hong_Kong_Day_1.html	 Hong Kong Day 1	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-10-23
789	http://q.pfiffer.org/posts/2013-10-21-Hong_Kong_Day_0.html	 Hong Kong Day 0	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-10-21
768	http://q.pfiffer.org/posts/2014-09-17-Last_Day.html	 Last Day	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-09-17
769	http://q.pfiffer.org/posts/2014-09-10-Seven_Star_Mountain.html	 Seven Star Mountain	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-09-10
316	https://longest.voyage/log/snacks-and-such/	Snacks and the Weather	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-09-14
770	http://q.pfiffer.org/posts/2014-09-06-Street_Fightin.html	 Street Fightin	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-09-06
771	http://q.pfiffer.org/posts/2014-09-05-Bikes.html	 Bikes	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-09-05
772	http://q.pfiffer.org/posts/2014-09-03-Blood.html	 Blood	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-09-03
746	http://q.pfiffer.org/posts/2020-01-28-Local_Bad_Times_Ideas.html	 Local Bad Times Ideas	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2020-01-28
747	http://q.pfiffer.org/posts/2020-01-03-2019_in_review.html	 2019 In Review	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2020-01-03
748	http://q.pfiffer.org/posts/2019-12-03-Python_Threading_Locks.html	 Python 2 Threading Primitives, Locks and Events	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2019-12-03
345	https://ameyama.com/blog/public-domain-tapes	(雨山) Public Domain Tapes	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-02
346	https://ameyama.com/blog/public-domain-resources	(雨山) Public Domain Resources	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-03-29
344	https://ameyama.com/blog/bookshelf	(雨山) Bookshelf	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-16
812	https://materialfuture.net/posts/videos/experimental-videos-mandelbrot/	Experimental Videos - Mandelbrot Set 4K	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-16
820	https://materialfuture.net/posts/games/new-games-category/	New Games Category	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-09-10
821	https://materialfuture.net/posts/blog/updates/	September 2020 Update	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-09-09
822	https://materialfuture.net/posts/blog/ideal-phone/	My Version Of An Ideal Phone	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-08-23
874	https://travisshears.com/snippets/automatic_tmux_session_names/	Automatic tmux session names	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-13
875	https://travisshears.com/blog/weekend-in-frankenjura/	weekend in frankenjura	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-05
318	https://longest.voyage/log/growth/	Growth	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-05-20
319	https://longest.voyage/log/life-in-the-shoebox/	Life in the Shoebox	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-04-26
320	https://longest.voyage/log/the-burger-search/	The Burger Search	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-04-11
321	https://longest.voyage/log/one-at-a-time/	One at a Time	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-03-14
322	https://longest.voyage/log/first-month/	First Month	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-02-08
323	https://longest.voyage/log/lag/	Lag	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-01-20
324	https://longest.voyage/log/arrival/	Arrival	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-01-09
267	https://xvw.github.io/longs/introduction_algebraic_effects.html	Tests unitaires de fonctions impures	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2020-03-10
325	https://longest.voyage/log/replay/	Replay	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2019-12-02
117	https://szymonkaliski.com/newsletter/2021-03-29-q1-2021/	Q1 2021	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2021-03-29
118	https://szymonkaliski.com/projects/haze/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2021-02-17
119	https://szymonkaliski.com/newsletter/2020-12-28-end-of-2020/	End of 2020	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-12-28
120	https://szymonkaliski.com/projects/fabfungus/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-11-12
121	https://szymonkaliski.com/projects/liveboard/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-07-23
356	https://phse.net/tetris-analogy/	Why is Tetris such a good analogy?	\N	https://phse.net	https://phse.net/favicon-32.png	2019-10-25
357	https://phse.net/a-new-minimalism/	A New Minimalism	\N	https://phse.net	https://phse.net/favicon-32.png	2019-09-28
358	https://phse.net/august-update/	August Update	\N	https://phse.net	https://phse.net/favicon-32.png	2019-08-20
359	https://phse.net/naive-sudoku/	Naive Sudoku	\N	https://phse.net	https://phse.net/favicon-32.png	2019-07-27
360	https://phse.net/notes-template/	How I organize project notes	\N	https://phse.net	https://phse.net/favicon-32.png	2019-06-08
375	https://massagetxt.rosano.ca	MassageTXT	\N	https://massagetxt.rosano.ca	https://massagetxt.rosano.ca/application_icon_x512.png	2019-11-26
361	https://phse.net/choose-people/	Choose people, not projects	\N	https://phse.net	https://phse.net/favicon-32.png	2019-06-05
362	https://phse.net/curiosity/	Curiosity & Focus	\N	https://phse.net	https://phse.net/favicon-32.png	2019-03-30
179	gemini://xj-ix.luxe/posts/2020-12-22-i-made-it.en.gmi	i made it	\N	gemini://xj-ix.luxe	/favicon.ico	2020-12-22
180	gemini://xj-ix.luxe/posts/2020-11-17-nyu-tokyo-roadmap.gmi	nyu.tokyo (ᴎoT THɘ wiᴙɘb) roadmap	\N	gemini://xj-ix.luxe	/favicon.ico	2020-11-17
181	gemini://xj-ix.luxe/posts/2020-11-17-go-build-your-own-eco-village.gmi	re: a miscommunication	\N	gemini://xj-ix.luxe	/favicon.ico	2020-11-17
182	gemini://xj-ix.luxe/posts/2020-10-07-entering-the-dark-forest.gmi	entering the dark forest	\N	gemini://xj-ix.luxe	/favicon.ico	2020-10-07
183	gemini://xj-ix.luxe/posts/2020-09-12-grid-grid.gmi	grid-grid, intimations on building decentralized computer systems	\N	gemini://xj-ix.luxe	/favicon.ico	2020-09-12
217	https://oddworlds.org/gallery/gallery-2021.html	2021 Photo Gallery	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-22
218	https://oddworlds.org/cooking/moka.html	Coffee with a "moka" machine	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-21
219	https://oddworlds.org/cooking/pita.html	Pita	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-15
220	https://oddworlds.org/wiki/radio.html	Radio	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-09
221	https://oddworlds.org/wiki/entrepreneurship.html	Entrepreneurship	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-10
154	https://szymonkaliski.com/projects/parametrium/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-03-31
155	https://szymonkaliski.com/writing/2017-02-28-building-wallgen/	Building Wallgen	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-02-28
156	https://szymonkaliski.com/projects/wallgen/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-02-25
157	https://szymonkaliski.com/writing/2017-01-31-building-sdf-ui/	Building SDF-UI	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-01-31
184	gemini://xj-ix.luxe/posts/2020-08-20-inverting-the-technolopy.gmi	inverting the technopoly	\N	gemini://xj-ix.luxe	/favicon.ico	2020-08-20
185	gemini://xj-ix.luxe/posts/2020-08-16-hyperlocal-concept-quandries.gmi	hyperlocal concept, quandaries	\N	gemini://xj-ix.luxe	/favicon.ico	2020-08-16
363	https://phse.net/commonplace/	A Commonplace Repository	\N	https://phse.net	https://phse.net/favicon-32.png	2019-03-23
364	https://phse.net/recently/	Recently	\N	https://phse.net	https://phse.net/favicon-32.png	2019-03-21
222	https://oddworlds.org/wiki/ethics.html	Ethics	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-10
223	https://oddworlds.org/cooking/0-fermenting.html	Meta: Fermenting	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-09
365	https://phse.net/tools/	A List of the Tools I'm Using	\N	https://phse.net	https://phse.net/favicon-32.png	2019-02-12
366	https://phse.net/sketchbook/	Always Carry a Sketchbook	\N	https://phse.net	https://phse.net/favicon-32.png	2019-02-09
367	https://phse.net/2018/	Yearly Review 2018	\N	https://phse.net	https://phse.net/favicon-32.png	2019-01-01
368	https://phse.net/minimalism/	On Minimalism	\N	https://phse.net	https://phse.net/favicon-32.png	2018-12-31
353	https://phse.net/managing-specificity-with-css-variables/	Managing Specificity with CSS Variables	\N	https://phse.net	https://phse.net/favicon-32.png	2020-02-29
354	https://phse.net/three-layer-goal-setting/	Three Layer Goal-Setting	\N	https://phse.net	https://phse.net/favicon-32.png	2020-01-10
386	https://teknari.com/blogpost/1595699426843/St+Petersburg	St Petersburg	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
390	https://teknari.com/blogpost/1595684574574/2015+December+Journal+	2015 December Journal 	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
406	https://teknari.com/blogpost/1594235757539/2014+Journal	2014 Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-08
403	https://teknari.com/blogpost/1594318116313/2017+Journal	2017 Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-09
355	https://phse.net/2019/	Yearly Review 2019	\N	https://phse.net	https://phse.net/favicon-32.png	2019-12-30
404	https://teknari.com/blogpost/1594317403488/2016+Journal	2016 Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-09
405	https://teknari.com/blogpost/1594314179451/2018+Journal	2018 Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-09
752	http://q.pfiffer.org/posts/2019-03-26-SE_Asia_Retrospect_2.html	 SE Asia Dubai, Nepal	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2019-03-26
753	http://q.pfiffer.org/posts/2019-03-25-SE_Asia_Retrospect.html	 SE Asia Guangzhou and Pakistan	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2019-03-25
754	http://q.pfiffer.org/posts/2019-03-24-2018_in_review.html	 2018 In Review	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2019-03-24
755	http://q.pfiffer.org/posts/2018-08-15-Outback_2018.html	 Oregon Outback 2018	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2018-08-15
237	https://chad.is/dick-jokes/	Dick jokes	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2021-04-17
238	https://chad.is/endless-forms-most-beautiful/	Endless forms most beautiful	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2021-01-23
239	https://chad.is/the-work-of-the-listener/	The work of the listener	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2020-06-06
756	http://q.pfiffer.org/posts/2018-03-28-Track_goals_2018.html	 Cycling Goals 2018	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2018-03-28
240	https://chad.is/self-as-process/	Self as Process	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-11-06
241	https://chad.is/getting-started-complexity-science/	Getting started with complexity science	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-11-02
1797	https://wiki.xxiivv.com/site/notebook.html	Dilitriel	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1818	https://wiki.xxiivv.com/site/canada.html	Longueuil	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-08
1813	https://wiki.xxiivv.com/site/hypervoid.html	Noirescent	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1847	https://wiki.xxiivv.com/site/osaka.html	Lanterns	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1848	https://wiki.xxiivv.com/site/osaka.html	Temple	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
227	https://oddworlds.org/gallery/2020-11.html	2020-11	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-08-22
228	https://oddworlds.org/thoughts/memoria.html	Memoria	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-08-16
229	https://oddworlds.org/gallery/2020-08.html	2020-08	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-07-22
230	https://oddworlds.org/gallery/2020-09.html	2020-09	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-07-22
231	https://oddworlds.org/gallery/2020-10.html	2020-10	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-07-22
272	https://now.lectronice.com/then/2021-04w15/	W15 :: Sleeping	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-04-11
273	https://now.lectronice.com/then/2021-04w14/	W14 :: Fixing old things	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-04-04
274	https://now.lectronice.com/then/2021-03w13/	W13 :: Bulking	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-28
275	https://now.lectronice.com/then/2021-03w12/	W12 :: Darkness my old friend	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-21
276	https://now.lectronice.com/then/2021-03w11/	W11 :: Tokiponing	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-14
242	https://chad.is/technologies-of-the-self/	Technologies of the Self: A Short Introduction	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-23
260	https://bismuth.garden/2020/11/ruby-squares	Ruby squares	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-11-11
261	https://bismuth.garden/2020/09/beyond-sustainable	Links: Beyond sustainable	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-21
262	https://bismuth.garden/2020/09/oddments-2	Oddments II	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-20
263	https://bismuth.garden/2020/09/oddments	Oddments	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-14
264	https://bismuth.garden/2020/09/did-you-find-it-i-did	‘Did you find it?’ ‘I did’	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-11
265	https://bismuth.garden/2020/09/sowing-seeds	Sowing seeds	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-10
370	https://emojilog.rosano.ca	Emoji Log	\N	https://emojilog.rosano.ca	https://emojilog.rosano.ca/application_icon_x512.png	2021-03-25
328	https://kokorobot.ca/site/sketchbook.html	Sketchbook	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-04-19
329	https://kokorobot.ca/site/pandoc.html	Pandoc notes	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-04-01
330	https://kokorobot.ca/site/wunderrabbits.html	Wunderland Rabbits	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-03-18
331	https://kokorobot.ca/site/busydoingnothing.html	Busy Doing Nothing e-book release	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-02-19
332	https://kokorobot.ca/site/illustration.html	Uxn mascot	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-02-01
333	https://kokorobot.ca/site/2020dec31.html	2020 yearend review	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-01-11
373	https://kommit.rosano.ca	Kommit	\N	https://kommit.rosano.ca	https://kommit.rosano.ca/application_icon_x512.png	2020-06-24
376	https://launchlet.dev	Launchlet	\N	https://launchlet.dev	https://launchlet.dev/application_icon_x512.png	2019-11-19
347	https://phse.net/no-off-switch/	No Off Switch	\N	https://phse.net	https://phse.net/favicon-32.png	2021-02-26
380	https://rosano.tumblr.com/tagged/Opus-7/chrono	Belonging	\N	https://rosano.tumblr.com	https://64.media.tumblr.com/avatar_3f94d37e1578_128.pnj	2016-10-06
302	https://now.lectronice.com/then/2020-09w38/	2020W38 :: Toki Pona and slow burn out	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-13
349	https://phse.net/the-perfect-todo-list/	The Perfect To-Do List	\N	https://phse.net	https://phse.net/favicon-32.png	2021-01-31
350	https://phse.net/utility-classes-i-have-known-and-loved/	Utility Classes I Have Known and Loved	\N	https://phse.net	https://phse.net/favicon-32.png	2021-01-16
369	https://ring.0data.app	Small Web App Ring	\N	https://ring.0data.app	https://ring.0data.app/favicon.ico	2021-03-29
351	https://phse.net/2020/	Yearly Review 2020	\N	https://phse.net	https://phse.net/favicon-32.png	2021-01-03
352	https://phse.net/respecting-motion-preferences/	Respecting Motion Preferences	\N	https://phse.net	https://phse.net/favicon-32.png	2020-08-15
310	https://longest.voyage/log/writing-notes/	Writing Notes	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-02-20
311	https://longest.voyage/log/nice-and-soft/	Nice And Soft	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-02-20
312	https://longest.voyage/log/2021-01/	January Rambling	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-01-17
313	https://longest.voyage/log/autumn-abroad/	Autumn Abroad	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-11-15
314	https://longest.voyage/log/a-new-anxiety/	A New Anxiety	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-11-08
384	https://teknari.com/blogpost/1595783382418/Books	Books	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-26
407	https://teknari.com/blogpost/1594234205140/2013+Journal	2013 Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-08
337	https://ameyama.com/blog/2020-the-year-in-review	(雨山) 2020: The Year in Review	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-12-30
338	https://ameyama.com/blog/sleep-with-me-a-testimonial	(雨山) Sleep With Me: A Testimonial	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-10-07
339	https://ameyama.com/blog/vercel	(雨山) Vercel	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-09-28
340	https://ameyama.com/blog/focus-on-the-inputs	(雨山) Focus on the Inputs	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-07-10
341	https://ameyama.com/blog/reply-none	(雨山) Reply None	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-05-30
342	https://ameyama.com/blog/grief	(雨山) Grief	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-28
343	https://ameyama.com/blog/passgen	(雨山) Passgen	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-27
374	/en/aural	Aural	\N	\N	\N	2019-12-17
378	/en/sonogrid	sonogrid	\N	\N	\N	2018-09-06
381	/en/ticker	Ticker	\N	\N	\N	2015-02-25
382	/en/quick-record	Quick Record	\N	\N	\N	2015-01-16
383	/en/audioscrub	AudioScrub	\N	\N	\N	2014-08-08
387	https://teknari.com/blogpost/1595697208582/Dreams+of+Itself	Dreams of Itself	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
388	https://teknari.com/blogpost/1595696509825/Eraser	Eraser	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
389	https://teknari.com/blogpost/1595694736717/Chickenfruit	Chickenfruit	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
391	https://teknari.com/blogpost/1595683646064/2015+November+Journal+	2015 November Journal 	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
392	https://teknari.com/blogpost/1595683324704/2015+October+Journal+	2015 October Journal 	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
377	https://idiomatic.rosano.ca	Idiomatic	\N	https://idiomatic.rosano.ca	https://idiomatic.rosano.ca/application_icon_x512.png	2019-01-24
1840	https://wiki.xxiivv.com/site/yokohama.html	Dragon	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-02
215	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
216	http://nonmateria.com/posts/2020_04_10__la_cauzione.html	la cauzione	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-04-10
203	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	infected clock III	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-11-16
213	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
15	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
1	http://nonmateria.com/posts/2021_03_19__la_retta.html	la retta	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-19
201	http://nonmateria.com/posts/2021_03_19__la_retta.html	la retta	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-19
646	https://icyphox.sh/blog/kiss-zen	The Zen of KISS Linux	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-04-03
647	https://icyphox.sh/blog/mael	Introducing mael	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-03-29
649	https://icyphox.sh/blog/nullcon-2020	Nullcon 2020	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-03-09
650	https://icyphox.sh/blog/prosody	Setting up Prosody for XMPP	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-02-18
651	https://icyphox.sh/blog/2020-01-18	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-18
652	https://icyphox.sh/blog/mnml-browsing	Vimb&#58; my Firefox replacement	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-16
653	https://icyphox.sh/blog/five-days-tty	Five days in a TTY	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-13
654	https://icyphox.sh/blog/2019-in-review	2019 in review	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-02
655	https://icyphox.sh/blog/ru-vs-gb	Disinfo war&#58; RU vs GB	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-12-12
656	https://icyphox.sh/blog/ig-opsec	Instagram OPSEC	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-12-02
657	https://icyphox.sh/blog/save-org	Save .ORG!	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-11-23
372	https://0data.app	Zero Data App	\N	https://0data.app	https://0data.app/favicon.ico	2020-12-08
625	https://icyphox.sh/blog/free-sw-censor	Free software should not censor	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2021-04-07
626	https://icyphox.sh/blog/nvim-lua	Configuring Neovim using Lua	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2021-02-07
623	https://sixey.es/imagery/mspaint/	+ images in mspaint	\N	https://sixey.es	https://sixey.es/favicon.ico	2019-09-10
624	https://sixey.es/imagery/arthur/	arthur_resource	\N	https://sixey.es	https://sixey.es/favicon.ico	2019-09-07
615	https://gueorgui.net/blog/2020/hello-again-world/	Hello again, World!	\N	https://gueorgui.net	https://gueorgui.net/assets/images/favicon.png	2020-02-01
757	http://q.pfiffer.org/posts/2018-01-05-2017_in_review.html	 2017 In Review	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2018-01-05
758	http://q.pfiffer.org/posts/2017-12-05-Augment_vs_Rewrite.html	 Augment vs. Rewrite	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2017-12-05
760	http://q.pfiffer.org/posts/2017-09-30-Bug_Story_1.html	 Lets Talk About a Bug	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2017-09-30
1855	https://wiki.xxiivv.com/site/unreleased.html	Neonev Raft	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-12-08
1882	https://wiki.xxiivv.com/site/america.html	Travel to New York	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1856	https://wiki.xxiivv.com/site/neauismetica.html	The Library Of Sand	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-08-28
1830	https://wiki.xxiivv.com/site/wallpapers.html	Devilsse	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1870	https://wiki.xxiivv.com/site/neauismetica.html	Our forgotten Alphabet	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-08-28
660	https://icyphox.sh/blog/intel-conundrum	The intelligence conundrum	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-28
661	https://icyphox.sh/blog/hacky-scripts	Hacky scripts	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-24
662	https://icyphox.sh/blog/2019-10-16	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-16
664	https://icyphox.sh/blog/digital-minimalism	Thoughts on digital minimalism	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-05
665	https://icyphox.sh/blog/2019-09-27	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-09-27
666	https://icyphox.sh/blog/2019-09-17	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-09-17
667	https://icyphox.sh/blog/disinfo	Disinformation demystified	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-09-10
627	https://icyphox.sh/blog/signal	We can do better than Signal	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2021-01-17
628	https://icyphox.sh/blog/whatsapp	What's next after WhatsApp?	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2021-01-08
629	https://icyphox.sh/blog/2020-in-review	2020 in review	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-12-24
630	https://icyphox.sh/blog/music-streaming	My music streaming setup	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-12-13
631	https://icyphox.sh/blog/workman	The Workman keyboard layout	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-10-24
632	https://icyphox.sh/blog/r2wars-2020	My submissions for r2wars 2020	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-09-13
1808	https://wiki.xxiivv.com/site/personal.html	District 9 Costume II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
634	https://icyphox.sh/blog/ducky-one-2	The Ducky One 2 SF	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-08-22
635	https://icyphox.sh/blog/twitter	Some thoughts on Twitter	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-08-03
636	https://icyphox.sh/blog/2020-07-20	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-07-20
202	http://nonmateria.com/posts/2021_03_15__url_changed.html	url changed	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-15
3	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	infected clock III	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-11-16
204	http://nonmateria.com/posts/2020_10_30__pages_added.html	pages added	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-30
205	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	infected clock II	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-27
206	http://nonmateria.com/posts/2020_07_12__infected_clock.html	infected clock	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-12
207	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
673	https://royniang.com/fastmail_and_9front.html	Fastmail and 9front	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2021-01-15
674	https://royniang.com/scrawl_01y06.html	Scrawl 01Y06	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-12-08
675	https://royniang.com/scrawl_01y02.html	Scrawl 01Y02	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-12-04
684	https://royniang.com/miminaga.html	New Qt home	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-10
677	https://royniang.com/xok9.html	XOK9 Laptop	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2021-02-11
761	http://q.pfiffer.org/posts/2016-12-31-2016_in_review.html	 2016 In Review	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2016-12-31
762	http://q.pfiffer.org/posts/2016-04-25-Camping_checklist.html	 Camping Checklist	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2016-04-25
763	http://q.pfiffer.org/posts/2015-12-30-2015_in_review.html	 2015 In Review	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2015-12-30
668	https://icyphox.sh/blog/mailserver	Setting up my personal mailserver	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-08-15
669	https://icyphox.sh/blog/fb50	Picking the FB50 smart lock (CVE-2019-13143)	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-08-05
4	http://nonmateria.com/posts/2020_10_30__pages_added.html	pages added	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-30
764	http://q.pfiffer.org/posts/2015-07-18-Simple_image_and_audio.html	 Simple image and audio wth FFMPEG	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2015-07-18
765	http://q.pfiffer.org/posts/2015-06-04-256_Colors_weechat.html	 256 Colors in weechat-curses	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2015-06-04
766	http://q.pfiffer.org/posts/2015-01-01-2014_in_review.html	 2014 In Review	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2015-01-01
767	http://q.pfiffer.org/posts/2014-09-28-graphs_pt1.html	 Fun with Graphs part 1 Getting Started	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-09-28
658	https://icyphox.sh/blog/2019-11-16	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-11-16
659	https://icyphox.sh/blog/irc-for-dms	IRC for DMs	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-11-03
637	https://icyphox.sh/blog/flask-jwt-login	Flask-JWT-Extended × Flask-Login	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-06-24
638	https://icyphox.sh/blog/dont-news	You don't need news	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-06-21
639	https://icyphox.sh/blog/pi	Migrating to the RPi	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-06-04
640	https://icyphox.sh/blog/site-changes	Site changes	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-27
1835	https://wiki.xxiivv.com/site/tokyo.html	Wishes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
734	https://simone.computer/#/blog	The Mascot	\N	https://simone.computer	https://simone.computer/favicon-32x32.png	2021-01-29
735	https://simply.personal.jenett.org/in-the-mundane/	in the mundane	\N	https://simply.personal.jenett.org	https://simply.personal.jenett.org/wp-content/uploads/2020/10/cropped-j0920-f-copy-32x32.png	2021-03-13
776	http://q.pfiffer.org/posts/2014-08-26-Escape_Sling.html	 Escape Sling	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-08-26
777	http://q.pfiffer.org/posts/2014-02-10-Erlang_port_drivers.html	 Erlang port driver pitfalls	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-02-10
778	http://q.pfiffer.org/posts/2014-01-01-2013_in_review.html	 2013 In Review	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2014-01-01
779	http://q.pfiffer.org/posts/2013-12-16-DNSMasq_setup.html	 Sane dnsmasq setup	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-12-16
781	http://q.pfiffer.org/posts/2013-11-16-Listserve_Postmortem.html	 Listserve Post-mortem	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-11-16
782	http://q.pfiffer.org/posts/2013-11-06-2013_kvm_coreos.html	 KVM, CoreOS and LVM	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-11-06
783	http://q.pfiffer.org/posts/2013-10-28-Hong_Kong_Day_6.html	 Hong Kong Day 6	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-10-28
784	http://q.pfiffer.org/posts/2013-10-27-Hong_Kong_Day_5.html	 Hong Kong Day 5	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-10-27
785	http://q.pfiffer.org/posts/2013-10-26-Hong_Kong_Day_4.html	 Hong Kong Day 4	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-10-26
786	http://q.pfiffer.org/posts/2013-10-25-Hong_Kong_Day_3.html	 Hong Kong Day 3	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-10-25
787	http://q.pfiffer.org/posts/2013-10-24-Hong_Kong_Day_2.html	 Hong Kong Day 2	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-10-24
1843	https://wiki.xxiivv.com/site/rekka.html	Rekka in Osaka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1895	https://wiki.xxiivv.com/site/rekka.html	New Challenger	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1889	https://wiki.xxiivv.com/site/lietal.html	Composing Words	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1890	https://wiki.xxiivv.com/site/downtemperature.html	Downtemperature Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1887	https://wiki.xxiivv.com/site/notebook.html	Best Rave Evar	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1886	https://wiki.xxiivv.com/site/artwork.html	Time Stands Still	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
791	https://www.edwinwenink.xyz/posts/54-a_plain_text_writing_convention/	Two perspectives on a plain-text writing convention	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2021-03-12
792	https://www.edwinwenink.xyz/posts/53-update_kobo_annotation/	Extracting Kobo EPUB Annotations	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2021-01-08
793	https://www.edwinwenink.xyz/posts/52-bayesian_terminology/	On Bayesian likelihood	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-09-01
794	https://www.edwinwenink.xyz/posts/51-python_secondary_sorting/	Secondary sorting in Python	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-07-29
1893	https://wiki.xxiivv.com/site/old_cities.html	01	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-14
1422	https://wiki.xxiivv.com/site/left.html	Left Screencapture	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1186	https://wiki.xxiivv.com/site/shimoda.html	Robusta Mit Pino	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1187	https://wiki.xxiivv.com/site/shimoda.html	下田温泉富士屋ホテル	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
801	https://materialfuture.net/posts/blog/2021-4-14-odysee-lbry/	I've Created A Odysee Channel	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-04-14
802	https://materialfuture.net/posts/blog/2021-3-02-general-updates/	General Updates - March 2nd 2021	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-03-02
803	https://materialfuture.net/posts/servers/centos-rehl-talk/	CentOS - RHEL Talk	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-02-04
804	https://materialfuture.net/posts/blog/music-update/	Update: Music 2021	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-01-26
1188	https://wiki.xxiivv.com/site/shimoda.html	Shimoda Waterway	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1189	https://wiki.xxiivv.com/site/shimoda.html	Pino in Shimoda	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
840	https://travisshears.com/snippets/org_roam_capture_templates/	Org-Roam capture templates	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-04-06
841	https://travisshears.com/blog/delete_all_my_friends/	delete all my duolingo friends	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-03-22
842	https://travisshears.com/snippets/restart-nginx/	Restart Nginx	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-02-07
843	https://travisshears.com/snippets/run-changed-tests/	Run Changed Tests	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-02-01
844	https://travisshears.com/blog/reef-plan-and-first-day/	getting started with reefing	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-30
845	https://travisshears.com/blog/first-tank/	my start in the aquarium hobby	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-28
1738	https://wiki.xxiivv.com/site/personal.html	Bored in France	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
861	https://travisshears.com/snippets/tmux-plus-screen/	tmux plus screen	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-17
967	https://ix5.org/thoughts/2017/venezuela-presentation/	Venezuela: Un país de múltiples facetas	\N	https://ix5.org	https://ix5.org/favicon.png	2019-01-19
968	https://ix5.org/thoughts/2017/grundgesetz-article-9/	Article 9: Freedom of coalition	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
969	https://ix5.org/thoughts/2017/grundgesetz-article-8/	Article 8: Freedom of association	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
970	https://ix5.org/thoughts/2017/grundgesetz-article-7/	Article 7: School System	\N	https://ix5.org	https://ix5.org/favicon.png	2017-07-20
972	https://ix5.org/thoughts/2017/grundgesetz-article-5/	Article 5: Freedom of expression	\N	https://ix5.org	https://ix5.org/favicon.png	2017-07-20
973	https://ix5.org/thoughts/2017/grundgesetz-article-4/	Article 4: Freedom of Belief	\N	https://ix5.org	https://ix5.org/favicon.png	2017-07-20
980	https://ix5.org/thoughts/2015/donating-blood/	Donating blood	\N	https://ix5.org	https://ix5.org/favicon.png	2017-02-24
932	https://travisshears.com/snippets/git-nocommit-merge/	Soft merge	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
986	https://nor.the-rn.info/2021/04/09/building-norns-community/	Building “norns community”	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-04-09
987	https://nor.the-rn.info/2021/03/20/rounding-errors/	Rounding Errors	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-03-20
989	https://nor.the-rn.info/2020/12/29/the-eoy-info-sessions/	The EOY Info Sessions	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-12-29
990	https://nor.the-rn.info/2020/12/25/that-which-is-unique-breaks/	That Which is Unique, Breaks	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-12-25
991	https://nor.the-rn.info/2020/10/16/music-hackspace/	Music Hackspace	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-10-16
992	https://nor.the-rn.info/2020/09/29/pandemic-day-203-floyd-protests-day-127/	Pandemic Day 203 / Floyd Protests Day 127	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-09-29
993	https://nor.the-rn.info/2020/09/15/towards-the-polymyth/	Towards the Polymyth	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-09-15
996	https://inqlab.net/rösti.html	Rösti	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2021-02-04
997	https://inqlab.net/sky.html	Sky	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2020-09-09
998	https://inqlab.net/geopub-activitypub-for-content-curation.html	GeoPub: ActivityPub for content curation	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2020-04-06
999	https://inqlab.net/allegra-openengiadina.html	Allegra openEngiadina!	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2020-03-21
1000	https://inqlab.net/use-tor.html	Use Tor	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2020-03-20
1001	https://inqlab.net/a-primer-on-the-semantic-web-and-linked-data.html	A Primer on the Semantic Web and Linked Data	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2019-11-19
1323	https://wiki.xxiivv.com/site/ogasawara.html	Mixed Architecture	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1003	https://inqlab.net/der-hase-und-der-igel.html	Der Hase und der Igel	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2019-09-14
1004	https://inqlab.net/large-underground-temple.html	Large Underground Temple	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2016-03-14
1005	https://inqlab.net/hong-kong-to-kunming.html	Hong Kong to Kunming	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2015-03-02
1008	https://metasyn.pw/collections.html	5f97ccf1290b0a0a7ff5a95e	\N	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-10-27
790	http://q.pfiffer.org/posts/2013-10-19-first.html	 Initial Post	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-10-19
736	http://q.pfiffer.org/posts/2021-02-18-To_Know_A_Place.html	 Knowing A Place	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2021-02-18
1217	https://wiki.xxiivv.com/site/vertale.html	Meeting Andes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1009	https://metasyn.pw/hangul.html	5fb82d8526519b1134a64b54	\N	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-11-20
1010	https://metasyn.pw/seedling.html	5fd07d52411b7550146a0c66	\N	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-12-09
1491	https://wiki.xxiivv.com/site/film.html	Old Camera Gear	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1492	https://wiki.xxiivv.com/site/film.html	Meeting With Alaska Friends	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1493	https://wiki.xxiivv.com/site/film.html	Pino Docked	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1683	https://wiki.xxiivv.com/site/flactals.html	Qraxia	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
1641	https://wiki.xxiivv.com/site/kaleidoscope.html	Ode, The Perfect Bei	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1698	https://wiki.xxiivv.com/site/lietal.html	The Säldota	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1655	https://wiki.xxiivv.com/site/bifurcan.html	Update	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1659	https://wiki.xxiivv.com/site/serventines.html	Snailden	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1729	https://wiki.xxiivv.com/site/artwork.html	Hydro74 Remix	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1756	https://wiki.xxiivv.com/site/artwork.html	Veins of brambles	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1767	https://wiki.xxiivv.com/site/the_sixth_season.html	Sixth Season Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-05-21
1494	https://wiki.xxiivv.com/site/film.html	Before the evening	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1620	https://wiki.xxiivv.com/site/beauty.html	Nevocytic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1709	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 15	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
663	https://icyphox.sh/blog/pycon-wrap-up	PyCon India 2019 wrap-up	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-15
1012	http://milofultz.com/2021/04/11/tiny-font-3-by-3	📕 Make A Tiny 3x3 Font	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2021-04-11
1013	http://milofultz.com/2021/03/06/sublime-keymap	Find and Remove Autocompletes in Sublime Text 3	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2021-03-06
1015	http://milofultz.com/2021/01/08/software	Apps, Software, and More That I Use Everyday	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2021-01-08
797	https://www.edwinwenink.xyz/posts/48-vim_fast_creating_and_linking_notes/	Creating and linking Zettelkasten notes in Vim	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-04-15
798	https://www.edwinwenink.xyz/posts/47-tilde_server/	Setting up your own tilde club (UNIX)	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-04-11
737	http://q.pfiffer.org/posts/2021-01-03-2020_in_review.html	 2020 In Review	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2021-01-03
738	http://q.pfiffer.org/posts/2020-10-22-Canyonlands.html	 A Canyonlands Figure-8	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2020-10-22
1773	https://wiki.xxiivv.com/site/rlionn.html	The Rlionn Oasis	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-13
1774	https://wiki.xxiivv.com/site/blam.html	Blam Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-04
1117	https://natehn.com/posts/digital-security/	Notes on Digital Security	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2021-03-15
1118	https://natehn.com/posts/iphone-security/	Activist iPhone Security Guide	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2021-03-13
1119	https://natehn.com/library/	Library	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2021-02-28
1120	https://natehn.com/posts/2020/	Reflecting on 2020	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2021-01-17
1121	https://natehn.com/connect/	Connect	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2021-01-10
1122	https://natehn.com/posts/music-studio-nov-2020/	Music Studio (Nov. 2020)	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-11-14
1123	https://natehn.com/posts/leaving-facebook/	Leaving Facebook	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-11-09
670	https://icyphox.sh/blog/rop-on-arm	Return Oriented Programming on ARM (32-bit)	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-06-06
671	https://icyphox.sh/blog/my-setup	My setup	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-05-13
672	https://icyphox.sh/blog/python-for-re-1	Python for Reverse Engineering	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-02-08
641	https://icyphox.sh/blog/efficacy-deepfakes	The efficacy of deepfakes	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-11
642	https://icyphox.sh/blog/simplicity-security	Simplicity (mostly) guarantees security	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-07
644	https://icyphox.sh/blog/mastodon-social	Stop joining mastodon.social	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-05
1094	https://irimi.one/music/slikback/	Slikback	\N	https://irimi.one	https://irimi.one/favicon.png	2021-04-18
1095	https://irimi.one/collage-poems/breath-of-fresh-air/	A Breath of Fresh Air	\N	https://irimi.one	https://irimi.one/favicon.png	2021-02-21
1096	https://irimi.one/posts/lieu/	Hello, Lieu!	\N	https://irimi.one	https://irimi.one/favicon.png	2021-02-14
1097	https://irimi.one/uses/software-setups/taskwarrior/	My Taskwarrior Setup	\N	https://irimi.one	https://irimi.one/favicon.png	2021-02-14
1129	https://www.gr0k.net/blog/logging-my-journey.html	Logging My Journey	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-26
1130	https://www.gr0k.net/blog/more-zynthian-workflow-updates.html	More Zynthian Workflow Updates	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-21
1131	https://www.gr0k.net/blog/zynthian-workflow.html	Zynthian Workflow	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-17
1132	https://www.gr0k.net/blog/the-monocled-frown.html	The Monocled Frown	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-05
1134	https://www.gr0k.net/blog/creating-soundfonts-in-polyphone.html	Creating SoundFonts in Polyphone	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-01-31
1135	https://www.gr0k.net/blog/zynthians-sequencer-zynseq.html	Zynthian's Sequencer - ZynSeq	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-01-29
1098	https://irimi.one/music/aliceffekt/	Aliceffekt	\N	https://irimi.one	https://irimi.one/favicon.png	2021-02-06
1100	https://irimi.one/music/professor-kliq/	Professor Kliq	\N	https://irimi.one	https://irimi.one/favicon.png	2021-01-04
1154	https://wiki.xxiivv.com/site/roms.html	We are now in the osdev business	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-22
1151	https://wiki.xxiivv.com/site/noodle.html	Noodle in Uxn	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-03-17
1137	https://tendigits.space/projects/orca-box/	Orca Box	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-31
1138	https://tendigits.space/projects/birdhouse-cam/	Birdhouse Webcam	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-24
1139	https://tendigits.space/projects/bird-posters/	Bird Posters	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-24
1428	https://wiki.xxiivv.com/site/niue.html	Chasms and Canyons	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1429	https://wiki.xxiivv.com/site/niue.html	The Coastline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1430	https://wiki.xxiivv.com/site/niue.html	Limu Pools	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1431	https://wiki.xxiivv.com/site/niue.html	Descent Way	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1140	https://tendigits.space/notes/new-projects/	New Projects	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-17
1141	https://tendigits.space/notes/house/	House Maintenance	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-01-06
1142	https://tendigits.space/notes/inktober/	Inktober	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-10-01
1143	https://tendigits.space/notes/post-receive-hook/	Post Receive Hook	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-09-27
1144	https://tendigits.space/notes/bagels/	Bagels	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-09-26
1145	https://tendigits.space/notes/updating-ssh/	Updating SSL Certs	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-08-25
1783	https://wiki.xxiivv.com/site/czech.html	Artifical Mountain Top 2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1785	https://wiki.xxiivv.com/site/czech.html	Nearby Liberec	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
645	https://icyphox.sh/blog/openbsd-hp-envy	OpenBSD on the HP Envy 13	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-04-17
707	https://royniang.com/japanese.html	ガロ	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-31
1879	https://wiki.xxiivv.com/site/downtemperature.html	Toy Company, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1883	https://wiki.xxiivv.com/site/downtemperature.html	Gone Plains	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1878	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Nakano Tempers	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-01
648	https://icyphox.sh/blog/covid19-disinfo	COVID-19 disinformation	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-03-15
1595	https://wiki.xxiivv.com/site/oquonie.html	Nephtaline wandering	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1607	https://wiki.xxiivv.com/site/oquonie.html	Bit Bazaar	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1634	https://wiki.xxiivv.com/site/serventines.html	Milreaf	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
799	https://www.edwinwenink.xyz/posts/46-ai_and_healthcare/	Tech giants will battle over your health data	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-03-17
800	https://www.edwinwenink.xyz/posts/45-raven_paradox_inductive_inference/	The Raven Paradox of Inductive Reasoning	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-02-11
1888	https://wiki.xxiivv.com/site/artwork.html	Neoneve Afloat	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1793	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Neau	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1619	https://wiki.xxiivv.com/site/beauty.html	Leiomytic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1710	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 12	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1711	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 10	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1713	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 9	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1768	https://wiki.xxiivv.com/site/rekka.html	Boucherville	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1555	https://wiki.xxiivv.com/site/infrared.html	Habitat 67	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1594	https://wiki.xxiivv.com/site/ledoliel.html	2.1	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1803	https://wiki.xxiivv.com/site/pico3.html	Pico3 Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-10-17
1824	https://wiki.xxiivv.com/site/zjeveni.html	Zjeveni	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-17
1644	https://wiki.xxiivv.com/site/dew.html	Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-06
1654	https://wiki.xxiivv.com/site/vocavularist.html	2.0	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-07
1862	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1864	https://wiki.xxiivv.com/site/valentinel_hopes.html	Valentinel Hopes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1766	https://wiki.xxiivv.com/site/notebook.html	Swing near Oigura	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1725	https://wiki.xxiivv.com/site/artwork.html	Neoneve Afloat Revis	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1755	https://wiki.xxiivv.com/site/volkenessen.html	Volkenessen Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-29
1761	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Mini	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1387	https://wiki.xxiivv.com/site/grimgrains.html	The Black Toothpaste Recipe	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-11-07
1507	https://wiki.xxiivv.com/site/rekka.html	Sailing trip in Quebec	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1689	https://wiki.xxiivv.com/site/vocavularist.html	1.0	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-07
1796	https://wiki.xxiivv.com/site/artwork.html	Yajnev	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1880	https://wiki.xxiivv.com/site/america.html	New York	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
371	https://rosano.hmm.garden	Personal wiki	\N	https://rosano.hmm.garden	https://rosano.hmm.garden/favicon.ico	2021-01-03
30	https://notes.neeasade.net/adhoc-executable-patching-on-nix.html	adhoc executable patching on nixos	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-03-14
289	https://now.lectronice.com/then/2020-12w51/	2020W51 :: kalama musi ike nanpa wan	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-13
633	https://icyphox.sh/blog/mastodon-to-pleroma	Migrating from Mastodon to Pleroma	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-09-04
643	https://icyphox.sh/blog/s-nail	The S-nail mail client	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-06
687	https://royniang.com/practice.html	Fixed weight issues; some new glyphs	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
688	https://royniang.com/practice.html	Drafted m, n, t; some fixes	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
336	https://kokorobot.ca/site/rug.html	Ocean plait mat tutorial	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2020-12-07
385	https://teknari.com/blogpost/1595774170477/St+Petersburg+Handmade+Prints+Book	St Petersburg Handmade Prints Book	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-26
69	https://resevoir.net//color-in-film	https://resevoir.net//color-in-film	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-03-16
50	https://writing.natwelch.com/post/706	Zany hijinks while eating the food from Zelda	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-09-23
712	https://royniang.com/keyboards.html	The Pebbles keyboard	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-17
348	https://phse.net/authoring-a-gemini-capsule-with-hugo/	Authoring a Gemini Capsule with Hugo	\N	https://phse.net	https://phse.net/favicon-32.png	2021-02-14
226	https://oddworlds.org/gallery/2021-01.html	2021-01	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-01-22
614	https://gueorgui.net/blog/2020/new-projects-dissertation-returnees/	Two new projects: dissertation and Returnees 海归	\N	https://gueorgui.net	https://gueorgui.net/assets/images/favicon.png	2020-03-22
743	http://q.pfiffer.org/posts/2020-03-02-Decoupling_your_game_loop.html	 Decoupling your game loop	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2020-03-02
178	gemini://xj-ix.luxe/posts/2021-01-14-parasitic-hypervisor.gmi	parasitic hypervisor	\N	gemini://xj-ix.luxe	/favicon.ico	2021-01-14
309	https://longest.voyage/log/just-an-earthquake/	Just an Earthquake	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-02-21
192	gemini://xj-ix.luxe/posts/2020-04-20-why-permanent-global-identity.gmi	why permanent global identity?	\N	gemini://xj-ix.luxe	/favicon.ico	2020-04-20
252	https://chad.is/beautiful-code/	Beautiful code does not make a beautiful product	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-03-27
129	https://szymonkaliski.com/writing/2019-03-31-end-user-programming/	End-User Programming	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-03-31
147	https://szymonkaliski.com/writing/2017-08-20-skyrock-projects/	Teaching Creative Coding in Taipei	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-08-20
759	http://q.pfiffer.org/posts/2017-10-21-Notes_from_two_weeks_of_haskell.html	 Notes from Two Weeks of Haskell	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2017-10-21
77	https://resevoir.net//foraging	https://resevoir.net//foraging	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-10-09
780	http://q.pfiffer.org/posts/2013-12-09-Bcache_and_LVM.html	 Bcache and LVM non-destructive setup	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2013-12-09
82	https://resevoir.net//intermediate-representations	https://resevoir.net//intermediate-representations	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-03-08
326	https://longest.voyage/log/week4/	Week 4: Random Thoughts	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2018-11-18
795	https://www.edwinwenink.xyz/posts/50-quiz_yourself_in_vim/	Study Tip: Quiz yourself in Vim	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-06-16
849	https://travisshears.com/blog/schachentorkopf-ridge-tour/	schachentorkopf ridge tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-09
796	https://www.edwinwenink.xyz/posts/49-russell_ai_technocracy_surveillance/	Russell on AI in technocracy and surveillance	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-05-08
814	https://materialfuture.net/posts/music/space-album-video/	Space Album Video - Video Schedules	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-07
1885	https://wiki.xxiivv.com/site/artwork.html	When	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1892	https://wiki.xxiivv.com/site/quotes.html	Telepaths	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-28
236	https://oddworlds.org/cooking/focaccia-genovese.html	Focaccia Genovese	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-05-18
1884	https://wiki.xxiivv.com/site/downtemperature.html	Toy Company, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1891	https://wiki.xxiivv.com/site/death.html	Metropolis	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-11-14
379	/en/carrot-price	Carrot Price	\N	\N	\N	2018-07-04
1133	https://www.gr0k.net/blog/zynthin-tips-and-tricks.html	Zynthian Tips and Tricks	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-03
1136	https://www.gr0k.net/blog/zynthian-first-impressions.html	Zynthian v4.1 Kit - First Impressions	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-01-28
1146	https://tendigits.space/notes/imac-with-linux/	New Linux for an old iMac	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-06-17
5	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	infected clock II	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-27
6	http://nonmateria.com/posts/2020_07_12__infected_clock.html	infected clock	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-12
7	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
8	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
1823	https://wiki.xxiivv.com/site/visual.html	Nataniev Fork	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-19
1821	https://wiki.xxiivv.com/site/drownspire.html	Our Studio	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-21
860	https://travisshears.com/tutorials/pi-static-ip/	Setting a Static IP on Pi	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-19
1822	https://wiki.xxiivv.com/site/drownspire.html	Founded Drownspire	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-21
868	https://travisshears.com/blog/ski-gear-2019-2020/	2019/2020 ski gear	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-07
881	https://travisshears.com/snippets/deployment-env-yaml-snippet/	K8s deployment.yaml env vscode snippet	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-20
898	https://travisshears.com/snippets/vim-open-file-under-cursor/	Vim Open File Under Cursor	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-06
914	https://travisshears.com/snippets/shell-for-loops/	For loops in bash / zsh shells	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-12
819	https://materialfuture.net/posts/blog/rss/	What IS RSS?	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-09-22
1014	http://milofultz.com/2021/01/28/snake-js	🐍 SNAKEHACK - snake with constantly changing controls	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2021-01-28
1033	http://milofultz.com/2020/09/26/zentube	💻 Zentube - Youtube Lite w/Note Taking (HTML/CSS/JS)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-09-26
966	https://ix5.org/thoughts/2020/moving/	Moving	\N	https://ix5.org	https://ix5.org/favicon.png	2020-03-02
971	https://ix5.org/thoughts/2017/grundgesetz-article-6/	Article 6: Marriage, Family and Children	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
1048	http://milofultz.com/2020/06/25/inexpensive-games	Inexpensive and Minimal Equipment Games To Play	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-06-25
988	https://nor.the-rn.info/2021/03/06/why-im-streaming-the-writing-of-my-next-album/	Why I’m Streaming the Making of My Next Album	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-03-06
1002	https://inqlab.net/lord-of-the-flies.html	Lord of the Flies	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2019-10-22
1007	https://metasyn.pw/memex.html	5f90c23e68d81f624bd57bc9	\N	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-10-21
1853	https://wiki.xxiivv.com/site/maeve.html	Pcellar	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-10-15
1111	https://irimi.one/music/ursulas-cartrigdes-lord-of-the-game/	Death Grips - Lord of the Game (Ursula's Cartridges DnB Remix)	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-19
1786	https://wiki.xxiivv.com/site/czech.html	Country Side	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1863	https://wiki.xxiivv.com/site/notebook.html	Self Portrait	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1868	https://wiki.xxiivv.com/site/pedestrian_paradise.html	Pedestrian Paradise Reissue	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-07
9	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
10	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
11	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
12	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
685	https://royniang.com/practice.html	Began working on the uppercase	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
686	https://royniang.com/practice.html	Better ascenders and descenders	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
690	https://royniang.com/practice.html	First glyphs	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
708	https://royniang.com/library.html	ほんやら洞のべんさん	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-27
709	https://royniang.com/computers.html	Bombed shell	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-24
805	https://materialfuture.net/posts/blog/activitypub-migration/	Online Purge - Meaningful Interaction	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-01-12
806	https://materialfuture.net/posts/blog/2020-year-end-retrospective/	2020 Year-End Retrospective	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-01-07
807	https://materialfuture.net/posts/books/books-completed-2020/	2020 - Books Completed + Retrospective	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-29
808	https://materialfuture.net/posts/games/games-completed-retrospective/	2020 - Games Completed + Retrospective	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-29
809	https://materialfuture.net/posts/music/sin-album/	Sin - Album	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-21
823	https://materialfuture.net/posts/blog/2020-8-18-emacs-irc/	Emacs - IRC and Other Stuff	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-08-18
825	https://materialfuture.net/posts/blog/2020-07-org-mode/	What Is Org-Mode?	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-07-22
826	https://materialfuture.net/posts/blog/2020-06-tools-workflows/	Tools and Workflows I Use	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-27
827	https://materialfuture.net/posts/blog/2020-06-current/	Current Projects And Current Roadmap	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-16
828	https://materialfuture.net/posts/blog/2020-06-ipfs/	IPFS For An Easy P2P Network	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-16
832	https://materialfuture.net/posts/blog/2020-03-emacs/	Why I Use Emacs, And Why It Matters	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-03-28
810	https://materialfuture.net/posts/blog/music-page/	New Music Page	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-16
811	https://materialfuture.net/posts/blog/services-update/	Services and Site Update - December 2020	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-16
1547	https://wiki.xxiivv.com/site/austria.html	Travel to Vienna	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
697	https://royniang.com/9front.html	Stacking	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-02
698	https://royniang.com/programming.html	Ken Thompson and Dennis Ritchie	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-08-27
699	https://royniang.com/sam.html	Navigation	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-08-07
700	https://royniang.com/photography.html	Selfportrait	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-07-30
701	https://royniang.com/rio.html	Busy 9front session	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-07-19
710	https://royniang.com/edc.html	Busted Moleskine	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-21
711	https://royniang.com/reading.html	Lockdown cleaning	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-19
696	https://royniang.com/keyboards.html	RAMA M10-C	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-17
25	https://notes.neeasade.net/Automata-tiling-backgrounds.html	Automata tiling backgrounds	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-08
26	https://notes.neeasade.net/checking-for-toots.html	checking for toots	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-03
1590	https://wiki.xxiivv.com/site/america.html	Desert Snow Covered Moutains	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
13	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
14	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
16	http://nonmateria.com/posts/2020_04_10__la_cauzione.html	la cauzione	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-04-10
2	http://nonmateria.com/posts/2021_03_15__url_changed.html	url changed	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-15
208	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
38	https://aless.co/working-at-the-edge/	Working at the Edge	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-02-18
209	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
39	https://aless.co/teach-a-girl-to-program/	Teach a Girl to Program	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2016-06-28
40	https://aless.co/from-bitmaker-to-breather/	From Bitmaker to Breather	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2015-03-04
41	https://aless.co/coding-is-not-cs/	Coding != Computer Science	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2014-07-07
1403	https://wiki.xxiivv.com/site/film.html	Auckland	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1407	https://wiki.xxiivv.com/site/film.html	Auckland Beach	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1408	https://wiki.xxiivv.com/site/film.html	Whangarei Bridge	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1617	https://wiki.xxiivv.com/site/beauty.html	Plasmytic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1451	https://wiki.xxiivv.com/site/the_sublime.html	Scare In Rarotonga	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
27	https://notes.neeasade.net/blog-meta.html	May Days	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-02
28	https://notes.neeasade.net/reverse-ssh-tunnels.html	reverse ssh tunnels	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-04-10
29	https://notes.neeasade.net/xeros-irc-ref.html	xero's irc ref	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-04-04
31	https://notes.neeasade.net/On-Emacs.html	On Emacs	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2019-12-06
1404	https://wiki.xxiivv.com/site/rotonde.html	The Webring Logo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-12
52	https://writing.natwelch.com/post/704	The Nat Index 2019-09-14	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-09-14
53	https://writing.natwelch.com/post/701	Japan 2019 Travel Log Day 6, 7 & 8	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-22
54	https://writing.natwelch.com/post/699	DIY Cron & Continuous Delivery on GKE	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-20
55	https://writing.natwelch.com/post/700	Japan 2019 Travel Log Day 5	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-19
56	https://writing.natwelch.com/post/698	Japan 2019 Travel Log Day 4	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-18
57	https://writing.natwelch.com/post/697	Japan 2019 Travel Log Day 3	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-16
678	https://royniang.com/haiku_os.html	Easy computing	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-12-08
681	https://royniang.com/sf_guro.html	Almost done with the lowercase alphabet	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-31
679	https://royniang.com/patience.html	Patience (Daniel Clowes, 2016)	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-11-01
682	https://royniang.com/gemini.html	Testing microblogging with gemini	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-28
676	https://royniang.com/type_design.html	Learning hinting	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-22
74	https://resevoir.net//documenting	https://resevoir.net//documenting	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
76	https://resevoir.net//fermentation	https://resevoir.net//fermentation	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-04-04
78	https://resevoir.net//fraktur	https://resevoir.net//fraktur	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-12-20
813	https://materialfuture.net/posts/music/streaming-services/	Streaming Services and Listening To Music	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-27
824	https://materialfuture.net/posts/blog/time-to-step-back/	Time to Step Back and Reflect	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-08-16
815	https://materialfuture.net/posts/servers/2020-11-6-learn-netdata/	Network Monitoring Via NetData	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-06
816	https://materialfuture.net/posts/blog/2020-11-5-youtube-videos/	My YouTube Channel	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-05
817	https://materialfuture.net/posts/games/gameboy-sprite-sheet-assets-itch/	GameBoy Sprite Sheets and Assets	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-10-21
818	https://materialfuture.net/posts/blog/2020-10-2-resumes/	Setting Up A Resume With LaTeX	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-10-01
59	https://writing.natwelch.com/post/695	Japan 2019 Travel Log Day 1	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-14
60	https://writing.natwelch.com/post/694	What's making me happy 2019-04-20	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-04-21
61	https://writing.natwelch.com/post/693	New book night	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-04-16
79	https://resevoir.net//git-for-filmmakers	https://resevoir.net//git-for-filmmakers	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-29
80	https://resevoir.net//historiography	https://resevoir.net//historiography	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-11-08
1877	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	Otoroutes Miniatures	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-06
1831	https://wiki.xxiivv.com/site/yokohama.html	China Town	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-02
1810	https://wiki.xxiivv.com/site/macro.html	Raspberry Close Up	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1816	https://wiki.xxiivv.com/site/cenote.html	Cenote	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-20
1819	https://wiki.xxiivv.com/site/audio.html	Loft	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-06
1871	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Recit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
722	https://royniang.com/communities.html	Joined Merveilles	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-09-25
723	https://royniang.com/nature.html	Riverside at La Réole	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-02
724	https://royniang.com/nature.html	Hidden house at La Réole	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-02
725	https://royniang.com/nature.html	Abandoned building at La Réole	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-02
691	https://royniang.com/diary.html	Alto getting used to his new home	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
1651	https://wiki.xxiivv.com/site/noirca.html	Go Board	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-25
1637	https://wiki.xxiivv.com/site/damoiseau_canalx.html	Damoiseau et Canalx Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-27
1638	https://wiki.xxiivv.com/site/neralie.html	Neralie Mobile	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-22
1675	https://wiki.xxiivv.com/site/vast.html	Preview	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-28
829	https://materialfuture.net/posts/books/practical-c-programming/	Practical C Programming - Retrospective	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-04
1679	https://wiki.xxiivv.com/site/oquonie_soundtrack.html	Soundman	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-10
1811	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1814	https://wiki.xxiivv.com/site/hypervoid.html	Infraviolet	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1815	https://wiki.xxiivv.com/site/hypervoid.html	Dilesion	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
830	https://materialfuture.net/posts/blog/2020-05-git-revamp/	Self-Hosting Git Client for a Decentralized Future	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-05-25
831	https://materialfuture.net/posts/blog/2020-04-email-server/	Creating A Personal Email Server With Postfix + Dovecot	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-04-17
834	https://materialfuture.net/posts/links/2020-02-links/	Links for February 2020	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-02-19
1827	https://wiki.xxiivv.com/site/idyllic_miners.html	Kinetik Festival, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-05-12
71	https://resevoir.net//craft	https://resevoir.net//craft	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
72	https://resevoir.net//daerim-dong	https://resevoir.net//daerim-dong	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-01-28
73	https://resevoir.net//deep-work	https://resevoir.net//deep-work	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-05-02
75	https://resevoir.net//eoy-2019	https://resevoir.net//eoy-2019	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-01-04
92	https://resevoir.net//portable-printing	https://resevoir.net//portable-printing	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-04-12
93	https://resevoir.net//portable-typewriter	https://resevoir.net//portable-typewriter	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-12-20
717	https://royniang.com/street.html	Summertime umbrella	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
718	https://royniang.com/street.html	Girl playing with her dog	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
719	https://royniang.com/street.html	iPad sunshade	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
704	https://royniang.com/diary.html	End of the lockdown	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
706	https://royniang.com/diary.html	Annoying Alto during lockdown	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
833	https://materialfuture.net/posts/blog/2020-03-current-goals/	Current Goals - What I'm Working On	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-03-12
835	https://materialfuture.net/posts/blog/2020-roadmap-and-restrospective/	2020 Roadmap and 2019 Retrospective	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-02-05
836	https://materialfuture.net/posts/blog/2020-01-site-redesign/	Redesigning My Site + Minimalism On The Web	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-01-29
837	https://materialfuture.net/posts/links/2020-01-links/	Links for January 2020	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-01-15
838	https://materialfuture.net/posts/links/2019-12-links/	Links for December 2019	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2019-12-18
964	https://travisshears.com/gpg/	GPG	\N	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
965	https://travisshears.com/micro-blog/	Micro Blog	\N	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
928	https://travisshears.com/snippets/scp/	I need a file off my server but I don't want to set up FTP	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
930	https://travisshears.com/snippets/git-better-git-add/	Better Git Add	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
931	https://travisshears.com/snippets/git-move-branch/	Move Branch	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
1697	https://wiki.xxiivv.com/site/fuji.html	Dusk	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1229	https://wiki.xxiivv.com/site/risan_aldeth.html	Compression Tunnels	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-07
1865	https://wiki.xxiivv.com/site/maeve.html	First Ludivine	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-10-15
102	https://resevoir.net//slitscan-experiments	https://resevoir.net//slitscan-experiments	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-11-02
1163	https://wiki.xxiivv.com/site/origami.html	Sonobe 3	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
103	https://resevoir.net//slitscan-video	https://resevoir.net//slitscan-video	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-01-08
104	https://resevoir.net//space	https://resevoir.net//space	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-27
89	https://resevoir.net//midi-plotter	https://resevoir.net//midi-plotter	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-08-06
703	https://royniang.com/intrfc.html	INTRFC.com is live	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-05-13
693	https://royniang.com/watching.html	絞死刑 (大島 渚, 1968)	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-19
694	https://royniang.com/kiroku.html	Mémoires	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-17
695	https://royniang.com/language.html	Design and communication	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-16
713	https://royniang.com/cameras.html	Leica M5	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-12
862	https://travisshears.com/snippets/npm-i-vs-npm-ci/	npm i vs npm ci	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-17
863	https://travisshears.com/snippets/prevent-vim-auto-new-line/	Prevent Vim Auto New Lines	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-13
864	https://travisshears.com/snippets/auto-find-ssh-keys/	Auto Find SSH Keys	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-12
865	https://travisshears.com/snippets/short_server_names/	Using short server names	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-12
839	https://materialfuture.net/posts/links/2019-11-links/	Links for November 2019	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2019-11-15
94	https://resevoir.net//practice	https://resevoir.net//practice	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
95	https://resevoir.net//quotes	https://resevoir.net//quotes	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-07-28
1764	https://wiki.xxiivv.com/site/personal.html	Chez Liette	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1777	https://wiki.xxiivv.com/site/personal.html	Alex Shoes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1778	https://wiki.xxiivv.com/site/personal.html	Jerome	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1809	https://wiki.xxiivv.com/site/personal.html	District 9 Costume I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1836	https://wiki.xxiivv.com/site/personal.html	Lea	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1618	https://wiki.xxiivv.com/site/beauty.html	Benignytic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
96	https://resevoir.net//research	https://resevoir.net//research	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
97	https://resevoir.net//resevoir	https://resevoir.net//resevoir	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
99	https://resevoir.net//sailing	https://resevoir.net//sailing	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-10-09
100	https://resevoir.net//selfcare-checklist	https://resevoir.net//selfcare-checklist	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	0001-01-01
277	https://now.lectronice.com/then/2021-03w10/	W10 :: Stacking up voxels	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-07
278	https://now.lectronice.com/then/2021-03w09/	W9 :: Sitting in front of the sun	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-28
279	https://now.lectronice.com/then/2021-02w08/	W8 :: Watching the world burn	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-21
280	https://now.lectronice.com/then/2021-02w07/	W7 :: Struggling with Godot	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-14
281	https://now.lectronice.com/then/2021-02w06/	2021W6 :: Sweating profusely	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-07
282	https://now.lectronice.com/then/2021-02w05/	2021W5 :: Exploring vast spaces	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-31
283	https://now.lectronice.com/then/2021-01w04/	2021W4 :: Headbanging	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-24
284	https://now.lectronice.com/then/2021-01w03/	2021W3 :: Floating	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-17
285	https://now.lectronice.com/then/2021-01w02/	2021W2 :: Soreness	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-10
286	https://now.lectronice.com/then/2021-01w01/	2021W1 :: Hello new year	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-03
287	https://now.lectronice.com/then/2020-12w53/	2020W53 :: Back to game development	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-27
191	gemini://xj-ix.luxe/posts/2020-04-30-honey-ginger-sauce.gmi	honey ginger sauce	\N	gemini://xj-ix.luxe	/favicon.ico	2020-04-30
189	gemini://xj-ix.luxe/posts/2020-06-18-rlog.gmi	rlog	\N	gemini://xj-ix.luxe	/favicon.ico	2020-06-18
190	gemini://xj-ix.luxe/posts/2020-06-02-hyperlocal-roadmap.gmi	hyperlocal	\N	gemini://xj-ix.luxe	/favicon.ico	2020-06-02
689	https://royniang.com/practice.html	Drafted l, a, d and b	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
726	https://royniang.com/diary.html	Petting Canelle at La Réole	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
680	https://royniang.com/patience.html	Added public gmi files to koikoi’s build	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-11-01
683	https://royniang.com/type_design.html	The specimen of Akzidenz Grotesque	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-22
727	https://royniang.com/identity.html	Minous, stretching	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-02-01
1656	https://wiki.xxiivv.com/site/oquonie.html	Nastazie	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
225	https://oddworlds.org/cooking/0-sourdough.html	Meta: Starting and maintaining Sourdough	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-04
866	https://travisshears.com/snippets/disable_user/	Disable User	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-11
105	https://resevoir.net//studies	https://resevoir.net//studies	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-05-28
106	https://resevoir.net//tactile	https://resevoir.net//tactile	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-16
107	https://resevoir.net//targets	https://resevoir.net//targets	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-04-13
108	https://resevoir.net//text	https://resevoir.net//text	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-05
867	https://travisshears.com/blog/holland/	holland	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-10
869	https://travisshears.com/blog/year-progress/	year-progress demo	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-26
870	https://travisshears.com/blog/archiving-corona-cal/	archiving corona cal	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-23
871	https://travisshears.com/blog/camping-in-mayrhofen/	camping in mayrhofen	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-21
872	https://travisshears.com/blog/peertube-instance-launch/	peertube instance launch	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-20
739	http://q.pfiffer.org/posts/2020-04-23-Personal_Gentoo_Overlay.html	 Building a Personal Gentoo Overlay	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2020-04-23
729	https://crlf.site/log/notes/200720-comments/	Comments powered by Remark42	\N	https://crlf.site	https://crlf.site/logo/favicon.ico	2020-07-20
730	https://crlf.site/log/notes/200624-comments/	Choosing comments for this blog	\N	https://crlf.site	https://crlf.site/logo/favicon.ico	2020-06-24
731	https://crlf.site/log/notes/200616-links/	How to improve your handwriting	\N	https://crlf.site	https://crlf.site/logo/favicon.ico	2020-06-16
732	https://crlf.site/log/notes/200530-links/	Notebooks and paper reviews	\N	https://crlf.site	https://crlf.site/logo/favicon.ico	2020-05-30
733	https://crlf.site/log/notes/200430-inks/	Fountain pen ink properties	\N	https://crlf.site	https://crlf.site/logo/favicon.ico	2020-04-30
266	https://xvw.github.io/longs/kotlin_extensions.html	Kotlin, extensions et génériques	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2020-04-29
268	https://xvw.github.io/longs/introduction_aux_monades.html	Un article sur les monades en 2018	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2018-08-22
269	https://xvw.github.io/longs/konbini_tac_au_tac_manben.html	Konbini, Tac au tac et Manben	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2018-08-19
270	https://xvw.github.io/longs/zipper_history.html	Voyager dans le temps avec un Zipper	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2017-11-20
271	https://xvw.github.io/longs/introduction_gadt.html	Un cas d'école à l'utilisation des GADTs	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2017-10-16
740	http://q.pfiffer.org/posts/2020-04-03-MulletCache.html	 MulletCache	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2020-04-03
741	http://q.pfiffer.org/posts/2020-03-25-Setjmp_Primer.html	 Setjmp/Longjmp Exception Handling in C	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2020-03-25
742	http://q.pfiffer.org/posts/2020-03-12-A_Random_Python_Timezone_Bug.html	 A Random Python Timezone Bug	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2020-03-12
744	http://q.pfiffer.org/posts/2020-02-27-JSON_Aggregates.html	 Django Aggregates Over JSONB	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2020-02-27
721	https://royniang.com/street.html	Bicycle kids	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
702	https://royniang.com/diary.html	Maurane preparing her next movie	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
720	https://royniang.com/street.html	Kid and grandpa on a scooter	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
728	https://royniang.com/identity.html	Minous, the stray cat	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-02-01
745	http://q.pfiffer.org/posts/2020-02-13-MR2_FireSale.html	 The Great MR2 FireSale	\N	http://q.pfiffer.org	http://q.pfiffer.org/favicon.ico	2020-02-13
1057	http://milofultz.com/2020/05/01/old-internet	I Miss The Old Internet	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-01
112	https://resevoir.net//urgency	https://resevoir.net//urgency	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-02
113	https://resevoir.net//visiweave	https://resevoir.net//visiweave	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-04-16
109	https://resevoir.net//time-based	https://resevoir.net//time-based	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
110	https://resevoir.net//tools	https://resevoir.net//tools	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
165	https://szymonkaliski.com/projects/google-io-android-diversity/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2015-11-28
140	https://szymonkaliski.com/writing/2018-01-28-diy-monome/	DIY Monome	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-01-28
141	https://szymonkaliski.com/projects/diy-monome/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-01-28
142	https://szymonkaliski.com/writing/2017-12-04-flsun-i3-3d-printer/	FLSUN i3 3D Printer	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-12-04
143	https://szymonkaliski.com/writing/2017-11-10-exploring-tidal-and-diagrams/	Learning Haskell part 2	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-11-10
144	https://szymonkaliski.com/writing/2017-10-02-learning-haskell/	Learning Haskell	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-10-02
145	https://szymonkaliski.com/writing/2017-09-08-building-das-ui/	Building DAS-UI	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-09-08
114	https://resevoir.net//webring	https://resevoir.net//webring	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-20
116	https://resevoir.net//year-in-books-2019	https://resevoir.net//year-in-books-2019	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-01-04
98	https://resevoir.net//sailboat-as-gaze	https://resevoir.net//sailboat-as-gaze	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-09-17
115	https://resevoir.net//writing-drawings	https://resevoir.net//writing-drawings	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-11-08
152	https://szymonkaliski.com/projects/timav/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-04-30
153	https://szymonkaliski.com/writing/2017-03-31-parametrium/	Building Parametrium	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-03-31
160	https://szymonkaliski.com/writing/2016-12-29-ofcourse-io/	Teaching Creative Coding in Shanghai	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-12-29
161	https://szymonkaliski.com/projects/bareconductive-picap/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-09-09
162	https://szymonkaliski.com/projects/ballantines-heartbeats/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-07-18
163	https://szymonkaliski.com/projects/glsl-auto-ui/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-04-20
164	https://szymonkaliski.com/projects/gla-london-2050/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-02-01
166	https://szymonkaliski.com/projects/fonomapa/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2015-10-08
167	https://szymonkaliski.com/projects/kinect2osc/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2015-09-20
168	https://szymonkaliski.com/projects/loop-pi/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-19
169	https://szymonkaliski.com/projects/sensorium/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-10
170	https://szymonkaliski.com/projects/eeg2osc/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-10
171	https://szymonkaliski.com/projects/sonic-explorer/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-08
172	https://szymonkaliski.com/projects/institut-des-mutations/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-03-28
173	https://szymonkaliski.com/projects/nodation/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-02-19
1780	https://wiki.xxiivv.com/site/vermillionth.html	Vermillionth Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-03-20
1782	https://wiki.xxiivv.com/site/vermillionth.html	Live in Paris	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-03-20
1779	https://wiki.xxiivv.com/site/wallpapers.html	Echorridoors	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1798	https://wiki.xxiivv.com/site/to_the_aeons_hell.html	8Static - Philadelphia	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-01-07
1770	https://wiki.xxiivv.com/site/sketchbook.html	Andes Necklace	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-30
158	https://szymonkaliski.com/projects/sdf-ui/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-01-29
159	https://szymonkaliski.com/writing/2017-01-18-kinect-2-osx/	Kinect 2 on macOS with Skeleton Tracking	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-01-18
174	https://szymonkaliski.com/projects/zamek-interactive-movie/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2013-12-20
175	https://szymonkaliski.com/projects/beatbattle-visuals/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2013-12-14
848	https://travisshears.com/blog/unteres-lichteck-ridge-tour/	unteres lichteck ridge tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-13
850	https://travisshears.com/snippets/strip-audio-from-video-file/	Strip Audio From Video File	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-09
851	https://travisshears.com/blog/garmisch-piste-tour/	garmisch piste tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-09
852	https://travisshears.com/blog/winter-hikes/	winter hikes	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-07
853	https://travisshears.com/blog/weibel_kante/	weibel kante	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-12-25
210	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
211	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
212	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
214	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
232	https://oddworlds.org/gallery/2020-07.html	2020-07	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-06-22
233	https://oddworlds.org/thoughts/thelast.html	The Last $THING You'll Ever Buy	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-06-11
234	https://oddworlds.org/cooking/pizza.html	Pizza	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-05-23
235	https://oddworlds.org/gallery/2020-06.html	2020-06	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-05-22
176	https://szymonkaliski.com/projects/hello-poznan/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2013-04-19
177	https://szymonkaliski.com/projects/sensorium-book-covers/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2012-05-18
193	gemini://xj-ix.luxe/posts/2020-03-13-platanos-fritos.es.gmi	platanos fritos	\N	gemini://xj-ix.luxe	/favicon.ico	2020-03-13
194	gemini://xj-ix.luxe/posts/2020-03-10-discussions-on-network-topology.gmi	p2p network topology, why even bother?	\N	gemini://xj-ix.luxe	/favicon.ico	2020-03-10
195	gemini://xj-ix.luxe/posts/2020-01-27-universal-basic-internet.gmi	universal basic internet	\N	gemini://xj-ix.luxe	/favicon.ico	2020-01-27
196	gemini://xj-ix.luxe/posts/2020-01-20-null-media-next.gmi	null.media@next	\N	gemini://xj-ix.luxe	/favicon.ico	2020-01-20
197	gemini://xj-ix.luxe/posts/2020-01-09-native-frp.gmi	native functional reactive programming	\N	gemini://xj-ix.luxe	/favicon.ico	2020-01-09
1021	http://milofultz.com/2020/11/09/the-point-of-diminis	The point of diminishing returns is already here	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-11-09
1022	http://milofultz.com/2020/11/01/koi-koi-rules	Rules for Hanafuda game "Koi-Koi"	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-11-01
1023	http://milofultz.com/2020/10/31/tablatal-parser	📊 Tablatal Parser - Plaintext Database to JSON (Python)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-31
1024	http://milofultz.com/2020/10/25/hiitimer	💻 HIITimer - Exercise Timer w/Routines and TTS (Python)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-25
1025	http://milofultz.com/2020/10/21/html-css-js	HTML / CSS / JS Resources	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-21
1026	http://milofultz.com/2020/10/17/tod-python	💻 Tod - Plan and Manage Daily Tasks In The CLI (Python)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-17
198	gemini://xj-ix.luxe/posts/2019-thaumaturgy.gmi	thaumaturgy	\N	gemini://xj-ix.luxe	/favicon.ico	2019-01-01
199	gemini://xj-ix.luxe/posts/2019-stop-and-think.gmi	stop and think	\N	gemini://xj-ix.luxe	/favicon.ico	2019-01-01
200	gemini://xj-ix.luxe/posts/2019-quickly-export-gitlab-projects.gmi	quickly export corpogit projects	\N	gemini://xj-ix.luxe	/favicon.ico	2019-01-01
186	gemini://xj-ix.luxe/posts/2020-08-11-memex-dev-updates.gmi	memex dev updates	\N	gemini://xj-ix.luxe	/favicon.ico	2020-08-11
187	gemini://xj-ix.luxe/posts/2020-08-07-social-admin.gmi	social.ssg admin	\N	gemini://xj-ix.luxe	/favicon.ico	2020-08-07
188	gemini://xj-ix.luxe/posts/2020-07-14-ethical-marketing-hyperlocal.gmi	ethical marketing at hyperlocal	\N	gemini://xj-ix.luxe	/favicon.ico	2020-07-14
1027	http://milofultz.com/2020/10/16/friends-dont	Friends don't let friends look at pageviews	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-16
941	https://travisshears.com/snippets/aws-s3-sync/	Aws S3 Sync	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
1295	https://wiki.xxiivv.com/site/minamiise.html	Our Neighbor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1714	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 8	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1812	https://wiki.xxiivv.com/site/collegiennes.html	Cloud is a Lie	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1673	https://wiki.xxiivv.com/site/vast.html	Vast Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-28
1875	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	Toy Company, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-06
1845	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	Netlabel Party - Tokyo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-26
882	https://travisshears.com/snippets/git-force-push-with-lease/	Force push with --lease for safety	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-10
290	https://now.lectronice.com/then/2020-12w50/	2020W50 :: Music and sore muscles	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-06
291	https://now.lectronice.com/then/2020-11w49/	2020W49 :: Songs?	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-29
292	https://now.lectronice.com/then/2020-11w48/	2020W48 :: Slacking	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-22
293	https://now.lectronice.com/then/2020-11w47/	2020W47 :: Meandering	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-15
294	https://now.lectronice.com/then/2020-11w46/	2020W46 :: Tiredness and absurdity	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-08
883	https://travisshears.com/tutorials/adding-api-docs/	Adding Documentation to an API	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-08
884	https://travisshears.com/snippets/open-notion-links/	Open Notion Links	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-07
885	https://travisshears.com/blog/personal-site-walk-through/	personal site walk through	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-01
886	https://travisshears.com/snippets/twtxt-config/	Twtxt Config Alias	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-30
887	https://travisshears.com/snippets/jsx-comments/	JSX Comments	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-26
888	https://travisshears.com/blog/first-svelte-app/	first svelte app	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-02
889	https://travisshears.com/blog/start-teaching/	teaching javascript	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
890	https://travisshears.com/tutorials/html-js-vs-code-setup/	HTML + JavaScript VS Code Setup	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
243	https://chad.is/managing-oneself/	Managing Oneself	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-18
244	https://chad.is/copenhagen/	Copenhagen versus the universe	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-14
245	https://chad.is/reductionism/	Reductionism can explain neither carrots nor consciousness	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-11
246	https://chad.is/hereditary/	Hereditary	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-07
250	https://chad.is/wabi-sabi/	Nothing lasts, nothing is finished, and nothing is perfect	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-11-03
251	https://chad.is/creativity-management/	Creative work cannot be managed	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-05-29
253	https://chad.is/startup-offers/	What to know before joining a startup	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-03-18
254	https://chad.is/cautious-prometheus/	The advantages of design in the 21st century	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-02-14
255	https://chad.is/guns-technology-culture/	Guns as technology, guns as culture	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-12-18
256	https://chad.is/design-hacking/	Design & Hacking	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-11-22
257	https://chad.is/asynchronous/	Don’t Make Me Wait	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-11-08
258	https://chad.is/zero-to-one/	Going from Zero to One	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-11-01
259	https://chad.is/design-of-design/	The Design of Design	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-10-09
247	https://chad.is/burden-of-consciousness/	Confronting the burden of consciousness	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2018-11-29
301	https://now.lectronice.com/then/2020-09w39/	2020W39 :: Questions and fear of the future	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-20
295	https://now.lectronice.com/then/2020-11w45/	2020W45 :: Crunching/procrastinating	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-01
296	https://now.lectronice.com/then/2020-10w44/	2020W44 :: Music again	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-25
297	https://now.lectronice.com/then/2020-10w43/	2020W43 :: Teenage Artiphon Engineering	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-18
248	https://chad.is/ebook-innovation/	What happened to ebook innovation?	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2018-08-26
249	https://chad.is/design-systems/	Designing self-sustaining systems	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2015-12-14
856	https://travisshears.com/blog/instagram-archive/	instagram archive	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-10-01
857	https://travisshears.com/map/	Map	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-09-28
858	https://travisshears.com/blog/why_small_images_plus_folderpics_demo/	small images + folderpics demo	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-09-14
859	https://travisshears.com/blog/micro-blog-plugin-demo/	micro blog plugin demo	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-23
876	https://travisshears.com/snippets/file-search-plus-size/	File Search Plus Size	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-02
877	https://travisshears.com/snippets/mass-mkv-to-mp4-ffmpeg/	Convert .mkv to .mp4	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-30
878	https://travisshears.com/snippets/wipe-mongo-collection/	Wipe a Mongo Collection	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-29
879	https://travisshears.com/snippets/extending-gpg-key/	Extending GPG Keys	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-22
880	https://travisshears.com/snippets/moving-gpg-keys/	Moving GPG Keys	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-20
962	https://travisshears.com/corona_cal/	\N	\N	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
892	https://travisshears.com/tutorials/fromat-html-js-with-vs-code/	Format HTML & JavaScript with VS Code	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
893	https://travisshears.com/tutorials/protected-github-branches/	Protected Github Branches	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
894	https://travisshears.com/blog/sunrise/	project sunrise	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-04-30
895	https://travisshears.com/snippets/k8s-reg-secret/	Creating K8s registry secrets	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-29
896	https://travisshears.com/blog/galtenberg-ski-tour/	galtenberg ski tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-17
897	https://travisshears.com/blog/kochel-first-climb/	first climb kochel	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-16
899	https://travisshears.com/snippets/sending-files-locally/	Sending Files Locally	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-05
900	https://travisshears.com/snippets/vim-spelling/	Vim Spelling	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-05
963	https://travisshears.com/version/	\N	\N	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
1525	https://wiki.xxiivv.com/site/knowledge.html	Dieter	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-12-29
1529	https://wiki.xxiivv.com/site/keyboard_468.html	1.4	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-27
1409	https://wiki.xxiivv.com/site/left.html	Original Writing Layout	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1860	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1817	https://wiki.xxiivv.com/site/canada.html	Jaques Cartier	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-08
1481	https://wiki.xxiivv.com/site/black.html	Near La Paz	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1433	https://wiki.xxiivv.com/site/niue.html	Sail to Alofi, Niue	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1484	https://wiki.xxiivv.com/site/black.html	Off The Coast Of Mexico	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
298	https://now.lectronice.com/then/2020-10w42/	2020W42 :: Beats	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-11
299	https://now.lectronice.com/then/2020-10w41/	2020W41 :: Global confusion	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-04
300	https://now.lectronice.com/then/2020-09w40/	2020W40 :: Drawing again	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-27
303	https://now.lectronice.com/then/2020-09w37/	2020W37 :: toki pona li pona	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-06
304	https://now.lectronice.com/then/2020-08w36/	2020W36 :: Keyboards and lack of sleep	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-30
288	https://now.lectronice.com/then/2020-12w52/	2020W52 :: Chilling	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-20
305	https://now.lectronice.com/then/2020-08w35/	2020W35 :: Opuscule on acid with a plaid	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-23
306	https://now.lectronice.com/then/2020-08w34/	2020W34 :: HTML, Pi 4, acid and game design	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-16
307	https://now.lectronice.com/then/2020-08w33/	2020W33 :: Starting a now page	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-09
308	https://now.lectronice.com/then/2020-08w32/	2020W32 :: Testing my template	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-02
1874	https://wiki.xxiivv.com/site/notebook.html	Heist	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
940	https://travisshears.com/snippets/git-prev-commit-changes/	See previous commit changes	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
943	https://travisshears.com/snippets/pretty-print-json/	Pretty print JSON	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
901	https://travisshears.com/blog/bayrischzell-cross-country/	cross-country skiing	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-02
902	https://travisshears.com/snippets/git-repo-backup/	Git Repo Backup	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-23
903	https://travisshears.com/blog/rofanspitze-ski-tour/	rofanspitze ski tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-19
904	https://travisshears.com/blog/lenggries-avalanche-course/	lenggries avalanche course	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-07
905	https://travisshears.com/blog/mountain-safety-reminder/	mountain safety reminder	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-06
906	https://travisshears.com/blog/scuol-2020/	scuol hütte	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-03
907	https://travisshears.com/snippets/vim-fzf-plugin/	Vim FZF Plugin	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-30
908	https://travisshears.com/snippets/jq-command-line-json-processor/	JQ JSON processor	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-30
909	https://travisshears.com/snippets/emoji-commit-messages/	Emoji Commit Messages	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-28
910	https://travisshears.com/snippets/watch-command/	Watch Command	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-27
911	https://travisshears.com/snippets/move-file-range/	Move File Range	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-27
912	https://travisshears.com/snippets/git-zsh-plugin/	ZSH git plugin	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-27
913	https://travisshears.com/blog/start-of-ski-season/	start of ski season	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-12
915	https://travisshears.com/snippets/vim-placeholders/	Custom placeholders solution	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-12
916	https://travisshears.com/snippets/vim-arglist/	Super powers of the arg list	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
917	https://travisshears.com/snippets/vim-ripgrep-custom/	Custom ripgrep	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
918	https://travisshears.com/snippets/vim-jumps-fix/	Remapping ability to jump	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
919	https://travisshears.com/snippets/vim-substitute/	Replae <s> with spell and nohl	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
920	https://travisshears.com/snippets/vim-window-resize/	Resizing vim windows with arrow keys	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
1682	https://wiki.xxiivv.com/site/oquonie.html	From Thailand	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1546	https://wiki.xxiivv.com/site/austria.html	Wolfinger Hotel	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1415	https://wiki.xxiivv.com/site/dotgrid.html	Dotless Dotgrid Interface	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1497	https://wiki.xxiivv.com/site/pino.html	Workstation Aboard Pino	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1514	https://wiki.xxiivv.com/site/pino.html	From Inside	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1516	https://wiki.xxiivv.com/site/pino.html	Slice	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1425	https://wiki.xxiivv.com/site/marabu.html	Version 2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1881	https://wiki.xxiivv.com/site/malice.html	Pulsewave, New York	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-27
846	https://travisshears.com/blog/scheinbertspitze-tour/	scheinbertspitze tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-17
847	https://travisshears.com/blog/schoenalmjoch-tour/	schönalmjoch tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-14
922	https://travisshears.com/snippets/vim-dictionary/	Vim dictionary lookup command	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
923	https://travisshears.com/blog/return-of-snippets/	the return of snippets	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
946	https://travisshears.com/blog/arco/	arco	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-10-09
1859	https://wiki.xxiivv.com/site/cyanosis_fever.html	Cyanosis Fever	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-11
1802	https://wiki.xxiivv.com/site/collegiennes.html	Prince Of The Arcade	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1841	https://wiki.xxiivv.com/site/tokyo.html	Void Garden	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1834	https://wiki.xxiivv.com/site/tokyo.html	Hanami Train	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1837	https://wiki.xxiivv.com/site/tokyo.html	Blaze Blue	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1866	https://wiki.xxiivv.com/site/drypoint.html	Drypoint Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-12
1221	https://wiki.xxiivv.com/site/risan_aldeth.html	Aldeth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-07
1164	https://wiki.xxiivv.com/site/origami.html	Sonobe 12	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
1851	https://wiki.xxiivv.com/site/identity.html	72DEC2 Converses	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1258	https://wiki.xxiivv.com/site/minamiise.html	After the Rain	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1867	https://wiki.xxiivv.com/site/drypoint.html	Drypoint Landing Zone	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-12
1839	https://wiki.xxiivv.com/site/rekka.html	Hanami Orange	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1869	https://wiki.xxiivv.com/site/pedestrian_paradise.html	Pedestrian Paradise Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-07
1873	https://wiki.xxiivv.com/site/nether_esper_inserts.html	Howl Virgil System	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-05-17
927	https://travisshears.com/snippets/git-revert-branch/	Revert an entire feature branch	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
929	https://travisshears.com/snippets/find-folder/	Find that lost folder	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
933	https://travisshears.com/snippets/tmux-new/	Mutliplex all the shells	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
934	https://travisshears.com/snippets/git-rebase/	Rewrite history git history	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
935	https://travisshears.com/snippets/git-revert/	Oops I take that back 	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
936	https://travisshears.com/snippets/silver-searcher/	Silver Searcher, it's like grep but faster and easier	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
937	https://travisshears.com/snippets/pass-search/	Search Pass from password	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
938	https://travisshears.com/snippets/pass-bulk-import/	Bulk import into Pass	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
939	https://travisshears.com/snippets/pass-copy/	Copy password from Pass to the keyboard	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
944	https://travisshears.com/snippets/who-is-using-that-port/	Who Is Using that damn port? (Mac)	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
945	https://travisshears.com/blog/climbing-grade-converter-tool/	climbing grade converter tool	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-10-19
947	https://travisshears.com/blog/lofoten/	lofoten	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-29
948	https://travisshears.com/blog/laberdolomiten/	laberdolomiten	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-24
950	https://travisshears.com/blog/iceland-2019/	iceland	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-02
1842	https://wiki.xxiivv.com/site/personal.html	Kabukicho	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1297	https://wiki.xxiivv.com/site/minamiise.html	Sail to Minamiise, Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1478	https://wiki.xxiivv.com/site/black.html	Ensenada Water Walk	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1397	https://wiki.xxiivv.com/site/duomo.html	The Districts	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1833	https://wiki.xxiivv.com/site/vambits.html	Vambits in Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1801	https://wiki.xxiivv.com/site/artwork.html	Tools to creative	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1857	https://wiki.xxiivv.com/site/artwork.html	Neoneve at the docks	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1804	https://wiki.xxiivv.com/site/merure.html	Merure Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1825	https://wiki.xxiivv.com/site/merure.html	Erri Launch	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
854	https://travisshears.com/blog/slovenia_trip/	slovenia trip	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-12-25
855	https://travisshears.com/snippets/gzip-existing-tar/	gzipping an existing tar	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-10-14
921	https://travisshears.com/snippets/ffmpeg-screen-casts/	Uploadable FFMPEG screen casts	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
949	https://travisshears.com/blog/hacking-health/	hacking health in zurich	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-23
951	https://travisshears.com/blog/frauenwasserl/	frauenwasserl	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-08-19
952	https://travisshears.com/blog/karwendelspitze-2019/	karwendelspitze	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-21
953	https://travisshears.com/blog/scanning-for-meaning/	scanning for meaning	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-14
954	https://travisshears.com/blog/canada-2019/	canada	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-12
955	https://travisshears.com/blog/switzerland-liechtenstein-2019/	switzerland + liechtenstein	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-05
924	https://travisshears.com/snippets/gitlab-runners-config/	Configure more gitlab runners	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
925	https://travisshears.com/snippets/git-who-last/	Who last edited a file	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
926	https://travisshears.com/snippets/git-log-grep/	Search git logs with grep	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
956	https://travisshears.com/blog/armycookbot/	army cook bot	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-01
957	https://travisshears.com/blog/klettergarten-bad-heilbrunn/	klettergarten bad heilbrunn	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-05-19
958	https://travisshears.com/blog/reviving-dotfiles/	reviving dotfiles	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-29
1858	https://wiki.xxiivv.com/site/merure.html	Merure 2 Launch	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1279	https://wiki.xxiivv.com/site/minamiise.html	Tennis Court Skate Park	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1294	https://wiki.xxiivv.com/site/minamiise.html	Shannon Entropy	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1296	https://wiki.xxiivv.com/site/minamiise.html	Shima Yacht Arbor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1763	https://wiki.xxiivv.com/site/personal.html	Shiro	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1486	https://wiki.xxiivv.com/site/black.html	Ensenada Trash Hill Top	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1504	https://wiki.xxiivv.com/site/black.html	Cooking	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1335	https://wiki.xxiivv.com/site/directory.html	田園に死す	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-02
1344	https://wiki.xxiivv.com/site/discourse.html	Maude	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-23
1610	https://wiki.xxiivv.com/site/oquonie.html	Walkthrough	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1269	https://wiki.xxiivv.com/site/minamiise.html	Up that hill	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1270	https://wiki.xxiivv.com/site/minamiise.html	Shore Ghostly	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1362	https://wiki.xxiivv.com/site/wiktopher.html	A Bed Of Dust	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-06
891	https://travisshears.com/tutorials/pull-request-homework-workflok/	Pull Request Homework Workflow	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
942	https://travisshears.com/snippets/aws-cloud-front-inval/	AWS CloudFront invalidation Sync	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
982	https://ix5.org/thoughts/2014/back-in-germany/	Back in Germany	\N	https://ix5.org	https://ix5.org/favicon.png	2017-02-24
983	https://ix5.org/thoughts/2014/2014-taiwan-bike-tour-travel-report/	2014 Taiwan bike tour travel report	\N	https://ix5.org	https://ix5.org/favicon.png	2018-01-27
984	https://ix5.org/thoughts/2014/changhua-county/	Changhua county	\N	https://ix5.org	https://ix5.org/favicon.png	2017-02-24
985	https://ix5.org/thoughts/2014/easy-going-on-little-liuciu-island/	Easy going on Little Liuciu Island	\N	https://ix5.org	https://ix5.org/favicon.png	2017-02-24
994	https://nor.the-rn.info/2020/09/11/the-software-blues/	The Software Blues	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-09-11
995	https://nor.the-rn.info/2020/09/01/arcologies-covered-by-cdm/	arcologies Covered by CDM	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-09-01
1006	https://inqlab.net/karawane.html	Karawane	\N	https://inqlab.net	https://inqlab.net/favicon.ico	1916-02-05
1011	https://metasyn.pw/raiu.html	6069181991aae3107ec3d119	\N	https://metasyn.pw	https://metasyn.pw/favicon.ico	2021-04-04
1016	http://milofultz.com/2021/01/06/reverse-horoscope	🌌 Reverse Horoscope - Find Out Your Real Birthday (JS)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2021-01-06
873	https://travisshears.com/tutorials/basic-vps-setup/	Basic VPS Setup	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-20
1017	http://milofultz.com/2020/12/27/atlb-notes	📕 Algorithms To Live By - Book Notes	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-12-27
1018	http://milofultz.com/2020/12/13/aoc-day-13	Solution to Advent of Code 13 - LCM with Offsets	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-12-13
1019	http://milofultz.com/2020/12/01/advent-of-code	🧩 Advent Of Code 2020 - Solutions	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-12-01
1020	http://milofultz.com/2020/11/10/bytebeat	Bytebeat - Overview and How To Make/Record on OSX	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-11-10
1850	https://wiki.xxiivv.com/site/osaka.html	Travel to Tokyo, Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1829	https://wiki.xxiivv.com/site/tokyo.html	In Bloom	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1854	https://wiki.xxiivv.com/site/dinaisth.html	Map	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-13
1427	https://wiki.xxiivv.com/site/left.html	Tooling	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1206	https://wiki.xxiivv.com/site/nasu.html	Nasu Web Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-02-02
1271	https://wiki.xxiivv.com/site/minamiise.html	Coastal Ghostly	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1028	http://milofultz.com/2020/10/12/track-python	💻 Track - Daily Journal and Log (Python)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-12
1029	http://milofultz.com/2020/10/12/sleep-realms	🎧 Sleep Realms (Paulstretch)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-12
1030	http://milofultz.com/2020/10/04/two-minute-rule	The Two-Minute Rule	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-04
1031	http://milofultz.com/2020/10/04/doing	Trying to become reacquainted with being bored	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-04
1032	http://milofultz.com/2020/09/30/evernote-images	💻 Maximize Evernote Storage Using Web Clipper (JS)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-09-30
1034	http://milofultz.com/2020/09/23/mastodon	Mastodon	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-09-23
974	https://ix5.org/thoughts/2017/grundgesetz-article-3/	Article 3: Equality	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
975	https://ix5.org/thoughts/2017/grundgesetz-article-2/	Article 2: Personal Freedoms	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
976	https://ix5.org/thoughts/2017/grundgesetz-article-1/	Article 1: Human Dignity and Rights	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
977	https://ix5.org/thoughts/2017/grundgesetz-beginning/	The Beginning	\N	https://ix5.org	https://ix5.org/favicon.png	2017-03-05
978	https://ix5.org/thoughts/2017/larry-wilmore-whca-2016/	“Yo Barry, you did it my nigga”	\N	https://ix5.org	https://ix5.org/favicon.png	2017-03-26
959	https://travisshears.com/blog/gitlab-npm-package-setup/	git hosted npm packages	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-17
960	https://travisshears.com/blog/corsica-2019/	corsica	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-10
961	https://travisshears.com/blog/local-pijul-with-docker/	try pijul with docker	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-01
1552	https://wiki.xxiivv.com/site/beauty.html	Hydreviral	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1616	https://wiki.xxiivv.com/site/beauty.html	A voice in the night	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1632	https://wiki.xxiivv.com/site/serventines.html	Qaro	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1613	https://wiki.xxiivv.com/site/the_sartre_mechanism.html	Ultravoid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-20
1609	https://wiki.xxiivv.com/site/defraction_optics.html	II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1611	https://wiki.xxiivv.com/site/defraction_optics.html	Waveform	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1037	http://milofultz.com/2020/08/22/purple-rain-outro	🎼 Purple Rain Outro Transcription	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-08-22
1038	http://milofultz.com/2020/08/19/soulja-realms	🎧 Soulja Realms	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-08-19
1039	http://milofultz.com/2020/08/04/piu-piu-ringtone	🎧 Piu Piu ringtone but it's only Avgustina's laugh	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-08-04
1040	http://milofultz.com/2020/07/23/awfulizer	💻 Awfulizer - Make Surfing The Web Awful (Firefox)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-23
1041	http://milofultz.com/2020/07/22/make-python-apps	Make Python 'Apps' and Shortcuts To Run Them on OSX	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-22
1042	http://milofultz.com/2020/07/18/programming-outline	Create a better program faster with an outline V2	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-18
979	https://ix5.org/thoughts/2016/minimalism-is-for-suckers/	Minimalism is for suckers	\N	https://ix5.org	https://ix5.org/favicon.png	2017-03-02
981	https://ix5.org/thoughts/2014/a-bit-of-wisdom/	A bit of wisdom	\N	https://ix5.org	https://ix5.org/favicon.png	2017-02-24
1043	http://milofultz.com/2020/07/08/star-maker	💻 star_maker - a lo-fi ambient visual (Python)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-08
1044	http://milofultz.com/2020/07/07/spacelove	🎧 spacelove.xm - Made using an old E-MAX sample	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-07
1045	http://milofultz.com/2020/07/03/wordsmash	💻 Wordsmash Explosion - Mastermind With Words (Python)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-03
1046	http://milofultz.com/2020/07/02/bmcrawl	💻 Bookmark Crawler - Make Internet More Fun (Python)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-02
1047	http://milofultz.com/2020/06/26/nobody-takes-advice	Nobody Takes Advice	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-06-26
1049	http://milofultz.com/2020/06/21/quantity-quality	Quality and quantity's relevance to critical feeling	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-06-21
1050	http://milofultz.com/2020/06/10/critical-feeling	Critical feeling is as important as critical thinking	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-06-10
1051	http://milofultz.com/2020/05/25/exercise-routine	Simple + Minimal Exercise Routine	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-25
1652	https://wiki.xxiivv.com/site/virtual_machines.html	Cover	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-24
1653	https://wiki.xxiivv.com/site/alphavetist.html	Katakana Practice	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-22
1650	https://wiki.xxiivv.com/site/noirca.html	1.1	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-25
1165	https://wiki.xxiivv.com/site/noton.html	Noton Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-11-19
1166	https://wiki.xxiivv.com/site/reform.html	Reform Oled	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-10-19
1155	https://wiki.xxiivv.com/site/radio.html	Baofeng UV-9R+	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-14
1156	https://wiki.xxiivv.com/site/busy_doing_nothing.html	The Logbook Book	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-08
1157	https://wiki.xxiivv.com/site/uxn.html	Uxn Sticker	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-03
1158	https://wiki.xxiivv.com/site/exed.html	Exed Desktop Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-01-22
1052	http://milofultz.com/2020/05/23/day-planner	🗺 Day planner based on location	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-23
1053	http://milofultz.com/2020/05/22/zettelkasten	I just found out about Zettelkasten	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-22
1054	http://milofultz.com/2020/05/22/keyboard-remapping	Keyboard Remapping on OSX - Adding the Insert Key	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-22
1055	http://milofultz.com/2020/05/22/just-in-case	Buying Things "Just In Case" vs. Real Estate	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-22
1035	http://milofultz.com/2020/09/01/domine	Domine (game from Hundred Rabbits)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-09-01
1036	http://milofultz.com/2020/08/26/random-note	💻 Open A Random Note/Lo-Fi Idea Generator (Python)	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-08-26
1056	http://milofultz.com/2020/05/17/adam-savage	The Adam Savage Trial Method	\N	http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-17
1099	https://irimi.one/music/illeapolis-radio/	Mr. Roboto - Illeapolis Radio, Vol. 1	\N	https://irimi.one	https://irimi.one/favicon.png	2021-01-15
1101	https://irimi.one/posts/motherplant/	motherplant	\N	https://irimi.one	https://irimi.one/favicon.png	2020-12-30
1102	https://irimi.one/music/sun23/	Zadig The Jasp - Sun 23	\N	https://irimi.one	https://irimi.one/favicon.png	2020-11-29
1103	https://irimi.one/posts/webring/	I’m on a Webring Now	\N	https://irimi.one	https://irimi.one/favicon.png	2020-11-14
1104	https://irimi.one/music/lone-electrone/	Lone Electrone	\N	https://irimi.one	https://irimi.one/favicon.png	2020-11-07
1442	https://wiki.xxiivv.com/site/instrument.html	Monitor View	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-14
1462	https://wiki.xxiivv.com/site/mexico.html	Guests in La Paz	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-02-03
1464	https://wiki.xxiivv.com/site/mexico.html	La Paz	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-02-03
1459	https://wiki.xxiivv.com/site/extended_sleep.html	Bird	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-29
1418	https://wiki.xxiivv.com/site/black.html	Rekka In The Dinghy	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1443	https://wiki.xxiivv.com/site/language.html	Immortal Birds	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-07
1447	https://wiki.xxiivv.com/site/marquesas.html	Colorful Sight	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1159	https://wiki.xxiivv.com/site/dito.html	Dito Desktop Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-01-20
1167	https://wiki.xxiivv.com/site/wiktopher.html	Tent City of Renate	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-06
1205	https://wiki.xxiivv.com/site/pino.html	In Minamiise	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1161	https://wiki.xxiivv.com/site/origami.html	Gyro 6	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
1162	https://wiki.xxiivv.com/site/origami.html	Sonobe 30	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
1775	https://wiki.xxiivv.com/site/notebook.html	The Trial of the Tide	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1781	https://wiki.xxiivv.com/site/the_sixth_season.html	Kinetik Festival, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-05-21
1794	https://wiki.xxiivv.com/site/unreleased.html	Merveilles Portable	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-12-08
1832	https://wiki.xxiivv.com/site/tokyo.html	Floppy	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1273	https://wiki.xxiivv.com/site/minamiise.html	Kirihara	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1274	https://wiki.xxiivv.com/site/minamiise.html	In a ghost town near you	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1849	https://wiki.xxiivv.com/site/osaka.html	Ornate	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1872	https://wiki.xxiivv.com/site/malice.html	Malice Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-27
1457	https://wiki.xxiivv.com/site/marquesas.html	Sail to Nuku Hiva, Marquesas	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1771	https://wiki.xxiivv.com/site/aliceffekt.html	Aliceffekt Shirt I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-24
1315	https://wiki.xxiivv.com/site/ogasawara.html	Marus	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1316	https://wiki.xxiivv.com/site/ogasawara.html	Terraforming done right	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1318	https://wiki.xxiivv.com/site/ogasawara.html	Omura Weather Station	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1320	https://wiki.xxiivv.com/site/ogasawara.html	Epave	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1844	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	1H1D vs Shikanokoa, Osaka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-26
1820	https://wiki.xxiivv.com/site/nataniev.html	Nataniev Portrait	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-01
1305	https://wiki.xxiivv.com/site/shizuoka.html	Moored downtown Shizuoka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1861	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1806	https://wiki.xxiivv.com/site/vambits.html	Vambits, DIY	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1807	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen Hallowe	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1826	https://wiki.xxiivv.com/site/idyllic_miners.html	Idyllic Miners Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-05-12
1846	https://wiki.xxiivv.com/site/tokyo.html	Kabukicho	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1674	https://wiki.xxiivv.com/site/kaleidoscope.html	Gorgeous Leon	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1678	https://wiki.xxiivv.com/site/oquonie.html	A Lost Neomine	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1680	https://wiki.xxiivv.com/site/oquonie.html	Goodies	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1681	https://wiki.xxiivv.com/site/oquonie.html	And so began testing	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1309	https://wiki.xxiivv.com/site/shizuoka.html	Sail to Shizuoka, Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1432	https://wiki.xxiivv.com/site/niue.html	Niue Coastline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1272	https://wiki.xxiivv.com/site/minamiise.html	Gokasho	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1446	https://wiki.xxiivv.com/site/research.html	Raspberry Pi Computer	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-10
1444	https://wiki.xxiivv.com/site/thousand_rooms.html	Cat has a visitor.	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-04-29
1441	https://wiki.xxiivv.com/site/instrument.html	Waterproof	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-14
1805	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1765	https://wiki.xxiivv.com/site/collegiennes.html	Prince of the Arcade	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1321	https://wiki.xxiivv.com/site/ogasawara.html	An Old Bunker	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1322	https://wiki.xxiivv.com/site/ogasawara.html	Omura Entrance	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1325	https://wiki.xxiivv.com/site/ogasawara.html	Sail to Chichijima, Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1365	https://wiki.xxiivv.com/site/hundred_rabbits.html	Rekka At work	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1732	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Kinetik Festival, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1203	https://wiki.xxiivv.com/site/programming.html	Acorn BBC Micro Logo on Famicom	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-16
1201	https://wiki.xxiivv.com/site/donsol_famicom.html	Donsol Famicom Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-12
1124	https://natehn.com/posts/on-memes/	On Memes	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-10-30
1125	https://natehn.com/feed/	Feed	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-10-09
1126	https://natehn.com/posts/land-acknowledgment/	Land Acknowledgment	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-09-22
1127	https://natehn.com/posts/this-website/	This Website, and How To Build Your Own	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-09-01
1128	https://natehn.com/about/	About	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-08-14
1787	https://wiki.xxiivv.com/site/czech.html	Visualscream Studio	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1788	https://wiki.xxiivv.com/site/czech.html	Tree of Pan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1105	https://irimi.one/collage-poems/jewelbox/	Like a Jewelbox in the Forest	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-31
1106	https://irimi.one/collage-poems/onethatlikestoread/	One That Likes to Read	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-31
1107	https://irimi.one/music/alpha-centauri/	Alicequests - Alpha Centauri	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-25
1108	https://irimi.one/music/50-tracks/	Netsh - 50 tracks to enhance your robotic implants	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-23
1109	https://irimi.one/posts/buying-music/	Buying Music Again	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-21
1790	https://wiki.xxiivv.com/site/czech.html	Spaceship Church	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1791	https://wiki.xxiivv.com/site/czech.html	Czech Ramen	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1792	https://wiki.xxiivv.com/site/czech.html	Travel to Czech	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1110	https://irimi.one/music/keep-running/	V//Tomo - ♥K e e p Running♥	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-20
1112	https://irimi.one/collage-poems/forgotten/	He had forgotten all	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-13
1113	https://irimi.one/collage-poems/sameasyou/	Same as you	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-13
1114	https://irimi.one/stickers/proprietary-bullshit/	Proprietary Bullshit	\N	https://irimi.one	https://irimi.one/favicon.png	2020-09-18
1115	https://irimi.one/stickers/acab/	All Computers Are Broken	\N	https://irimi.one	https://irimi.one/favicon.png	2020-09-06
1116	https://irimi.one/stickers/fab-money/	If money can’t buy happiness then why is it so fabulous?	\N	https://irimi.one	https://irimi.one/favicon.png	2020-09-06
1672	https://wiki.xxiivv.com/site/methascope.html	2000x	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-09
1704	https://wiki.xxiivv.com/site/hiversaires.html	Post Mortem	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1660	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	Autumn Leaves	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-19
1215	https://wiki.xxiivv.com/site/keyboard.html	OLKB Hi-pro mod Planck 6	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-01-02
1168	https://wiki.xxiivv.com/site/ayatori.html	Ayatori Notebook	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-10-04
1662	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	Spring	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-19
1664	https://wiki.xxiivv.com/site/purgateus.html	Night Time	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1665	https://wiki.xxiivv.com/site/purgateus.html	Dusk	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1666	https://wiki.xxiivv.com/site/nereid.html	The Habitat	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1876	https://wiki.xxiivv.com/site/merure.html	Merure I Cover	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1642	https://wiki.xxiivv.com/site/kaleidoscope.html	Lineggen	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1643	https://wiki.xxiivv.com/site/kaleidoscope.html	Diagolite I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1648	https://wiki.xxiivv.com/site/kaleidoscope.html	Diagolite I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1690	https://wiki.xxiivv.com/site/typography.html	Mirai Seu	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1707	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 24	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1708	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 20	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1715	https://wiki.xxiivv.com/site/macro.html	Building a telescope	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1691	https://wiki.xxiivv.com/site/typography.html	Milavregarian	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1717	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Cheapbeats - Tokyo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1195	https://wiki.xxiivv.com/site/pascal.html	Spiral Pattern	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-04-12
1175	https://wiki.xxiivv.com/site/chr_format.html	Nasu on Plan 9	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-07
1176	https://wiki.xxiivv.com/site/postscript.html	Postscript on Plan9	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-04
1177	https://wiki.xxiivv.com/site/plan9_clock.html	Not into babyblue	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-02
1178	https://wiki.xxiivv.com/site/plan9_c.html	Plan9 Draw	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-01
1179	https://wiki.xxiivv.com/site/acme.html	Custom Acme	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-31
1180	https://wiki.xxiivv.com/site/rio.html	Customizing Rio	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-30
1191	https://wiki.xxiivv.com/site/personal.html	Disused Hotel in Shimoda	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1212	https://wiki.xxiivv.com/site/andes_castel.html	Castel Entrance	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-23
1209	https://wiki.xxiivv.com/site/oquonie.html	Aboard Pino	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1196	https://wiki.xxiivv.com/site/pascal.html	Entaloneralie System 7	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-04-12
1520	https://wiki.xxiivv.com/site/beauty.html	02	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1170	https://wiki.xxiivv.com/site/longtermism.html	Brass Faucet	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-09-19
1171	https://wiki.xxiivv.com/site/spacetime_6502.html	Spacetime 6502	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-26
1172	https://wiki.xxiivv.com/site/usagi.html	Nesdev on Plan9	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-25
1173	https://wiki.xxiivv.com/site/plan9_color.html	Color Picker	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-14
1182	https://wiki.xxiivv.com/site/travel.html	Spent 7 weeks at sea	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-21
1183	https://wiki.xxiivv.com/site/nautical.html	Alphabet Flags	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-06-07
1204	https://wiki.xxiivv.com/site/donsol_famicom.html	Famicom AV to C1084 Monitor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-12
1667	https://wiki.xxiivv.com/site/nereid.html	The Stems	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1668	https://wiki.xxiivv.com/site/nereid.html	The South	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1669	https://wiki.xxiivv.com/site/nereid.html	The Highways	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1703	https://wiki.xxiivv.com/site/macro.html	Macro DIY iPhone	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1198	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack III	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-31
1199	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-31
1200	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-31
1257	https://wiki.xxiivv.com/site/macro.html	Caterpillar	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1612	https://wiki.xxiivv.com/site/defraction_optics.html	Circleform	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1208	https://wiki.xxiivv.com/site/famicom.html	Famicom Keyboard	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-29
1216	https://wiki.xxiivv.com/site/famicom.html	OPN2 Cartridge	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-29
1207	https://wiki.xxiivv.com/site/identity.html	XXIIVV in NesPaint	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1246	https://wiki.xxiivv.com/site/andes_castel.html	The view from Laeisth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-23
1236	https://wiki.xxiivv.com/site/risan_aldeth.html	Ehrivevnv Gate	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-07
1275	https://wiki.xxiivv.com/site/azolla.html	Azolla Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1277	https://wiki.xxiivv.com/site/azolla.html	JSNation, Amsterdam	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1241	https://wiki.xxiivv.com/site/neonev.html	Early Years	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-02
1222	https://wiki.xxiivv.com/site/kirleane.html	Paradichlorisse	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-30
1247	https://wiki.xxiivv.com/site/lard_shader.html	Study D	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1234	https://wiki.xxiivv.com/site/aitasla.html	Reflector	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-09
1249	https://wiki.xxiivv.com/site/playground.html	The Playground Express	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-24
1251	https://wiki.xxiivv.com/site/talk.html	Talk at XOXO, Portland	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-21
1252	https://wiki.xxiivv.com/site/hundred_rabbits.html	Kelp	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1499	https://wiki.xxiivv.com/site/pearls.html	Pearl	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-04
1220	https://wiki.xxiivv.com/site/vertale.html	Depot	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1224	https://wiki.xxiivv.com/site/vertale.html	Outside Passage	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1225	https://wiki.xxiivv.com/site/vertale.html	Fork Passage	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1231	https://wiki.xxiivv.com/site/dilitriel.html	Eaurizon Hangars	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1237	https://wiki.xxiivv.com/site/dilitriel.html	Flighter Transit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1223	https://wiki.xxiivv.com/site/whiinders.html	Offline Station	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-15
1228	https://wiki.xxiivv.com/site/whiinders.html	Signalter	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-15
1219	https://wiki.xxiivv.com/site/vetetrandes.html	Saarafores Station	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1230	https://wiki.xxiivv.com/site/vetetrandes.html	Escal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1233	https://wiki.xxiivv.com/site/vetetrandes.html	Shutting Ramp	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1248	https://wiki.xxiivv.com/site/hardware.html	Sanwu Audio Player	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-25
1254	https://wiki.xxiivv.com/site/canada.html	Travel to Vancouver, Canada	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-08
1278	https://wiki.xxiivv.com/site/microbit.html	BBC Microbit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-24
1232	https://wiki.xxiivv.com/site/laeisth.html	Es Plains	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-11
1243	https://wiki.xxiivv.com/site/kirleane.html	Soies Compressor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-30
1238	https://wiki.xxiivv.com/site/dilitriel.html	Flighter	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1239	https://wiki.xxiivv.com/site/dilitriel.html	Hanging Road	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1242	https://wiki.xxiivv.com/site/vetetrandes.html	Autoconstructors	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1283	https://wiki.xxiivv.com/site/microbit.html	Light Painting for the Microbit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-24
1255	https://wiki.xxiivv.com/site/tools.html	The Family	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-23
1240	https://wiki.xxiivv.com/site/dilitriel.html	Support Conduits	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1521	https://wiki.xxiivv.com/site/beauty.html	01	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1737	https://wiki.xxiivv.com/site/macro.html	Fibers	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1174	https://wiki.xxiivv.com/site/moogle.html	Pitch Yaw Roll	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-28
1181	https://wiki.xxiivv.com/site/moogle.html	Moogle Spheroid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-28
1190	https://wiki.xxiivv.com/site/nespaint.html	The NesPaint Interface	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-21
1169	https://wiki.xxiivv.com/site/identity.html	Made In Moogle	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1184	https://wiki.xxiivv.com/site/shimoda.html	Shimoda Station	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1185	https://wiki.xxiivv.com/site/shimoda.html	Sunset Maru	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1192	https://wiki.xxiivv.com/site/graf3dscene.html	Andes Castel In Construction	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-15
1152	https://wiki.xxiivv.com/site/left.html	Uxambly drawing routines	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1150	https://wiki.xxiivv.com/site/nasu.html	2-bit tiles in nasu	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-02-02
1193	https://wiki.xxiivv.com/site/minamiise.html	Nozoe at 5am	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1197	https://wiki.xxiivv.com/site/minamiise.html	The Gokashou Coast	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1202	https://wiki.xxiivv.com/site/minamiise.html	Nakatsuhamaura	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1210	https://wiki.xxiivv.com/site/technology.html	Paper Computer	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-12-03
1211	https://wiki.xxiivv.com/site/tools.html	Tools Sticker Sheets	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-23
1160	https://wiki.xxiivv.com/site/left.html	Working on Oscean with Left	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1262	https://wiki.xxiivv.com/site/plan9.html	Catclock	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-05
1213	https://wiki.xxiivv.com/site/morse.html	Morse Alphabet Chart	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-11-04
1214	https://wiki.xxiivv.com/site/macintosh.html	Neauismetica on Macintosh	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-11-01
1194	https://wiki.xxiivv.com/site/identity.html	Luna moth in Minamiise	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1244	https://wiki.xxiivv.com/site/dilitriel.html	Valentinel Bridge	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1284	https://wiki.xxiivv.com/site/tools.html	Orca Station	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-23
1253	https://wiki.xxiivv.com/site/andes.html	Andes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-08-29
1287	https://wiki.xxiivv.com/site/osaka.html	Rock Castle in Osaka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1838	https://wiki.xxiivv.com/site/tokyo.html	Lea	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1288	https://wiki.xxiivv.com/site/osaka.html	Rock Garden in Osaka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1289	https://wiki.xxiivv.com/site/osaka.html	Travel to Osaka, Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1256	https://wiki.xxiivv.com/site/ronin.html	Ronin Spiral	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-07
1263	https://wiki.xxiivv.com/site/plan9.html	Monochrome Rio	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-05
1264	https://wiki.xxiivv.com/site/plan9.html	Glenda	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-05
1259	https://wiki.xxiivv.com/site/ronin.html	Ronin Recursion	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-07
1265	https://wiki.xxiivv.com/site/monome.html	Linn Monome	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-29
1290	https://wiki.xxiivv.com/site/raspberry.html	Ad blocker with display	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-05
1266	https://wiki.xxiivv.com/site/skate.html	Minami Ise beach	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1267	https://wiki.xxiivv.com/site/skate.html	Minami Ise beach 2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1280	https://wiki.xxiivv.com/site/skate.html	Getting back into it	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1281	https://wiki.xxiivv.com/site/skate.html	Joy in picture	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1377	https://wiki.xxiivv.com/site/computer.html	In Bloom	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-22
1291	https://wiki.xxiivv.com/site/studio.html	Polivoks Mini B	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1292	https://wiki.xxiivv.com/site/studio.html	Polivoks Mini A	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1293	https://wiki.xxiivv.com/site/alicef.html	Polivoks	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-22
1300	https://wiki.xxiivv.com/site/shizuoka.html	Tea Fields	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1301	https://wiki.xxiivv.com/site/shizuoka.html	Tea House	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1298	https://wiki.xxiivv.com/site/pilot.html	Orca x Pilot	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-03
1299	https://wiki.xxiivv.com/site/pilot.html	The Pilot Synthetiser	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-03
1218	https://wiki.xxiivv.com/site/duomo.html	Slip Gate	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1226	https://wiki.xxiivv.com/site/duomo.html	Drains	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1227	https://wiki.xxiivv.com/site/duomo.html	Basin	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1235	https://wiki.xxiivv.com/site/duomo.html	Refineries	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1245	https://wiki.xxiivv.com/site/duomo.html	Septechoes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1366	https://wiki.xxiivv.com/site/physical.html	Elodie Vast	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-06-06
1345	https://wiki.xxiivv.com/site/paradise.html	ParadiseOS	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1346	https://wiki.xxiivv.com/site/wisdom.html	Sol Robeson	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-17
1303	https://wiki.xxiivv.com/site/juni.html	Holding the Chorded Keyboard	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-26
1304	https://wiki.xxiivv.com/site/juni.html	The Chorded Keyboard	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-26
1306	https://wiki.xxiivv.com/site/goals.html	Rekka on Pino in Shizuoka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-18
1307	https://wiki.xxiivv.com/site/goals.html	Pino docked in Shizuoka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-18
1302	https://wiki.xxiivv.com/site/shizuoka.html	Cherry Trees over Tea Fields	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1311	https://wiki.xxiivv.com/site/illustration.html	Working remotely	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-04
1312	https://wiki.xxiivv.com/site/ogasawara.html	Futami Beach	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1784	https://wiki.xxiivv.com/site/czech.html	Joe	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1313	https://wiki.xxiivv.com/site/ogasawara.html	Futami Sailors	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1319	https://wiki.xxiivv.com/site/lifestyle.html	Anchored in Ogasawara	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-02-20
1435	https://wiki.xxiivv.com/site/arvelie.html	Neralie	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-16
1285	https://wiki.xxiivv.com/site/azolla.html	Algomech Festival, Sheffield	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1286	https://wiki.xxiivv.com/site/azolla.html	Yajnev	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1328	https://wiki.xxiivv.com/site/marshall_islands.html	A young okra plant at the hospital	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1331	https://wiki.xxiivv.com/site/marshall_islands.html	Thai Basil	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1261	https://wiki.xxiivv.com/site/ronin.html	Ronin Splash	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-07
1260	https://wiki.xxiivv.com/site/monome.html	Rack Monome	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-29
1324	https://wiki.xxiivv.com/site/rekka.html	In Ogasawara	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1337	https://wiki.xxiivv.com/site/marshall_islands.html	Eggplant Twirl	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1372	https://wiki.xxiivv.com/site/pino.html	A new sail for Pino	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1314	https://wiki.xxiivv.com/site/ogasawara.html	Futami Arbor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1693	https://wiki.xxiivv.com/site/fuji.html	Climb Crew	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1687	https://wiki.xxiivv.com/site/orca.html	Orca Machine	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1342	https://wiki.xxiivv.com/site/unix.html	Static	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-06
1308	https://wiki.xxiivv.com/site/bike.html	In front of Mt. Fuji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-26
1356	https://wiki.xxiivv.com/site/donsol.html	Difficulty levels	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1333	https://wiki.xxiivv.com/site/merveilles.html	Maru	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-12-12
1379	https://wiki.xxiivv.com/site/black.html	Lost in Niue	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1334	https://wiki.xxiivv.com/site/merveilles.html	Mastodon Instance Inauguration	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-12-12
1382	https://wiki.xxiivv.com/site/black.html	Beach In Rarotonga	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1343	https://wiki.xxiivv.com/site/bike.html	Trek District S, in Fiji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-26
1317	https://wiki.xxiivv.com/site/lietal.html	Alrök Fur Säldota	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1340	https://wiki.xxiivv.com/site/marshall_islands.html	Sail to Majuro, Marshall Islands	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1326	https://wiki.xxiivv.com/site/the_sublime.html	Majuro Anchorage	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1357	https://wiki.xxiivv.com/site/sketchbook.html	Encounter with the floating eye	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-30
1370	https://wiki.xxiivv.com/site/webring.html	No, seriously.	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-05-15
1894	https://wiki.xxiivv.com/site/old_cities.html	01	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-14
1250	https://wiki.xxiivv.com/site/studio.html	Microbrute Synth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1282	https://wiki.xxiivv.com/site/studio.html	Infinite Polivoks	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1268	https://wiki.xxiivv.com/site/norns.html	Tutorials	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-10
1276	https://wiki.xxiivv.com/site/norns.html	Pong on Norns	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-10
1369	https://wiki.xxiivv.com/site/sketchbook.html	The Storm Transit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-30
1361	https://wiki.xxiivv.com/site/noon_guest.html	MoonQuest OST Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-07-14
1359	https://wiki.xxiivv.com/site/faqs.html	Nakano Sakaue II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-06-28
1363	https://wiki.xxiivv.com/site/faqs.html	Nakano Sakaue I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-06-28
1375	https://wiki.xxiivv.com/site/paradise.html	The Inspector Cat	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1332	https://wiki.xxiivv.com/site/hundred_rabbits.html	Neighbor Pino	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1367	https://wiki.xxiivv.com/site/neon_hermetism.html	Soies Injection	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-05-25
1381	https://wiki.xxiivv.com/site/visual.html	The Beldam Point Of View	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-19
1368	https://wiki.xxiivv.com/site/brane.html	The Millioneth Clock	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1378	https://wiki.xxiivv.com/site/radio_station.html	Pimoroni Board	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-18
1723	https://wiki.xxiivv.com/site/infrared.html	Wereda	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1789	https://wiki.xxiivv.com/site/czech.html	Classic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1360	https://wiki.xxiivv.com/site/markl.html	Markl Dojo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-09
1373	https://wiki.xxiivv.com/site/dotgrid.html	Improved the look and feel	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1371	https://wiki.xxiivv.com/site/photography.html	ÅA	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-05-12
1358	https://wiki.xxiivv.com/site/essentials.html	Durable and simple tools	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-07-22
1350	https://wiki.xxiivv.com/site/ethics.html	The Land Sailor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-29
1338	https://wiki.xxiivv.com/site/about.html	XXIIVV	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-28
1351	https://wiki.xxiivv.com/site/about.html	Ambigram	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-28
1329	https://wiki.xxiivv.com/site/riven.html	Riven Map	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-02-27
1347	https://wiki.xxiivv.com/site/fiji.html	Lami Bay II, Fiji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1348	https://wiki.xxiivv.com/site/fiji.html	Lami Bay, Fiji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1349	https://wiki.xxiivv.com/site/fiji.html	Cousteau	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1355	https://wiki.xxiivv.com/site/fiji.html	Savusavu, Fiji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1327	https://wiki.xxiivv.com/site/orca.html	Orca x Dotgrid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1310	https://wiki.xxiivv.com/site/artwork.html	Coralinev Bike	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1354	https://wiki.xxiivv.com/site/framboisedorf.html	A Toy Piano for Rainy Days	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-05
1336	https://wiki.xxiivv.com/site/orca.html	Orca Type	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1550	https://wiki.xxiivv.com/site/beauty.html	Genoviral	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1628	https://wiki.xxiivv.com/site/brane.html	III	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1626	https://wiki.xxiivv.com/site/brane.html	IIIII	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1627	https://wiki.xxiivv.com/site/brane.html	IIII	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1562	https://wiki.xxiivv.com/site/the_will_the_wisp.html	Twitter Bot Birth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-06-10
1588	https://wiki.xxiivv.com/site/america.html	Nebraska	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1511	https://wiki.xxiivv.com/site/nervous.html	Exhibit B	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-27
1330	https://wiki.xxiivv.com/site/nutrition.html	Deep Greens	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-19
1352	https://wiki.xxiivv.com/site/routine.html	Apartment in Koenji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-21
1353	https://wiki.xxiivv.com/site/japan.html	Shimokitazawa	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-19
1482	https://wiki.xxiivv.com/site/wallpapers.html	Shinji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1631	https://wiki.xxiivv.com/site/serventines.html	Untenest	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1615	https://wiki.xxiivv.com/site/paradise.html	Techgnostic Order	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1731	https://wiki.xxiivv.com/site/diluvium.html	Diluvium	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-20
1567	https://wiki.xxiivv.com/site/netherlands.html	Travel to Utrecht	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1556	https://wiki.xxiivv.com/site/infrared.html	Graveyard	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1559	https://wiki.xxiivv.com/site/infrared.html	Rekka and Sunglasses	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1568	https://wiki.xxiivv.com/site/astratas.html	Lines B	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-30
1570	https://wiki.xxiivv.com/site/ar_moire.html	Pattern IIII	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1571	https://wiki.xxiivv.com/site/ar_moire.html	Pattern III	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1572	https://wiki.xxiivv.com/site/ar_moire.html	Pattern II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1573	https://wiki.xxiivv.com/site/ar_moire.html	Pattern I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1569	https://wiki.xxiivv.com/site/astratas.html	Lines A	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-30
1577	https://wiki.xxiivv.com/site/astratas.html	Lines C	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-30
1581	https://wiki.xxiivv.com/site/talk.html	Talk at Amaze, Berlin	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-21
1580	https://wiki.xxiivv.com/site/flactals.html	Torazine	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
1558	https://wiki.xxiivv.com/site/inventory.html	Everyday Carry	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-07-13
1591	https://wiki.xxiivv.com/site/hypervoid.html	Dischromatic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1592	https://wiki.xxiivv.com/site/hypervoid.html	Nulloid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1600	https://wiki.xxiivv.com/site/hypervoid.html	Antipigment	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1574	https://wiki.xxiivv.com/site/time_alloy.html	Vertaline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-03
1575	https://wiki.xxiivv.com/site/time_alloy.html	Opaline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-03
1633	https://wiki.xxiivv.com/site/serventines.html	Anopass	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1622	https://wiki.xxiivv.com/site/modernista.html	05	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1623	https://wiki.xxiivv.com/site/modernista.html	04	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1624	https://wiki.xxiivv.com/site/modernista.html	02	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1625	https://wiki.xxiivv.com/site/modernista.html	01	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1630	https://wiki.xxiivv.com/site/ten_axitecture.html	Ten Axitecture	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-07
1582	https://wiki.xxiivv.com/site/flactals.html	Nestorine	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
1583	https://wiki.xxiivv.com/site/flactals.html	Coraline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
1645	https://wiki.xxiivv.com/site/advent_v.html	The Advent V Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-04
1716	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Lost Osaka Tempers	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-01
1635	https://wiki.xxiivv.com/site/serventines.html	Qovledon	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1636	https://wiki.xxiivv.com/site/serventines.html	Gaspse	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1692	https://wiki.xxiivv.com/site/hiversaires.html	Hiversaires Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1694	https://wiki.xxiivv.com/site/fuji.html	Torchlights	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1676	https://wiki.xxiivv.com/site/known_magye.html	PowPow, San Francisco	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-16
1677	https://wiki.xxiivv.com/site/known_magye.html	Live at DNA Lougne	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-16
1700	https://wiki.xxiivv.com/site/dei_dain.html	Dei Dain Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-06-17
1702	https://wiki.xxiivv.com/site/dei_dain.html	Mega Ran Tour, Tokyo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-06-17
1686	https://wiki.xxiivv.com/site/telekinesis.html	Pure Data Controller	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-12
1561	https://wiki.xxiivv.com/site/macro.html	Glass	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1554	https://wiki.xxiivv.com/site/mobile.html	Breakout Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-14
1576	https://wiki.xxiivv.com/site/time_alloy.html	Slyverline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-03
1578	https://wiki.xxiivv.com/site/extended_sleep.html	Extended Sleep Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-29
1564	https://wiki.xxiivv.com/site/netherlands.html	Amsterdam	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1565	https://wiki.xxiivv.com/site/netherlands.html	Utrecht	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1566	https://wiki.xxiivv.com/site/netherlands.html	Amsterdam	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1501	https://wiki.xxiivv.com/site/advent_v.html	Death	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-04
1589	https://wiki.xxiivv.com/site/america.html	Desert	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1596	https://wiki.xxiivv.com/site/ramiel.html	Ramiel Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-01-14
1597	https://wiki.xxiivv.com/site/miniscopie.html	Reine - Miniscopie	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-01-09
1598	https://wiki.xxiivv.com/site/beldam_records.html	Founded Beldam	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-29
1599	https://wiki.xxiivv.com/site/keyboard_468.html	Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-27
1604	https://wiki.xxiivv.com/site/supervisitor.html	Dodecae	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1605	https://wiki.xxiivv.com/site/supervisitor.html	Aliceffekt Live	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1606	https://wiki.xxiivv.com/site/supervisitor.html	Brut Cover	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1614	https://wiki.xxiivv.com/site/defraction_optics.html	Cover Page	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1522	https://wiki.xxiivv.com/site/beauty.html	03	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1563	https://wiki.xxiivv.com/site/eschatolor.html	Tevelision	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-19
1551	https://wiki.xxiivv.com/site/beauty.html	Vatoxoinal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1688	https://wiki.xxiivv.com/site/andes_castel.html	Entrance	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-23
1646	https://wiki.xxiivv.com/site/ledoliel.html	1.2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1657	https://wiki.xxiivv.com/site/ledoliel.html	Space friends	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1658	https://wiki.xxiivv.com/site/ledoliel.html	Strange Diplomacy	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1684	https://wiki.xxiivv.com/site/wallpapers.html	Motto	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1712	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	SquareSound, Melbourne	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1705	https://wiki.xxiivv.com/site/artwork.html	Space Marine Colour	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1706	https://wiki.xxiivv.com/site/wallpapers.html	Rami Ismail Rant	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1639	https://wiki.xxiivv.com/site/bifurcan.html	1.2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1647	https://wiki.xxiivv.com/site/bifurcan.html	Screensaver	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1699	https://wiki.xxiivv.com/site/infrared.html	Soldat	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1661	https://wiki.xxiivv.com/site/purgateus.html	The Autumn	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1663	https://wiki.xxiivv.com/site/purgateus.html	Purgateus Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1670	https://wiki.xxiivv.com/site/methascope.html	20x	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-09
1671	https://wiki.xxiivv.com/site/methascope.html	200x	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-09
1718	https://wiki.xxiivv.com/site/infrared.html	Tokyo Infrared II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1719	https://wiki.xxiivv.com/site/infrared.html	Tokyo Infrared	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1728	https://wiki.xxiivv.com/site/pico_battle.html	Pico Battle Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-06-27
1752	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	La Nuit Blanche, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-11
1741	https://wiki.xxiivv.com/site/germany.html	Travel to Berlin	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-24
1339	https://wiki.xxiivv.com/site/the_sublime.html	Sunrise in the Marshall Islands	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1341	https://wiki.xxiivv.com/site/riven.html	The Portals Combination	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-02-27
1374	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Halftone	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-16
1376	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Super Meteor Exhibition	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-16
1380	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Nepturne 7757	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-16
1364	https://wiki.xxiivv.com/site/the_sublime.html	Drifting toward Fiji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1438	https://wiki.xxiivv.com/site/grimgrains.html	Algea Crisp	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-11-07
1394	https://wiki.xxiivv.com/site/yajnev.html	Supermoon	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-07-16
1386	https://wiki.xxiivv.com/site/everyday.html	At sea, everything rusts	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-03-19
1395	https://wiki.xxiivv.com/site/marabu.html	Weeklybeats Tracking	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1426	https://wiki.xxiivv.com/site/nutrition.html	Tempeh Carrot Soba	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-19
1434	https://wiki.xxiivv.com/site/nutrition.html	Papaya Bruschetta	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-19
1390	https://wiki.xxiivv.com/site/hiversaires.html	Aitasla	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1453	https://wiki.xxiivv.com/site/known_magye.html	Known Magye Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-16
1396	https://wiki.xxiivv.com/site/dotgrid.html	Working away from snow	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1413	https://wiki.xxiivv.com/site/rotonde.html	Rotonde Interface	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-12
1383	https://wiki.xxiivv.com/site/framboisedorf.html	A Small Pocket Synth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-05
1695	https://wiki.xxiivv.com/site/fuji.html	From Kawaguchiko	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1696	https://wiki.xxiivv.com/site/fuji.html	Mt. Fuji Summit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1701	https://wiki.xxiivv.com/site/infrared.html	Infrared Set 2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1389	https://wiki.xxiivv.com/site/riven.html	Portal combination is in my journal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-02-27
1399	https://wiki.xxiivv.com/site/death.html	Dominion	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-11-14
1439	https://wiki.xxiivv.com/site/collected_works.html	Collected works Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-29
1384	https://wiki.xxiivv.com/site/weather_station.html	Looking out for storms	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-03-21
1419	https://wiki.xxiivv.com/site/the_sublime.html	At sea, near The Marquesas	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1448	https://wiki.xxiivv.com/site/the_sublime.html	Drifting	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1420	https://wiki.xxiivv.com/site/rotonde.html	Rotonde Layout	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-12
1640	https://wiki.xxiivv.com/site/ledoliel.html	2.0	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1649	https://wiki.xxiivv.com/site/serventines.html	Mount Duomo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1685	https://wiki.xxiivv.com/site/lietal.html	iOS7 Patch	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1398	https://wiki.xxiivv.com/site/vambits.html	Fresh Vambit Cuts	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1392	https://wiki.xxiivv.com/site/ehrivevnv.html	Orbit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-01-28
1393	https://wiki.xxiivv.com/site/neausea.html	Of Fallen Pilgrims	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-01-24
1445	https://wiki.xxiivv.com/site/pino.html	Repairing the main sail	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1410	https://wiki.xxiivv.com/site/morals.html	And Jöns	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-17
1416	https://wiki.xxiivv.com/site/new_zealand.html	Sail to Whangarei, New Zealand	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-29
1401	https://wiki.xxiivv.com/site/film.html	Wandering in the North Island	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1424	https://wiki.xxiivv.com/site/marabu.html	Removed everything	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1402	https://wiki.xxiivv.com/site/film.html	Guerilla Gardening	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1436	https://wiki.xxiivv.com/site/japanese.html	Sidonia	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-12
1437	https://wiki.xxiivv.com/site/japanese.html	Nakano	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-12
1452	https://wiki.xxiivv.com/site/marquesas.html	Heavy Rain	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1449	https://wiki.xxiivv.com/site/superworker.html	Recording Superworker	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-04-02
1450	https://wiki.xxiivv.com/site/superworker.html	Pocket Operator	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-04-02
1454	https://wiki.xxiivv.com/site/marquesas.html	Pampel	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1400	https://wiki.xxiivv.com/site/vambits.html	Vambits on a Camera	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1423	https://wiki.xxiivv.com/site/getapan_728k.html	Album cover	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-24
1852	https://wiki.xxiivv.com/site/maeve.html	Pcellar II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-10-15
1406	https://wiki.xxiivv.com/site/documentation.html	Analogies	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-24
1455	https://wiki.xxiivv.com/site/marquesas.html	Pampel?	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1456	https://wiki.xxiivv.com/site/marquesas.html	Nuku-Hiva	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1461	https://wiki.xxiivv.com/site/black.html	Rekka in Los Angeles	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1463	https://wiki.xxiivv.com/site/black.html	Pino in Ensenada	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1548	https://wiki.xxiivv.com/site/looking_glace.html	Looking Glace Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-28
1467	https://wiki.xxiivv.com/site/donsol.html	Donsol Desktop Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1536	https://wiki.xxiivv.com/site/opal_inquisitors.html	Opal inquisitors Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-15
1528	https://wiki.xxiivv.com/site/hundred_rabbits.html	Rabbits	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1518	https://wiki.xxiivv.com/site/blindfolk.html	Blindfolks	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-01-31
1496	https://wiki.xxiivv.com/site/camera.html	Learn Film Photo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-14
1503	https://wiki.xxiivv.com/site/lives.html	At 1H1D in Osaka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-05-31
1473	https://wiki.xxiivv.com/site/russian.html	Сердце получает нож	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-12-05
1480	https://wiki.xxiivv.com/site/nervous.html	Woulg	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-27
1483	https://wiki.xxiivv.com/site/lard_shader.html	Study C	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1506	https://wiki.xxiivv.com/site/verreciel_soundtrack.html	Verreciel OST Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-05-09
1508	https://wiki.xxiivv.com/site/polygore.html	Hexagore	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-04-12
1530	https://wiki.xxiivv.com/site/rabbits_soundtrack.html	A Hundred Knobs	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-29
1385	https://wiki.xxiivv.com/site/weather_station.html	Listening to the weather	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-03-21
1440	https://wiki.xxiivv.com/site/children_of_bramble.html	Immortal Bird	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-28
1539	https://wiki.xxiivv.com/site/austria.html	Vienna	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1414	https://wiki.xxiivv.com/site/wiktopher.html	Book Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-06
1411	https://wiki.xxiivv.com/site/dotgrid.html	General improvements	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1544	https://wiki.xxiivv.com/site/austria.html	Linz Food	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1405	https://wiki.xxiivv.com/site/new_zealand.html	Arrived in New Zealand	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-29
1391	https://wiki.xxiivv.com/site/vambits.html	From Skógr Studios	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1468	https://wiki.xxiivv.com/site/donsol.html	Donsol Desktop Interface	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1498	https://wiki.xxiivv.com/site/language.html	The Voynich	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-07
1471	https://wiki.xxiivv.com/site/film.html	San Francisco Street	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1466	https://wiki.xxiivv.com/site/nomad.html	Fulcanelli	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-18
1469	https://wiki.xxiivv.com/site/directory.html	春野美子「茶の味」	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-02
1479	https://wiki.xxiivv.com/site/aesthetics.html	A Digest	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-10-27
1509	https://wiki.xxiivv.com/site/polygore.html	Pentagore	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-04-12
1517	https://wiki.xxiivv.com/site/lietal.html	The Lietal Flag	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1519	https://wiki.xxiivv.com/site/hypervoid.html	Pandischopic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1477	https://wiki.xxiivv.com/site/grimgrains.html	Bamboo Charcoal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-11-07
1512	https://wiki.xxiivv.com/site/nervous.html	Exhibit A	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-27
1531	https://wiki.xxiivv.com/site/macro.html	Cure Dents	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1543	https://wiki.xxiivv.com/site/talk.html	Talk at Ars Electronica, Vienna	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-21
1472	https://wiki.xxiivv.com/site/film.html	San Francisco Stairs	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1474	https://wiki.xxiivv.com/site/film.html	The Helm	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1485	https://wiki.xxiivv.com/site/film.html	My Father At The Helm	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1488	https://wiki.xxiivv.com/site/film.html	Early Sailing Days	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1470	https://wiki.xxiivv.com/site/donsol.html	Progress on Donsol	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1500	https://wiki.xxiivv.com/site/pearls.html	Cell	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-04
1534	https://wiki.xxiivv.com/site/mobile.html	Old Android UI	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-14
1460	https://wiki.xxiivv.com/site/pino.html	Becalmed	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1458	https://wiki.xxiivv.com/site/nomad.html	Lost in Ensenada	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-18
1417	https://wiki.xxiivv.com/site/marabu.html	Marabu Tracker	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1412	https://wiki.xxiivv.com/site/markl.html	Wood Stage	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-09
1421	https://wiki.xxiivv.com/site/marabu.html	Almost Stability	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1388	https://wiki.xxiivv.com/site/film.html	Hiding from the rain	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1153	https://wiki.xxiivv.com/site/nasu.html	Nasu on Uxn	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-02-02
1523	https://wiki.xxiivv.com/site/bifurcan.html	Bifurcan Die	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1489	https://wiki.xxiivv.com/site/film.html	Early Sailing Days	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1490	https://wiki.xxiivv.com/site/film.html	Evening near Vancouver Island	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1487	https://wiki.xxiivv.com/site/america.html	Sail to San Francisco	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1510	https://wiki.xxiivv.com/site/polygore.html	Trigore	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-04-12
1533	https://wiki.xxiivv.com/site/dictionarism.html	Diarism	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-10-31
1465	https://wiki.xxiivv.com/site/black.html	Sail to Ensenada, Mexico	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1515	https://wiki.xxiivv.com/site/portalion.html	Portalion Cover	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-02
1526	https://wiki.xxiivv.com/site/orca.html	Orca Glyphs	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1495	https://wiki.xxiivv.com/site/rekka.html	Reading about sailing	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1502	https://wiki.xxiivv.com/site/advent_v.html	The Tavern	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-04
1524	https://wiki.xxiivv.com/site/keyboard.html	Setup	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-01-02
1505	https://wiki.xxiivv.com/site/rekka.html	Last days in Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1553	https://wiki.xxiivv.com/site/kaleidoscope.html	Chrestasebeia	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1593	https://wiki.xxiivv.com/site/alphavetist.html	3.0	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-22
1629	https://wiki.xxiivv.com/site/serventines.html	Jenen	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1532	https://wiki.xxiivv.com/site/hundred_rabbits.html	The Whole Band	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1513	https://wiki.xxiivv.com/site/verreciel.html	Eminence	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-27
1527	https://wiki.xxiivv.com/site/verreciel.html	Further	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-27
1535	https://wiki.xxiivv.com/site/verreciel.html	Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-27
1475	https://wiki.xxiivv.com/site/black.html	Ensenada Trash Hill	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1476	https://wiki.xxiivv.com/site/black.html	The V Berth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1537	https://wiki.xxiivv.com/site/austria.html	Heading Out	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1538	https://wiki.xxiivv.com/site/austria.html	Streets Like Amadeus	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1540	https://wiki.xxiivv.com/site/austria.html	Suddenly, Half-Life	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1541	https://wiki.xxiivv.com/site/austria.html	Vienna	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1542	https://wiki.xxiivv.com/site/austria.html	Ars Electronica	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1545	https://wiki.xxiivv.com/site/austria.html	Linz	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1601	https://wiki.xxiivv.com/site/dew.html	Dew Interface	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-06
1608	https://wiki.xxiivv.com/site/dodecae.html	Flyer	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-04
1584	https://wiki.xxiivv.com/site/donsol.html	Mobile Interface Update	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1585	https://wiki.xxiivv.com/site/lard_shader.html	Study B	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1549	https://wiki.xxiivv.com/site/beauty.html	Mytresial	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1557	https://wiki.xxiivv.com/site/supervisitor.html	Trapezoid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1579	https://wiki.xxiivv.com/site/black.html	Ensenada Hills	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1586	https://wiki.xxiivv.com/site/lard_shader.html	Study A	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1587	https://wiki.xxiivv.com/site/donsol.html	Mobile Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1621	https://wiki.xxiivv.com/site/telekinesis.html	Leap Motion Demo, Tokyo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-12
1602	https://wiki.xxiivv.com/site/rafinograde.html	Glyph Art	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-13
1603	https://wiki.xxiivv.com/site/research.html	The sartre Ultravoid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-10
1560	https://wiki.xxiivv.com/site/vocavularist.html	Vocavularist Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-07
1769	https://wiki.xxiivv.com/site/aliceffekt.html	True Form	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-24
1800	https://wiki.xxiivv.com/site/vambits.html	Vambits, Last Gen	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1745	https://wiki.xxiivv.com/site/ring_of_scales.html	Ring of scales	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-13
1724	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Tokyo Tempers	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-01
1799	https://wiki.xxiivv.com/site/death.html	Milk	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-11-14
1758	https://wiki.xxiivv.com/site/oscean.html	The Pillars	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-13
1757	https://wiki.xxiivv.com/site/mobile.html	Character Builder	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-14
1720	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Ehrivevnv Studies Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1760	https://wiki.xxiivv.com/site/from_saharaphorest.html	From Saharaphorest Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-11-28
1762	https://wiki.xxiivv.com/site/from_saharaphorest.html	From Saharaphorest	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-11-28
1734	https://wiki.xxiivv.com/site/collegiennes.html	Toronto Game Jam 201	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1721	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Blip Festival, Tokyo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1722	https://wiki.xxiivv.com/site/waiting_for_horus.html	Mar	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-21
1748	https://wiki.xxiivv.com/site/prototyping.html	PP3DP 1kg Spool Holder	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-07
1730	https://wiki.xxiivv.com/site/diluvium.html	Logo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-20
1733	https://wiki.xxiivv.com/site/occulter.html	Coal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-02
1735	https://wiki.xxiivv.com/site/occulter.html	Binchotan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-02
1736	https://wiki.xxiivv.com/site/occulter.html	Occulter	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-02
1795	https://wiki.xxiivv.com/site/siseon.html	Siseon	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-05
1828	https://wiki.xxiivv.com/site/rekka.html	Leaving	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1743	https://wiki.xxiivv.com/site/france.html	Some bridge some place	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-19
1776	https://wiki.xxiivv.com/site/yajnev.html	Yajnev Thoughts	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-07-16
1759	https://wiki.xxiivv.com/site/unreleased.html	Merveilles	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-12-08
1726	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Vetetrandes Lettres Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1739	https://wiki.xxiivv.com/site/victorian_punch.html	Punch on the table	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-04-02
1740	https://wiki.xxiivv.com/site/victorian_punch.html	Banned	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-04-02
1727	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	iVardensphere Tour, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1742	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Noise Complex, Paris	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1744	https://wiki.xxiivv.com/site/france.html	Travel to Paris	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-19
1749	https://wiki.xxiivv.com/site/spagettini_scale.html	Spagettini Scale	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-05
1746	https://wiki.xxiivv.com/site/hex_hive_necklace.html	First Hex Hive Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-09
1747	https://wiki.xxiivv.com/site/hex_hive_necklace.html	Hex Hive Necklace	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-09
1750	https://wiki.xxiivv.com/site/paradise.html	Lost in Paradise	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1754	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	Es gulf sunflowers Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-11
1772	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Lith	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1751	https://wiki.xxiivv.com/site/waiting_for_horus.html	Waiting for Horus	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-21
1753	https://wiki.xxiivv.com/site/waiting_for_horus.html	Rah	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-21
22	https://notes.neeasade.net/Aug-2020.html	8 Months Adrift	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-08-04
23	https://notes.neeasade.net/Pinebook-Pro.html	Pinebook Pro	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-06-09
24	https://notes.neeasade.net/tickling-bash-a-rofi-adventure.html	tickling bash, the quest for the perfect menu	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-10
58	https://writing.natwelch.com/post/696	Japan 2019 Travel Log Day 2	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-15
224	https://oddworlds.org/wiki/repair.html	Repair	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-08
327	https://longest.voyage/log/countdown/	Countdown	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2018-09-25
126	https://szymonkaliski.com/projects/nott/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-07-01
127	https://szymonkaliski.com/projects/volume-brush/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-06-25
128	https://szymonkaliski.com/projects/modeler/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-04-19
90	https://resevoir.net//org-mode	https://resevoir.net//org-mode	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-22
91	https://resevoir.net//pointers	https://resevoir.net//pointers	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-03-08
101	https://resevoir.net//service-design	https://resevoir.net//service-design	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-08-08
83	https://resevoir.net//jonathan	https://resevoir.net//jonathan	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-11-12
84	https://resevoir.net//kiron	https://resevoir.net//kiron	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-08-02
85	https://resevoir.net//library	https://resevoir.net//library	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-01
86	https://resevoir.net//lifestyle	https://resevoir.net//lifestyle	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-10
87	https://resevoir.net//manifestations	https://resevoir.net//manifestations	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-11
88	https://resevoir.net//mediums	https://resevoir.net//mediums	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
111	https://resevoir.net//trails	https://resevoir.net//trails	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-05-02
81	https://resevoir.net//index	https://resevoir.net//index	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
122	https://szymonkaliski.com/projects/protoboard/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-07-14
123	https://szymonkaliski.com/projects/hhann/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-06-30
124	https://szymonkaliski.com/writing/2020-04-19-memex-dreams/	Memex Dreams	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-04-19
125	https://szymonkaliski.com/projects/archivist/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-01-01
130	https://szymonkaliski.com/writing/2019-03-01-building-dacein/	Building Dacein	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-03-01
131	https://szymonkaliski.com/projects/dacein/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-03-01
132	https://szymonkaliski.com/writing/2018-11-27-laboratory-residency/	Laboratory Residency	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-11-27
133	https://szymonkaliski.com/projects/hiccup-sdf/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-11-25
134	https://szymonkaliski.com/projects/hhtwm/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-11-03
135	https://szymonkaliski.com/projects/sketchbook-cli/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-08-29
136	https://szymonkaliski.com/projects/editable-cli/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-08-19
137	https://szymonkaliski.com/projects/hot-visualize-change/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-05-16
138	https://szymonkaliski.com/projects/crln/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-04-07
139	https://szymonkaliski.com/projects/mntn/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-03-10
146	https://szymonkaliski.com/projects/das-ui/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-09-08
148	https://szymonkaliski.com/writing/2017-07-07-building-neutron/	Building Neutron	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-07-07
149	https://szymonkaliski.com/projects/neutron/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-07-07
150	https://szymonkaliski.com/writing/2017-05-31-exploring-reasonml/	Exploring ReasonML	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-05-31
151	https://szymonkaliski.com/writing/2017-04-30-time-tracking/	Timav	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-04-30
714	https://royniang.com/roy_niang.html	Out of focus	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-11
705	https://royniang.com/illustration.html	HyperCard portrait	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-05-04
692	https://royniang.com/cooking_tools.html	Hario V60	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-23
715	https://royniang.com/street.html	Octopus	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
716	https://royniang.com/street.html	Goldfishes	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
393	https://teknari.com/blogpost/1595682675547/2015+September+Journal+	2015 September Journal 	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
394	https://teknari.com/blogpost/1595681107423/2015+August+Journal	2015 August Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
395	https://teknari.com/blogpost/1595548974481/2015+July+Journal	2015 July Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-24
396	https://teknari.com/blogpost/1595537557776/2015+Journal+June	2015 Journal June	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-23
397	https://teknari.com/blogpost/1595536068883/2015+May+Journal	2015 May Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-23
398	https://teknari.com/blogpost/1595502848493/Apple+I	Apple I	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-23
399	https://teknari.com/blogpost/1594587027196/2015+April+Journal	2015 April Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-12
400	https://teknari.com/blogpost/1594567446819/2015+March+Journal	2015 March Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-12
401	https://teknari.com/blogpost/1594562577891/2015+February+Journal	2015 February Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-12
402	https://teknari.com/blogpost/1594344859804/2015+January+Journal	2015 January Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-10
408	https://teknari.com/blogpost/1594233551325/	\N	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-08
\.


--
-- Data for Name: sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sites (id, site_url, site_title, site_favicon) FROM stdin;
1	http://nonmateria.com	\N	http://nonmateria.com/data/favicon.png
2	https://notes.neeasade.net	\N	https://notes.neeasade.net/favicon.ico
3	https://aless.co	\N	/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2
4	https://writing.natwelch.com	\N	https://writing.natwelch.com/favicon.ico
5	https://resevoir.net	\N	/favicon/favicon-32x32.png
6	https://szymonkaliski.com	\N	https://szymonkaliski.com/favicon.ico
7	https://xj-ix.luxe	\N	https://xj-ix.luxe/favicon.ico
8	http://nonmateria.com	\N	http://nonmateria.com/data/favicon.png
9	https://oddworlds.org	\N	https://oddworlds.org/favicon.ico
10	https://chad.is	\N	/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca
11	https://bismuth.garden	\N	/favicon.ico
12	https://xvw.github.io	\N	https://xvw.github.io/favicon.ico
13	https://now.lectronice.com	\N	lectrologo.svg
14	https://longest.voyage	\N	/favicon-32x32.png
15	https://kokorobot.ca	\N	media/services/favicon.ico
16	https://ameyama.com	\N	https://ameyama.com/favicon.ico
17	https://phse.net	\N	/favicon-32.png
18	https://rosano.ca	\N	https://rosano.s3.amazonaws.com/public/rcreativ/favicon.ico
19	https://teknari.com	\N	https://teknari.com/favicon.ico
20	https://serocell.com	\N	favicon.ico
21	https://gueorgui.net	\N	/assets/images/favicon.png
22	https://sixey.es	\N	https://sixey.es/favicon.ico
23	https://icyphox.sh	\N	/favicon.png
24	https://royniang.com	\N	media/services/icon.png
25	https://crlf.site	\N	/logo/favicon.ico
26	https://system32.simone.computer	\N	https://simone.computer/favicon-32x32.png
27	https://simply.personal.jenett.org	\N	https://simply.personal.jenett.org/wp-content/uploads/2020/10/cropped-j0920-f-copy-32x32.png
28	https://q.pfiffer.org	\N	https://q.pfiffer.org/favicon.ico
29	https://www.edwinwenink.xyz	\N	https://www.edwinwenink.xyz/favicon.ico
30	https://www.mentalnodes.com	\N	favicon-32x32.png
31	https://materialfuture.net	\N	https://materialfuture.net/favicon.ico
32	https://travisshears.com	\N	https://travisshears.com/favicon.ico
33	https://ix5.org/thoughts	\N	https://ix5.org/img/logo_x5_filled-optim.svg
34	https://nor.the-rn.info	\N	/favicon-32x32.png
35	https://inqlab.net	\N	https://inqlab.net/favicon.ico
36	https://metasyn.pw	\N	https://metasyn.pw/favicon.ico
37	https://milofultz.com	\N	https://milofultz.com/assets/anon.ico
38	https://wolfmd.me	\N	https://wolfmd.me/favicon.ico
39	https://irimi.one	\N	https://irimi.one/favicon.png
40	https://natehn.com	\N	https://natehn.com/images/favicon.ico
41	https://www.gr0k.net	\N	https://www.gr0k.net/favicon.ico
42	https://tendigits.space	\N	https://tendigits.space/favicon.ico
43	https://wiki.xxiivv.com	\N	media/services/icon.png
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 1895, true);


--
-- Name: sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sites_id_seq', 43, true);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: sites sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

