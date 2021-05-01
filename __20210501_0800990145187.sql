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
744	https://www.edwinwenink.xyz/posts/46-ai_and_healthcare/	Tech giants will battle over your health data	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-03-17
745	https://www.edwinwenink.xyz/posts/45-raven_paradox_inductive_inference/	The Raven Paradox of Inductive Reasoning	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-02-11
347	https://ameyama.com/blog/public-domain-tapes	(雨山) Public Domain Tapes	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-02
344	https://ameyama.com/blog/grief	(雨山) Grief	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-28
345	https://ameyama.com/blog/passgen	(雨山) Passgen	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-27
346	https://ameyama.com/blog/bookshelf	(雨山) Bookshelf	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-16
17	https://notes.neeasade.net/systemd-user-services.html	systemd user services	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2021-01-02
18	https://notes.neeasade.net/search-term-playlists.html	search term playlists	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-12-13
19	https://notes.neeasade.net/color-spaces.html	reasoning about colors	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-11-24
20	https://notes.neeasade.net/my-shell-prompt.html	my shell prompt	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-11-09
21	https://notes.neeasade.net/Automata-tiling-backgrounds-2.html	Automata tiling backgrounds 2	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-08-14
22	https://notes.neeasade.net/Aug-2020.html	8 Months Adrift	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-08-04
62	https://resevoir.net//about	https://resevoir.net//about	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-12-17
63	https://resevoir.net//annotation	https://resevoir.net//annotation	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-15
64	https://resevoir.net//auto-rickshaw	https://resevoir.net//auto-rickshaw	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-08-25
65	https://resevoir.net//bicycles	https://resevoir.net//bicycles	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-10-09
66	https://resevoir.net//biking	https://resevoir.net//biking	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-19
67	https://resevoir.net//bricolage	https://resevoir.net//bricolage	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-26
68	https://resevoir.net//chasmic	https://resevoir.net//chasmic	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-22
70	https://resevoir.net//community-network-project	https://resevoir.net//community-network-project	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-07-23
71	https://resevoir.net//craft	https://resevoir.net//craft	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
211	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
212	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
213	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
335	https://kokorobot.ca/site/rug.html	Rope mats	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2020-12-07
337	https://kokorobot.ca/site/rug.html	Ocean plait mat tutorial	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2020-12-07
32	https://aless.co/2020/	2020	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2020-12-11
33	https://aless.co/typed-web-workers/	Typed Web Workers	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2020-04-30
34	https://aless.co/gatsby-wasm-plugin/	Building a Gatsby Plugin with Wasm	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2020-01-06
35	https://aless.co/2019/	2019	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-12-01
36	https://aless.co/resume-as-code/	Resume as Code	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-10-08
38	https://aless.co/working-at-the-edge/	Working at the Edge	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-02-18
42	https://writing.natwelch.com/post/714	2020: Year in Review	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2021-01-02
43	https://writing.natwelch.com/post/713	Bugs Fixed on Vacation	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2020-11-05
44	https://writing.natwelch.com/post/711	Tales from Isolation: Coding	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2020-04-05
45	https://writing.natwelch.com/post/710	2019: Year in Review	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2020-01-02
46	https://writing.natwelch.com/post/703	Nat Welch Manifesto	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-12-01
47	https://writing.natwelch.com/post/709	Inspiration	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-11-10
48	https://writing.natwelch.com/post/708	Exercise of Grandmasters	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-10-12
136	https://szymonkaliski.com/projects/editable-cli/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-08-19
49	https://writing.natwelch.com/post/707	reportd: Self hosted CSP reporting	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-10-05
50	https://writing.natwelch.com/post/706	Zany hijinks while eating the food from Zelda	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-09-23
214	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
215	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
23	https://notes.neeasade.net/Pinebook-Pro.html	Pinebook Pro	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-06-09
24	https://notes.neeasade.net/tickling-bash-a-rofi-adventure.html	tickling bash, the quest for the perfect menu	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-10
78	https://resevoir.net//fraktur	https://resevoir.net//fraktur	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-12-20
79	https://resevoir.net//git-for-filmmakers	https://resevoir.net//git-for-filmmakers	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-29
80	https://resevoir.net//historiography	https://resevoir.net//historiography	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-11-08
131	https://szymonkaliski.com/projects/dacein/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-03-01
81	https://resevoir.net//index	https://resevoir.net//index	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
137	https://szymonkaliski.com/projects/hot-visualize-change/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-05-16
138	https://szymonkaliski.com/projects/crln/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-04-07
139	https://szymonkaliski.com/projects/mntn/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-03-10
112	https://resevoir.net//urgency	https://resevoir.net//urgency	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-02
113	https://resevoir.net//visiweave	https://resevoir.net//visiweave	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-04-16
114	https://resevoir.net//webring	https://resevoir.net//webring	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-20
140	https://szymonkaliski.com/writing/2018-01-28-diy-monome/	DIY Monome	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-01-28
358	https://phse.net/a-new-minimalism/	A New Minimalism	\N	https://phse.net	https://phse.net/favicon-32.png	2019-09-28
359	https://phse.net/august-update/	August Update	\N	https://phse.net	https://phse.net/favicon-32.png	2019-08-20
360	https://phse.net/naive-sudoku/	Naive Sudoku	\N	https://phse.net	https://phse.net/favicon-32.png	2019-07-27
361	https://phse.net/notes-template/	How I organize project notes	\N	https://phse.net	https://phse.net/favicon-32.png	2019-06-08
362	https://phse.net/choose-people/	Choose people, not projects	\N	https://phse.net	https://phse.net/favicon-32.png	2019-06-05
363	https://phse.net/curiosity/	Curiosity & Focus	\N	https://phse.net	https://phse.net/favicon-32.png	2019-03-30
141	https://szymonkaliski.com/projects/diy-monome/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-01-28
117	https://szymonkaliski.com/newsletter/2021-03-29-q1-2021/	Q1 2021	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2021-03-29
365	https://phse.net/recently/	Recently	\N	https://phse.net	https://phse.net/favicon-32.png	2019-03-21
41	https://aless.co/coding-is-not-cs/	Coding != Computer Science	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2014-07-07
178	gemini://xj-ix.luxe/posts/2021-01-14-parasitic-hypervisor.gmi	parasitic hypervisor	\N	gemini://xj-ix.luxe	/favicon.ico	2021-01-14
132	https://szymonkaliski.com/writing/2018-11-27-laboratory-residency/	Laboratory Residency	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-11-27
751	https://materialfuture.net/posts/blog/2020-year-end-retrospective/	2020 Year-End Retrospective	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-01-07
179	gemini://xj-ix.luxe/posts/2020-12-22-i-made-it.en.gmi	i made it	\N	gemini://xj-ix.luxe	/favicon.ico	2020-12-22
404	https://teknari.com/blogpost/1594344859804/2015+January+Journal	2015 January Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-10
406	https://teknari.com/blogpost/1594317403488/2016+Journal	2016 Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-09
407	https://teknari.com/blogpost/1594314179451/2018+Journal	2018 Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-09
408	https://teknari.com/blogpost/1594235757539/2014+Journal	2014 Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-08
31	https://notes.neeasade.net/On-Emacs.html	On Emacs	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2019-12-06
116	https://resevoir.net//year-in-books-2019	https://resevoir.net//year-in-books-2019	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-01-04
217	https://oddworlds.org/gallery/gallery-2021.html	2021 Photo Gallery	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-22
82	https://resevoir.net//intermediate-representations	https://resevoir.net//intermediate-representations	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-03-08
218	https://oddworlds.org/cooking/moka.html	Coffee with a "moka" machine	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-21
181	gemini://xj-ix.luxe/posts/2020-11-17-go-build-your-own-eco-village.gmi	re: a miscommunication	\N	gemini://xj-ix.luxe	/favicon.ico	2020-11-17
156	https://szymonkaliski.com/projects/wallgen/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-02-25
157	https://szymonkaliski.com/writing/2017-01-31-building-sdf-ui/	Building SDF-UI	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-01-31
219	https://oddworlds.org/cooking/pita.html	Pita	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-15
220	https://oddworlds.org/wiki/radio.html	Radio	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-09
221	https://oddworlds.org/wiki/entrepreneurship.html	Entrepreneurship	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-10
364	https://phse.net/commonplace/	A Commonplace Repository	\N	https://phse.net	https://phse.net/favicon-32.png	2019-03-23
182	gemini://xj-ix.luxe/posts/2020-10-07-entering-the-dark-forest.gmi	entering the dark forest	\N	gemini://xj-ix.luxe	/favicon.ico	2020-10-07
183	gemini://xj-ix.luxe/posts/2020-09-12-grid-grid.gmi	grid-grid, intimations on building decentralized computer systems	\N	gemini://xj-ix.luxe	/favicon.ico	2020-09-12
189	gemini://xj-ix.luxe/posts/2020-06-18-rlog.gmi	rlog	\N	gemini://xj-ix.luxe	/favicon.ico	2020-06-18
203	http://nonmateria.com/posts/2021_03_15__url_changed.html	url changed	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-15
409	https://teknari.com/blogpost/1594234205140/2013+Journal	2013 Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-08
37	https://aless.co/how-to-build-a-keyboard/	How to Build a Keyboard, Pt.1	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-05-27
39	https://aless.co/teach-a-girl-to-program/	Teach a Girl to Program	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2016-06-28
366	https://phse.net/tools/	A List of the Tools I'm Using	\N	https://phse.net	https://phse.net/favicon-32.png	2019-02-12
367	https://phse.net/sketchbook/	Always Carry a Sketchbook	\N	https://phse.net	https://phse.net/favicon-32.png	2019-02-09
368	https://phse.net/2018/	Yearly Review 2018	\N	https://phse.net	https://phse.net/favicon-32.png	2019-01-01
369	https://phse.net/minimalism/	On Minimalism	\N	https://phse.net	https://phse.net/favicon-32.png	2018-12-31
260	https://bismuth.garden/2020/11/ruby-squares	Ruby squares	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-11-11
648	https://icyphox.sh/blog/kiss-zen	The Zen of KISS Linux	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-04-03
649	https://icyphox.sh/blog/mael	Introducing mael	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-03-29
650	https://icyphox.sh/blog/covid19-disinfo	COVID-19 disinformation	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-03-15
261	https://bismuth.garden/2020/09/beyond-sustainable	Links: Beyond sustainable	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-21
262	https://bismuth.garden/2020/09/oddments-2	Oddments II	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-20
263	https://bismuth.garden/2020/09/oddments	Oddments	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-14
115	https://resevoir.net//writing-drawings	https://resevoir.net//writing-drawings	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-11-08
265	https://bismuth.garden/2020/09/sowing-seeds	Sowing seeds	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-10
102	https://resevoir.net//slitscan-experiments	https://resevoir.net//slitscan-experiments	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-11-02
272	https://now.lectronice.com/then/2021-04w16/	W16 :: Cutting	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-04-18
273	https://now.lectronice.com/then/2021-04w15/	W15 :: Sleeping	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-04-11
227	https://oddworlds.org/gallery/2020-11.html	2020-11	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-08-22
237	https://chad.is/dick-jokes/	Dick jokes	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2021-04-17
238	https://chad.is/endless-forms-most-beautiful/	Endless forms most beautiful	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2021-01-23
239	https://chad.is/the-work-of-the-listener/	The work of the listener	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2020-06-06
240	https://chad.is/self-as-process/	Self as Process	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-11-06
246	https://chad.is/hereditary/	Hereditary	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-07
274	https://now.lectronice.com/then/2021-04w14/	W14 :: Fixing old things	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-04-04
651	https://icyphox.sh/blog/nullcon-2020	Nullcon 2020	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-03-09
652	https://icyphox.sh/blog/prosody	Setting up Prosody for XMPP	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-02-18
653	https://icyphox.sh/blog/2020-01-18	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-18
275	https://now.lectronice.com/then/2021-03w13/	W13 :: Bulking	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-28
654	https://icyphox.sh/blog/mnml-browsing	Vimb&#58; my Firefox replacement	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-16
276	https://now.lectronice.com/then/2021-03w12/	W12 :: Darkness my old friend	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-21
410	https://teknari.com/blogpost/1594233551325/	\N	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-08
395	https://teknari.com/blogpost/1595682675547/2015+September+Journal+	2015 September Journal 	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
403	https://teknari.com/blogpost/1594562577891/2015+February+Journal	2015 February Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-12
266	https://xvw.github.io/longs/kotlin_extensions.html	Kotlin, extensions et génériques	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2020-04-29
267	https://xvw.github.io/longs/introduction_algebraic_effects.html	Tests unitaires de fonctions impures	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2020-03-10
268	https://xvw.github.io/longs/introduction_aux_monades.html	Un article sur les monades en 2018	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2018-08-22
269	https://xvw.github.io/longs/konbini_tac_au_tac_manben.html	Konbini, Tac au tac et Manben	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2018-08-19
270	https://xvw.github.io/longs/zipper_history.html	Voyager dans le temps avec un Zipper	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2017-11-20
329	https://kokorobot.ca/site/sketchbook.html	Sketchbook	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-04-19
330	https://kokorobot.ca/site/pandoc.html	Pandoc notes	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-04-01
331	https://kokorobot.ca/site/wunderrabbits.html	Wunderland Rabbits	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-03-18
333	https://kokorobot.ca/site/illustration.html	Uxn mascot	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-02-01
334	https://kokorobot.ca/site/2020dec31.html	2020 yearend review	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-01-11
348	https://phse.net/no-off-switch/	No Off Switch	\N	https://phse.net	https://phse.net/favicon-32.png	2021-02-26
350	https://phse.net/the-perfect-todo-list/	The Perfect To-Do List	\N	https://phse.net	https://phse.net/favicon-32.png	2021-01-31
351	https://phse.net/utility-classes-i-have-known-and-loved/	Utility Classes I Have Known and Loved	\N	https://phse.net	https://phse.net/favicon-32.png	2021-01-16
352	https://phse.net/2020/	Yearly Review 2020	\N	https://phse.net	https://phse.net/favicon-32.png	2021-01-03
353	https://phse.net/respecting-motion-preferences/	Respecting Motion Preferences	\N	https://phse.net	https://phse.net/favicon-32.png	2020-08-15
354	https://phse.net/managing-specificity-with-css-variables/	Managing Specificity with CSS Variables	\N	https://phse.net	https://phse.net/favicon-32.png	2020-02-29
355	https://phse.net/three-layer-goal-setting/	Three Layer Goal-Setting	\N	https://phse.net	https://phse.net/favicon-32.png	2020-01-10
338	https://ameyama.com/blog/debouncing-vue-component-methods	(雨山) Debouncing Vue Component Methods	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2021-04-20
339	https://ameyama.com/blog/2020-the-year-in-review	(雨山) 2020: The Year in Review	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-12-30
340	https://ameyama.com/blog/sleep-with-me-a-testimonial	(雨山) Sleep With Me: A Testimonial	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-10-07
341	https://ameyama.com/blog/vercel	(雨山) Vercel	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-09-28
342	https://ameyama.com/blog/focus-on-the-inputs	(雨山) Focus on the Inputs	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-07-10
310	https://longest.voyage/log/just-an-earthquake/	Just an Earthquake	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-02-21
343	https://ameyama.com/blog/reply-none	(雨山) Reply None	\N	https://ameyama.com	https://ameyama.com/favicon.ico	2020-05-30
311	https://longest.voyage/log/writing-notes/	Writing Notes	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-02-20
312	https://longest.voyage/log/nice-and-soft/	Nice And Soft	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-02-20
313	https://longest.voyage/log/2021-01/	January Rambling	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-01-17
314	https://longest.voyage/log/autumn-abroad/	Autumn Abroad	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-11-15
315	https://longest.voyage/log/a-new-anxiety/	A New Anxiety	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-11-08
665	https://icyphox.sh/blog/pycon-wrap-up	PyCon India 2019 wrap-up	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-15
666	https://icyphox.sh/blog/digital-minimalism	Thoughts on digital minimalism	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-05
667	https://icyphox.sh/blog/2019-09-27	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-09-27
668	https://icyphox.sh/blog/2019-09-17	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-09-17
370	https://joybox.rosano.ca	Joybox	\N	https://joybox.rosano.ca	https://joybox.rosano.ca/application_icon_x512.png	2021-04-20
372	https://emojilog.rosano.ca	Emoji Log	\N	https://emojilog.rosano.ca	https://emojilog.rosano.ca/application_icon_x512.png	2021-03-25
373	https://rosano.hmm.garden	Personal wiki	\N	https://rosano.hmm.garden	https://rosano.hmm.garden/favicon.ico	2021-01-03
374	https://0data.app	Zero Data App	\N	https://0data.app	https://0data.app/favicon.ico	2020-12-08
375	https://kommit.rosano.ca	Kommit	\N	https://kommit.rosano.ca	https://kommit.rosano.ca/application_icon_x512.png	2020-06-24
377	https://massagetxt.rosano.ca	MassageTXT	\N	https://massagetxt.rosano.ca	https://massagetxt.rosano.ca/application_icon_x512.png	2019-11-26
378	https://launchlet.dev	Launchlet	\N	https://launchlet.dev	https://launchlet.dev/application_icon_x512.png	2019-11-19
382	https://rosano.tumblr.com/tagged/Opus-7/chrono	Belonging	\N	https://rosano.tumblr.com	https://64.media.tumblr.com/avatar_3f94d37e1578_128.pnj	2016-10-06
376	/en/aural	Aural	\N	\N	\N	2019-12-17
380	/en/sonogrid	sonogrid	\N	\N	\N	2018-09-06
381	/en/carrot-price	Carrot Price	\N	\N	\N	2018-07-04
383	/en/ticker	Ticker	\N	\N	\N	2015-02-25
384	/en/quick-record	Quick Record	\N	\N	\N	2015-01-16
385	/en/audioscrub	AudioScrub	\N	\N	\N	2014-08-08
51	https://writing.natwelch.com/post/705	Hack a satellite	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-09-22
52	https://writing.natwelch.com/post/704	The Nat Index 2019-09-14	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-09-14
54	https://writing.natwelch.com/post/699	DIY Cron & Continuous Delivery on GKE	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-20
55	https://writing.natwelch.com/post/700	Japan 2019 Travel Log Day 5	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-19
56	https://writing.natwelch.com/post/698	Japan 2019 Travel Log Day 4	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-18
103	https://resevoir.net//slitscan-video	https://resevoir.net//slitscan-video	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-01-08
104	https://resevoir.net//space	https://resevoir.net//space	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-27
105	https://resevoir.net//studies	https://resevoir.net//studies	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-05-28
106	https://resevoir.net//tactile	https://resevoir.net//tactile	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-16
107	https://resevoir.net//targets	https://resevoir.net//targets	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-04-13
57	https://writing.natwelch.com/post/697	Japan 2019 Travel Log Day 3	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-16
58	https://writing.natwelch.com/post/696	Japan 2019 Travel Log Day 2	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-15
8	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
9	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
10	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
655	https://icyphox.sh/blog/five-days-tty	Five days in a TTY	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-13
656	https://icyphox.sh/blog/2019-in-review	2019 in review	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-02
657	https://icyphox.sh/blog/ru-vs-gb	Disinfo war&#58; RU vs GB	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-12-12
658	https://icyphox.sh/blog/ig-opsec	Instagram OPSEC	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-12-02
40	https://aless.co/from-bitmaker-to-breather/	From Bitmaker to Breather	\N	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2015-03-04
108	https://resevoir.net//text	https://resevoir.net//text	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-05
109	https://resevoir.net//time-based	https://resevoir.net//time-based	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
659	https://icyphox.sh/blog/save-org	Save .ORG!	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-11-23
660	https://icyphox.sh/blog/2019-11-16	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-11-16
388	https://teknari.com/blogpost/1595699426843/St+Petersburg	St Petersburg	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
389	https://teknari.com/blogpost/1595697208582/Dreams+of+Itself	Dreams of Itself	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
390	https://teknari.com/blogpost/1595696509825/Eraser	Eraser	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
391	https://teknari.com/blogpost/1595694736717/Chickenfruit	Chickenfruit	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
392	https://teknari.com/blogpost/1595684574574/2015+December+Journal+	2015 December Journal 	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
393	https://teknari.com/blogpost/1595683646064/2015+November+Journal+	2015 November Journal 	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
672	https://icyphox.sh/blog/rop-on-arm	Return Oriented Programming on ARM (32-bit)	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-06-06
625	https://sixey.es/imagery/mspaint/	+ images in mspaint	\N	https://sixey.es	https://sixey.es/favicon.ico	2019-09-10
626	https://sixey.es/imagery/arthur/	arthur_resource	\N	https://sixey.es	https://sixey.es/favicon.ico	2019-09-07
673	https://icyphox.sh/blog/my-setup	My setup	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-05-13
674	https://icyphox.sh/blog/python-for-re-1	Python for Reverse Engineering	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-02-08
644	https://icyphox.sh/blog/simplicity-security	Simplicity (mostly) guarantees security	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-07
662	https://icyphox.sh/blog/intel-conundrum	The intelligence conundrum	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-28
627	https://icyphox.sh/blog/free-sw-censor	Free software should not censor	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2021-04-07
628	https://icyphox.sh/blog/nvim-lua	Configuring Neovim using Lua	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2021-02-07
146	https://szymonkaliski.com/projects/das-ui/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-09-08
110	https://resevoir.net//tools	https://resevoir.net//tools	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
111	https://resevoir.net//trails	https://resevoir.net//trails	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-05-02
147	https://szymonkaliski.com/writing/2017-08-20-skyrock-projects/	Teaching Creative Coding in Taipei	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-08-20
172	https://szymonkaliski.com/projects/institut-des-mutations/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-03-28
173	https://szymonkaliski.com/projects/nodation/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-02-19
174	https://szymonkaliski.com/projects/zamek-interactive-movie/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2013-12-20
752	https://materialfuture.net/posts/books/books-completed-2020/	2020 - Books Read + Retrospective	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-29
753	https://materialfuture.net/posts/games/games-completed-retrospective/	2020 - Games Completed + Retrospective	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-29
754	https://materialfuture.net/posts/music/sin-album/	Sin - Album	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-21
755	https://materialfuture.net/posts/blog/music-page/	New Music Page	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-16
756	https://materialfuture.net/posts/blog/services-update/	Services and Site Update - December 2020	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-16
126	https://szymonkaliski.com/projects/nott/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-07-01
2	http://nonmateria.com/posts/2021_03_19__la_retta.html	la retta	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-19
3	http://nonmateria.com/posts/2021_03_15__url_changed.html	url changed	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-15
5	http://nonmateria.com/posts/2020_10_30__pages_added.html	pages added	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-30
6	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	infected clock II	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-27
7	http://nonmateria.com/posts/2020_07_12__infected_clock.html	infected clock	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-12
761	https://materialfuture.net/posts/blog/2020-11-5-youtube-videos/	My YouTube Channel	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-05
617	https://gueorgui.net/blog/2020/hello-again-world/	Hello again, World!	\N	https://gueorgui.net	https://gueorgui.net/assets/images/favicon.png	2020-02-01
675	https://royniang.com/fastmail_and_9front.html	Fastmail and 9front	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2021-01-15
11	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
12	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
205	http://nonmateria.com/posts/2020_10_30__pages_added.html	pages added	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-30
128	https://szymonkaliski.com/projects/modeler/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-04-19
142	https://szymonkaliski.com/writing/2017-12-04-flsun-i3-3d-printer/	FLSUN i3 3D Printer	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-12-04
175	https://szymonkaliski.com/projects/beatbattle-visuals/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2013-12-14
676	https://royniang.com/scrawl_01y06.html	Scrawl 01Y06	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-12-08
774	https://materialfuture.net/posts/books/practical-c-programming/	Practical C Programming - Retrospective	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-04
775	https://materialfuture.net/posts/blog/2020-05-git-revamp/	Self-Hosting Git Client for a Decentralized Future	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-05-25
776	https://materialfuture.net/posts/blog/2020-04-email-server/	Creating A Personal Email Server With Postfix + Dovecot	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-04-17
777	https://materialfuture.net/posts/blog/2020-03-emacs/	Why I Use Emacs, And Why It Matters	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-03-28
677	https://royniang.com/scrawl_01y02.html	Scrawl 01Y02	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-12-04
686	https://royniang.com/miminaga.html	New Qt home	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-10
679	https://royniang.com/xok9.html	XOK9 Laptop	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2021-02-11
680	https://royniang.com/haiku_os.html	Easy computing	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-12-08
683	https://royniang.com/sf_guro.html	Almost done with the lowercase alphabet	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-31
681	https://royniang.com/patience.html	Patience (Daniel Clowes, 2016)	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-11-01
684	https://royniang.com/gemini.html	Testing microblogging with gemini	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-28
678	https://royniang.com/type_design.html	Learning hinting	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-22
705	https://royniang.com/intrfc.html	INTRFC.com is live	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-05-13
709	https://royniang.com/japanese.html	ガロ	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-31
1071	https://wiki.xxiivv.com/site/origami.html	Sonobe 30	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
645	https://icyphox.sh/blog/s-nail	The S-nail mail client	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-06
646	https://icyphox.sh/blog/mastodon-social	Stop joining mastodon.social	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-05
687	https://royniang.com/practice.html	Began working on the uppercase	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
176	https://szymonkaliski.com/projects/hello-poznan/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2013-04-19
177	https://szymonkaliski.com/projects/sensorium-book-covers/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2012-05-18
731	https://crlf.site/log/notes/200720-comments/	Comments powered by Remark42	\N	https://crlf.site	https://crlf.site/logo/favicon.ico	2020-07-20
732	https://crlf.site/log/notes/200624-comments/	Choosing comments for this blog	\N	https://crlf.site	https://crlf.site/logo/favicon.ico	2020-06-24
733	https://crlf.site/log/notes/200616-links/	How to improve your handwriting	\N	https://crlf.site	https://crlf.site/logo/favicon.ico	2020-06-16
785	https://travisshears.com/snippets/org_roam_capture_templates/	Org-Roam capture templates	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-04-06
786	https://travisshears.com/blog/delete_all_my_friends/	delete all my duolingo friends	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-03-22
787	https://travisshears.com/snippets/restart-nginx/	Restart Nginx	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-02-07
788	https://travisshears.com/snippets/run-changed-tests/	Run Changed Tests	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-02-01
789	https://travisshears.com/blog/reef-plan-and-first-day/	getting started with reefing	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-30
790	https://travisshears.com/blog/first-tank/	my start in the aquarium hobby	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-28
791	https://travisshears.com/blog/scheinbertspitze-tour/	scheinbertspitze tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-17
736	https://www.edwinwenink.xyz/posts/54-a_plain_text_writing_convention/	Two perspectives on a plain-text writing convention	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2021-03-12
734	https://crlf.site/log/notes/200530-links/	Notebooks and paper reviews	\N	https://crlf.site	https://crlf.site/logo/favicon.ico	2020-05-30
134	https://szymonkaliski.com/projects/hhtwm/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-11-03
135	https://szymonkaliski.com/projects/sketchbook-cli/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-08-29
158	https://szymonkaliski.com/projects/sdf-ui/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-01-29
159	https://szymonkaliski.com/writing/2017-01-18-kinect-2-osx/	Kinect 2 on macOS with Skeleton Tracking	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-01-18
763	https://materialfuture.net/posts/blog/2020-10-2-resumes/	Setting Up A Resume With LaTeX	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-10-01
764	https://materialfuture.net/posts/blog/rss/	What IS RSS?	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-09-22
765	https://materialfuture.net/posts/games/new-games-category/	New Games Category	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-09-10
766	https://materialfuture.net/posts/blog/updates/	September 2020 Update	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-09-09
767	https://materialfuture.net/posts/blog/ideal-phone/	My Version Of An Ideal Phone	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-08-23
735	https://crlf.site/log/notes/200430-inks/	Fountain pen ink properties	\N	https://crlf.site	https://crlf.site/logo/favicon.ico	2020-04-30
168	https://szymonkaliski.com/projects/loop-pi/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-19
169	https://szymonkaliski.com/projects/sensorium/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-10
170	https://szymonkaliski.com/projects/eeg2osc/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-10
145	https://szymonkaliski.com/writing/2017-09-08-building-das-ui/	Building DAS-UI	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-09-08
184	gemini://xj-ix.luxe/posts/2020-08-20-inverting-the-technolopy.gmi	inverting the technopoly	\N	gemini://xj-ix.luxe	/favicon.ico	2020-08-20
185	gemini://xj-ix.luxe/posts/2020-08-16-hyperlocal-concept-quandries.gmi	hyperlocal concept, quandaries	\N	gemini://xj-ix.luxe	/favicon.ico	2020-08-16
186	gemini://xj-ix.luxe/posts/2020-08-11-memex-dev-updates.gmi	memex dev updates	\N	gemini://xj-ix.luxe	/favicon.ico	2020-08-11
187	gemini://xj-ix.luxe/posts/2020-08-07-social-admin.gmi	social.ssg admin	\N	gemini://xj-ix.luxe	/favicon.ico	2020-08-07
188	gemini://xj-ix.luxe/posts/2020-07-14-ethical-marketing-hyperlocal.gmi	ethical marketing at hyperlocal	\N	gemini://xj-ix.luxe	/favicon.ico	2020-07-14
190	gemini://xj-ix.luxe/posts/2020-06-02-hyperlocal-roadmap.gmi	hyperlocal	\N	gemini://xj-ix.luxe	/favicon.ico	2020-06-02
191	gemini://xj-ix.luxe/posts/2020-04-30-honey-ginger-sauce.gmi	honey ginger sauce	\N	gemini://xj-ix.luxe	/favicon.ico	2020-04-30
192	gemini://xj-ix.luxe/posts/2020-04-20-why-permanent-global-identity.gmi	why permanent global identity?	\N	gemini://xj-ix.luxe	/favicon.ico	2020-04-20
193	gemini://xj-ix.luxe/posts/2020-03-13-platanos-fritos.es.gmi	platanos fritos	\N	gemini://xj-ix.luxe	/favicon.ico	2020-03-13
232	https://oddworlds.org/gallery/2020-07.html	2020-07	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-06-22
233	https://oddworlds.org/thoughts/thelast.html	The Last $THING You'll Ever Buy	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-06-11
234	https://oddworlds.org/cooking/pizza.html	Pizza	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-05-23
235	https://oddworlds.org/gallery/2020-06.html	2020-06	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-05-22
277	https://now.lectronice.com/then/2021-03w11/	W11 :: Tokiponing	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-14
285	https://now.lectronice.com/then/2021-01w03/	2021W3 :: Floating	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-17
286	https://now.lectronice.com/then/2021-01w02/	2021W2 :: Soreness	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-10
287	https://now.lectronice.com/then/2021-01w01/	2021W1 :: Hello new year	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-03
288	https://now.lectronice.com/then/2020-12w53/	2020W53 :: Back to game development	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-27
289	https://now.lectronice.com/then/2020-12w52/	2020W52 :: Chilling	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-20
336	https://kokorobot.ca/site/conversion.html	Conversion charts	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2020-12-14
356	https://phse.net/2019/	Yearly Review 2019	\N	https://phse.net	https://phse.net/favicon-32.png	2019-12-30
357	https://phse.net/tetris-analogy/	Why is Tetris such a good analogy?	\N	https://phse.net	https://phse.net/favicon-32.png	2019-10-25
708	https://royniang.com/diary.html	Annoying Alto during lockdown	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
690	https://royniang.com/practice.html	Drafted m, n, t; some fixes	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
707	https://royniang.com/illustration.html	HyperCard portrait	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-05-04
394	https://teknari.com/blogpost/1595683324704/2015+October+Journal+	2015 October Journal 	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
396	https://teknari.com/blogpost/1595681107423/2015+August+Journal	2015 August Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
397	https://teknari.com/blogpost/1595548974481/2015+July+Journal	2015 July Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-24
398	https://teknari.com/blogpost/1595537557776/2015+Journal+June	2015 Journal June	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-23
399	https://teknari.com/blogpost/1595536068883/2015+May+Journal	2015 May Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-23
400	https://teknari.com/blogpost/1595502848493/Apple+I	Apple I	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-23
1000	http://milofultz.com/2020/05/22/just-in-case	Buying Things "Just In Case" vs. Real Estate	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-05-22
768	https://materialfuture.net/posts/blog/2020-8-18-emacs-irc/	Emacs - IRC and Other Stuff	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-08-18
769	https://materialfuture.net/posts/blog/time-to-step-back/	Time to Step Back and Reflect	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-08-16
770	https://materialfuture.net/posts/blog/2020-07-org-mode/	What Is Org-Mode?	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-07-22
771	https://materialfuture.net/posts/blog/2020-06-tools-workflows/	Tools and Workflows I Use	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-27
772	https://materialfuture.net/posts/blog/2020-06-current/	Current Projects And Current Roadmap	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-16
639	https://icyphox.sh/blog/flask-jwt-login	Flask-JWT-Extended × Flask-Login	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-06-24
773	https://materialfuture.net/posts/blog/2020-06-ipfs/	IPFS For An Easy P2P Network	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-16
746	https://materialfuture.net/posts/blog/2021-4-14-odysee-lbry/	I've Created A Odysee Channel	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-04-14
747	https://materialfuture.net/posts/blog/2021-3-02-general-updates/	General Updates - March 2nd 2021	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-03-02
748	https://materialfuture.net/posts/servers/centos-rehl-talk/	CentOS - RHEL Talk	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-02-04
749	https://materialfuture.net/posts/blog/music-update/	Update: Music 2021	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-01-26
640	https://icyphox.sh/blog/dont-news	You don't need news	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-06-21
642	https://icyphox.sh/blog/site-changes	Site changes	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-27
931	https://nor.the-rn.info/2021/04/23/the-sacred-underwriting-of-your-life/	The Sacred Underwriting of Your Life	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-04-23
401	https://teknari.com/blogpost/1594587027196/2015+April+Journal	2015 April Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-12
402	https://teknari.com/blogpost/1594567446819/2015+March+Journal	2015 March Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-12
405	https://teknari.com/blogpost/1594318116313/2017+Journal	2017 Journal	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-09
932	https://nor.the-rn.info/2021/04/09/building-norns-community/	Building “norns community”	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-04-09
911	https://ix5.org/thoughts/2020/moving/	Moving	\N	https://ix5.org	https://ix5.org/favicon.png	2020-03-02
933	https://nor.the-rn.info/2021/03/20/rounding-errors/	Rounding Errors	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-03-20
891	https://travisshears.com/blog/arco/	arco	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-10-09
800	https://travisshears.com/snippets/gzip-existing-tar/	gzipping an existing tar	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-10-14
815	https://travisshears.com/blog/archiving-corona-cal/	archiving corona cal	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-23
824	https://travisshears.com/snippets/extending-gpg-key/	Extending GPG Keys	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-22
825	https://travisshears.com/snippets/moving-gpg-keys/	Moving GPG Keys	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-20
808	https://travisshears.com/snippets/prevent-vim-auto-new-line/	Prevent Vim Auto New Lines	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-13
809	https://travisshears.com/snippets/auto-find-ssh-keys/	Auto Find SSH Keys	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-12
913	https://ix5.org/thoughts/2017/grundgesetz-article-9/	Article 9: Freedom of coalition	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
914	https://ix5.org/thoughts/2017/grundgesetz-article-8/	Article 8: Freedom of association	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
915	https://ix5.org/thoughts/2017/grundgesetz-article-7/	Article 7: School System	\N	https://ix5.org	https://ix5.org/favicon.png	2017-07-20
916	https://ix5.org/thoughts/2017/grundgesetz-article-6/	Article 6: Marriage, Family and Children	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
917	https://ix5.org/thoughts/2017/grundgesetz-article-5/	Article 5: Freedom of expression	\N	https://ix5.org	https://ix5.org/favicon.png	2017-07-20
918	https://ix5.org/thoughts/2017/grundgesetz-article-4/	Article 4: Freedom of Belief	\N	https://ix5.org	https://ix5.org/favicon.png	2017-07-20
919	https://ix5.org/thoughts/2017/grundgesetz-article-3/	Article 3: Equality	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
952	https://metasyn.pw/memex.html	5f90c23e68d81f624bd57bc9	\N	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-10-21
953	https://metasyn.pw/collections.html	5f97ccf1290b0a0a7ff5a95e	\N	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-10-27
810	https://travisshears.com/snippets/short_server_names/	Using short server names	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-12
811	https://travisshears.com/snippets/disable_user/	Disable User	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-11
812	https://travisshears.com/blog/holland/	holland	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-10
813	https://travisshears.com/blog/ski-gear-2019-2020/	2019/2020 ski gear	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-07
954	https://metasyn.pw/hangul.html	5fb82d8526519b1134a64b54	\N	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-11-20
814	https://travisshears.com/blog/year-progress/	year-progress demo	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-26
833	https://travisshears.com/blog/first-svelte-app/	first svelte app	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-02
834	https://travisshears.com/blog/start-teaching/	teaching javascript	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
941	https://inqlab.net/rösti.html	Rösti	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2021-02-04
942	https://inqlab.net/sky.html	Sky	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2020-09-09
943	https://inqlab.net/geopub-activitypub-for-content-curation.html	GeoPub: ActivityPub for content curation	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2020-04-06
944	https://inqlab.net/allegra-openengiadina.html	Allegra openEngiadina!	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2020-03-21
945	https://inqlab.net/use-tor.html	Use Tor	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2020-03-20
947	https://inqlab.net/lord-of-the-flies.html	Lord of the Flies	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2019-10-22
957	http://milofultz.com/2021/04/11/tiny-font-3-by-3	📕 Make A Tiny 3x3 Font	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2021-04-11
958	http://milofultz.com/2021/03/06/sublime-keymap	Find and Remove Autocompletes in Sublime Text 3	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2021-03-06
959	http://milofultz.com/2021/01/28/snake-js	🐍 SNAKEHACK - snake with constantly changing controls	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2021-01-28
960	http://milofultz.com/2021/01/08/software	Apps, Software, and More That I Use Everyday	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2021-01-08
955	https://metasyn.pw/seedling.html	5fd07d52411b7550146a0c66	\N	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-12-09
956	https://metasyn.pw/raiu.html	6069181991aae3107ec3d119	\N	https://metasyn.pw	https://metasyn.pw/favicon.ico	2021-04-04
1003	https://irimi.one/music/slikback/	Slikback	\N	https://irimi.one	https://irimi.one/favicon.png	2021-04-18
1001	http://milofultz.com/2020/05/17/adam-savage	The Adam Savage Trial Method	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-05-17
1038	https://www.gr0k.net/blog/logging-my-journey.html	Logging My Journey	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-26
1039	https://www.gr0k.net/blog/more-zynthian-workflow-updates.html	More Zynthian Workflow Updates	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-21
1040	https://www.gr0k.net/blog/zynthian-workflow.html	Zynthian Workflow	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-17
1041	https://www.gr0k.net/blog/the-monocled-frown.html	The Monocled Frown	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-05
171	https://szymonkaliski.com/projects/sonic-explorer/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-08
1004	https://irimi.one/collage-poems/breath-of-fresh-air/	A Breath of Fresh Air	\N	https://irimi.one	https://irimi.one/favicon.png	2021-02-21
1043	https://www.gr0k.net/blog/creating-soundfonts-in-polyphone.html	Creating SoundFonts in Polyphone	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-01-31
1063	https://wiki.xxiivv.com/site/roms.html	We are now in the osdev business	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-22
1060	https://wiki.xxiivv.com/site/noodle.html	Noodle in Uxn	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-03-17
1074	https://wiki.xxiivv.com/site/noton.html	Noton Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-11-19
836	https://travisshears.com/tutorials/pull-request-homework-workflok/	Pull Request Homework Workflow	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
802	https://travisshears.com/map/	Map	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-09-28
803	https://travisshears.com/blog/why_small_images_plus_folderpics_demo/	small images + folderpics demo	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-09-14
882	https://travisshears.com/snippets/pass-search/	Search Pass from password	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
883	https://travisshears.com/snippets/pass-bulk-import/	Bulk import into Pass	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
886	https://travisshears.com/snippets/aws-s3-sync/	Aws S3 Sync	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
826	https://travisshears.com/snippets/deployment-env-yaml-snippet/	K8s deployment.yaml env vscode snippet	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-20
1064	https://wiki.xxiivv.com/site/radio.html	Baofeng UV-9R+	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-14
1005	https://irimi.one/posts/lieu/	Hello, Lieu!	\N	https://irimi.one	https://irimi.one/favicon.png	2021-02-14
1006	https://irimi.one/uses/software-setups/taskwarrior/	My Taskwarrior Setup	\N	https://irimi.one	https://irimi.one/favicon.png	2021-02-14
1007	https://irimi.one/music/aliceffekt/	Aliceffekt	\N	https://irimi.one	https://irimi.one/favicon.png	2021-02-06
1009	https://irimi.one/music/professor-kliq/	Professor Kliq	\N	https://irimi.one	https://irimi.one/favicon.png	2021-01-04
1065	https://wiki.xxiivv.com/site/busy_doing_nothing.html	The Logbook Book	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-08
1066	https://wiki.xxiivv.com/site/uxn.html	Uxn Sticker	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-03
1026	https://natehn.com/posts/digital-security/	Notes on Digital Security	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2021-03-15
1067	https://wiki.xxiivv.com/site/exed.html	Exed Desktop Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-01-22
1068	https://wiki.xxiivv.com/site/dito.html	Dito Desktop Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-01-20
1046	https://tendigits.space/projects/orca-box/	Orca Box	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-31
1047	https://tendigits.space/projects/birdhouse-cam/	Birdhouse Webcam	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-24
1048	https://tendigits.space/projects/bird-posters/	Bird Posters	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-24
1049	https://tendigits.space/notes/new-projects/	New Projects	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-17
1050	https://tendigits.space/notes/house/	House Maintenance	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-01-06
835	https://travisshears.com/tutorials/html-js-vs-code-setup/	HTML + JavaScript VS Code Setup	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
843	https://travisshears.com/snippets/vim-open-file-under-cursor/	Vim Open File Under Cursor	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-06
863	https://travisshears.com/snippets/vim-jumps-fix/	Remapping ability to jump	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
872	https://travisshears.com/snippets/git-revert-branch/	Revert an entire feature branch	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
920	https://ix5.org/thoughts/2017/grundgesetz-article-2/	Article 2: Personal Freedoms	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
921	https://ix5.org/thoughts/2017/grundgesetz-article-1/	Article 1: Human Dignity and Rights	\N	https://ix5.org	https://ix5.org/favicon.png	2017-04-03
969	http://milofultz.com/2020/10/25/hiitimer	💻 HIITimer - Exercise Timer w/Routines and TTS (Python)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-10-25
970	http://milofultz.com/2020/10/21/html-css-js	HTML / CSS / JS Resources	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-10-21
971	http://milofultz.com/2020/10/17/tod-python	💻 Tod - Plan and Manage Daily Tasks In The CLI (Python)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-10-17
757	https://materialfuture.net/posts/videos/experimental-videos-mandelbrot/	Experimental Videos - Mandelbrot Set 4K	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-16
972	http://milofultz.com/2020/10/16/friends-dont	Friends don't let friends look at pageviews	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-10-16
973	http://milofultz.com/2020/10/12/track-python	💻 Track - Daily Journal and Log (Python)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-10-12
974	http://milofultz.com/2020/10/12/sleep-realms	🎧 Sleep Realms (Paulstretch)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-10-12
975	http://milofultz.com/2020/10/04/two-minute-rule	The Two-Minute Rule	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-10-04
976	http://milofultz.com/2020/10/04/doing	Trying to become reacquainted with being bored	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-10-04
977	http://milofultz.com/2020/09/30/evernote-images	💻 Maximize Evernote Storage Using Web Clipper (JS)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-09-30
1010	https://irimi.one/posts/motherplant/	motherplant	\N	https://irimi.one	https://irimi.one/favicon.png	2020-12-30
1076	https://wiki.xxiivv.com/site/wiktopher.html	Tent City of Renate	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-06
1075	https://wiki.xxiivv.com/site/reform.html	Reform Oled	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-10-19
1070	https://wiki.xxiivv.com/site/origami.html	Gyro 6	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
1112	https://wiki.xxiivv.com/site/programming.html	Acorn BBC Micro Logo on Famicom	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-16
661	https://icyphox.sh/blog/irc-for-dms	IRC for DMs	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-11-03
1187	https://wiki.xxiivv.com/site/microbit.html	BBC Microbit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-24
1192	https://wiki.xxiivv.com/site/microbit.html	Light Painting for the Microbit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-24
1164	https://wiki.xxiivv.com/site/tools.html	The Family	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-23
1163	https://wiki.xxiivv.com/site/canada.html	Travel to Vancouver, Canada	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-08
1268	https://wiki.xxiivv.com/site/faqs.html	Nakano Sakaue II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-06-28
663	https://icyphox.sh/blog/hacky-scripts	Hacky scripts	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-24
1324	https://wiki.xxiivv.com/site/dotgrid.html	Dotless Dotgrid Interface	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1348	https://wiki.xxiivv.com/site/collected_works.html	Collected works Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-29
1355	https://wiki.xxiivv.com/site/research.html	Raspberry Pi Computer	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-10
206	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	infected clock II	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-27
1434	https://wiki.xxiivv.com/site/knowledge.html	Dieter	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-12-29
1457	https://wiki.xxiivv.com/site/looking_glace.html	Looking Glace Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-28
1410	https://wiki.xxiivv.com/site/advent_v.html	Death	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-04
1524	https://wiki.xxiivv.com/site/paradise.html	Techgnostic Order	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1548	https://wiki.xxiivv.com/site/bifurcan.html	1.2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1513	https://wiki.xxiivv.com/site/supervisitor.html	Dodecae	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
664	https://icyphox.sh/blog/2019-10-16	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-16
1599	https://wiki.xxiivv.com/site/typography.html	Mirai Seu	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
922	https://ix5.org/thoughts/2017/grundgesetz-beginning/	The Beginning	\N	https://ix5.org	https://ix5.org/favicon.png	2017-03-05
1726	https://wiki.xxiivv.com/site/canada.html	Jaques Cartier	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-08
1727	https://wiki.xxiivv.com/site/canada.html	Longueuil	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-08
1666	https://wiki.xxiivv.com/site/mobile.html	Character Builder	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-14
207	http://nonmateria.com/posts/2020_07_12__infected_clock.html	infected clock	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-12
127	https://szymonkaliski.com/projects/volume-brush/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-06-25
129	https://szymonkaliski.com/writing/2019-03-31-end-user-programming/	End-User Programming	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-03-31
4	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	infected clock III	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-11-16
53	https://writing.natwelch.com/post/701	Japan 2019 Travel Log Day 6, 7 & 8	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-22
1	http://nonmateria.com/posts/2021_04_24__naresh_ran_-_kutna_hora.html	naresh ran - kutna hora	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-04-24
778	https://materialfuture.net/posts/blog/2020-03-current-goals/	Current Goals - What I'm Working On	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-03-12
30	https://notes.neeasade.net/adhoc-executable-patching-on-nix.html	adhoc executable patching on nixos	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-03-14
69	https://resevoir.net//color-in-film	https://resevoir.net//color-in-film	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-03-16
77	https://resevoir.net//foraging	https://resevoir.net//foraging	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-10-09
1763	https://wiki.xxiivv.com/site/dinaisth.html	Map	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-13
1769	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
371	https://ring.0data.app	Small Web App Ring	\N	https://ring.0data.app	https://ring.0data.app/favicon.ico	2021-03-29
616	https://gueorgui.net/blog/2020/new-projects-dissertation-returnees/	Two new projects: dissertation and Returnees 海归	\N	https://gueorgui.net	https://gueorgui.net/assets/images/favicon.png	2020-03-22
332	https://kokorobot.ca/site/busydoingnothing.html	Busy Doing Nothing e-book release	\N	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-02-19
946	https://inqlab.net/a-primer-on-the-semantic-web-and-linked-data.html	A Primer on the Semantic Web and Linked Data	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2019-11-19
226	https://oddworlds.org/gallery/2021-01.html	2021-01	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-01-22
349	https://phse.net/authoring-a-gemini-capsule-with-hugo/	Authoring a Gemini Capsule with Hugo	\N	https://phse.net	https://phse.net/favicon-32.png	2021-02-14
201	http://nonmateria.com/posts/2021_04_24__naresh_ran_-_kutna_hora.html	naresh ran - kutna hora	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-04-24
912	https://ix5.org/thoughts/2017/venezuela-presentation/	Venezuela: Un país de múltiples facetas	\N	https://ix5.org	https://ix5.org/favicon.png	2019-01-19
1042	https://www.gr0k.net/blog/zynthin-tips-and-tricks.html	Zynthian Tips and Tricks	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-03
762	https://materialfuture.net/posts/games/gameboy-sprite-sheet-assets-itch/	GameBoy Sprite Sheets and Assets	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-10-21
264	https://bismuth.garden/2020/09/did-you-find-it-i-did	‘Did you find it?’ ‘I did’	\N	https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-11
180	gemini://xj-ix.luxe/posts/2020-11-17-nyu-tokyo-roadmap.gmi	nyu.tokyo (ᴎoT THɘ wiᴙɘb) roadmap	\N	gemini://xj-ix.luxe	/favicon.ico	2020-11-17
241	https://chad.is/getting-started-complexity-science/	Getting started with complexity science	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-11-02
780	https://materialfuture.net/posts/blog/2020-roadmap-and-restrospective/	2020 Roadmap and 2019 Retrospective	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-02-05
278	https://now.lectronice.com/then/2021-03w10/	W10 :: Stacking up voxels	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-07
643	https://icyphox.sh/blog/efficacy-deepfakes	The efficacy of deepfakes	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-11
130	https://szymonkaliski.com/writing/2019-03-01-building-dacein/	Building Dacein	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-03-01
647	https://icyphox.sh/blog/openbsd-hp-envy	OpenBSD on the HP Envy 13	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-04-17
968	http://milofultz.com/2020/10/31/tablatal-parser	📊 Tablatal Parser - Plaintext Database to JSON (Python)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-10-31
934	https://nor.the-rn.info/2021/03/06/why-im-streaming-the-writing-of-my-next-album/	Why I’m Streaming the Making of My Next Album	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-03-06
317	https://longest.voyage/log/snacks-and-such/	Snacks and the Weather	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-09-14
379	https://idiomatic.rosano.ca	Idiomatic	\N	https://idiomatic.rosano.ca	https://idiomatic.rosano.ca/application_icon_x512.png	2019-01-24
987	http://milofultz.com/2020/07/18/programming-outline	Create a better program faster with an outline V2	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-07-18
386	https://teknari.com/blogpost/1595783382418/Books	Books	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-26
741	https://www.edwinwenink.xyz/posts/49-russell_ai_technocracy_surveillance/	Russell on AI in technocracy and surveillance	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-05-08
1062	https://wiki.xxiivv.com/site/nasu.html	Nasu on Uxn	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-02-02
889	https://travisshears.com/snippets/who-is-using-that-port/	Who Is Using that damn port? (Mac)	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
792	https://travisshears.com/blog/schoenalmjoch-tour/	schönalmjoch tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-14
194	gemini://xj-ix.luxe/posts/2020-03-10-discussions-on-network-topology.gmi	p2p network topology, why even bother?	\N	gemini://xj-ix.luxe	/favicon.ico	2020-03-10
927	https://ix5.org/thoughts/2014/back-in-germany/	Back in Germany	\N	https://ix5.org	https://ix5.org/favicon.png	2017-02-24
682	https://royniang.com/patience.html	Added public gmi files to koikoi’s build	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-11-01
685	https://royniang.com/type_design.html	The specimen of Akzidenz Grotesque	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-22
1008	https://irimi.one/music/illeapolis-radio/	Mr. Roboto - Illeapolis Radio, Vol. 1	\N	https://irimi.one	https://irimi.one/favicon.png	2021-01-15
1020	https://irimi.one/music/ursulas-cartrigdes-lord-of-the-game/	Death Grips - Lord of the Game (Ursula's Cartridges DnB Remix)	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-19
231	https://oddworlds.org/gallery/2020-10.html	2020-10	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-07-22
1115	https://wiki.xxiivv.com/site/nasu.html	Nasu Web Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-02-02
387	https://teknari.com/blogpost/1595774170477/St+Petersburg+Handmade+Prints+Book	St Petersburg Handmade Prints Book	\N	https://teknari.com	https://teknari.com/favicon.ico	2020-07-26
290	https://now.lectronice.com/then/2020-12w51/	2020W51 :: kalama musi ike nanpa wan	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-13
1167	https://wiki.xxiivv.com/site/minamiise.html	After the Rain	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1178	https://wiki.xxiivv.com/site/minamiise.html	Up that hill	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1179	https://wiki.xxiivv.com/site/minamiise.html	Shore Ghostly	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1072	https://wiki.xxiivv.com/site/origami.html	Sonobe 3	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
1073	https://wiki.xxiivv.com/site/origami.html	Sonobe 12	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
1180	https://wiki.xxiivv.com/site/minamiise.html	Coastal Ghostly	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1181	https://wiki.xxiivv.com/site/minamiise.html	Gokasho	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
13	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
14	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
15	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
204	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	infected clock III	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-11-16
208	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
210	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
779	https://materialfuture.net/posts/links/2020-02-links/	Links for February 2020	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-02-19
781	https://materialfuture.net/posts/blog/2020-01-site-redesign/	Redesigning My Site + Minimalism On The Web	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-01-29
782	https://materialfuture.net/posts/links/2020-01-links/	Links for January 2020	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-01-15
629	https://icyphox.sh/blog/signal	We can do better than Signal	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2021-01-17
630	https://icyphox.sh/blog/whatsapp	What's next after WhatsApp?	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2021-01-08
631	https://icyphox.sh/blog/2020-in-review	2020 in review	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-12-24
638	https://icyphox.sh/blog/2020-07-20	Status update	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-07-20
669	https://icyphox.sh/blog/disinfo	Disinformation demystified	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-09-10
670	https://icyphox.sh/blog/mailserver	Setting up my personal mailserver	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-08-15
1401	https://wiki.xxiivv.com/site/film.html	Meeting With Alaska Friends	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1316	https://wiki.xxiivv.com/site/film.html	Auckland Beach	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1231	https://wiki.xxiivv.com/site/ogasawara.html	Omura Entrance	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1747	https://wiki.xxiivv.com/site/tokyo.html	Lea	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1750	https://wiki.xxiivv.com/site/tokyo.html	Void Garden	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1755	https://wiki.xxiivv.com/site/tokyo.html	Kabukicho	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1698	https://wiki.xxiivv.com/site/czech.html	Classic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1699	https://wiki.xxiivv.com/site/czech.html	Spaceship Church	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1700	https://wiki.xxiivv.com/site/czech.html	Czech Ramen	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
759	https://materialfuture.net/posts/music/space-album-video/	Space Album Video - Video Schedules	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-07
760	https://materialfuture.net/posts/servers/2020-11-6-learn-netdata/	Network Monitoring Via NetData	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-06
750	https://materialfuture.net/posts/blog/activitypub-migration/	Online Purge - Meaningful Interaction	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-01-12
216	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
25	https://notes.neeasade.net/Automata-tiling-backgrounds.html	Automata tiling backgrounds	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-08
783	https://materialfuture.net/posts/links/2019-12-links/	Links for December 2019	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2019-12-18
784	https://materialfuture.net/posts/links/2019-11-links/	Links for November 2019	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2019-11-15
671	https://icyphox.sh/blog/fb50	Picking the FB50 smart lock (CVE-2019-13143)	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2019-08-05
632	https://icyphox.sh/blog/music-streaming	My music streaming setup	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-12-13
26	https://notes.neeasade.net/checking-for-toots.html	checking for toots	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-03
27	https://notes.neeasade.net/blog-meta.html	May Days	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-02
28	https://notes.neeasade.net/reverse-ssh-tunnels.html	reverse ssh tunnels	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-04-10
29	https://notes.neeasade.net/xeros-irc-ref.html	xero's irc ref	\N	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-04-04
633	https://icyphox.sh/blog/workman	The Workman keyboard layout	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-10-24
634	https://icyphox.sh/blog/r2wars-2020	My submissions for r2wars 2020	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-09-13
635	https://icyphox.sh/blog/mastodon-to-pleroma	Migrating from Mastodon to Pleroma	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-09-04
636	https://icyphox.sh/blog/ducky-one-2	The Ducky One 2 SF	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-08-22
637	https://icyphox.sh/blog/twitter	Some thoughts on Twitter	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-08-03
641	https://icyphox.sh/blog/pi	Migrating to the RPi	\N	https://icyphox.sh	https://icyphox.sh/favicon.png	2020-06-04
202	http://nonmateria.com/posts/2021_03_19__la_retta.html	la retta	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-19
209	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
16	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	motore immoto 1	\N	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
711	https://royniang.com/computers.html	Bombed shell	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-24
694	https://royniang.com/cooking_tools.html	Hario V60	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-23
695	https://royniang.com/watching.html	絞死刑 (大島 渚, 1968)	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-19
59	https://writing.natwelch.com/post/695	Japan 2019 Travel Log Day 1	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-14
60	https://writing.natwelch.com/post/694	What's making me happy 2019-04-20	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-04-21
61	https://writing.natwelch.com/post/693	New book night	\N	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-04-16
729	https://royniang.com/identity.html	Minous, stretching	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-02-01
696	https://royniang.com/kiroku.html	Mémoires	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-17
697	https://royniang.com/language.html	Design and communication	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-16
758	https://materialfuture.net/posts/music/streaming-services/	Streaming Services and Listening To Music	\N	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-27
793	https://travisshears.com/blog/unteres-lichteck-ridge-tour/	unteres lichteck ridge tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-13
794	https://travisshears.com/blog/schachentorkopf-ridge-tour/	schachentorkopf ridge tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-09
795	https://travisshears.com/snippets/strip-audio-from-video-file/	Strip Audio From Video File	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-09
796	https://travisshears.com/blog/garmisch-piste-tour/	garmisch piste tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-09
797	https://travisshears.com/blog/winter-hikes/	winter hikes	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-07
798	https://travisshears.com/blog/weibel_kante/	weibel kante	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-12-25
799	https://travisshears.com/blog/slovenia_trip/	slovenia trip	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-12-25
801	https://travisshears.com/blog/instagram-archive/	instagram archive	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-10-01
74	https://resevoir.net//documenting	https://resevoir.net//documenting	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
75	https://resevoir.net//eoy-2019	https://resevoir.net//eoy-2019	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-01-04
76	https://resevoir.net//fermentation	https://resevoir.net//fermentation	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-04-04
83	https://resevoir.net//jonathan	https://resevoir.net//jonathan	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-11-12
84	https://resevoir.net//kiron	https://resevoir.net//kiron	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-08-02
85	https://resevoir.net//library	https://resevoir.net//library	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-01
86	https://resevoir.net//lifestyle	https://resevoir.net//lifestyle	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-10
816	https://travisshears.com/blog/camping-in-mayrhofen/	camping in mayrhofen	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-21
817	https://travisshears.com/blog/peertube-instance-launch/	peertube instance launch	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-20
818	https://travisshears.com/tutorials/basic-vps-setup/	Basic VPS Setup	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-20
819	https://travisshears.com/snippets/automatic_tmux_session_names/	Automatic tmux session names	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-13
820	https://travisshears.com/blog/weekend-in-frankenjura/	weekend in frankenjura	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-05
821	https://travisshears.com/snippets/file-search-plus-size/	File Search Plus Size	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-02
822	https://travisshears.com/snippets/mass-mkv-to-mp4-ffmpeg/	Convert .mkv to .mp4	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-30
823	https://travisshears.com/snippets/wipe-mongo-collection/	Wipe a Mongo Collection	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-29
688	https://royniang.com/practice.html	Better ascenders and descenders	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
710	https://royniang.com/library.html	ほんやら洞のべんさん	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-27
715	https://royniang.com/cameras.html	Leica M5	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-12
716	https://royniang.com/roy_niang.html	Out of focus	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-11
699	https://royniang.com/9front.html	Stacking	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-02
700	https://royniang.com/programming.html	Ken Thompson and Dennis Ritchie	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-08-27
701	https://royniang.com/sam.html	Navigation	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-08-07
702	https://royniang.com/photography.html	Selfportrait	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-07-30
72	https://resevoir.net//daerim-dong	https://resevoir.net//daerim-dong	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-01-28
73	https://resevoir.net//deep-work	https://resevoir.net//deep-work	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-05-02
92	https://resevoir.net//portable-printing	https://resevoir.net//portable-printing	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-04-12
93	https://resevoir.net//portable-typewriter	https://resevoir.net//portable-typewriter	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-12-20
87	https://resevoir.net//manifestations	https://resevoir.net//manifestations	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-11
88	https://resevoir.net//mediums	https://resevoir.net//mediums	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
89	https://resevoir.net//midi-plotter	https://resevoir.net//midi-plotter	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-08-06
90	https://resevoir.net//org-mode	https://resevoir.net//org-mode	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-22
91	https://resevoir.net//pointers	https://resevoir.net//pointers	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-03-08
101	https://resevoir.net//service-design	https://resevoir.net//service-design	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-08-08
828	https://travisshears.com/tutorials/adding-api-docs/	Adding Documentation to an API	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-08
829	https://travisshears.com/snippets/open-notion-links/	Open Notion Links	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-07
830	https://travisshears.com/blog/personal-site-walk-through/	personal site walk through	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-01
831	https://travisshears.com/snippets/twtxt-config/	Twtxt Config Alias	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-30
832	https://travisshears.com/snippets/jsx-comments/	JSX Comments	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-26
713	https://royniang.com/reading.html	Lockdown cleaning	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-19
714	https://royniang.com/keyboards.html	The Pebbles keyboard	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-17
120	https://szymonkaliski.com/projects/fabfungus/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-11-12
121	https://szymonkaliski.com/projects/liveboard/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-07-23
122	https://szymonkaliski.com/projects/protoboard/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-07-14
123	https://szymonkaliski.com/projects/hhann/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-06-30
124	https://szymonkaliski.com/writing/2020-04-19-memex-dreams/	Memex Dreams	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-04-19
717	https://royniang.com/street.html	Octopus	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
718	https://royniang.com/street.html	Goldfishes	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
94	https://resevoir.net//practice	https://resevoir.net//practice	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
95	https://resevoir.net//quotes	https://resevoir.net//quotes	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-07-28
96	https://resevoir.net//research	https://resevoir.net//research	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
719	https://royniang.com/street.html	Summertime umbrella	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
720	https://royniang.com/street.html	Girl playing with her dog	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
721	https://royniang.com/street.html	iPad sunshade	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
724	https://royniang.com/communities.html	Joined Merveilles	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-09-25
97	https://resevoir.net//resevoir	https://resevoir.net//resevoir	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
99	https://resevoir.net//sailing	https://resevoir.net//sailing	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-10-09
100	https://resevoir.net//selfcare-checklist	https://resevoir.net//selfcare-checklist	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	0001-01-01
98	https://resevoir.net//sailboat-as-gaze	https://resevoir.net//sailboat-as-gaze	\N	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-09-17
844	https://travisshears.com/snippets/sending-files-locally/	Sending Files Locally	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-05
845	https://travisshears.com/snippets/vim-spelling/	Vim Spelling	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-05
846	https://travisshears.com/blog/bayrischzell-cross-country/	cross-country skiing	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-02
847	https://travisshears.com/snippets/git-repo-backup/	Git Repo Backup	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-23
848	https://travisshears.com/blog/rofanspitze-ski-tour/	rofanspitze ski tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-19
725	https://royniang.com/nature.html	Riverside at La Réole	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-02
726	https://royniang.com/nature.html	Hidden house at La Réole	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-02
727	https://royniang.com/nature.html	Abandoned building at La Réole	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-02
693	https://royniang.com/diary.html	Alto getting used to his new home	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
704	https://royniang.com/diary.html	Maurane preparing her next movie	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
723	https://royniang.com/street.html	Bicycle kids	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
706	https://royniang.com/diary.html	End of the lockdown	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
133	https://szymonkaliski.com/projects/hiccup-sdf/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-11-25
148	https://szymonkaliski.com/writing/2017-07-07-building-neutron/	Building Neutron	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-07-07
149	https://szymonkaliski.com/projects/neutron/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-07-07
150	https://szymonkaliski.com/writing/2017-05-31-exploring-reasonml/	Exploring ReasonML	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-05-31
151	https://szymonkaliski.com/writing/2017-04-30-time-tracking/	Timav	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-04-30
887	https://travisshears.com/snippets/aws-cloud-front-inval/	AWS CloudFront invalidation Sync	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
888	https://travisshears.com/snippets/pretty-print-json/	Pretty print JSON	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
890	https://travisshears.com/blog/climbing-grade-converter-tool/	climbing grade converter tool	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-10-19
892	https://travisshears.com/blog/lofoten/	lofoten	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-29
893	https://travisshears.com/blog/laberdolomiten/	laberdolomiten	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-24
163	https://szymonkaliski.com/projects/glsl-auto-ui/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-04-20
164	https://szymonkaliski.com/projects/gla-london-2050/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-02-01
165	https://szymonkaliski.com/projects/google-io-android-diversity/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2015-11-28
166	https://szymonkaliski.com/projects/fonomapa/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2015-10-08
894	https://travisshears.com/blog/hacking-health/	hacking health in zurich	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-23
895	https://travisshears.com/blog/iceland-2019/	iceland	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-02
167	https://szymonkaliski.com/projects/kinect2osc/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2015-09-20
896	https://travisshears.com/blog/frauenwasserl/	frauenwasserl	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-08-19
703	https://royniang.com/rio.html	Busy 9front session	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-07-19
712	https://royniang.com/edc.html	Busted Moleskine	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-21
698	https://royniang.com/keyboards.html	RAMA M10-C	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-17
689	https://royniang.com/practice.html	Fixed weight issues; some new glyphs	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
691	https://royniang.com/practice.html	Drafted l, a, d and b	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
692	https://royniang.com/practice.html	First glyphs	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
722	https://royniang.com/street.html	Kid and grandpa on a scooter	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
728	https://royniang.com/diary.html	Petting Canelle at La Réole	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
730	https://royniang.com/identity.html	Minous, the stray cat	\N	https://royniang.com	https://royniang.com/media/services/icon.png	2019-02-01
737	https://www.edwinwenink.xyz/posts/53-update_kobo_annotation/	Extracting Kobo EPUB Annotations	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2021-01-08
738	https://www.edwinwenink.xyz/posts/52-bayesian_terminology/	On Bayesian likelihood	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-09-01
739	https://www.edwinwenink.xyz/posts/51-python_secondary_sorting/	Secondary sorting in Python	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-07-29
740	https://www.edwinwenink.xyz/posts/50-quiz_yourself_in_vim/	Study Tip: Quiz yourself in Vim	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-06-16
742	https://www.edwinwenink.xyz/posts/48-vim_fast_creating_and_linking_notes/	Creating and linking Zettelkasten notes in Vim	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-04-15
743	https://www.edwinwenink.xyz/posts/47-tilde_server/	Setting up your own tilde club (UNIX)	\N	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-04-11
125	https://szymonkaliski.com/projects/archivist/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-01-01
118	https://szymonkaliski.com/projects/haze/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2021-02-17
119	https://szymonkaliski.com/newsletter/2020-12-28-end-of-2020/	End of 2020	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-12-28
152	https://szymonkaliski.com/projects/timav/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-04-30
153	https://szymonkaliski.com/writing/2017-03-31-parametrium/	Building Parametrium	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-03-31
160	https://szymonkaliski.com/writing/2016-12-29-ofcourse-io/	Teaching Creative Coding in Shanghai	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-12-29
222	https://oddworlds.org/wiki/ethics.html	Ethics	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-10
161	https://szymonkaliski.com/projects/bareconductive-picap/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-09-09
162	https://szymonkaliski.com/projects/ballantines-heartbeats/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-07-18
154	https://szymonkaliski.com/projects/parametrium/	No title	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-03-31
155	https://szymonkaliski.com/writing/2017-02-28-building-wallgen/	Building Wallgen	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-02-28
223	https://oddworlds.org/cooking/0-fermenting.html	Meta: Fermenting	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-09
224	https://oddworlds.org/wiki/repair.html	Repair	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-08
225	https://oddworlds.org/cooking/0-sourdough.html	Meta: Starting and maintaining Sourdough	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-04
228	https://oddworlds.org/thoughts/memoria.html	Memoria	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-08-16
229	https://oddworlds.org/gallery/2020-08.html	2020-08	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-07-22
230	https://oddworlds.org/gallery/2020-09.html	2020-09	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-07-22
804	https://travisshears.com/blog/micro-blog-plugin-demo/	micro blog plugin demo	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-23
805	https://travisshears.com/tutorials/pi-static-ip/	Setting a Static IP on Pi	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-19
806	https://travisshears.com/snippets/tmux-plus-screen/	tmux plus screen	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-17
807	https://travisshears.com/snippets/npm-i-vs-npm-ci/	npm i vs npm ci	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-17
236	https://oddworlds.org/cooking/focaccia-genovese.html	Focaccia Genovese	\N	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-05-18
242	https://chad.is/technologies-of-the-self/	Technologies of the Self: A Short Introduction	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-23
243	https://chad.is/managing-oneself/	Managing Oneself	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-18
244	https://chad.is/copenhagen/	Copenhagen versus the universe	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-14
245	https://chad.is/reductionism/	Reductionism can explain neither carrots nor consciousness	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-11
247	https://chad.is/burden-of-consciousness/	Confronting the burden of consciousness	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2018-11-29
248	https://chad.is/ebook-innovation/	What happened to ebook innovation?	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2018-08-26
143	https://szymonkaliski.com/writing/2017-11-10-exploring-tidal-and-diagrams/	Learning Haskell part 2	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-11-10
144	https://szymonkaliski.com/writing/2017-10-02-learning-haskell/	Learning Haskell	\N	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-10-02
195	gemini://xj-ix.luxe/posts/2020-01-27-universal-basic-internet.gmi	universal basic internet	\N	gemini://xj-ix.luxe	/favicon.ico	2020-01-27
196	gemini://xj-ix.luxe/posts/2020-01-20-null-media-next.gmi	null.media@next	\N	gemini://xj-ix.luxe	/favicon.ico	2020-01-20
197	gemini://xj-ix.luxe/posts/2020-01-09-native-frp.gmi	native functional reactive programming	\N	gemini://xj-ix.luxe	/favicon.ico	2020-01-09
198	gemini://xj-ix.luxe/posts/2019-thaumaturgy.gmi	thaumaturgy	\N	gemini://xj-ix.luxe	/favicon.ico	2019-01-01
199	gemini://xj-ix.luxe/posts/2019-stop-and-think.gmi	stop and think	\N	gemini://xj-ix.luxe	/favicon.ico	2019-01-01
200	gemini://xj-ix.luxe/posts/2019-quickly-export-gitlab-projects.gmi	quickly export corpogit projects	\N	gemini://xj-ix.luxe	/favicon.ico	2019-01-01
249	https://chad.is/design-systems/	Designing self-sustaining systems	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2015-12-14
250	https://chad.is/wabi-sabi/	Nothing lasts, nothing is finished, and nothing is perfect	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-11-03
251	https://chad.is/creativity-management/	Creative work cannot be managed	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-05-29
827	https://travisshears.com/snippets/git-force-push-with-lease/	Force push with --lease for safety	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-10
849	https://travisshears.com/blog/lenggries-avalanche-course/	lenggries avalanche course	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-07
850	https://travisshears.com/blog/mountain-safety-reminder/	mountain safety reminder	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-06
851	https://travisshears.com/blog/scuol-2020/	scuol hütte	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-03
852	https://travisshears.com/snippets/vim-fzf-plugin/	Vim FZF Plugin	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-30
853	https://travisshears.com/snippets/jq-command-line-json-processor/	JQ JSON processor	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-30
854	https://travisshears.com/snippets/emoji-commit-messages/	Emoji Commit Messages	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-28
837	https://travisshears.com/tutorials/fromat-html-js-with-vs-code/	Format HTML & JavaScript with VS Code	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
252	https://chad.is/beautiful-code/	Beautiful code does not make a beautiful product	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-03-27
253	https://chad.is/startup-offers/	What to know before joining a startup	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-03-18
254	https://chad.is/cautious-prometheus/	The advantages of design in the 21st century	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-02-14
255	https://chad.is/guns-technology-culture/	Guns as technology, guns as culture	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-12-18
256	https://chad.is/design-hacking/	Design & Hacking	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-11-22
838	https://travisshears.com/tutorials/protected-github-branches/	Protected Github Branches	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
839	https://travisshears.com/blog/sunrise/	project sunrise	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-04-30
840	https://travisshears.com/snippets/k8s-reg-secret/	Creating K8s registry secrets	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-29
271	https://xvw.github.io/longs/introduction_gadt.html	Un cas d'école à l'utilisation des GADTs	\N	https://xvw.github.io	https://xvw.github.io/favicon.ico	2017-10-16
257	https://chad.is/asynchronous/	Don’t Make Me Wait	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-11-08
258	https://chad.is/zero-to-one/	Going from Zero to One	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-11-01
259	https://chad.is/design-of-design/	The Design of Design	\N	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-10-09
281	https://now.lectronice.com/then/2021-02w07/	W7 :: Struggling with Godot	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-14
282	https://now.lectronice.com/then/2021-02w06/	2021W6 :: Sweating profusely	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-07
283	https://now.lectronice.com/then/2021-02w05/	2021W5 :: Exploring vast spaces	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-31
284	https://now.lectronice.com/then/2021-01w04/	2021W4 :: Headbanging	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-24
325	https://longest.voyage/log/arrival/	Arrival	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-01-09
326	https://longest.voyage/log/replay/	Replay	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2019-12-02
327	https://longest.voyage/log/week4/	Week 4: Random Thoughts	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2018-11-18
328	https://longest.voyage/log/countdown/	Countdown	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2018-09-25
323	https://longest.voyage/log/first-month/	First Month	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-02-08
324	https://longest.voyage/log/lag/	Lag	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-01-20
279	https://now.lectronice.com/then/2021-03w09/	W9 :: Sitting in front of the sun	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-28
280	https://now.lectronice.com/then/2021-02w08/	W8 :: Watching the world burn	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-21
292	https://now.lectronice.com/then/2020-11w49/	2020W49 :: Songs?	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-29
293	https://now.lectronice.com/then/2020-11w48/	2020W48 :: Slacking	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-22
841	https://travisshears.com/blog/galtenberg-ski-tour/	galtenberg ski tour	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-17
842	https://travisshears.com/blog/kochel-first-climb/	first climb kochel	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-16
855	https://travisshears.com/snippets/watch-command/	Watch Command	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-27
856	https://travisshears.com/snippets/move-file-range/	Move File Range	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-27
857	https://travisshears.com/snippets/git-zsh-plugin/	ZSH git plugin	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-27
871	https://travisshears.com/snippets/git-log-grep/	Search git logs with grep	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
873	https://travisshears.com/snippets/scp/	I need a file off my server but I don't want to set up FTP	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
874	https://travisshears.com/snippets/find-folder/	Find that lost folder	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
875	https://travisshears.com/snippets/git-better-git-add/	Better Git Add	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
876	https://travisshears.com/snippets/git-move-branch/	Move Branch	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
291	https://now.lectronice.com/then/2020-12w50/	2020W50 :: Music and sore muscles	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-06
295	https://now.lectronice.com/then/2020-11w46/	2020W46 :: Tiredness and absurdity	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-08
296	https://now.lectronice.com/then/2020-11w45/	2020W45 :: Crunching/procrastinating	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-01
297	https://now.lectronice.com/then/2020-10w44/	2020W44 :: Music again	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-25
298	https://now.lectronice.com/then/2020-10w43/	2020W43 :: Teenage Artiphon Engineering	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-18
299	https://now.lectronice.com/then/2020-10w42/	2020W42 :: Beats	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-11
300	https://now.lectronice.com/then/2020-10w41/	2020W41 :: Global confusion	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-04
294	https://now.lectronice.com/then/2020-11w47/	2020W47 :: Meandering	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-15
305	https://now.lectronice.com/then/2020-08w36/	2020W36 :: Keyboards and lack of sleep	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-30
859	https://travisshears.com/snippets/shell-for-loops/	For loops in bash / zsh shells	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-12
860	https://travisshears.com/snippets/vim-placeholders/	Custom placeholders solution	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-12
306	https://now.lectronice.com/then/2020-08w35/	2020W35 :: Opuscule on acid with a plaid	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-23
307	https://now.lectronice.com/then/2020-08w34/	2020W34 :: HTML, Pi 4, acid and game design	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-16
308	https://now.lectronice.com/then/2020-08w33/	2020W33 :: Starting a now page	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-09
309	https://now.lectronice.com/then/2020-08w32/	2020W32 :: Testing my template	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-02
861	https://travisshears.com/snippets/vim-arglist/	Super powers of the arg list	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
862	https://travisshears.com/snippets/vim-ripgrep-custom/	Custom ripgrep	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
864	https://travisshears.com/snippets/vim-substitute/	Replae <s> with spell and nohl	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
865	https://travisshears.com/snippets/vim-window-resize/	Resizing vim windows with arrow keys	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
866	https://travisshears.com/snippets/ffmpeg-screen-casts/	Uploadable FFMPEG screen casts	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
867	https://travisshears.com/snippets/vim-dictionary/	Vim dictionary lookup command	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
868	https://travisshears.com/blog/return-of-snippets/	the return of snippets	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
869	https://travisshears.com/snippets/gitlab-runners-config/	Configure more gitlab runners	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
870	https://travisshears.com/snippets/git-who-last/	Who last edited a file	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
303	https://now.lectronice.com/then/2020-09w38/	2020W38 :: Toki Pona and slow burn out	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-13
304	https://now.lectronice.com/then/2020-09w37/	2020W37 :: toki pona li pona	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-06
301	https://now.lectronice.com/then/2020-09w40/	2020W40 :: Drawing again	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-27
302	https://now.lectronice.com/then/2020-09w39/	2020W39 :: Questions and fear of the future	\N	https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-20
316	https://longest.voyage/log/apolitical/	Apolitical	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-10-09
318	https://longest.voyage/log/waiting/	Waiting	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-07-24
319	https://longest.voyage/log/growth/	Growth	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-05-20
320	https://longest.voyage/log/life-in-the-shoebox/	Life in the Shoebox	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-04-26
321	https://longest.voyage/log/the-burger-search/	The Burger Search	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-04-11
322	https://longest.voyage/log/one-at-a-time/	One at a Time	\N	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-03-14
979	http://milofultz.com/2020/09/23/mastodon	Mastodon	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-09-23
980	http://milofultz.com/2020/09/01/domine	Domine (game from Hundred Rabbits)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-09-01
981	http://milofultz.com/2020/08/26/random-note	💻 Open A Random Note/Lo-Fi Idea Generator (Python)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-08-26
982	http://milofultz.com/2020/08/22/purple-rain-outro	🎼 Purple Rain Outro Transcription	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-08-22
983	http://milofultz.com/2020/08/19/soulja-realms	🎧 Soulja Realms	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-08-19
877	https://travisshears.com/snippets/git-nocommit-merge/	Soft merge	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
878	https://travisshears.com/snippets/tmux-new/	Mutliplex all the shells	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
879	https://travisshears.com/snippets/git-rebase/	Rewrite history git history	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
880	https://travisshears.com/snippets/git-revert/	Oops I take that back 	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
881	https://travisshears.com/snippets/silver-searcher/	Silver Searcher, it's like grep but faster and easier	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
884	https://travisshears.com/snippets/pass-copy/	Copy password from Pass to the keyboard	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
885	https://travisshears.com/snippets/git-prev-commit-changes/	See previous commit changes	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
897	https://travisshears.com/blog/karwendelspitze-2019/	karwendelspitze	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-21
898	https://travisshears.com/blog/scanning-for-meaning/	scanning for meaning	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-14
899	https://travisshears.com/blog/canada-2019/	canada	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-12
900	https://travisshears.com/blog/switzerland-liechtenstein-2019/	switzerland + liechtenstein	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-05
858	https://travisshears.com/blog/start-of-ski-season/	start of ski season	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-12
901	https://travisshears.com/blog/armycookbot/	army cook bot	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-01
902	https://travisshears.com/blog/klettergarten-bad-heilbrunn/	klettergarten bad heilbrunn	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-05-19
903	https://travisshears.com/blog/reviving-dotfiles/	reviving dotfiles	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-29
904	https://travisshears.com/blog/gitlab-npm-package-setup/	git hosted npm packages	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-17
905	https://travisshears.com/blog/corsica-2019/	corsica	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-10
906	https://travisshears.com/blog/local-pijul-with-docker/	try pijul with docker	\N	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-01
907	https://travisshears.com/corona_cal/	\N	\N	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
908	https://travisshears.com/version/	\N	\N	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
909	https://travisshears.com/gpg/	GPG	\N	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
910	https://travisshears.com/micro-blog/	Micro Blog	\N	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
923	https://ix5.org/thoughts/2017/larry-wilmore-whca-2016/	“Yo Barry, you did it my nigga”	\N	https://ix5.org	https://ix5.org/favicon.png	2017-03-26
924	https://ix5.org/thoughts/2016/minimalism-is-for-suckers/	Minimalism is for suckers	\N	https://ix5.org	https://ix5.org/favicon.png	2017-03-02
925	https://ix5.org/thoughts/2015/donating-blood/	Donating blood	\N	https://ix5.org	https://ix5.org/favicon.png	2017-02-24
926	https://ix5.org/thoughts/2014/a-bit-of-wisdom/	A bit of wisdom	\N	https://ix5.org	https://ix5.org/favicon.png	2017-02-24
928	https://ix5.org/thoughts/2014/2014-taiwan-bike-tour-travel-report/	2014 Taiwan bike tour travel report	\N	https://ix5.org	https://ix5.org/favicon.png	2018-01-27
929	https://ix5.org/thoughts/2014/changhua-county/	Changhua county	\N	https://ix5.org	https://ix5.org/favicon.png	2017-02-24
930	https://ix5.org/thoughts/2014/easy-going-on-little-liuciu-island/	Easy going on Little Liuciu Island	\N	https://ix5.org	https://ix5.org/favicon.png	2017-02-24
961	http://milofultz.com/2021/01/06/reverse-horoscope	🌌 Reverse Horoscope - Find Out Your Real Birthday (JS)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2021-01-06
962	http://milofultz.com/2020/12/27/atlb-notes	📕 Algorithms To Live By - Book Notes	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-12-27
963	http://milofultz.com/2020/12/13/aoc-day-13	Solution to Advent of Code 13 - LCM with Offsets	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-12-13
964	http://milofultz.com/2020/12/01/advent-of-code	🧩 Advent Of Code 2020 - Solutions	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-12-01
965	http://milofultz.com/2020/11/10/bytebeat	Bytebeat - Overview and How To Make/Record on OSX	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-11-10
966	http://milofultz.com/2020/11/09/the-point-of-diminis	The point of diminishing returns is already here	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-11-09
967	http://milofultz.com/2020/11/01/koi-koi-rules	Rules for Hanafuda game "Koi-Koi"	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-11-01
935	https://nor.the-rn.info/2020/12/29/the-eoy-info-sessions/	The EOY Info Sessions	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-12-29
936	https://nor.the-rn.info/2020/12/25/that-which-is-unique-breaks/	That Which is Unique, Breaks	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-12-25
937	https://nor.the-rn.info/2020/10/16/music-hackspace/	Music Hackspace	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-10-16
938	https://nor.the-rn.info/2020/09/29/pandemic-day-203-floyd-protests-day-127/	Pandemic Day 203 / Floyd Protests Day 127	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-09-29
939	https://nor.the-rn.info/2020/09/15/towards-the-polymyth/	Towards the Polymyth	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-09-15
940	https://nor.the-rn.info/2020/09/11/the-software-blues/	The Software Blues	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-09-11
948	https://inqlab.net/der-hase-und-der-igel.html	Der Hase und der Igel	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2019-09-14
949	https://inqlab.net/large-underground-temple.html	Large Underground Temple	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2016-03-14
950	https://inqlab.net/hong-kong-to-kunming.html	Hong Kong to Kunming	\N	https://inqlab.net	https://inqlab.net/favicon.ico	2015-03-02
951	https://inqlab.net/karawane.html	Karawane	\N	https://inqlab.net	https://inqlab.net/favicon.ico	1916-02-05
978	http://milofultz.com/2020/09/26/zentube	💻 Zentube - Youtube Lite w/Note Taking (HTML/CSS/JS)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-09-26
984	http://milofultz.com/2020/08/04/piu-piu-ringtone	🎧 Piu Piu ringtone but it's only Avgustina's laugh	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-08-04
985	http://milofultz.com/2020/07/23/awfulizer	💻 Awfulizer - Make Surfing The Web Awful (Firefox)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-07-23
986	http://milofultz.com/2020/07/22/make-python-apps	Make Python 'Apps' and Shortcuts To Run Them on OSX	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-07-22
988	http://milofultz.com/2020/07/08/star-maker	💻 star_maker - a lo-fi ambient visual (Python)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-07-08
989	http://milofultz.com/2020/07/07/spacelove	🎧 spacelove.xm - Made using an old E-MAX sample	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-07-07
990	http://milofultz.com/2020/07/03/wordsmash	💻 Wordsmash Explosion - Mastermind With Words (Python)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-07-03
991	http://milofultz.com/2020/07/02/bmcrawl	💻 Bookmark Crawler - Make Internet More Fun (Python)	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-07-02
992	http://milofultz.com/2020/06/26/nobody-takes-advice	Nobody Takes Advice	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-06-26
993	http://milofultz.com/2020/06/25/inexpensive-games	Inexpensive and Minimal Equipment Games To Play	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-06-25
1011	https://irimi.one/music/sun23/	Zadig The Jasp - Sun 23	\N	https://irimi.one	https://irimi.one/favicon.png	2020-11-29
1012	https://irimi.one/posts/webring/	I’m on a Webring Now	\N	https://irimi.one	https://irimi.one/favicon.png	2020-11-14
1013	https://irimi.one/music/lone-electrone/	Lone Electrone	\N	https://irimi.one	https://irimi.one/favicon.png	2020-11-07
1014	https://irimi.one/collage-poems/jewelbox/	Like a Jewelbox in the Forest	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-31
1015	https://irimi.one/collage-poems/onethatlikestoread/	One That Likes to Read	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-31
1016	https://irimi.one/music/alpha-centauri/	Alicequests - Alpha Centauri	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-25
994	http://milofultz.com/2020/06/21/quantity-quality	Quality and quantity's relevance to critical feeling	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-06-21
995	http://milofultz.com/2020/06/10/critical-feeling	Critical feeling is as important as critical thinking	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-06-10
996	http://milofultz.com/2020/05/25/exercise-routine	Simple + Minimal Exercise Routine	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-05-25
997	http://milofultz.com/2020/05/23/day-planner	🗺 Day planner based on location	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-05-23
998	http://milofultz.com/2020/05/22/zettelkasten	I just found out about Zettelkasten	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-05-22
999	http://milofultz.com/2020/05/22/keyboard-remapping	Keyboard Remapping on OSX - Adding the Insert Key	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-05-22
1002	http://milofultz.com/2020/05/01/old-internet	I Miss The Old Internet	\N	http://milofultz.com	https://www.edwinwenink.xyz/favicon.ico	2020-05-01
1027	https://natehn.com/posts/iphone-security/	Activist iPhone Security Guide	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2021-03-13
1028	https://natehn.com/library/	Library	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2021-02-28
1029	https://natehn.com/posts/2020/	Reflecting on 2020	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2021-01-17
1030	https://natehn.com/connect/	Connect	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2021-01-10
1031	https://natehn.com/posts/music-studio-nov-2020/	Music Studio (Nov. 2020)	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-11-14
1032	https://natehn.com/posts/leaving-facebook/	Leaving Facebook	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-11-09
1033	https://natehn.com/posts/on-memes/	On Memes	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-10-30
1034	https://natehn.com/feed/	Feed	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-10-09
1035	https://natehn.com/posts/land-acknowledgment/	Land Acknowledgment	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-09-22
1036	https://natehn.com/posts/this-website/	This Website, and How To Build Your Own	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-09-01
1037	https://natehn.com/about/	About	\N	https://natehn.com	https://natehn.com/images/favicon.ico	2020-08-14
1055	https://tendigits.space/notes/imac-with-linux/	New Linux for an old iMac	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-06-17
1056	https://tendigits.space/notes/ae-modular/	AE Modular	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-05-31
1057	https://tendigits.space/notes/site-11ty-setup/	This website's setup with 11ty	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-05-30
1017	https://irimi.one/music/50-tracks/	Netsh - 50 tracks to enhance your robotic implants	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-23
1018	https://irimi.one/posts/buying-music/	Buying Music Again	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-21
1019	https://irimi.one/music/keep-running/	V//Tomo - ♥K e e p Running♥	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-20
1021	https://irimi.one/collage-poems/forgotten/	He had forgotten all	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-13
1022	https://irimi.one/collage-poems/sameasyou/	Same as you	\N	https://irimi.one	https://irimi.one/favicon.png	2020-10-13
1023	https://irimi.one/stickers/proprietary-bullshit/	Proprietary Bullshit	\N	https://irimi.one	https://irimi.one/favicon.png	2020-09-18
1024	https://irimi.one/stickers/acab/	All Computers Are Broken	\N	https://irimi.one	https://irimi.one/favicon.png	2020-09-06
1025	https://irimi.one/stickers/fab-money/	If money can’t buy happiness then why is it so fabulous?	\N	https://irimi.one	https://irimi.one/favicon.png	2020-09-06
1044	https://www.gr0k.net/blog/zynthians-sequencer-zynseq.html	Zynthian's Sequencer - ZynSeq	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-01-29
1045	https://www.gr0k.net/blog/zynthian-first-impressions.html	Zynthian v4.1 Kit - First Impressions	\N	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-01-28
1061	https://wiki.xxiivv.com/site/left.html	Uxambly drawing routines	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1077	https://wiki.xxiivv.com/site/ayatori.html	Ayatori Notebook	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-10-04
1059	https://wiki.xxiivv.com/site/nasu.html	2-bit tiles in nasu	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-02-02
1078	https://wiki.xxiivv.com/site/identity.html	Made In Moogle	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1079	https://wiki.xxiivv.com/site/longtermism.html	Brass Faucet	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-09-19
1051	https://tendigits.space/notes/inktober/	Inktober	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-10-01
1052	https://tendigits.space/notes/post-receive-hook/	Post Receive Hook	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-09-27
1053	https://tendigits.space/notes/bagels/	Bagels	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-09-26
1054	https://tendigits.space/notes/updating-ssh/	Updating SSL Certs	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-08-25
1058	https://tendigits.space/notes/hello/	Setting up this website	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-05-20
1389	https://wiki.xxiivv.com/site/nervous.html	Woulg	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-27
1701	https://wiki.xxiivv.com/site/czech.html	Travel to Czech	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1799	https://wiki.xxiivv.com/site/downtemperature.html	Downtemperature Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1084	https://wiki.xxiivv.com/site/chr_format.html	Nasu on Plan 9	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-07
1085	https://wiki.xxiivv.com/site/postscript.html	Postscript on Plan9	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-04
1693	https://wiki.xxiivv.com/site/czech.html	Joe	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1099	https://wiki.xxiivv.com/site/nespaint.html	The NesPaint Interface	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-21
1103	https://wiki.xxiivv.com/site/identity.html	Luna moth in Minamiise	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1093	https://wiki.xxiivv.com/site/shimoda.html	Shimoda Station	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1094	https://wiki.xxiivv.com/site/shimoda.html	Sunset Maru	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1101	https://wiki.xxiivv.com/site/graf3dscene.html	Andes Castel In Construction	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-15
1107	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack III	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-31
1108	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-31
1109	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-31
1143	https://wiki.xxiivv.com/site/aitasla.html	Reflector	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-09
1110	https://wiki.xxiivv.com/site/donsol_famicom.html	Donsol Famicom Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-12
1431	https://wiki.xxiivv.com/site/beauty.html	03	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1640	https://wiki.xxiivv.com/site/diluvium.html	Diluvium	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-20
1157	https://wiki.xxiivv.com/site/hardware.html	Sanwu Audio Player	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-25
1122	https://wiki.xxiivv.com/site/morse.html	Morse Alphabet Chart	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-11-04
1123	https://wiki.xxiivv.com/site/macintosh.html	Neauismetica on Macintosh	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-11-01
1121	https://wiki.xxiivv.com/site/andes_castel.html	Castel Entrance	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-23
1117	https://wiki.xxiivv.com/site/famicom.html	Famicom Keyboard	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-29
1080	https://wiki.xxiivv.com/site/spacetime_6502.html	Spacetime 6502	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-26
1081	https://wiki.xxiivv.com/site/usagi.html	Nesdev on Plan9	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-25
1082	https://wiki.xxiivv.com/site/plan9_color.html	Color Picker	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-14
1091	https://wiki.xxiivv.com/site/travel.html	Spent 7 weeks at sea	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-21
1125	https://wiki.xxiivv.com/site/famicom.html	OPN2 Cartridge	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-29
1130	https://wiki.xxiivv.com/site/risan_aldeth.html	Aldeth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-07
1087	https://wiki.xxiivv.com/site/plan9_c.html	Plan9 Draw	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-01
1088	https://wiki.xxiivv.com/site/acme.html	Custom Acme	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-31
1089	https://wiki.xxiivv.com/site/rio.html	Customizing Rio	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-30
1083	https://wiki.xxiivv.com/site/moogle.html	Pitch Yaw Roll	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-28
1092	https://wiki.xxiivv.com/site/nautical.html	Alphabet Flags	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-06-07
1104	https://wiki.xxiivv.com/site/pascal.html	Spiral Pattern	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-04-12
1105	https://wiki.xxiivv.com/site/pascal.html	Entaloneralie System 7	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-04-12
1113	https://wiki.xxiivv.com/site/donsol_famicom.html	Famicom AV to C1084 Monitor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-12
1127	https://wiki.xxiivv.com/site/duomo.html	Slip Gate	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1102	https://wiki.xxiivv.com/site/minamiise.html	Nozoe at 5am	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1106	https://wiki.xxiivv.com/site/minamiise.html	The Gokashou Coast	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1111	https://wiki.xxiivv.com/site/minamiise.html	Nakatsuhamaura	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1100	https://wiki.xxiivv.com/site/personal.html	Disused Hotel in Shimoda	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1118	https://wiki.xxiivv.com/site/oquonie.html	Aboard Pino	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1119	https://wiki.xxiivv.com/site/technology.html	Paper Computer	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-12-03
1159	https://wiki.xxiivv.com/site/studio.html	Microbrute Synth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1114	https://wiki.xxiivv.com/site/pino.html	In Minamiise	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1138	https://wiki.xxiivv.com/site/risan_aldeth.html	Compression Tunnels	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-07
1145	https://wiki.xxiivv.com/site/risan_aldeth.html	Ehrivevnv Gate	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-07
1429	https://wiki.xxiivv.com/site/beauty.html	02	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1489	https://wiki.xxiivv.com/site/flactals.html	Torazine	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
1150	https://wiki.xxiivv.com/site/neonev.html	Early Years	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-02
1156	https://wiki.xxiivv.com/site/lard_shader.html	Study D	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1124	https://wiki.xxiivv.com/site/keyboard.html	OLKB Hi-pro mod Planck 6	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-01-02
1160	https://wiki.xxiivv.com/site/talk.html	Talk at XOXO, Portland	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-21
1224	https://wiki.xxiivv.com/site/ogasawara.html	Marus	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1140	https://wiki.xxiivv.com/site/dilitriel.html	Eaurizon Hangars	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1146	https://wiki.xxiivv.com/site/dilitriel.html	Flighter Transit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1128	https://wiki.xxiivv.com/site/vetetrandes.html	Saarafores Station	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1139	https://wiki.xxiivv.com/site/vetetrandes.html	Escal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1132	https://wiki.xxiivv.com/site/whiinders.html	Offline Station	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-15
1137	https://wiki.xxiivv.com/site/whiinders.html	Signalter	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-15
1086	https://wiki.xxiivv.com/site/plan9_clock.html	Not into babyblue	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-02
1169	https://wiki.xxiivv.com/site/monome.html	Rack Monome	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-29
1236	https://wiki.xxiivv.com/site/orca.html	Orca x Dotgrid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1162	https://wiki.xxiivv.com/site/andes.html	Andes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-08-29
1174	https://wiki.xxiivv.com/site/monome.html	Linn Monome	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-29
1435	https://wiki.xxiivv.com/site/orca.html	Orca Glyphs	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1142	https://wiki.xxiivv.com/site/vetetrandes.html	Shutting Ramp	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1158	https://wiki.xxiivv.com/site/playground.html	The Playground Express	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-24
1141	https://wiki.xxiivv.com/site/laeisth.html	Es Plains	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-11
1131	https://wiki.xxiivv.com/site/kirleane.html	Paradichlorisse	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-30
1152	https://wiki.xxiivv.com/site/kirleane.html	Soies Compressor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-30
1147	https://wiki.xxiivv.com/site/dilitriel.html	Flighter	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1148	https://wiki.xxiivv.com/site/dilitriel.html	Hanging Road	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1120	https://wiki.xxiivv.com/site/tools.html	Tools Sticker Sheets	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-23
1151	https://wiki.xxiivv.com/site/vetetrandes.html	Autoconstructors	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1135	https://wiki.xxiivv.com/site/duomo.html	Drains	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1136	https://wiki.xxiivv.com/site/duomo.html	Basin	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1144	https://wiki.xxiivv.com/site/duomo.html	Refineries	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1196	https://wiki.xxiivv.com/site/osaka.html	Rock Castle in Osaka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1197	https://wiki.xxiivv.com/site/osaka.html	Rock Garden in Osaka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1242	https://wiki.xxiivv.com/site/merveilles.html	Maru	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-12-12
1166	https://wiki.xxiivv.com/site/macro.html	Caterpillar	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1171	https://wiki.xxiivv.com/site/plan9.html	Catclock	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-05
1172	https://wiki.xxiivv.com/site/plan9.html	Monochrome Rio	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-05
1173	https://wiki.xxiivv.com/site/plan9.html	Glenda	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-05
1184	https://wiki.xxiivv.com/site/azolla.html	Azolla Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1186	https://wiki.xxiivv.com/site/azolla.html	JSNation, Amsterdam	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1165	https://wiki.xxiivv.com/site/ronin.html	Ronin Spiral	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-07
1168	https://wiki.xxiivv.com/site/ronin.html	Ronin Recursion	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-07
1175	https://wiki.xxiivv.com/site/skate.html	Minami Ise beach	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1170	https://wiki.xxiivv.com/site/ronin.html	Ronin Splash	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-07
1176	https://wiki.xxiivv.com/site/skate.html	Minami Ise beach 2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1177	https://wiki.xxiivv.com/site/norns.html	Tutorials	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-10
1185	https://wiki.xxiivv.com/site/norns.html	Pong on Norns	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-10
1189	https://wiki.xxiivv.com/site/skate.html	Getting back into it	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1190	https://wiki.xxiivv.com/site/skate.html	Joy in picture	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1193	https://wiki.xxiivv.com/site/tools.html	Orca Station	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-23
1198	https://wiki.xxiivv.com/site/osaka.html	Travel to Osaka, Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1191	https://wiki.xxiivv.com/site/studio.html	Infinite Polivoks	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1438	https://wiki.xxiivv.com/site/keyboard_468.html	1.4	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-27
1126	https://wiki.xxiivv.com/site/vertale.html	Meeting Andes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1129	https://wiki.xxiivv.com/site/vertale.html	Depot	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1133	https://wiki.xxiivv.com/site/vertale.html	Outside Passage	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1200	https://wiki.xxiivv.com/site/studio.html	Polivoks Mini B	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1194	https://wiki.xxiivv.com/site/azolla.html	Algomech Festival, Sheffield	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1195	https://wiki.xxiivv.com/site/azolla.html	Yajnev	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1220	https://wiki.xxiivv.com/site/illustration.html	Working remotely	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-04
1212	https://wiki.xxiivv.com/site/juni.html	Holding the Chorded Keyboard	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-26
1213	https://wiki.xxiivv.com/site/juni.html	The Chorded Keyboard	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-26
1221	https://wiki.xxiivv.com/site/ogasawara.html	Futami Beach	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1222	https://wiki.xxiivv.com/site/ogasawara.html	Futami Sailors	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1228	https://wiki.xxiivv.com/site/lifestyle.html	Anchored in Ogasawara	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-02-20
1208	https://wiki.xxiivv.com/site/pilot.html	The Pilot Synthetiser	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-03
1215	https://wiki.xxiivv.com/site/goals.html	Rekka on Pino in Shizuoka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-18
1216	https://wiki.xxiivv.com/site/goals.html	Pino docked in Shizuoka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-18
1210	https://wiki.xxiivv.com/site/shizuoka.html	Tea House	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1219	https://wiki.xxiivv.com/site/artwork.html	Coralinev Bike	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1246	https://wiki.xxiivv.com/site/marshall_islands.html	Eggplant Twirl	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1254	https://wiki.xxiivv.com/site/paradise.html	ParadiseOS	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1275	https://wiki.xxiivv.com/site/physical.html	Elodie Vast	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-06-06
1243	https://wiki.xxiivv.com/site/merveilles.html	Mastodon Instance Inauguration	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-12-12
1251	https://wiki.xxiivv.com/site/unix.html	Static	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-06
1252	https://wiki.xxiivv.com/site/bike.html	Trek District S, in Fiji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-26
1261	https://wiki.xxiivv.com/site/routine.html	Apartment in Koenji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-21
1262	https://wiki.xxiivv.com/site/japan.html	Shimokitazawa	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-19
1288	https://wiki.xxiivv.com/site/black.html	Lost in Niue	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1308	https://wiki.xxiivv.com/site/death.html	Dominion	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-11-14
1274	https://wiki.xxiivv.com/site/hundred_rabbits.html	Rekka At work	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1249	https://wiki.xxiivv.com/site/marshall_islands.html	Sail to Majuro, Marshall Islands	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1300	https://wiki.xxiivv.com/site/vambits.html	From Skógr Studios	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1248	https://wiki.xxiivv.com/site/the_sublime.html	Sunrise in the Marshall Islands	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1577	https://wiki.xxiivv.com/site/nereid.html	The South	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1161	https://wiki.xxiivv.com/site/hundred_rabbits.html	Kelp	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1233	https://wiki.xxiivv.com/site/rekka.html	In Ogasawara	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1239	https://wiki.xxiivv.com/site/nutrition.html	Deep Greens	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-19
1241	https://wiki.xxiivv.com/site/hundred_rabbits.html	Neighbor Pino	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1237	https://wiki.xxiivv.com/site/marshall_islands.html	A young okra plant at the hospital	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1226	https://wiki.xxiivv.com/site/lietal.html	Alrök Fur Säldota	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1209	https://wiki.xxiivv.com/site/shizuoka.html	Tea Fields	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1211	https://wiki.xxiivv.com/site/shizuoka.html	Cherry Trees over Tea Fields	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1214	https://wiki.xxiivv.com/site/shizuoka.html	Moored downtown Shizuoka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1218	https://wiki.xxiivv.com/site/shizuoka.html	Sail to Shizuoka, Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1223	https://wiki.xxiivv.com/site/ogasawara.html	Futami Arbor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1225	https://wiki.xxiivv.com/site/ogasawara.html	Terraforming done right	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1265	https://wiki.xxiivv.com/site/donsol.html	Difficulty levels	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1253	https://wiki.xxiivv.com/site/discourse.html	Maude	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-23
1255	https://wiki.xxiivv.com/site/wisdom.html	Sol Robeson	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-17
1276	https://wiki.xxiivv.com/site/neon_hermetism.html	Soies Injection	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-05-25
1440	https://wiki.xxiivv.com/site/macro.html	Cure Dents	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1155	https://wiki.xxiivv.com/site/andes_castel.html	The view from Laeisth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-23
1259	https://wiki.xxiivv.com/site/ethics.html	The Land Sailor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-29
1247	https://wiki.xxiivv.com/site/about.html	XXIIVV	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-28
1279	https://wiki.xxiivv.com/site/webring.html	No, seriously.	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-05-15
1260	https://wiki.xxiivv.com/site/about.html	Ambigram	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-28
1295	https://wiki.xxiivv.com/site/everyday.html	At sea, everything rusts	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-03-19
1281	https://wiki.xxiivv.com/site/pino.html	A new sail for Pino	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1256	https://wiki.xxiivv.com/site/fiji.html	Lami Bay II, Fiji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1258	https://wiki.xxiivv.com/site/fiji.html	Cousteau	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1303	https://wiki.xxiivv.com/site/yajnev.html	Supermoon	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-07-16
1267	https://wiki.xxiivv.com/site/essentials.html	Durable and simple tools	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-07-22
1603	https://wiki.xxiivv.com/site/fuji.html	Torchlights	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1201	https://wiki.xxiivv.com/site/studio.html	Polivoks Mini A	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1199	https://wiki.xxiivv.com/site/raspberry.html	Ad blocker with display	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-05
1202	https://wiki.xxiivv.com/site/alicef.html	Polivoks	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-22
1207	https://wiki.xxiivv.com/site/pilot.html	Orca x Pilot	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-03
1313	https://wiki.xxiivv.com/site/rotonde.html	The Webring Logo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-12
1672	https://wiki.xxiivv.com/site/personal.html	Shiro	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1217	https://wiki.xxiivv.com/site/bike.html	In front of Mt. Fuji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-26
1235	https://wiki.xxiivv.com/site/the_sublime.html	Majuro Anchorage	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1229	https://wiki.xxiivv.com/site/ogasawara.html	Epave	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1230	https://wiki.xxiivv.com/site/ogasawara.html	An Old Bunker	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1240	https://wiki.xxiivv.com/site/marshall_islands.html	Thai Basil	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1306	https://wiki.xxiivv.com/site/duomo.html	The Districts	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1745	https://wiki.xxiivv.com/site/personal.html	Lea	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1751	https://wiki.xxiivv.com/site/personal.html	Kabukicho	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1754	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	Netlabel Party - Tokyo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-26
1746	https://wiki.xxiivv.com/site/tokyo.html	Blaze Blue	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1765	https://wiki.xxiivv.com/site/neauismetica.html	The Library Of Sand	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-08-28
1294	https://wiki.xxiivv.com/site/weather_station.html	Listening to the weather	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-03-21
1271	https://wiki.xxiivv.com/site/wiktopher.html	A Bed Of Dust	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-06
1305	https://wiki.xxiivv.com/site/dotgrid.html	Working away from snow	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1315	https://wiki.xxiivv.com/site/documentation.html	Analogies	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-24
1250	https://wiki.xxiivv.com/site/riven.html	The Portals Combination	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-02-27
1298	https://wiki.xxiivv.com/site/riven.html	Portal combination is in my journal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-02-27
1290	https://wiki.xxiivv.com/site/visual.html	The Beldam Point Of View	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-19
1307	https://wiki.xxiivv.com/site/vambits.html	Fresh Vambit Cuts	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1301	https://wiki.xxiivv.com/site/ehrivevnv.html	Orbit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-01-28
1302	https://wiki.xxiivv.com/site/neausea.html	Of Fallen Pilgrims	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-01-24
1244	https://wiki.xxiivv.com/site/directory.html	田園に死す	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-02
1269	https://wiki.xxiivv.com/site/markl.html	Markl Dojo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-09
1321	https://wiki.xxiivv.com/site/markl.html	Wood Stage	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-09
1291	https://wiki.xxiivv.com/site/black.html	Beach In Rarotonga	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1309	https://wiki.xxiivv.com/site/vambits.html	Vambits on a Camera	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1319	https://wiki.xxiivv.com/site/morals.html	And Jöns	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-17
1335	https://wiki.xxiivv.com/site/nutrition.html	Tempeh Carrot Soba	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-19
1377	https://wiki.xxiivv.com/site/donsol.html	Donsol Desktop Interface	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1704	https://wiki.xxiivv.com/site/siseon.html	Siseon	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-05
1723	https://wiki.xxiivv.com/site/hypervoid.html	Infraviolet	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1725	https://wiki.xxiivv.com/site/cenote.html	Cenote	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-20
1724	https://wiki.xxiivv.com/site/hypervoid.html	Dilesion	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1728	https://wiki.xxiivv.com/site/audio.html	Loft	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-06
1227	https://wiki.xxiivv.com/site/ogasawara.html	Omura Weather Station	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1238	https://wiki.xxiivv.com/site/riven.html	Riven Map	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-02-27
1299	https://wiki.xxiivv.com/site/hiversaires.html	Aitasla	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1304	https://wiki.xxiivv.com/site/marabu.html	Weeklybeats Tracking	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1297	https://wiki.xxiivv.com/site/film.html	Hiding from the rain	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1270	https://wiki.xxiivv.com/site/noon_guest.html	MoonQuest OST Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-07-14
1282	https://wiki.xxiivv.com/site/dotgrid.html	Improved the look and feel	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1344	https://wiki.xxiivv.com/site/arvelie.html	Neralie	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-16
1345	https://wiki.xxiivv.com/site/japanese.html	Sidonia	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-12
1388	https://wiki.xxiivv.com/site/aesthetics.html	A Digest	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-10-27
1367	https://wiki.xxiivv.com/site/nomad.html	Lost in Ensenada	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-18
1392	https://wiki.xxiivv.com/site/lard_shader.html	Study C	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1346	https://wiki.xxiivv.com/site/japanese.html	Nakano	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-12
1371	https://wiki.xxiivv.com/site/mexico.html	Guests in La Paz	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-02-03
1347	https://wiki.xxiivv.com/site/grimgrains.html	Algea Crisp	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-11-07
1386	https://wiki.xxiivv.com/site/grimgrains.html	Bamboo Charcoal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-11-07
1380	https://wiki.xxiivv.com/site/film.html	San Francisco Street	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1327	https://wiki.xxiivv.com/site/black.html	Rekka In The Dinghy	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1354	https://wiki.xxiivv.com/site/pino.html	Repairing the main sail	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1369	https://wiki.xxiivv.com/site/pino.html	Becalmed	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1381	https://wiki.xxiivv.com/site/film.html	San Francisco Stairs	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1352	https://wiki.xxiivv.com/site/language.html	Immortal Birds	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-07
1708	https://wiki.xxiivv.com/site/death.html	Milk	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-11-14
1338	https://wiki.xxiivv.com/site/niue.html	The Coastline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1339	https://wiki.xxiivv.com/site/niue.html	Limu Pools	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1340	https://wiki.xxiivv.com/site/niue.html	Descent Way	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1341	https://wiki.xxiivv.com/site/niue.html	Niue Coastline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1342	https://wiki.xxiivv.com/site/niue.html	Sail to Alofi, Niue	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1349	https://wiki.xxiivv.com/site/children_of_bramble.html	Immortal Bird	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-28
1350	https://wiki.xxiivv.com/site/instrument.html	Waterproof	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-14
1351	https://wiki.xxiivv.com/site/instrument.html	Monitor View	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-14
1373	https://wiki.xxiivv.com/site/mexico.html	La Paz	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-02-03
1353	https://wiki.xxiivv.com/site/thousand_rooms.html	Cat has a visitor.	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-04-29
1362	https://wiki.xxiivv.com/site/known_magye.html	Known Magye Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-16
1593	https://wiki.xxiivv.com/site/wallpapers.html	Motto	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1378	https://wiki.xxiivv.com/site/directory.html	春野美子「茶の味」	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-02
1372	https://wiki.xxiivv.com/site/black.html	Pino in Ensenada	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1361	https://wiki.xxiivv.com/site/marquesas.html	Heavy Rain	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1358	https://wiki.xxiivv.com/site/superworker.html	Recording Superworker	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-04-02
1359	https://wiki.xxiivv.com/site/superworker.html	Pocket Operator	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-04-02
1363	https://wiki.xxiivv.com/site/marquesas.html	Pampel	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1364	https://wiki.xxiivv.com/site/marquesas.html	Pampel?	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1365	https://wiki.xxiivv.com/site/marquesas.html	Nuku-Hiva	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1366	https://wiki.xxiivv.com/site/marquesas.html	Sail to Nuku Hiva, Marquesas	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1379	https://wiki.xxiivv.com/site/donsol.html	Progress on Donsol	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1375	https://wiki.xxiivv.com/site/nomad.html	Fulcanelli	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-18
1383	https://wiki.xxiivv.com/site/film.html	The Helm	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1394	https://wiki.xxiivv.com/site/film.html	My Father At The Helm	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1397	https://wiki.xxiivv.com/site/film.html	Early Sailing Days	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1398	https://wiki.xxiivv.com/site/film.html	Early Sailing Days	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1498	https://wiki.xxiivv.com/site/america.html	Desert	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1645	https://wiki.xxiivv.com/site/occulter.html	Occulter	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-02
1499	https://wiki.xxiivv.com/site/america.html	Desert Snow Covered Moutains	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1572	https://wiki.xxiivv.com/site/purgateus.html	Purgateus Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1550	https://wiki.xxiivv.com/site/kaleidoscope.html	Ode, The Perfect Bei	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1551	https://wiki.xxiivv.com/site/kaleidoscope.html	Lineggen	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1505	https://wiki.xxiivv.com/site/ramiel.html	Ramiel Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-01-14
1506	https://wiki.xxiivv.com/site/miniscopie.html	Reine - Miniscopie	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-01-09
1507	https://wiki.xxiivv.com/site/beldam_records.html	Founded Beldam	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-29
1508	https://wiki.xxiivv.com/site/keyboard_468.html	Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-27
1511	https://wiki.xxiivv.com/site/rafinograde.html	Glyph Art	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-13
1512	https://wiki.xxiivv.com/site/research.html	The sartre Ultravoid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-10
1514	https://wiki.xxiivv.com/site/supervisitor.html	Aliceffekt Live	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1515	https://wiki.xxiivv.com/site/supervisitor.html	Brut Cover	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1527	https://wiki.xxiivv.com/site/beauty.html	Benignytic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1522	https://wiki.xxiivv.com/site/the_sartre_mechanism.html	Ultravoid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-20
1518	https://wiki.xxiivv.com/site/defraction_optics.html	II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1520	https://wiki.xxiivv.com/site/defraction_optics.html	Waveform	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1521	https://wiki.xxiivv.com/site/defraction_optics.html	Circleform	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1537	https://wiki.xxiivv.com/site/brane.html	III	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1560	https://wiki.xxiivv.com/site/noirca.html	Go Board	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-25
1531	https://wiki.xxiivv.com/site/modernista.html	05	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1532	https://wiki.xxiivv.com/site/modernista.html	04	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1533	https://wiki.xxiivv.com/site/modernista.html	02	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1534	https://wiki.xxiivv.com/site/modernista.html	01	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1539	https://wiki.xxiivv.com/site/ten_axitecture.html	Ten Axitecture	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-07
1546	https://wiki.xxiivv.com/site/damoiseau_canalx.html	Damoiseau et Canalx Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-27
1547	https://wiki.xxiivv.com/site/neralie.html	Neralie Mobile	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-22
1492	https://wiki.xxiivv.com/site/flactals.html	Coraline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
1370	https://wiki.xxiivv.com/site/black.html	Rekka in Los Angeles	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1337	https://wiki.xxiivv.com/site/niue.html	Chasms and Canyons	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1571	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	Spring	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-19
1573	https://wiki.xxiivv.com/site/purgateus.html	Night Time	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1574	https://wiki.xxiivv.com/site/purgateus.html	Dusk	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1576	https://wiki.xxiivv.com/site/nereid.html	The Stems	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1501	https://wiki.xxiivv.com/site/hypervoid.html	Nulloid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1562	https://wiki.xxiivv.com/site/alphavetist.html	Katakana Practice	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-22
1564	https://wiki.xxiivv.com/site/bifurcan.html	Update	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1542	https://wiki.xxiivv.com/site/serventines.html	Anopass	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1552	https://wiki.xxiivv.com/site/kaleidoscope.html	Diagolite I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1575	https://wiki.xxiivv.com/site/nereid.html	The Habitat	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1569	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	Autumn Leaves	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-19
1277	https://wiki.xxiivv.com/site/brane.html	The Millioneth Clock	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1284	https://wiki.xxiivv.com/site/paradise.html	The Inspector Cat	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1536	https://wiki.xxiivv.com/site/brane.html	IIII	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1272	https://wiki.xxiivv.com/site/faqs.html	Nakano Sakaue I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-06-28
1245	https://wiki.xxiivv.com/site/orca.html	Orca Type	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1280	https://wiki.xxiivv.com/site/photography.html	ÅA	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-05-12
1266	https://wiki.xxiivv.com/site/sketchbook.html	Encounter with the floating eye	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-30
1310	https://wiki.xxiivv.com/site/film.html	Wandering in the North Island	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1286	https://wiki.xxiivv.com/site/computer.html	In Bloom	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-22
1387	https://wiki.xxiivv.com/site/black.html	Ensenada Water Walk	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1729	https://wiki.xxiivv.com/site/nataniev.html	Nataniev Portrait	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-01
1669	https://wiki.xxiivv.com/site/from_saharaphorest.html	From Saharaphorest Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-11-28
1671	https://wiki.xxiivv.com/site/from_saharaphorest.html	From Saharaphorest	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-11-28
1712	https://wiki.xxiivv.com/site/pico3.html	Pico3 Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-10-17
1619	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 12	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1296	https://wiki.xxiivv.com/site/grimgrains.html	The Black Toothpaste Recipe	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-11-07
1283	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Halftone	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-16
1312	https://wiki.xxiivv.com/site/film.html	Auckland	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1557	https://wiki.xxiivv.com/site/kaleidoscope.html	Diagolite I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1582	https://wiki.xxiivv.com/site/vast.html	Vast Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-28
1598	https://wiki.xxiivv.com/site/vocavularist.html	1.0	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-07
1654	https://wiki.xxiivv.com/site/ring_of_scales.html	Ring of scales	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-13
1287	https://wiki.xxiivv.com/site/radio_station.html	Pimoroni Board	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-18
1263	https://wiki.xxiivv.com/site/framboisedorf.html	A Toy Piano for Rainy Days	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-05
1292	https://wiki.xxiivv.com/site/framboisedorf.html	A Small Pocket Synth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-05
1285	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Super Meteor Exhibition	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-16
1322	https://wiki.xxiivv.com/site/rotonde.html	Rotonde Interface	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-12
1293	https://wiki.xxiivv.com/site/weather_station.html	Looking out for storms	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-03-21
1676	https://wiki.xxiivv.com/site/the_sixth_season.html	Sixth Season Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-05-21
1738	https://wiki.xxiivv.com/site/tokyo.html	In Bloom	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1663	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	Es gulf sunflowers Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-11
1660	https://wiki.xxiivv.com/site/waiting_for_horus.html	Waiting for Horus	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-21
1662	https://wiki.xxiivv.com/site/waiting_for_horus.html	Rah	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-21
1710	https://wiki.xxiivv.com/site/artwork.html	Tools to creative	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1714	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1679	https://wiki.xxiivv.com/site/sketchbook.html	Andes Necklace	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-30
1680	https://wiki.xxiivv.com/site/aliceffekt.html	Aliceffekt Shirt I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-24
1737	https://wiki.xxiivv.com/site/rekka.html	Leaving	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1741	https://wiki.xxiivv.com/site/tokyo.html	Floppy	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1690	https://wiki.xxiivv.com/site/the_sixth_season.html	Kinetik Festival, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-05-21
1674	https://wiki.xxiivv.com/site/collegiennes.html	Prince of the Arcade	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1711	https://wiki.xxiivv.com/site/collegiennes.html	Prince Of The Arcade	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1692	https://wiki.xxiivv.com/site/czech.html	Artifical Mountain Top 2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1694	https://wiki.xxiivv.com/site/czech.html	Nearby Liberec	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1695	https://wiki.xxiivv.com/site/czech.html	Country Side	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1734	https://wiki.xxiivv.com/site/merure.html	Erri Launch	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1721	https://wiki.xxiivv.com/site/collegiennes.html	Cloud is a Lie	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1502	https://wiki.xxiivv.com/site/alphavetist.html	3.0	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-22
1732	https://wiki.xxiivv.com/site/visual.html	Nataniev Fork	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-19
1706	https://wiki.xxiivv.com/site/notebook.html	Dilitriel	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1730	https://wiki.xxiivv.com/site/drownspire.html	Our Studio	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-21
1731	https://wiki.xxiivv.com/site/drownspire.html	Founded Drownspire	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-21
1735	https://wiki.xxiivv.com/site/idyllic_miners.html	Idyllic Miners Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-05-12
1736	https://wiki.xxiivv.com/site/idyllic_miners.html	Kinetik Festival, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-05-12
1689	https://wiki.xxiivv.com/site/vermillionth.html	Vermillionth Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-03-20
1691	https://wiki.xxiivv.com/site/vermillionth.html	Live in Paris	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-03-20
1709	https://wiki.xxiivv.com/site/vambits.html	Vambits, Last Gen	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1314	https://wiki.xxiivv.com/site/new_zealand.html	Arrived in New Zealand	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-29
1311	https://wiki.xxiivv.com/site/film.html	Guerilla Gardening	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1405	https://wiki.xxiivv.com/site/camera.html	Learn Film Photo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-14
1382	https://wiki.xxiivv.com/site/russian.html	Сердце получает нож	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-12-05
1417	https://wiki.xxiivv.com/site/polygore.html	Hexagore	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-04-12
1343	https://wiki.xxiivv.com/site/nutrition.html	Papaya Bruschetta	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-19
1376	https://wiki.xxiivv.com/site/donsol.html	Donsol Desktop Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1391	https://wiki.xxiivv.com/site/wallpapers.html	Shinji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1368	https://wiki.xxiivv.com/site/extended_sleep.html	Bird	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-29
1404	https://wiki.xxiivv.com/site/rekka.html	Reading about sailing	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1328	https://wiki.xxiivv.com/site/the_sublime.html	At sea, near The Marquesas	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1356	https://wiki.xxiivv.com/site/marquesas.html	Colorful Sight	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1396	https://wiki.xxiivv.com/site/america.html	Sail to San Francisco	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1332	https://wiki.xxiivv.com/site/getapan_728k.html	Album cover	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-24
1326	https://wiki.xxiivv.com/site/marabu.html	Marabu Tracker	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1330	https://wiki.xxiivv.com/site/marabu.html	Almost Stability	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1445	https://wiki.xxiivv.com/site/opal_inquisitors.html	Opal inquisitors Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-15
1437	https://wiki.xxiivv.com/site/hundred_rabbits.html	Rabbits	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1441	https://wiki.xxiivv.com/site/hundred_rabbits.html	The Whole Band	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1427	https://wiki.xxiivv.com/site/blindfolk.html	Blindfolks	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-01-31
1407	https://wiki.xxiivv.com/site/language.html	The Voynich	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-07
1439	https://wiki.xxiivv.com/site/rabbits_soundtrack.html	A Hundred Knobs	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-29
1415	https://wiki.xxiivv.com/site/verreciel_soundtrack.html	Verreciel OST Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-05-09
1412	https://wiki.xxiivv.com/site/lives.html	At 1H1D in Osaka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-05-31
1681	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Lith	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1740	https://wiki.xxiivv.com/site/yokohama.html	China Town	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-02
1632	https://wiki.xxiivv.com/site/infrared.html	Wereda	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1436	https://wiki.xxiivv.com/site/verreciel.html	Further	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-27
1430	https://wiki.xxiivv.com/site/beauty.html	01	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1329	https://wiki.xxiivv.com/site/rotonde.html	Rotonde Layout	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-12
1333	https://wiki.xxiivv.com/site/marabu.html	Removed everything	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1334	https://wiki.xxiivv.com/site/marabu.html	Version 2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1325	https://wiki.xxiivv.com/site/new_zealand.html	Sail to Whangarei, New Zealand	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-29
1399	https://wiki.xxiivv.com/site/film.html	Evening near Vancouver Island	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1400	https://wiki.xxiivv.com/site/film.html	Old Camera Gear	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1703	https://wiki.xxiivv.com/site/unreleased.html	Merveilles Portable	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-12-08
1682	https://wiki.xxiivv.com/site/rlionn.html	The Rlionn Oasis	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-13
1683	https://wiki.xxiivv.com/site/blam.html	Blam Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-04
1707	https://wiki.xxiivv.com/site/to_the_aeons_hell.html	8Static - Philadelphia	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-01-07
1469	https://wiki.xxiivv.com/site/vocavularist.html	Vocavularist Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-07
1466	https://wiki.xxiivv.com/site/supervisitor.html	Trapezoid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1414	https://wiki.xxiivv.com/site/rekka.html	Last days in Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1592	https://wiki.xxiivv.com/site/flactals.html	Qraxia	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
1432	https://wiki.xxiivv.com/site/bifurcan.html	Bifurcan Die	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1411	https://wiki.xxiivv.com/site/advent_v.html	The Tavern	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-04
1491	https://wiki.xxiivv.com/site/flactals.html	Nestorine	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
1433	https://wiki.xxiivv.com/site/keyboard.html	Setup	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-01-02
1465	https://wiki.xxiivv.com/site/infrared.html	Graveyard	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1471	https://wiki.xxiivv.com/site/the_will_the_wisp.html	Twitter Bot Birth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-06-10
1472	https://wiki.xxiivv.com/site/eschatolor.html	Tevelision	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-19
1467	https://wiki.xxiivv.com/site/inventory.html	Everyday Carry	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-07-13
1413	https://wiki.xxiivv.com/site/black.html	Cooking	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1420	https://wiki.xxiivv.com/site/nervous.html	Exhibit B	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-27
1422	https://wiki.xxiivv.com/site/verreciel.html	Eminence	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-27
1421	https://wiki.xxiivv.com/site/nervous.html	Exhibit A	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-27
1408	https://wiki.xxiivv.com/site/pearls.html	Pearl	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-04
1409	https://wiki.xxiivv.com/site/pearls.html	Cell	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-04
1462	https://wiki.xxiivv.com/site/kaleidoscope.html	Chrestasebeia	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1418	https://wiki.xxiivv.com/site/polygore.html	Pentagore	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-04-12
1442	https://wiki.xxiivv.com/site/dictionarism.html	Diarism	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-10-31
1424	https://wiki.xxiivv.com/site/portalion.html	Portalion Cover	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-02
1426	https://wiki.xxiivv.com/site/lietal.html	The Lietal Flag	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1470	https://wiki.xxiivv.com/site/macro.html	Glass	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1428	https://wiki.xxiivv.com/site/hypervoid.html	Pandischopic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1443	https://wiki.xxiivv.com/site/mobile.html	Old Android UI	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-14
1446	https://wiki.xxiivv.com/site/austria.html	Heading Out	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1447	https://wiki.xxiivv.com/site/austria.html	Streets Like Amadeus	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1448	https://wiki.xxiivv.com/site/austria.html	Vienna	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1449	https://wiki.xxiivv.com/site/austria.html	Suddenly, Half-Life	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1450	https://wiki.xxiivv.com/site/austria.html	Vienna	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1451	https://wiki.xxiivv.com/site/austria.html	Ars Electronica	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1463	https://wiki.xxiivv.com/site/mobile.html	Breakout Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-14
1468	https://wiki.xxiivv.com/site/infrared.html	Rekka and Sunglasses	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1483	https://wiki.xxiivv.com/site/time_alloy.html	Vertaline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-03
1484	https://wiki.xxiivv.com/site/time_alloy.html	Opaline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-03
1485	https://wiki.xxiivv.com/site/time_alloy.html	Slyverline	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-03
1487	https://wiki.xxiivv.com/site/extended_sleep.html	Extended Sleep Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-29
1473	https://wiki.xxiivv.com/site/netherlands.html	Amsterdam	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1464	https://wiki.xxiivv.com/site/infrared.html	Habitat 67	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1488	https://wiki.xxiivv.com/site/black.html	Ensenada Hills	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1452	https://wiki.xxiivv.com/site/talk.html	Talk at Ars Electronica, Vienna	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-21
1477	https://wiki.xxiivv.com/site/astratas.html	Lines B	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-30
1479	https://wiki.xxiivv.com/site/ar_moire.html	Pattern IIII	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1480	https://wiki.xxiivv.com/site/ar_moire.html	Pattern III	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1481	https://wiki.xxiivv.com/site/ar_moire.html	Pattern II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1482	https://wiki.xxiivv.com/site/ar_moire.html	Pattern I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1570	https://wiki.xxiivv.com/site/purgateus.html	The Autumn	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1563	https://wiki.xxiivv.com/site/vocavularist.html	2.0	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-07
1535	https://wiki.xxiivv.com/site/brane.html	IIIII	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1538	https://wiki.xxiivv.com/site/serventines.html	Jenen	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1540	https://wiki.xxiivv.com/site/serventines.html	Untenest	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1474	https://wiki.xxiivv.com/site/netherlands.html	Utrecht	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1475	https://wiki.xxiivv.com/site/netherlands.html	Amsterdam	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1476	https://wiki.xxiivv.com/site/netherlands.html	Travel to Utrecht	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1490	https://wiki.xxiivv.com/site/talk.html	Talk at Amaze, Berlin	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-21
1494	https://wiki.xxiivv.com/site/lard_shader.html	Study B	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1496	https://wiki.xxiivv.com/site/donsol.html	Mobile Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1554	https://wiki.xxiivv.com/site/advent_v.html	The Advent V Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-04
1503	https://wiki.xxiivv.com/site/ledoliel.html	2.1	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1549	https://wiki.xxiivv.com/site/ledoliel.html	2.0	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1541	https://wiki.xxiivv.com/site/serventines.html	Qaro	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1510	https://wiki.xxiivv.com/site/dew.html	Dew Interface	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-06
1553	https://wiki.xxiivv.com/site/dew.html	Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-06
1555	https://wiki.xxiivv.com/site/ledoliel.html	1.2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1566	https://wiki.xxiivv.com/site/ledoliel.html	Space friends	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1517	https://wiki.xxiivv.com/site/dodecae.html	Flyer	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-04
1500	https://wiki.xxiivv.com/site/hypervoid.html	Dischromatic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1526	https://wiki.xxiivv.com/site/beauty.html	Plasmytic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1556	https://wiki.xxiivv.com/site/bifurcan.html	Screensaver	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1530	https://wiki.xxiivv.com/site/telekinesis.html	Leap Motion Demo, Tokyo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-12
1497	https://wiki.xxiivv.com/site/america.html	Nebraska	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1657	https://wiki.xxiivv.com/site/prototyping.html	PP3DP 1kg Spool Holder	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-07
1625	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Lost Osaka Tempers	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-01
1633	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Tokyo Tempers	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-01
1601	https://wiki.xxiivv.com/site/hiversaires.html	Hiversaires Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1597	https://wiki.xxiivv.com/site/andes_castel.html	Entrance	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-23
1613	https://wiki.xxiivv.com/site/hiversaires.html	Post Mortem	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1602	https://wiki.xxiivv.com/site/fuji.html	Climb Crew	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1579	https://wiki.xxiivv.com/site/methascope.html	20x	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-09
1596	https://wiki.xxiivv.com/site/orca.html	Orca Machine	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1604	https://wiki.xxiivv.com/site/fuji.html	From Kawaguchiko	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1585	https://wiki.xxiivv.com/site/known_magye.html	PowPow, San Francisco	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-16
1586	https://wiki.xxiivv.com/site/known_magye.html	Live at DNA Lougne	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-16
1609	https://wiki.xxiivv.com/site/dei_dain.html	Dei Dain Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-06-17
1587	https://wiki.xxiivv.com/site/oquonie.html	A Lost Neomine	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1583	https://wiki.xxiivv.com/site/kaleidoscope.html	Gorgeous Leon	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1584	https://wiki.xxiivv.com/site/vast.html	Preview	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-28
1616	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 24	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1612	https://wiki.xxiivv.com/site/macro.html	Macro DIY iPhone	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1607	https://wiki.xxiivv.com/site/lietal.html	The Säldota	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1605	https://wiki.xxiivv.com/site/fuji.html	Mt. Fuji Summit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1606	https://wiki.xxiivv.com/site/fuji.html	Dusk	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1621	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	SquareSound, Melbourne	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1594	https://wiki.xxiivv.com/site/lietal.html	iOS7 Patch	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1614	https://wiki.xxiivv.com/site/artwork.html	Space Marine Colour	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1634	https://wiki.xxiivv.com/site/artwork.html	Neoneve Afloat Revis	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1639	https://wiki.xxiivv.com/site/diluvium.html	Logo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-20
1588	https://wiki.xxiivv.com/site/oquonie_soundtrack.html	Soundman	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-10
1631	https://wiki.xxiivv.com/site/waiting_for_horus.html	Mar	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-21
1478	https://wiki.xxiivv.com/site/astratas.html	Lines A	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-30
1486	https://wiki.xxiivv.com/site/astratas.html	Lines C	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-30
1495	https://wiki.xxiivv.com/site/lard_shader.html	Study A	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1561	https://wiki.xxiivv.com/site/virtual_machines.html	Cover	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-24
1559	https://wiki.xxiivv.com/site/noirca.html	1.1	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-25
1525	https://wiki.xxiivv.com/site/beauty.html	A voice in the night	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1493	https://wiki.xxiivv.com/site/donsol.html	Mobile Interface Update	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1626	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Cheapbeats - Tokyo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1629	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Ehrivevnv Studies Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1630	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Blip Festival, Tokyo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1628	https://wiki.xxiivv.com/site/infrared.html	Tokyo Infrared	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1649	https://wiki.xxiivv.com/site/victorian_punch.html	Banned	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-04-02
1641	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Kinetik Festival, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1653	https://wiki.xxiivv.com/site/france.html	Travel to Paris	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-19
1658	https://wiki.xxiivv.com/site/spagettini_scale.html	Spagettini Scale	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-05
1655	https://wiki.xxiivv.com/site/hex_hive_necklace.html	First Hex Hive Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-09
1656	https://wiki.xxiivv.com/site/hex_hive_necklace.html	Hex Hive Necklace	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-09
1659	https://wiki.xxiivv.com/site/paradise.html	Lost in Paradise	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1600	https://wiki.xxiivv.com/site/typography.html	Milavregarian	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1638	https://wiki.xxiivv.com/site/artwork.html	Hydro74 Remix	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1665	https://wiki.xxiivv.com/site/artwork.html	Veins of brambles	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1705	https://wiki.xxiivv.com/site/artwork.html	Yajnev	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1581	https://wiki.xxiivv.com/site/methascope.html	2000x	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-09
1627	https://wiki.xxiivv.com/site/infrared.html	Tokyo Infrared II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1650	https://wiki.xxiivv.com/site/germany.html	Travel to Berlin	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-24
1624	https://wiki.xxiivv.com/site/macro.html	Building a telescope	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1642	https://wiki.xxiivv.com/site/occulter.html	Coal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-02
1635	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Vetetrandes Lettres Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1800	https://wiki.xxiivv.com/site/death.html	Metropolis	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-11-14
1648	https://wiki.xxiivv.com/site/victorian_punch.html	Punch on the table	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-04-02
1644	https://wiki.xxiivv.com/site/occulter.html	Binchotan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-02
1646	https://wiki.xxiivv.com/site/macro.html	Fibers	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1652	https://wiki.xxiivv.com/site/france.html	Some bridge some place	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-19
1661	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	La Nuit Blanche, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-11
1664	https://wiki.xxiivv.com/site/volkenessen.html	Volkenessen Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-29
1670	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Mini	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1733	https://wiki.xxiivv.com/site/zjeveni.html	Zjeveni	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-17
1678	https://wiki.xxiivv.com/site/aliceffekt.html	True Form	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-24
1719	https://wiki.xxiivv.com/site/macro.html	Raspberry Close Up	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1636	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	iVardensphere Tour, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1643	https://wiki.xxiivv.com/site/collegiennes.html	Toronto Game Jam 201	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1611	https://wiki.xxiivv.com/site/dei_dain.html	Mega Ran Tour, Tokyo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-06-17
1595	https://wiki.xxiivv.com/site/telekinesis.html	Pure Data Controller	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-12
1637	https://wiki.xxiivv.com/site/pico_battle.html	Pico Battle Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-06-27
1675	https://wiki.xxiivv.com/site/notebook.html	Swing near Oigura	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1684	https://wiki.xxiivv.com/site/notebook.html	The Trial of the Tide	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1713	https://wiki.xxiivv.com/site/merure.html	Merure Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1722	https://wiki.xxiivv.com/site/hypervoid.html	Noirescent	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1668	https://wiki.xxiivv.com/site/unreleased.html	Merveilles	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-12-08
1685	https://wiki.xxiivv.com/site/yajnev.html	Yajnev Thoughts	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-07-16
1667	https://wiki.xxiivv.com/site/oscean.html	The Pillars	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-13
1677	https://wiki.xxiivv.com/site/rekka.html	Boucherville	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1688	https://wiki.xxiivv.com/site/wallpapers.html	Echorridoors	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1739	https://wiki.xxiivv.com/site/wallpapers.html	Devilsse	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1715	https://wiki.xxiivv.com/site/vambits.html	Vambits, DIY	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1716	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen Hallowe	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1720	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1770	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1756	https://wiki.xxiivv.com/site/osaka.html	Lanterns	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1757	https://wiki.xxiivv.com/site/osaka.html	Temple	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1758	https://wiki.xxiivv.com/site/osaka.html	Ornate	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1743	https://wiki.xxiivv.com/site/tokyo.html	Hanami Train	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1744	https://wiki.xxiivv.com/site/tokyo.html	Wishes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1781	https://wiki.xxiivv.com/site/malice.html	Malice Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-27
1788	https://wiki.xxiivv.com/site/downtemperature.html	Toy Company, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1790	https://wiki.xxiivv.com/site/malice.html	Pulsewave, New York	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-27
1749	https://wiki.xxiivv.com/site/yokohama.html	Dragon	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-02
1784	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	Toy Company, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-06
1789	https://wiki.xxiivv.com/site/america.html	New York	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1801	https://wiki.xxiivv.com/site/quotes.html	Telepaths	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-28
1780	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Recit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1786	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	Otoroutes Miniatures	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-06
1768	https://wiki.xxiivv.com/site/cyanosis_fever.html	Cyanosis Fever	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-11
1608	https://wiki.xxiivv.com/site/infrared.html	Soldat	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1610	https://wiki.xxiivv.com/site/infrared.html	Infrared Set 2	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1578	https://wiki.xxiivv.com/site/nereid.html	The Highways	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1580	https://wiki.xxiivv.com/site/methascope.html	200x	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-09
1760	https://wiki.xxiivv.com/site/identity.html	72DEC2 Converses	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1615	https://wiki.xxiivv.com/site/wallpapers.html	Rami Ismail Rant	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1776	https://wiki.xxiivv.com/site/drypoint.html	Drypoint Landing Zone	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-12
1787	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Nakano Tempers	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-01
1748	https://wiki.xxiivv.com/site/rekka.html	Hanami Orange	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1767	https://wiki.xxiivv.com/site/merure.html	Merure 2 Launch	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1773	https://wiki.xxiivv.com/site/valentinel_hopes.html	Valentinel Hopes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1777	https://wiki.xxiivv.com/site/pedestrian_paradise.html	Pedestrian Paradise Reissue	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-07
1778	https://wiki.xxiivv.com/site/pedestrian_paradise.html	Pedestrian Paradise Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-07
1782	https://wiki.xxiivv.com/site/nether_esper_inserts.html	Howl Virgil System	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-05-17
1766	https://wiki.xxiivv.com/site/artwork.html	Neoneve at the docks	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1794	https://wiki.xxiivv.com/site/artwork.html	When	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1795	https://wiki.xxiivv.com/site/artwork.html	Time Stands Still	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1785	https://wiki.xxiivv.com/site/merure.html	Merure I Cover	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1752	https://wiki.xxiivv.com/site/rekka.html	Rekka in Osaka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1791	https://wiki.xxiivv.com/site/america.html	Travel to New York	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1779	https://wiki.xxiivv.com/site/neauismetica.html	Our forgotten Alphabet	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-08-28
1775	https://wiki.xxiivv.com/site/drypoint.html	Drypoint Release	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-12
1798	https://wiki.xxiivv.com/site/lietal.html	Composing Words	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1792	https://wiki.xxiivv.com/site/downtemperature.html	Gone Plains	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1454	https://wiki.xxiivv.com/site/austria.html	Linz	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1793	https://wiki.xxiivv.com/site/downtemperature.html	Toy Company, Montreal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1774	https://wiki.xxiivv.com/site/maeve.html	First Ludivine	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-10-15
1772	https://wiki.xxiivv.com/site/notebook.html	Self Portrait	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1783	https://wiki.xxiivv.com/site/notebook.html	Heist	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1796	https://wiki.xxiivv.com/site/notebook.html	Best Rave Evar	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1802	https://wiki.xxiivv.com/site/old_cities.html	01	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-14
1803	https://wiki.xxiivv.com/site/old_cities.html	01	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-14
1804	https://wiki.xxiivv.com/site/rekka.html	New Challenger	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1182	https://wiki.xxiivv.com/site/minamiise.html	Kirihara	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1183	https://wiki.xxiivv.com/site/minamiise.html	In a ghost town near you	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1188	https://wiki.xxiivv.com/site/minamiise.html	Tennis Court Skate Park	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1203	https://wiki.xxiivv.com/site/minamiise.html	Shannon Entropy	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1204	https://wiki.xxiivv.com/site/minamiise.html	Our Neighbor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1090	https://wiki.xxiivv.com/site/moogle.html	Moogle Spheroid	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-28
1205	https://wiki.xxiivv.com/site/minamiise.html	Shima Yacht Arbor	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1069	https://wiki.xxiivv.com/site/left.html	Working on Oscean with Left	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1318	https://wiki.xxiivv.com/site/left.html	Original Writing Layout	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1331	https://wiki.xxiivv.com/site/left.html	Left Screencapture	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1336	https://wiki.xxiivv.com/site/left.html	Tooling	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1673	https://wiki.xxiivv.com/site/personal.html	Chez Liette	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1686	https://wiki.xxiivv.com/site/personal.html	Alex Shoes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1687	https://wiki.xxiivv.com/site/personal.html	Jerome	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1717	https://wiki.xxiivv.com/site/personal.html	District 9 Costume II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1718	https://wiki.xxiivv.com/site/personal.html	District 9 Costume I	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1116	https://wiki.xxiivv.com/site/identity.html	XXIIVV in NesPaint	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1323	https://wiki.xxiivv.com/site/wiktopher.html	Book Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-06
1232	https://wiki.xxiivv.com/site/ogasawara.html	Mixed Architecture	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1416	https://wiki.xxiivv.com/site/rekka.html	Sailing trip in Quebec	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1651	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Noise Complex, Paris	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1234	https://wiki.xxiivv.com/site/ogasawara.html	Sail to Chichijima, Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1206	https://wiki.xxiivv.com/site/minamiise.html	Sail to Minamiise, Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1617	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 20	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1523	https://wiki.xxiivv.com/site/defraction_optics.html	Cover Page	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1458	https://wiki.xxiivv.com/site/beauty.html	Mytresial	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1459	https://wiki.xxiivv.com/site/beauty.html	Genoviral	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1460	https://wiki.xxiivv.com/site/beauty.html	Vatoxoinal	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1461	https://wiki.xxiivv.com/site/beauty.html	Hydreviral	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1149	https://wiki.xxiivv.com/site/dilitriel.html	Support Conduits	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1153	https://wiki.xxiivv.com/site/dilitriel.html	Valentinel Bridge	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1742	https://wiki.xxiivv.com/site/vambits.html	Vambits in Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1761	https://wiki.xxiivv.com/site/maeve.html	Pcellar II	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-10-15
1753	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	1H1D vs Shikanokoa, Osaka	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-26
1762	https://wiki.xxiivv.com/site/maeve.html	Pcellar	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-10-15
1764	https://wiki.xxiivv.com/site/unreleased.html	Neonev Raft	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-12-08
1317	https://wiki.xxiivv.com/site/film.html	Whangarei Bridge	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1278	https://wiki.xxiivv.com/site/sketchbook.html	The Storm Transit	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-30
1134	https://wiki.xxiivv.com/site/vertale.html	Fork Passage	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1402	https://wiki.xxiivv.com/site/film.html	Pino Docked	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1403	https://wiki.xxiivv.com/site/film.html	Before the evening	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1406	https://wiki.xxiivv.com/site/pino.html	Workstation Aboard Pino	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1423	https://wiki.xxiivv.com/site/pino.html	From Inside	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1425	https://wiki.xxiivv.com/site/pino.html	Slice	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1273	https://wiki.xxiivv.com/site/the_sublime.html	Drifting toward Fiji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1357	https://wiki.xxiivv.com/site/the_sublime.html	Drifting	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1360	https://wiki.xxiivv.com/site/the_sublime.html	Scare In Rarotonga	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1528	https://wiki.xxiivv.com/site/beauty.html	Leiomytic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1419	https://wiki.xxiivv.com/site/polygore.html	Trigore	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-04-12
1320	https://wiki.xxiivv.com/site/dotgrid.html	General improvements	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1384	https://wiki.xxiivv.com/site/black.html	Ensenada Trash Hill	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1095	https://wiki.xxiivv.com/site/shimoda.html	Robusta Mit Pino	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1096	https://wiki.xxiivv.com/site/shimoda.html	下田温泉富士屋ホテル	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1097	https://wiki.xxiivv.com/site/shimoda.html	Shimoda Waterway	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1647	https://wiki.xxiivv.com/site/personal.html	Bored in France	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1098	https://wiki.xxiivv.com/site/shimoda.html	Pino in Shimoda	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1374	https://wiki.xxiivv.com/site/black.html	Sail to Ensenada, Mexico	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1759	https://wiki.xxiivv.com/site/osaka.html	Travel to Tokyo, Japan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1385	https://wiki.xxiivv.com/site/black.html	The V Berth	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1257	https://wiki.xxiivv.com/site/fiji.html	Lami Bay, Fiji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1543	https://wiki.xxiivv.com/site/serventines.html	Milreaf	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1444	https://wiki.xxiivv.com/site/verreciel.html	Prototype	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-27
1702	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Neau	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1509	https://wiki.xxiivv.com/site/hypervoid.html	Antipigment	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1620	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 10	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1622	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 9	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1504	https://wiki.xxiivv.com/site/oquonie.html	Nephtaline wandering	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1453	https://wiki.xxiivv.com/site/austria.html	Linz Food	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1516	https://wiki.xxiivv.com/site/oquonie.html	Bit Bazaar	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1154	https://wiki.xxiivv.com/site/duomo.html	Septechoes	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1393	https://wiki.xxiivv.com/site/black.html	Off The Coast Of Mexico	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1395	https://wiki.xxiivv.com/site/black.html	Ensenada Trash Hill Top	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1529	https://wiki.xxiivv.com/site/beauty.html	Nevocytic	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1618	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 15	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1264	https://wiki.xxiivv.com/site/fiji.html	Savusavu, Fiji	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1289	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Nepturne 7757	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-16
1390	https://wiki.xxiivv.com/site/black.html	Near La Paz	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1771	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1567	https://wiki.xxiivv.com/site/ledoliel.html	Strange Diplomacy	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1545	https://wiki.xxiivv.com/site/serventines.html	Gaspse	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1558	https://wiki.xxiivv.com/site/serventines.html	Mount Duomo	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1568	https://wiki.xxiivv.com/site/serventines.html	Snailden	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1623	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 8	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1544	https://wiki.xxiivv.com/site/serventines.html	Qovledon	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1455	https://wiki.xxiivv.com/site/austria.html	Wolfinger Hotel	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1456	https://wiki.xxiivv.com/site/austria.html	Travel to Vienna	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1589	https://wiki.xxiivv.com/site/oquonie.html	Goodies	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1590	https://wiki.xxiivv.com/site/oquonie.html	And so began testing	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1519	https://wiki.xxiivv.com/site/oquonie.html	Walkthrough	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1565	https://wiki.xxiivv.com/site/oquonie.html	Nastazie	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1591	https://wiki.xxiivv.com/site/oquonie.html	From Thailand	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1696	https://wiki.xxiivv.com/site/czech.html	Visualscream Studio	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1697	https://wiki.xxiivv.com/site/czech.html	Tree of Pan	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1797	https://wiki.xxiivv.com/site/artwork.html	Neoneve Afloat	\N	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
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

SELECT pg_catalog.setval('public.posts_id_seq', 1804, true);


--
-- Name: sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sites_id_seq', 43, true);


--
-- Name: sites sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

