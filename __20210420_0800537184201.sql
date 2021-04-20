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
4	http://nonmateria.com/posts/2020_10_30__pages_added.html	pages added	\N	\N	\N	2020-10-30
5	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	infected clock II	\N	\N	\N	2020-10-27
6	http://nonmateria.com/posts/2020_07_12__infected_clock.html	infected clock	\N	\N	\N	2020-07-12
7	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
8	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
9	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
10	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
11	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
12	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
13	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
14	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
16	http://nonmateria.com/posts/2020_04_10__la_cauzione.html	la cauzione	\N	\N	\N	2020-04-10
17	https://notes.neeasade.net/systemd-user-services.html	systemd user services	\N	\N	\N	2021-01-02
18	https://notes.neeasade.net/search-term-playlists.html	search term playlists	\N	\N	\N	2020-12-13
19	https://notes.neeasade.net/color-spaces.html	reasoning about colors	\N	\N	\N	2020-11-24
20	https://notes.neeasade.net/my-shell-prompt.html	my shell prompt	\N	\N	\N	2020-11-09
21	https://notes.neeasade.net/Automata-tiling-backgrounds-2.html	Automata tiling backgrounds 2	\N	\N	\N	2020-08-14
22	https://notes.neeasade.net/Aug-2020.html	8 Months Adrift	\N	\N	\N	2020-08-04
23	https://notes.neeasade.net/Pinebook-Pro.html	Pinebook Pro	\N	\N	\N	2020-06-09
24	https://notes.neeasade.net/tickling-bash-a-rofi-adventure.html	tickling bash, the quest for the perfect menu	\N	\N	\N	2020-05-10
25	https://notes.neeasade.net/Automata-tiling-backgrounds.html	Automata tiling backgrounds	\N	\N	\N	2020-05-08
26	https://notes.neeasade.net/checking-for-toots.html	checking for toots	\N	\N	\N	2020-05-03
27	https://notes.neeasade.net/blog-meta.html	May Days	\N	\N	\N	2020-05-02
28	https://notes.neeasade.net/reverse-ssh-tunnels.html	reverse ssh tunnels	\N	\N	\N	2020-04-10
29	https://notes.neeasade.net/xeros-irc-ref.html	xero's irc ref	\N	\N	\N	2020-04-04
31	https://notes.neeasade.net/On-Emacs.html	On Emacs	\N	\N	\N	2019-12-06
32	https://aless.co/2020/	2020	\N	\N	\N	2020-12-11
33	https://aless.co/typed-web-workers/	Typed Web Workers	\N	\N	\N	2020-04-30
34	https://aless.co/gatsby-wasm-plugin/	Building a Gatsby Plugin with Wasm	\N	\N	\N	2020-01-06
35	https://aless.co/2019/	2019	\N	\N	\N	2019-12-01
36	https://aless.co/resume-as-code/	Resume as Code	\N	\N	\N	2019-10-08
37	https://aless.co/how-to-build-a-keyboard/	How to Build a Keyboard, Pt.1	\N	\N	\N	2019-05-27
38	https://aless.co/working-at-the-edge/	Working at the Edge	\N	\N	\N	2019-02-18
39	https://aless.co/teach-a-girl-to-program/	Teach a Girl to Program	\N	\N	\N	2016-06-28
40	https://aless.co/from-bitmaker-to-breather/	From Bitmaker to Breather	\N	\N	\N	2015-03-04
41	https://aless.co/coding-is-not-cs/	Coding != Computer Science	\N	\N	\N	2014-07-07
42	https://writing.natwelch.com/post/714	2020: Year in Review	\N	\N	\N	2021-01-02
43	https://writing.natwelch.com/post/713	Bugs Fixed on Vacation	\N	\N	\N	2020-11-05
44	https://writing.natwelch.com/post/711	Tales from Isolation: Coding	\N	\N	\N	2020-04-05
45	https://writing.natwelch.com/post/710	2019: Year in Review	\N	\N	\N	2020-01-02
46	https://writing.natwelch.com/post/703	Nat Welch Manifesto	\N	\N	\N	2019-12-01
47	https://writing.natwelch.com/post/709	Inspiration	\N	\N	\N	2019-11-10
48	https://writing.natwelch.com/post/708	Exercise of Grandmasters	\N	\N	\N	2019-10-12
49	https://writing.natwelch.com/post/707	reportd: Self hosted CSP reporting	\N	\N	\N	2019-10-05
51	https://writing.natwelch.com/post/705	Hack a satellite	\N	\N	\N	2019-09-22
52	https://writing.natwelch.com/post/704	The Nat Index 2019-09-14	\N	\N	\N	2019-09-14
53	https://writing.natwelch.com/post/701	Japan 2019 Travel Log Day 6, 7 & 8	\N	\N	\N	2019-05-22
54	https://writing.natwelch.com/post/699	DIY Cron & Continuous Delivery on GKE	\N	\N	\N	2019-05-20
55	https://writing.natwelch.com/post/700	Japan 2019 Travel Log Day 5	\N	\N	\N	2019-05-19
56	https://writing.natwelch.com/post/698	Japan 2019 Travel Log Day 4	\N	\N	\N	2019-05-18
57	https://writing.natwelch.com/post/697	Japan 2019 Travel Log Day 3	\N	\N	\N	2019-05-16
58	https://writing.natwelch.com/post/696	Japan 2019 Travel Log Day 2	\N	\N	\N	2019-05-15
59	https://writing.natwelch.com/post/695	Japan 2019 Travel Log Day 1	\N	\N	\N	2019-05-14
60	https://writing.natwelch.com/post/694	What's making me happy 2019-04-20	\N	\N	\N	2019-04-21
61	https://writing.natwelch.com/post/693	New book night	\N	\N	\N	2019-04-16
62	https://resevoir.net//about	https://resevoir.net//about	\N	\N	\N	2018-12-17
63	https://resevoir.net//annotation	https://resevoir.net//annotation	\N	\N	\N	2019-09-15
64	https://resevoir.net//auto-rickshaw	https://resevoir.net//auto-rickshaw	\N	\N	\N	2018-08-25
65	https://resevoir.net//bicycles	https://resevoir.net//bicycles	\N	\N	\N	2020-10-09
66	https://resevoir.net//biking	https://resevoir.net//biking	\N	\N	\N	2019-09-19
67	https://resevoir.net//bricolage	https://resevoir.net//bricolage	\N	\N	\N	2020-06-26
68	https://resevoir.net//chasmic	https://resevoir.net//chasmic	\N	\N	\N	2019-09-22
70	https://resevoir.net//community-network-project	https://resevoir.net//community-network-project	\N	\N	\N	2019-07-23
71	https://resevoir.net//craft	https://resevoir.net//craft	\N	\N	\N	2020-06-17
72	https://resevoir.net//daerim-dong	https://resevoir.net//daerim-dong	\N	\N	\N	2018-01-28
73	https://resevoir.net//deep-work	https://resevoir.net//deep-work	\N	\N	\N	2019-05-02
74	https://resevoir.net//documenting	https://resevoir.net//documenting	\N	\N	\N	2020-06-17
75	https://resevoir.net//eoy-2019	https://resevoir.net//eoy-2019	\N	\N	\N	2020-01-04
76	https://resevoir.net//fermentation	https://resevoir.net//fermentation	\N	\N	\N	2020-04-04
2	http://nonmateria.com/posts/2021_03_15__url_changed.html	url changed	\N	\N	\N	2021-03-15
267	https://xvw.github.io/longs/introduction_algebraic_effects.html	Tests unitaires de fonctions impures	\N	\N	\N	2020-03-10
78	https://resevoir.net//fraktur	https://resevoir.net//fraktur	\N	\N	\N	2018-12-20
79	https://resevoir.net//git-for-filmmakers	https://resevoir.net//git-for-filmmakers	\N	\N	\N	2019-08-29
80	https://resevoir.net//historiography	https://resevoir.net//historiography	\N	\N	\N	2018-11-08
81	https://resevoir.net//index	https://resevoir.net//index	\N	\N	\N	2020-06-17
83	https://resevoir.net//jonathan	https://resevoir.net//jonathan	\N	\N	\N	2019-11-12
84	https://resevoir.net//kiron	https://resevoir.net//kiron	\N	\N	\N	2018-08-02
85	https://resevoir.net//library	https://resevoir.net//library	\N	\N	\N	2019-09-01
86	https://resevoir.net//lifestyle	https://resevoir.net//lifestyle	\N	\N	\N	2020-06-10
87	https://resevoir.net//manifestations	https://resevoir.net//manifestations	\N	\N	\N	2019-08-11
88	https://resevoir.net//mediums	https://resevoir.net//mediums	\N	\N	\N	2020-06-17
89	https://resevoir.net//midi-plotter	https://resevoir.net//midi-plotter	\N	\N	\N	2020-08-06
90	https://resevoir.net//org-mode	https://resevoir.net//org-mode	\N	\N	\N	2019-09-22
91	https://resevoir.net//pointers	https://resevoir.net//pointers	\N	\N	\N	2020-03-08
92	https://resevoir.net//portable-printing	https://resevoir.net//portable-printing	\N	\N	\N	2019-04-12
93	https://resevoir.net//portable-typewriter	https://resevoir.net//portable-typewriter	\N	\N	\N	2018-12-20
94	https://resevoir.net//practice	https://resevoir.net//practice	\N	\N	\N	2020-06-17
95	https://resevoir.net//quotes	https://resevoir.net//quotes	\N	\N	\N	2019-07-28
96	https://resevoir.net//research	https://resevoir.net//research	\N	\N	\N	2020-06-17
97	https://resevoir.net//resevoir	https://resevoir.net//resevoir	\N	\N	\N	2020-06-17
99	https://resevoir.net//sailing	https://resevoir.net//sailing	\N	\N	\N	2020-10-09
100	https://resevoir.net//selfcare-checklist	https://resevoir.net//selfcare-checklist	\N	\N	\N	0001-01-01
101	https://resevoir.net//service-design	https://resevoir.net//service-design	\N	\N	\N	2018-08-08
102	https://resevoir.net//slitscan-experiments	https://resevoir.net//slitscan-experiments	\N	\N	\N	2018-11-02
103	https://resevoir.net//slitscan-video	https://resevoir.net//slitscan-video	\N	\N	\N	2018-01-08
104	https://resevoir.net//space	https://resevoir.net//space	\N	\N	\N	2019-09-27
105	https://resevoir.net//studies	https://resevoir.net//studies	\N	\N	\N	2019-05-28
106	https://resevoir.net//tactile	https://resevoir.net//tactile	\N	\N	\N	2020-06-16
107	https://resevoir.net//targets	https://resevoir.net//targets	\N	\N	\N	2019-04-13
108	https://resevoir.net//text	https://resevoir.net//text	\N	\N	\N	2019-08-05
109	https://resevoir.net//time-based	https://resevoir.net//time-based	\N	\N	\N	2020-06-17
110	https://resevoir.net//tools	https://resevoir.net//tools	\N	\N	\N	2020-06-17
111	https://resevoir.net//trails	https://resevoir.net//trails	\N	\N	\N	2019-05-02
112	https://resevoir.net//urgency	https://resevoir.net//urgency	\N	\N	\N	2019-08-02
113	https://resevoir.net//visiweave	https://resevoir.net//visiweave	\N	\N	\N	2020-04-16
114	https://resevoir.net//webring	https://resevoir.net//webring	\N	\N	\N	2019-08-20
116	https://resevoir.net//year-in-books-2019	https://resevoir.net//year-in-books-2019	\N	\N	\N	2020-01-04
117	https://szymonkaliski.com/newsletter/2021-03-29-q1-2021/	Q1 2021	\N	\N	\N	2021-03-29
118	https://szymonkaliski.com/projects/haze/	No title	\N	\N	\N	2021-02-17
119	https://szymonkaliski.com/newsletter/2020-12-28-end-of-2020/	End of 2020	\N	\N	\N	2020-12-28
120	https://szymonkaliski.com/projects/fabfungus/	No title	\N	\N	\N	2020-11-12
121	https://szymonkaliski.com/projects/liveboard/	No title	\N	\N	\N	2020-07-23
122	https://szymonkaliski.com/projects/protoboard/	No title	\N	\N	\N	2020-07-14
123	https://szymonkaliski.com/projects/hhann/	No title	\N	\N	\N	2020-06-30
124	https://szymonkaliski.com/writing/2020-04-19-memex-dreams/	Memex Dreams	\N	\N	\N	2020-04-19
125	https://szymonkaliski.com/projects/archivist/	No title	\N	\N	\N	2020-01-01
126	https://szymonkaliski.com/projects/nott/	No title	\N	\N	\N	2019-07-01
127	https://szymonkaliski.com/projects/volume-brush/	No title	\N	\N	\N	2019-06-25
128	https://szymonkaliski.com/projects/modeler/	No title	\N	\N	\N	2019-04-19
130	https://szymonkaliski.com/writing/2019-03-01-building-dacein/	Building Dacein	\N	\N	\N	2019-03-01
131	https://szymonkaliski.com/projects/dacein/	No title	\N	\N	\N	2019-03-01
132	https://szymonkaliski.com/writing/2018-11-27-laboratory-residency/	Laboratory Residency	\N	\N	\N	2018-11-27
133	https://szymonkaliski.com/projects/hiccup-sdf/	No title	\N	\N	\N	2018-11-25
134	https://szymonkaliski.com/projects/hhtwm/	No title	\N	\N	\N	2018-11-03
135	https://szymonkaliski.com/projects/sketchbook-cli/	No title	\N	\N	\N	2018-08-29
136	https://szymonkaliski.com/projects/editable-cli/	No title	\N	\N	\N	2018-08-19
137	https://szymonkaliski.com/projects/hot-visualize-change/	No title	\N	\N	\N	2018-05-16
138	https://szymonkaliski.com/projects/crln/	No title	\N	\N	\N	2018-04-07
139	https://szymonkaliski.com/projects/mntn/	No title	\N	\N	\N	2018-03-10
140	https://szymonkaliski.com/writing/2018-01-28-diy-monome/	DIY Monome	\N	\N	\N	2018-01-28
141	https://szymonkaliski.com/projects/diy-monome/	No title	\N	\N	\N	2018-01-28
142	https://szymonkaliski.com/writing/2017-12-04-flsun-i3-3d-printer/	FLSUN i3 3D Printer	\N	\N	\N	2017-12-04
143	https://szymonkaliski.com/writing/2017-11-10-exploring-tidal-and-diagrams/	Learning Haskell part 2	\N	\N	\N	2017-11-10
144	https://szymonkaliski.com/writing/2017-10-02-learning-haskell/	Learning Haskell	\N	\N	\N	2017-10-02
145	https://szymonkaliski.com/writing/2017-09-08-building-das-ui/	Building DAS-UI	\N	\N	\N	2017-09-08
146	https://szymonkaliski.com/projects/das-ui/	No title	\N	\N	\N	2017-09-08
148	https://szymonkaliski.com/writing/2017-07-07-building-neutron/	Building Neutron	\N	\N	\N	2017-07-07
149	https://szymonkaliski.com/projects/neutron/	No title	\N	\N	\N	2017-07-07
150	https://szymonkaliski.com/writing/2017-05-31-exploring-reasonml/	Exploring ReasonML	\N	\N	\N	2017-05-31
151	https://szymonkaliski.com/writing/2017-04-30-time-tracking/	Timav	\N	\N	\N	2017-04-30
152	https://szymonkaliski.com/projects/timav/	No title	\N	\N	\N	2017-04-30
153	https://szymonkaliski.com/writing/2017-03-31-parametrium/	Building Parametrium	\N	\N	\N	2017-03-31
204	http://nonmateria.com/posts/2020_10_30__pages_added.html	pages added	\N	\N	\N	2020-10-30
205	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	infected clock II	\N	\N	\N	2020-10-27
206	http://nonmateria.com/posts/2020_07_12__infected_clock.html	infected clock	\N	\N	\N	2020-07-12
207	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
208	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
209	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
210	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
211	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
212	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
214	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
215	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
216	http://nonmateria.com/posts/2020_04_10__la_cauzione.html	la cauzione	\N	\N	\N	2020-04-10
217	https://oddworlds.org/gallery/gallery-2021.html	2021 Photo Gallery	\N	\N	\N	2021-03-22
154	https://szymonkaliski.com/projects/parametrium/	No title	\N	\N	\N	2017-03-31
155	https://szymonkaliski.com/writing/2017-02-28-building-wallgen/	Building Wallgen	\N	\N	\N	2017-02-28
156	https://szymonkaliski.com/projects/wallgen/	No title	\N	\N	\N	2017-02-25
157	https://szymonkaliski.com/writing/2017-01-31-building-sdf-ui/	Building SDF-UI	\N	\N	\N	2017-01-31
158	https://szymonkaliski.com/projects/sdf-ui/	No title	\N	\N	\N	2017-01-29
159	https://szymonkaliski.com/writing/2017-01-18-kinect-2-osx/	Kinect 2 on macOS with Skeleton Tracking	\N	\N	\N	2017-01-18
160	https://szymonkaliski.com/writing/2016-12-29-ofcourse-io/	Teaching Creative Coding in Shanghai	\N	\N	\N	2016-12-29
161	https://szymonkaliski.com/projects/bareconductive-picap/	No title	\N	\N	\N	2016-09-09
162	https://szymonkaliski.com/projects/ballantines-heartbeats/	No title	\N	\N	\N	2016-07-18
163	https://szymonkaliski.com/projects/glsl-auto-ui/	No title	\N	\N	\N	2016-04-20
164	https://szymonkaliski.com/projects/gla-london-2050/	No title	\N	\N	\N	2016-02-01
166	https://szymonkaliski.com/projects/fonomapa/	No title	\N	\N	\N	2015-10-08
167	https://szymonkaliski.com/projects/kinect2osc/	No title	\N	\N	\N	2015-09-20
168	https://szymonkaliski.com/projects/loop-pi/	No title	\N	\N	\N	2014-10-19
169	https://szymonkaliski.com/projects/sensorium/	No title	\N	\N	\N	2014-10-10
170	https://szymonkaliski.com/projects/eeg2osc/	No title	\N	\N	\N	2014-10-10
171	https://szymonkaliski.com/projects/sonic-explorer/	No title	\N	\N	\N	2014-10-08
172	https://szymonkaliski.com/projects/institut-des-mutations/	No title	\N	\N	\N	2014-03-28
173	https://szymonkaliski.com/projects/nodation/	No title	\N	\N	\N	2014-02-19
174	https://szymonkaliski.com/projects/zamek-interactive-movie/	No title	\N	\N	\N	2013-12-20
175	https://szymonkaliski.com/projects/beatbattle-visuals/	No title	\N	\N	\N	2013-12-14
176	https://szymonkaliski.com/projects/hello-poznan/	No title	\N	\N	\N	2013-04-19
177	https://szymonkaliski.com/projects/sensorium-book-covers/	No title	\N	\N	\N	2012-05-18
179	gemini://xj-ix.luxe/posts/2020-12-22-i-made-it.en.gmi	i made it	\N	\N	\N	2020-12-22
180	gemini://xj-ix.luxe/posts/2020-11-17-nyu-tokyo-roadmap.gmi	nyu.tokyo (ᴎoT THɘ wiᴙɘb) roadmap	\N	\N	\N	2020-11-17
181	gemini://xj-ix.luxe/posts/2020-11-17-go-build-your-own-eco-village.gmi	re: a miscommunication	\N	\N	\N	2020-11-17
182	gemini://xj-ix.luxe/posts/2020-10-07-entering-the-dark-forest.gmi	entering the dark forest	\N	\N	\N	2020-10-07
183	gemini://xj-ix.luxe/posts/2020-09-12-grid-grid.gmi	grid-grid, intimations on building decentralized computer systems	\N	\N	\N	2020-09-12
184	gemini://xj-ix.luxe/posts/2020-08-20-inverting-the-technolopy.gmi	inverting the technopoly	\N	\N	\N	2020-08-20
185	gemini://xj-ix.luxe/posts/2020-08-16-hyperlocal-concept-quandries.gmi	hyperlocal concept, quandaries	\N	\N	\N	2020-08-16
186	gemini://xj-ix.luxe/posts/2020-08-11-memex-dev-updates.gmi	memex dev updates	\N	\N	\N	2020-08-11
187	gemini://xj-ix.luxe/posts/2020-08-07-social-admin.gmi	social.ssg admin	\N	\N	\N	2020-08-07
188	gemini://xj-ix.luxe/posts/2020-07-14-ethical-marketing-hyperlocal.gmi	ethical marketing at hyperlocal	\N	\N	\N	2020-07-14
189	gemini://xj-ix.luxe/posts/2020-06-18-rlog.gmi	rlog	\N	\N	\N	2020-06-18
190	gemini://xj-ix.luxe/posts/2020-06-02-hyperlocal-roadmap.gmi	hyperlocal	\N	\N	\N	2020-06-02
191	gemini://xj-ix.luxe/posts/2020-04-30-honey-ginger-sauce.gmi	honey ginger sauce	\N	\N	\N	2020-04-30
193	gemini://xj-ix.luxe/posts/2020-03-13-platanos-fritos.es.gmi	platanos fritos	\N	\N	\N	2020-03-13
194	gemini://xj-ix.luxe/posts/2020-03-10-discussions-on-network-topology.gmi	p2p network topology, why even bother?	\N	\N	\N	2020-03-10
195	gemini://xj-ix.luxe/posts/2020-01-27-universal-basic-internet.gmi	universal basic internet	\N	\N	\N	2020-01-27
196	gemini://xj-ix.luxe/posts/2020-01-20-null-media-next.gmi	null.media@next	\N	\N	\N	2020-01-20
197	gemini://xj-ix.luxe/posts/2020-01-09-native-frp.gmi	native functional reactive programming	\N	\N	\N	2020-01-09
198	gemini://xj-ix.luxe/posts/2019-thaumaturgy.gmi	thaumaturgy	\N	\N	\N	2019-01-01
199	gemini://xj-ix.luxe/posts/2019-stop-and-think.gmi	stop and think	\N	\N	\N	2019-01-01
200	gemini://xj-ix.luxe/posts/2019-quickly-export-gitlab-projects.gmi	quickly export corpogit projects	\N	\N	\N	2019-01-01
203	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	infected clock III	\N	\N	\N	2020-11-16
218	https://oddworlds.org/cooking/moka.html	Coffee with a "moka" machine	\N	\N	\N	2021-03-21
219	https://oddworlds.org/cooking/pita.html	Pita	\N	\N	\N	2021-03-15
220	https://oddworlds.org/wiki/radio.html	Radio	\N	\N	\N	2021-03-09
221	https://oddworlds.org/wiki/entrepreneurship.html	Entrepreneurship	\N	\N	\N	2021-02-10
222	https://oddworlds.org/wiki/ethics.html	Ethics	\N	\N	\N	2021-02-10
223	https://oddworlds.org/cooking/0-fermenting.html	Meta: Fermenting	\N	\N	\N	2021-02-09
224	https://oddworlds.org/wiki/repair.html	Repair	\N	\N	\N	2021-02-08
225	https://oddworlds.org/cooking/0-sourdough.html	Meta: Starting and maintaining Sourdough	\N	\N	\N	2021-02-04
272	https://now.lectronice.com/then/2021-04w15/	W15 :: Sleeping	\N	\N	\N	2021-04-11
260	https://bismuth.garden/2020/11/ruby-squares	Ruby squares	\N	\N	\N	2020-11-11
261	https://bismuth.garden/2020/09/beyond-sustainable	Links: Beyond sustainable	\N	\N	\N	2020-09-21
227	https://oddworlds.org/gallery/2020-11.html	2020-11	\N	\N	\N	2020-08-22
228	https://oddworlds.org/thoughts/memoria.html	Memoria	\N	\N	\N	2020-08-16
229	https://oddworlds.org/gallery/2020-08.html	2020-08	\N	\N	\N	2020-07-22
230	https://oddworlds.org/gallery/2020-09.html	2020-09	\N	\N	\N	2020-07-22
231	https://oddworlds.org/gallery/2020-10.html	2020-10	\N	\N	\N	2020-07-22
232	https://oddworlds.org/gallery/2020-07.html	2020-07	\N	\N	\N	2020-06-22
233	https://oddworlds.org/thoughts/thelast.html	The Last $THING You'll Ever Buy	\N	\N	\N	2020-06-11
234	https://oddworlds.org/cooking/pizza.html	Pizza	\N	\N	\N	2020-05-23
235	https://oddworlds.org/gallery/2020-06.html	2020-06	\N	\N	\N	2020-05-22
237	https://chad.is/dick-jokes/	Dick jokes	\N	\N	\N	2021-04-17
238	https://chad.is/endless-forms-most-beautiful/	Endless forms most beautiful	\N	\N	\N	2021-01-23
239	https://chad.is/the-work-of-the-listener/	The work of the listener	\N	\N	\N	2020-06-06
240	https://chad.is/self-as-process/	Self as Process	\N	\N	\N	2019-11-06
241	https://chad.is/getting-started-complexity-science/	Getting started with complexity science	\N	\N	\N	2019-11-02
242	https://chad.is/technologies-of-the-self/	Technologies of the Self: A Short Introduction	\N	\N	\N	2019-09-23
243	https://chad.is/managing-oneself/	Managing Oneself	\N	\N	\N	2019-09-18
244	https://chad.is/copenhagen/	Copenhagen versus the universe	\N	\N	\N	2019-09-14
245	https://chad.is/reductionism/	Reductionism can explain neither carrots nor consciousness	\N	\N	\N	2019-09-11
246	https://chad.is/hereditary/	Hereditary	\N	\N	\N	2019-09-07
247	https://chad.is/burden-of-consciousness/	Confronting the burden of consciousness	\N	\N	\N	2018-11-29
248	https://chad.is/ebook-innovation/	What happened to ebook innovation?	\N	\N	\N	2018-08-26
249	https://chad.is/design-systems/	Designing self-sustaining systems	\N	\N	\N	2015-12-14
250	https://chad.is/wabi-sabi/	Nothing lasts, nothing is finished, and nothing is perfect	\N	\N	\N	2013-11-03
251	https://chad.is/creativity-management/	Creative work cannot be managed	\N	\N	\N	2013-05-29
253	https://chad.is/startup-offers/	What to know before joining a startup	\N	\N	\N	2013-03-18
254	https://chad.is/cautious-prometheus/	The advantages of design in the 21st century	\N	\N	\N	2013-02-14
255	https://chad.is/guns-technology-culture/	Guns as technology, guns as culture	\N	\N	\N	2012-12-18
256	https://chad.is/design-hacking/	Design & Hacking	\N	\N	\N	2012-11-22
257	https://chad.is/asynchronous/	Don’t Make Me Wait	\N	\N	\N	2012-11-08
258	https://chad.is/zero-to-one/	Going from Zero to One	\N	\N	\N	2012-11-01
259	https://chad.is/design-of-design/	The Design of Design	\N	\N	\N	2012-10-09
262	https://bismuth.garden/2020/09/oddments-2	Oddments II	\N	\N	\N	2020-09-20
263	https://bismuth.garden/2020/09/oddments	Oddments	\N	\N	\N	2020-09-14
264	https://bismuth.garden/2020/09/did-you-find-it-i-did	‘Did you find it?’ ‘I did’	\N	\N	\N	2020-09-11
265	https://bismuth.garden/2020/09/sowing-seeds	Sowing seeds	\N	\N	\N	2020-09-10
266	https://xvw.github.io/longs/kotlin_extensions.html	Kotlin, extensions et génériques	\N	\N	\N	2020-04-29
268	https://xvw.github.io/longs/introduction_aux_monades.html	Un article sur les monades en 2018	\N	\N	\N	2018-08-22
269	https://xvw.github.io/longs/konbini_tac_au_tac_manben.html	Konbini, Tac au tac et Manben	\N	\N	\N	2018-08-19
270	https://xvw.github.io/longs/zipper_history.html	Voyager dans le temps avec un Zipper	\N	\N	\N	2017-11-20
271	https://xvw.github.io/longs/introduction_gadt.html	Un cas d'école à l'utilisation des GADTs	\N	\N	\N	2017-10-16
273	https://now.lectronice.com/then/2021-04w14/	W14 :: Fixing old things	\N	\N	\N	2021-04-04
274	https://now.lectronice.com/then/2021-03w13/	W13 :: Bulking	\N	\N	\N	2021-03-28
275	https://now.lectronice.com/then/2021-03w12/	W12 :: Darkness my old friend	\N	\N	\N	2021-03-21
276	https://now.lectronice.com/then/2021-03w11/	W11 :: Tokiponing	\N	\N	\N	2021-03-14
277	https://now.lectronice.com/then/2021-03w10/	W10 :: Stacking up voxels	\N	\N	\N	2021-03-07
278	https://now.lectronice.com/then/2021-03w09/	W9 :: Sitting in front of the sun	\N	\N	\N	2021-02-28
279	https://now.lectronice.com/then/2021-02w08/	W8 :: Watching the world burn	\N	\N	\N	2021-02-21
280	https://now.lectronice.com/then/2021-02w07/	W7 :: Struggling with Godot	\N	\N	\N	2021-02-14
281	https://now.lectronice.com/then/2021-02w06/	2021W6 :: Sweating profusely	\N	\N	\N	2021-02-07
282	https://now.lectronice.com/then/2021-02w05/	2021W5 :: Exploring vast spaces	\N	\N	\N	2021-01-31
283	https://now.lectronice.com/then/2021-01w04/	2021W4 :: Headbanging	\N	\N	\N	2021-01-24
284	https://now.lectronice.com/then/2021-01w03/	2021W3 :: Floating	\N	\N	\N	2021-01-17
285	https://now.lectronice.com/then/2021-01w02/	2021W2 :: Soreness	\N	\N	\N	2021-01-10
286	https://now.lectronice.com/then/2021-01w01/	2021W1 :: Hello new year	\N	\N	\N	2021-01-03
287	https://now.lectronice.com/then/2020-12w53/	2020W53 :: Back to game development	\N	\N	\N	2020-12-27
288	https://now.lectronice.com/then/2020-12w52/	2020W52 :: Chilling	\N	\N	\N	2020-12-20
290	https://now.lectronice.com/then/2020-12w50/	2020W50 :: Music and sore muscles	\N	\N	\N	2020-12-06
291	https://now.lectronice.com/then/2020-11w49/	2020W49 :: Songs?	\N	\N	\N	2020-11-29
292	https://now.lectronice.com/then/2020-11w48/	2020W48 :: Slacking	\N	\N	\N	2020-11-22
293	https://now.lectronice.com/then/2020-11w47/	2020W47 :: Meandering	\N	\N	\N	2020-11-15
294	https://now.lectronice.com/then/2020-11w46/	2020W46 :: Tiredness and absurdity	\N	\N	\N	2020-11-08
295	https://now.lectronice.com/then/2020-11w45/	2020W45 :: Crunching/procrastinating	\N	\N	\N	2020-11-01
296	https://now.lectronice.com/then/2020-10w44/	2020W44 :: Music again	\N	\N	\N	2020-10-25
297	https://now.lectronice.com/then/2020-10w43/	2020W43 :: Teenage Artiphon Engineering	\N	\N	\N	2020-10-18
298	https://now.lectronice.com/then/2020-10w42/	2020W42 :: Beats	\N	\N	\N	2020-10-11
299	https://now.lectronice.com/then/2020-10w41/	2020W41 :: Global confusion	\N	\N	\N	2020-10-04
300	https://now.lectronice.com/then/2020-09w40/	2020W40 :: Drawing again	\N	\N	\N	2020-09-27
302	https://now.lectronice.com/then/2020-09w38/	2020W38 :: Toki Pona and slow burn out	\N	\N	\N	2020-09-13
303	https://now.lectronice.com/then/2020-09w37/	2020W37 :: toki pona li pona	\N	\N	\N	2020-09-06
304	https://now.lectronice.com/then/2020-08w36/	2020W36 :: Keyboards and lack of sleep	\N	\N	\N	2020-08-30
305	https://now.lectronice.com/then/2020-08w35/	2020W35 :: Opuscule on acid with a plaid	\N	\N	\N	2020-08-23
306	https://now.lectronice.com/then/2020-08w34/	2020W34 :: HTML, Pi 4, acid and game design	\N	\N	\N	2020-08-16
307	https://now.lectronice.com/then/2020-08w33/	2020W33 :: Starting a now page	\N	\N	\N	2020-08-09
308	https://now.lectronice.com/then/2020-08w32/	2020W32 :: Testing my template	\N	\N	\N	2020-08-02
310	https://longest.voyage/log/writing-notes/	Writing Notes	\N	\N	\N	2021-02-20
311	https://longest.voyage/log/nice-and-soft/	Nice And Soft	\N	\N	\N	2021-02-20
312	https://longest.voyage/log/2021-01/	January Rambling	\N	\N	\N	2021-01-17
313	https://longest.voyage/log/autumn-abroad/	Autumn Abroad	\N	\N	\N	2020-11-15
314	https://longest.voyage/log/a-new-anxiety/	A New Anxiety	\N	\N	\N	2020-11-08
315	https://longest.voyage/log/apolitical/	Apolitical	\N	\N	\N	2020-10-09
316	https://longest.voyage/log/snacks-and-such/	Snacks and the Weather	\N	\N	\N	2020-09-14
317	https://longest.voyage/log/waiting/	Waiting	\N	\N	\N	2020-07-24
318	https://longest.voyage/log/growth/	Growth	\N	\N	\N	2020-05-20
319	https://longest.voyage/log/life-in-the-shoebox/	Life in the Shoebox	\N	\N	\N	2020-04-26
320	https://longest.voyage/log/the-burger-search/	The Burger Search	\N	\N	\N	2020-04-11
321	https://longest.voyage/log/one-at-a-time/	One at a Time	\N	\N	\N	2020-03-14
322	https://longest.voyage/log/first-month/	First Month	\N	\N	\N	2020-02-08
323	https://longest.voyage/log/lag/	Lag	\N	\N	\N	2020-01-20
324	https://longest.voyage/log/arrival/	Arrival	\N	\N	\N	2020-01-09
325	https://longest.voyage/log/replay/	Replay	\N	\N	\N	2019-12-02
327	https://longest.voyage/log/countdown/	Countdown	\N	\N	\N	2018-09-25
328	https://kokorobot.ca/site/sketchbook.html	Sketchbook	\N	\N	\N	2021-04-19
329	https://kokorobot.ca/site/pandoc.html	Pandoc notes	\N	\N	\N	2021-04-01
330	https://kokorobot.ca/site/wunderrabbits.html	Wunderland Rabbits	\N	\N	\N	2021-03-18
331	https://kokorobot.ca/site/busydoingnothing.html	Busy Doing Nothing e-book release	\N	\N	\N	2021-02-19
332	https://kokorobot.ca/site/illustration.html	Uxn mascot	\N	\N	\N	2021-02-01
333	https://kokorobot.ca/site/2020dec31.html	2020 yearend review	\N	\N	\N	2021-01-11
337	https://ameyama.com/blog/2020-the-year-in-review	(雨山) 2020: The Year in Review	\N	\N	\N	2020-12-30
335	https://kokorobot.ca/site/conversion.html	Conversion charts	\N	\N	\N	2020-12-14
334	https://kokorobot.ca/site/rug.html	Rope mats	\N	\N	\N	2020-12-07
338	https://ameyama.com/blog/sleep-with-me-a-testimonial	(雨山) Sleep With Me: A Testimonial	\N	\N	\N	2020-10-07
339	https://ameyama.com/blog/vercel	(雨山) Vercel	\N	\N	\N	2020-09-28
340	https://ameyama.com/blog/focus-on-the-inputs	(雨山) Focus on the Inputs	\N	\N	\N	2020-07-10
341	https://ameyama.com/blog/reply-none	(雨山) Reply None	\N	\N	\N	2020-05-30
342	https://ameyama.com/blog/grief	(雨山) Grief	\N	\N	\N	2020-04-28
343	https://ameyama.com/blog/passgen	(雨山) Passgen	\N	\N	\N	2020-04-27
344	https://ameyama.com/blog/bookshelf	(雨山) Bookshelf	\N	\N	\N	2020-04-16
345	https://ameyama.com/blog/public-domain-tapes	(雨山) Public Domain Tapes	\N	\N	\N	2020-04-02
346	https://ameyama.com/blog/public-domain-resources	(雨山) Public Domain Resources	\N	\N	\N	2020-03-29
347	https://phse.net/no-off-switch/	No Off Switch	\N	\N	\N	2021-02-26
349	https://phse.net/the-perfect-todo-list/	The Perfect To-Do List	\N	\N	\N	2021-01-31
350	https://phse.net/utility-classes-i-have-known-and-loved/	Utility Classes I Have Known and Loved	\N	\N	\N	2021-01-16
351	https://phse.net/2020/	Yearly Review 2020	\N	\N	\N	2021-01-03
352	https://phse.net/respecting-motion-preferences/	Respecting Motion Preferences	\N	\N	\N	2020-08-15
353	https://phse.net/managing-specificity-with-css-variables/	Managing Specificity with CSS Variables	\N	\N	\N	2020-02-29
354	https://phse.net/three-layer-goal-setting/	Three Layer Goal-Setting	\N	\N	\N	2020-01-10
355	https://phse.net/2019/	Yearly Review 2019	\N	\N	\N	2019-12-30
356	https://phse.net/tetris-analogy/	Why is Tetris such a good analogy?	\N	\N	\N	2019-10-25
357	https://phse.net/a-new-minimalism/	A New Minimalism	\N	\N	\N	2019-09-28
358	https://phse.net/august-update/	August Update	\N	\N	\N	2019-08-20
359	https://phse.net/naive-sudoku/	Naive Sudoku	\N	\N	\N	2019-07-27
360	https://phse.net/notes-template/	How I organize project notes	\N	\N	\N	2019-06-08
361	https://phse.net/choose-people/	Choose people, not projects	\N	\N	\N	2019-06-05
362	https://phse.net/curiosity/	Curiosity & Focus	\N	\N	\N	2019-03-30
363	https://phse.net/commonplace/	A Commonplace Repository	\N	\N	\N	2019-03-23
364	https://phse.net/recently/	Recently	\N	\N	\N	2019-03-21
365	https://phse.net/tools/	A List of the Tools I'm Using	\N	\N	\N	2019-02-12
366	https://phse.net/sketchbook/	Always Carry a Sketchbook	\N	\N	\N	2019-02-09
367	https://phse.net/2018/	Yearly Review 2018	\N	\N	\N	2019-01-01
368	https://phse.net/minimalism/	On Minimalism	\N	\N	\N	2018-12-31
369	https://ring.0data.app	Small Web App Ring	\N	\N	\N	2021-03-29
370	https://emojilog.rosano.ca	Emoji Log	\N	\N	\N	2021-03-25
372	https://0data.app	Zero Data App	\N	\N	\N	2020-12-08
373	https://kommit.rosano.ca	Kommit	\N	\N	\N	2020-06-24
374	/en/aural	Aural	\N	\N	\N	2019-12-17
375	https://massagetxt.rosano.ca	MassageTXT	\N	\N	\N	2019-11-26
376	https://launchlet.dev	Launchlet	\N	\N	\N	2019-11-19
377	https://idiomatic.rosano.ca	Idiomatic	\N	\N	\N	2019-01-24
378	/en/sonogrid	sonogrid	\N	\N	\N	2018-09-06
380	https://rosano.tumblr.com/tagged/Opus-7/chrono	Belonging	\N	\N	\N	2016-10-06
381	/en/ticker	Ticker	\N	\N	\N	2015-02-25
382	/en/quick-record	Quick Record	\N	\N	\N	2015-01-16
383	/en/audioscrub	AudioScrub	\N	\N	\N	2014-08-08
384	https://teknari.com/blogpost/1595783382418/Books	Books	\N	\N	\N	2020-07-26
387	https://teknari.com/blogpost/1595697208582/Dreams+of+Itself	Dreams of Itself	\N	\N	\N	2020-07-25
388	https://teknari.com/blogpost/1595696509825/Eraser	Eraser	\N	\N	\N	2020-07-25
389	https://teknari.com/blogpost/1595694736717/Chickenfruit	Chickenfruit	\N	\N	\N	2020-07-25
391	https://teknari.com/blogpost/1595683646064/2015+November+Journal+	2015 November Journal 	\N	\N	\N	2020-07-25
392	https://teknari.com/blogpost/1595683324704/2015+October+Journal+	2015 October Journal 	\N	\N	\N	2020-07-25
393	https://teknari.com/blogpost/1595682675547/2015+September+Journal+	2015 September Journal 	\N	\N	\N	2020-07-25
394	https://teknari.com/blogpost/1595681107423/2015+August+Journal	2015 August Journal	\N	\N	\N	2020-07-25
395	https://teknari.com/blogpost/1595548974481/2015+July+Journal	2015 July Journal	\N	\N	\N	2020-07-24
396	https://teknari.com/blogpost/1595537557776/2015+Journal+June	2015 Journal June	\N	\N	\N	2020-07-23
397	https://teknari.com/blogpost/1595536068883/2015+May+Journal	2015 May Journal	\N	\N	\N	2020-07-23
398	https://teknari.com/blogpost/1595502848493/Apple+I	Apple I	\N	\N	\N	2020-07-23
399	https://teknari.com/blogpost/1594587027196/2015+April+Journal	2015 April Journal	\N	\N	\N	2020-07-12
400	https://teknari.com/blogpost/1594567446819/2015+March+Journal	2015 March Journal	\N	\N	\N	2020-07-12
401	https://teknari.com/blogpost/1594562577891/2015+February+Journal	2015 February Journal	\N	\N	\N	2020-07-12
402	https://teknari.com/blogpost/1594344859804/2015+January+Journal	2015 January Journal	\N	\N	\N	2020-07-10
403	https://teknari.com/blogpost/1594318116313/2017+Journal	2017 Journal	\N	\N	\N	2020-07-09
404	https://teknari.com/blogpost/1594317403488/2016+Journal	2016 Journal	\N	\N	\N	2020-07-09
405	https://teknari.com/blogpost/1594314179451/2018+Journal	2018 Journal	\N	\N	\N	2020-07-09
407	https://teknari.com/blogpost/1594234205140/2013+Journal	2013 Journal	\N	\N	\N	2020-07-08
408	https://teknari.com/blogpost/1594233551325/	\N	\N	\N	\N	2020-07-08
615	https://gueorgui.net/blog/2020/hello-again-world/	Hello again, World!	\N	\N	\N	2020-02-01
623	https://sixey.es/imagery/mspaint/	+ images in mspaint	\N	\N	\N	2019-09-10
624	https://sixey.es/imagery/arthur/	arthur_resource	\N	\N	\N	2019-09-07
625	https://icyphox.sh/blog/free-sw-censor	Free software should not censor	\N	\N	\N	2021-04-07
626	https://icyphox.sh/blog/nvim-lua	Configuring Neovim using Lua	\N	\N	\N	2021-02-07
627	https://icyphox.sh/blog/signal	We can do better than Signal	\N	\N	\N	2021-01-17
628	https://icyphox.sh/blog/whatsapp	What's next after WhatsApp?	\N	\N	\N	2021-01-08
629	https://icyphox.sh/blog/2020-in-review	2020 in review	\N	\N	\N	2020-12-24
630	https://icyphox.sh/blog/music-streaming	My music streaming setup	\N	\N	\N	2020-12-13
631	https://icyphox.sh/blog/workman	The Workman keyboard layout	\N	\N	\N	2020-10-24
632	https://icyphox.sh/blog/r2wars-2020	My submissions for r2wars 2020	\N	\N	\N	2020-09-13
634	https://icyphox.sh/blog/ducky-one-2	The Ducky One 2 SF	\N	\N	\N	2020-08-22
635	https://icyphox.sh/blog/twitter	Some thoughts on Twitter	\N	\N	\N	2020-08-03
636	https://icyphox.sh/blog/2020-07-20	Status update	\N	\N	\N	2020-07-20
637	https://icyphox.sh/blog/flask-jwt-login	Flask-JWT-Extended × Flask-Login	\N	\N	\N	2020-06-24
638	https://icyphox.sh/blog/dont-news	You don't need news	\N	\N	\N	2020-06-21
639	https://icyphox.sh/blog/pi	Migrating to the RPi	\N	\N	\N	2020-06-04
640	https://icyphox.sh/blog/site-changes	Site changes	\N	\N	\N	2020-05-27
641	https://icyphox.sh/blog/efficacy-deepfakes	The efficacy of deepfakes	\N	\N	\N	2020-05-11
642	https://icyphox.sh/blog/simplicity-security	Simplicity (mostly) guarantees security	\N	\N	\N	2020-05-07
644	https://icyphox.sh/blog/mastodon-social	Stop joining mastodon.social	\N	\N	\N	2020-05-05
645	https://icyphox.sh/blog/openbsd-hp-envy	OpenBSD on the HP Envy 13	\N	\N	\N	2020-04-17
646	https://icyphox.sh/blog/kiss-zen	The Zen of KISS Linux	\N	\N	\N	2020-04-03
647	https://icyphox.sh/blog/mael	Introducing mael	\N	\N	\N	2020-03-29
649	https://icyphox.sh/blog/nullcon-2020	Nullcon 2020	\N	\N	\N	2020-03-09
650	https://icyphox.sh/blog/prosody	Setting up Prosody for XMPP	\N	\N	\N	2020-02-18
651	https://icyphox.sh/blog/2020-01-18	Status update	\N	\N	\N	2020-01-18
652	https://icyphox.sh/blog/mnml-browsing	Vimb&#58; my Firefox replacement	\N	\N	\N	2020-01-16
653	https://icyphox.sh/blog/five-days-tty	Five days in a TTY	\N	\N	\N	2020-01-13
654	https://icyphox.sh/blog/2019-in-review	2019 in review	\N	\N	\N	2020-01-02
655	https://icyphox.sh/blog/ru-vs-gb	Disinfo war&#58; RU vs GB	\N	\N	\N	2019-12-12
656	https://icyphox.sh/blog/ig-opsec	Instagram OPSEC	\N	\N	\N	2019-12-02
657	https://icyphox.sh/blog/save-org	Save .ORG!	\N	\N	\N	2019-11-23
658	https://icyphox.sh/blog/2019-11-16	Status update	\N	\N	\N	2019-11-16
659	https://icyphox.sh/blog/irc-for-dms	IRC for DMs	\N	\N	\N	2019-11-03
660	https://icyphox.sh/blog/intel-conundrum	The intelligence conundrum	\N	\N	\N	2019-10-28
661	https://icyphox.sh/blog/hacky-scripts	Hacky scripts	\N	\N	\N	2019-10-24
662	https://icyphox.sh/blog/2019-10-16	Status update	\N	\N	\N	2019-10-16
664	https://icyphox.sh/blog/digital-minimalism	Thoughts on digital minimalism	\N	\N	\N	2019-10-05
665	https://icyphox.sh/blog/2019-09-27	Status update	\N	\N	\N	2019-09-27
666	https://icyphox.sh/blog/2019-09-17	Status update	\N	\N	\N	2019-09-17
667	https://icyphox.sh/blog/disinfo	Disinformation demystified	\N	\N	\N	2019-09-10
668	https://icyphox.sh/blog/mailserver	Setting up my personal mailserver	\N	\N	\N	2019-08-15
669	https://icyphox.sh/blog/fb50	Picking the FB50 smart lock (CVE-2019-13143)	\N	\N	\N	2019-08-05
670	https://icyphox.sh/blog/rop-on-arm	Return Oriented Programming on ARM (32-bit)	\N	\N	\N	2019-06-06
671	https://icyphox.sh/blog/my-setup	My setup	\N	\N	\N	2019-05-13
672	https://icyphox.sh/blog/python-for-re-1	Python for Reverse Engineering	\N	\N	\N	2019-02-08
673	https://royniang.com/fastmail_and_9front.html	Fastmail and 9front	\N	\N	\N	2021-01-15
674	https://royniang.com/scrawl_01y06.html	Scrawl 01Y06	\N	\N	\N	2020-12-08
675	https://royniang.com/scrawl_01y02.html	Scrawl 01Y02	\N	\N	\N	2020-12-04
684	https://royniang.com/miminaga.html	New Qt home	\N	\N	\N	2020-10-10
677	https://royniang.com/xok9.html	XOK9 Laptop	\N	\N	\N	2021-02-11
678	https://royniang.com/haiku_os.html	Easy computing	\N	\N	\N	2020-12-08
681	https://royniang.com/sf_guro.html	Almost done with the lowercase alphabet	\N	\N	\N	2020-10-31
679	https://royniang.com/patience.html	Patience (Daniel Clowes, 2016)	\N	\N	\N	2020-11-01
682	https://royniang.com/gemini.html	Testing microblogging with gemini	\N	\N	\N	2020-10-28
676	https://royniang.com/type_design.html	Learning hinting	\N	\N	\N	2020-10-22
703	https://royniang.com/intrfc.html	INTRFC.com is live	\N	\N	\N	2020-05-13
707	https://royniang.com/japanese.html	ガロ	\N	\N	\N	2020-03-31
685	https://royniang.com/practice.html	Began working on the uppercase	\N	\N	\N	2020-10-01
686	https://royniang.com/practice.html	Better ascenders and descenders	\N	\N	\N	2020-10-01
690	https://royniang.com/practice.html	First glyphs	\N	\N	\N	2020-10-01
708	https://royniang.com/library.html	ほんやら洞のべんさん	\N	\N	\N	2020-03-27
709	https://royniang.com/computers.html	Bombed shell	\N	\N	\N	2020-03-24
705	https://royniang.com/illustration.html	HyperCard portrait	\N	\N	\N	2020-05-04
692	https://royniang.com/cooking_tools.html	Hario V60	\N	\N	\N	2020-09-23
693	https://royniang.com/watching.html	絞死刑 (大島 渚, 1968)	\N	\N	\N	2020-09-19
694	https://royniang.com/kiroku.html	Mémoires	\N	\N	\N	2020-09-17
695	https://royniang.com/language.html	Design and communication	\N	\N	\N	2020-09-16
713	https://royniang.com/cameras.html	Leica M5	\N	\N	\N	2020-03-12
714	https://royniang.com/roy_niang.html	Out of focus	\N	\N	\N	2020-03-11
697	https://royniang.com/9front.html	Stacking	\N	\N	\N	2020-09-02
698	https://royniang.com/programming.html	Ken Thompson and Dennis Ritchie	\N	\N	\N	2020-08-27
699	https://royniang.com/sam.html	Navigation	\N	\N	\N	2020-08-07
700	https://royniang.com/photography.html	Selfportrait	\N	\N	\N	2020-07-30
701	https://royniang.com/rio.html	Busy 9front session	\N	\N	\N	2020-07-19
710	https://royniang.com/edc.html	Busted Moleskine	\N	\N	\N	2020-03-21
711	https://royniang.com/reading.html	Lockdown cleaning	\N	\N	\N	2020-03-19
696	https://royniang.com/keyboards.html	RAMA M10-C	\N	\N	\N	2020-03-17
712	https://royniang.com/keyboards.html	The Pebbles keyboard	\N	\N	\N	2020-03-17
715	https://royniang.com/street.html	Octopus	\N	\N	\N	2019-10-03
716	https://royniang.com/street.html	Goldfishes	\N	\N	\N	2019-10-03
717	https://royniang.com/street.html	Summertime umbrella	\N	\N	\N	2019-10-03
718	https://royniang.com/street.html	Girl playing with her dog	\N	\N	\N	2019-10-03
719	https://royniang.com/street.html	iPad sunshade	\N	\N	\N	2019-10-03
722	https://royniang.com/communities.html	Joined Merveilles	\N	\N	\N	2019-09-25
723	https://royniang.com/nature.html	Riverside at La Réole	\N	\N	\N	2019-08-02
724	https://royniang.com/nature.html	Hidden house at La Réole	\N	\N	\N	2019-08-02
725	https://royniang.com/nature.html	Abandoned building at La Réole	\N	\N	\N	2019-08-02
691	https://royniang.com/diary.html	Alto getting used to his new home	\N	\N	\N	2019-08-01
702	https://royniang.com/diary.html	Maurane preparing her next movie	\N	\N	\N	2019-08-01
721	https://royniang.com/street.html	Bicycle kids	\N	\N	\N	2019-10-03
704	https://royniang.com/diary.html	End of the lockdown	\N	\N	\N	2019-08-01
706	https://royniang.com/diary.html	Annoying Alto during lockdown	\N	\N	\N	2019-08-01
734	https://simone.computer/#/blog	The Mascot	\N	\N	\N	2021-01-29
729	https://crlf.site/log/notes/200720-comments/	Comments powered by Remark42	\N	\N	\N	2020-07-20
730	https://crlf.site/log/notes/200624-comments/	Choosing comments for this blog	\N	\N	\N	2020-06-24
731	https://crlf.site/log/notes/200616-links/	How to improve your handwriting	\N	\N	\N	2020-06-16
732	https://crlf.site/log/notes/200530-links/	Notebooks and paper reviews	\N	\N	\N	2020-05-30
733	https://crlf.site/log/notes/200430-inks/	Fountain pen ink properties	\N	\N	\N	2020-04-30
735	https://simply.personal.jenett.org/in-the-mundane/	in the mundane	\N	\N	\N	2021-03-13
736	http://q.pfiffer.org/posts/2021-02-18-To_Know_A_Place.html	 Knowing A Place	\N	\N	\N	2021-02-18
737	http://q.pfiffer.org/posts/2021-01-03-2020_in_review.html	 2020 In Review	\N	\N	\N	2021-01-03
738	http://q.pfiffer.org/posts/2020-10-22-Canyonlands.html	 A Canyonlands Figure-8	\N	\N	\N	2020-10-22
739	http://q.pfiffer.org/posts/2020-04-23-Personal_Gentoo_Overlay.html	 Building a Personal Gentoo Overlay	\N	\N	\N	2020-04-23
740	http://q.pfiffer.org/posts/2020-04-03-MulletCache.html	 MulletCache	\N	\N	\N	2020-04-03
741	http://q.pfiffer.org/posts/2020-03-25-Setjmp_Primer.html	 Setjmp/Longjmp Exception Handling in C	\N	\N	\N	2020-03-25
742	http://q.pfiffer.org/posts/2020-03-12-A_Random_Python_Timezone_Bug.html	 A Random Python Timezone Bug	\N	\N	\N	2020-03-12
744	http://q.pfiffer.org/posts/2020-02-27-JSON_Aggregates.html	 Django Aggregates Over JSONB	\N	\N	\N	2020-02-27
745	http://q.pfiffer.org/posts/2020-02-13-MR2_FireSale.html	 The Great MR2 FireSale	\N	\N	\N	2020-02-13
746	http://q.pfiffer.org/posts/2020-01-28-Local_Bad_Times_Ideas.html	 Local Bad Times Ideas	\N	\N	\N	2020-01-28
747	http://q.pfiffer.org/posts/2020-01-03-2019_in_review.html	 2019 In Review	\N	\N	\N	2020-01-03
748	http://q.pfiffer.org/posts/2019-12-03-Python_Threading_Locks.html	 Python 2 Threading Primitives, Locks and Events	\N	\N	\N	2019-12-03
749	http://q.pfiffer.org/posts/2019-08-29-Camping_plus_others_megamix.html	 Camping + Others Megamix	\N	\N	\N	2019-08-29
750	http://q.pfiffer.org/posts/2019-05-12-Emerald_Outback_2019.html	 Oregon Emerald Outback 2019	\N	\N	\N	2019-05-12
751	http://q.pfiffer.org/posts/2019-04-07-Moab_2019.html	 Moab 2019	\N	\N	\N	2019-04-07
752	http://q.pfiffer.org/posts/2019-03-26-SE_Asia_Retrospect_2.html	 SE Asia Dubai, Nepal	\N	\N	\N	2019-03-26
753	http://q.pfiffer.org/posts/2019-03-25-SE_Asia_Retrospect.html	 SE Asia Guangzhou and Pakistan	\N	\N	\N	2019-03-25
754	http://q.pfiffer.org/posts/2019-03-24-2018_in_review.html	 2018 In Review	\N	\N	\N	2019-03-24
755	http://q.pfiffer.org/posts/2018-08-15-Outback_2018.html	 Oregon Outback 2018	\N	\N	\N	2018-08-15
756	http://q.pfiffer.org/posts/2018-03-28-Track_goals_2018.html	 Cycling Goals 2018	\N	\N	\N	2018-03-28
757	http://q.pfiffer.org/posts/2018-01-05-2017_in_review.html	 2017 In Review	\N	\N	\N	2018-01-05
758	http://q.pfiffer.org/posts/2017-12-05-Augment_vs_Rewrite.html	 Augment vs. Rewrite	\N	\N	\N	2017-12-05
760	http://q.pfiffer.org/posts/2017-09-30-Bug_Story_1.html	 Lets Talk About a Bug	\N	\N	\N	2017-09-30
761	http://q.pfiffer.org/posts/2016-12-31-2016_in_review.html	 2016 In Review	\N	\N	\N	2016-12-31
762	http://q.pfiffer.org/posts/2016-04-25-Camping_checklist.html	 Camping Checklist	\N	\N	\N	2016-04-25
763	http://q.pfiffer.org/posts/2015-12-30-2015_in_review.html	 2015 In Review	\N	\N	\N	2015-12-30
764	http://q.pfiffer.org/posts/2015-07-18-Simple_image_and_audio.html	 Simple image and audio wth FFMPEG	\N	\N	\N	2015-07-18
765	http://q.pfiffer.org/posts/2015-06-04-256_Colors_weechat.html	 256 Colors in weechat-curses	\N	\N	\N	2015-06-04
766	http://q.pfiffer.org/posts/2015-01-01-2014_in_review.html	 2014 In Review	\N	\N	\N	2015-01-01
767	http://q.pfiffer.org/posts/2014-09-28-graphs_pt1.html	 Fun with Graphs part 1 Getting Started	\N	\N	\N	2014-09-28
768	http://q.pfiffer.org/posts/2014-09-17-Last_Day.html	 Last Day	\N	\N	\N	2014-09-17
769	http://q.pfiffer.org/posts/2014-09-10-Seven_Star_Mountain.html	 Seven Star Mountain	\N	\N	\N	2014-09-10
770	http://q.pfiffer.org/posts/2014-09-06-Street_Fightin.html	 Street Fightin	\N	\N	\N	2014-09-06
771	http://q.pfiffer.org/posts/2014-09-05-Bikes.html	 Bikes	\N	\N	\N	2014-09-05
772	http://q.pfiffer.org/posts/2014-09-03-Blood.html	 Blood	\N	\N	\N	2014-09-03
773	http://q.pfiffer.org/posts/2014-09-01-Wander.html	 Wander	\N	\N	\N	2014-09-01
774	http://q.pfiffer.org/posts/2014-08-29-Market_Forces.html	 Market Forces	\N	\N	\N	2014-08-29
775	http://q.pfiffer.org/posts/2014-08-29-Panic_Measures.html	 Panic Measures	\N	\N	\N	2014-08-29
776	http://q.pfiffer.org/posts/2014-08-26-Escape_Sling.html	 Escape Sling	\N	\N	\N	2014-08-26
777	http://q.pfiffer.org/posts/2014-02-10-Erlang_port_drivers.html	 Erlang port driver pitfalls	\N	\N	\N	2014-02-10
778	http://q.pfiffer.org/posts/2014-01-01-2013_in_review.html	 2013 In Review	\N	\N	\N	2014-01-01
779	http://q.pfiffer.org/posts/2013-12-16-DNSMasq_setup.html	 Sane dnsmasq setup	\N	\N	\N	2013-12-16
781	http://q.pfiffer.org/posts/2013-11-16-Listserve_Postmortem.html	 Listserve Post-mortem	\N	\N	\N	2013-11-16
782	http://q.pfiffer.org/posts/2013-11-06-2013_kvm_coreos.html	 KVM, CoreOS and LVM	\N	\N	\N	2013-11-06
783	http://q.pfiffer.org/posts/2013-10-28-Hong_Kong_Day_6.html	 Hong Kong Day 6	\N	\N	\N	2013-10-28
784	http://q.pfiffer.org/posts/2013-10-27-Hong_Kong_Day_5.html	 Hong Kong Day 5	\N	\N	\N	2013-10-27
785	http://q.pfiffer.org/posts/2013-10-26-Hong_Kong_Day_4.html	 Hong Kong Day 4	\N	\N	\N	2013-10-26
786	http://q.pfiffer.org/posts/2013-10-25-Hong_Kong_Day_3.html	 Hong Kong Day 3	\N	\N	\N	2013-10-25
787	http://q.pfiffer.org/posts/2013-10-24-Hong_Kong_Day_2.html	 Hong Kong Day 2	\N	\N	\N	2013-10-24
788	http://q.pfiffer.org/posts/2013-10-23-Hong_Kong_Day_1.html	 Hong Kong Day 1	\N	\N	\N	2013-10-23
789	http://q.pfiffer.org/posts/2013-10-21-Hong_Kong_Day_0.html	 Hong Kong Day 0	\N	\N	\N	2013-10-21
790	http://q.pfiffer.org/posts/2013-10-19-first.html	 Initial Post	\N	\N	\N	2013-10-19
791	https://www.edwinwenink.xyz/posts/54-a_plain_text_writing_convention/	Two perspectives on a plain-text writing convention	\N	\N	\N	2021-03-12
792	https://www.edwinwenink.xyz/posts/53-update_kobo_annotation/	Extracting Kobo EPUB Annotations	\N	\N	\N	2021-01-08
793	https://www.edwinwenink.xyz/posts/52-bayesian_terminology/	On Bayesian likelihood	\N	\N	\N	2020-09-01
794	https://www.edwinwenink.xyz/posts/51-python_secondary_sorting/	Secondary sorting in Python	\N	\N	\N	2020-07-29
797	https://www.edwinwenink.xyz/posts/48-vim_fast_creating_and_linking_notes/	Creating and linking Zettelkasten notes in Vim	\N	\N	\N	2020-04-15
798	https://www.edwinwenink.xyz/posts/47-tilde_server/	Setting up your own tilde club (UNIX)	\N	\N	\N	2020-04-11
799	https://www.edwinwenink.xyz/posts/46-ai_and_healthcare/	Tech giants will battle over your health data	\N	\N	\N	2020-03-17
800	https://www.edwinwenink.xyz/posts/45-raven_paradox_inductive_inference/	The Raven Paradox of Inductive Reasoning	\N	\N	\N	2020-02-11
801	https://materialfuture.net/posts/blog/2021-4-14-odysee-lbry/	I've Created A Odysee Channel	\N	\N	\N	2021-04-14
802	https://materialfuture.net/posts/blog/2021-3-02-general-updates/	General Updates - March 2nd 2021	\N	\N	\N	2021-03-02
803	https://materialfuture.net/posts/servers/centos-rehl-talk/	CentOS - RHEL Talk	\N	\N	\N	2021-02-04
804	https://materialfuture.net/posts/blog/music-update/	Update: Music 2021	\N	\N	\N	2021-01-26
805	https://materialfuture.net/posts/blog/activitypub-migration/	Online Purge - Meaningful Interaction	\N	\N	\N	2021-01-12
806	https://materialfuture.net/posts/blog/2020-year-end-retrospective/	2020 Year-End Retrospective	\N	\N	\N	2021-01-07
807	https://materialfuture.net/posts/books/books-completed-2020/	2020 - Books Completed + Retrospective	\N	\N	\N	2020-12-29
808	https://materialfuture.net/posts/games/games-completed-retrospective/	2020 - Games Completed + Retrospective	\N	\N	\N	2020-12-29
809	https://materialfuture.net/posts/music/sin-album/	Sin - Album	\N	\N	\N	2020-12-21
810	https://materialfuture.net/posts/blog/music-page/	New Music Page	\N	\N	\N	2020-12-16
811	https://materialfuture.net/posts/blog/services-update/	Services and Site Update - December 2020	\N	\N	\N	2020-12-16
812	https://materialfuture.net/posts/videos/experimental-videos-mandelbrot/	Experimental Videos - Mandelbrot Set 4K	\N	\N	\N	2020-12-16
813	https://materialfuture.net/posts/music/streaming-services/	Streaming Services and Listening To Music	\N	\N	\N	2020-11-27
815	https://materialfuture.net/posts/servers/2020-11-6-learn-netdata/	Network Monitoring Via NetData	\N	\N	\N	2020-11-06
816	https://materialfuture.net/posts/blog/2020-11-5-youtube-videos/	My YouTube Channel	\N	\N	\N	2020-11-05
817	https://materialfuture.net/posts/games/gameboy-sprite-sheet-assets-itch/	GameBoy Sprite Sheets and Assets	\N	\N	\N	2020-10-21
818	https://materialfuture.net/posts/blog/2020-10-2-resumes/	Setting Up A Resume With LaTeX	\N	\N	\N	2020-10-01
819	https://materialfuture.net/posts/blog/rss/	What IS RSS?	\N	\N	\N	2020-09-22
820	https://materialfuture.net/posts/games/new-games-category/	New Games Category	\N	\N	\N	2020-09-10
821	https://materialfuture.net/posts/blog/updates/	September 2020 Update	\N	\N	\N	2020-09-09
822	https://materialfuture.net/posts/blog/ideal-phone/	My Version Of An Ideal Phone	\N	\N	\N	2020-08-23
823	https://materialfuture.net/posts/blog/2020-8-18-emacs-irc/	Emacs - IRC and Other Stuff	\N	\N	\N	2020-08-18
825	https://materialfuture.net/posts/blog/2020-07-org-mode/	What Is Org-Mode?	\N	\N	\N	2020-07-22
826	https://materialfuture.net/posts/blog/2020-06-tools-workflows/	Tools and Workflows I Use	\N	\N	\N	2020-06-27
827	https://materialfuture.net/posts/blog/2020-06-current/	Current Projects And Current Roadmap	\N	\N	\N	2020-06-16
828	https://materialfuture.net/posts/blog/2020-06-ipfs/	IPFS For An Easy P2P Network	\N	\N	\N	2020-06-16
829	https://materialfuture.net/posts/books/practical-c-programming/	Practical C Programming - Retrospective	\N	\N	\N	2020-06-04
830	https://materialfuture.net/posts/blog/2020-05-git-revamp/	Self-Hosting Git Client for a Decentralized Future	\N	\N	\N	2020-05-25
831	https://materialfuture.net/posts/blog/2020-04-email-server/	Creating A Personal Email Server With Postfix + Dovecot	\N	\N	\N	2020-04-17
832	https://materialfuture.net/posts/blog/2020-03-emacs/	Why I Use Emacs, And Why It Matters	\N	\N	\N	2020-03-28
833	https://materialfuture.net/posts/blog/2020-03-current-goals/	Current Goals - What I'm Working On	\N	\N	\N	2020-03-12
834	https://materialfuture.net/posts/links/2020-02-links/	Links for February 2020	\N	\N	\N	2020-02-19
835	https://materialfuture.net/posts/blog/2020-roadmap-and-restrospective/	2020 Roadmap and 2019 Retrospective	\N	\N	\N	2020-02-05
836	https://materialfuture.net/posts/blog/2020-01-site-redesign/	Redesigning My Site + Minimalism On The Web	\N	\N	\N	2020-01-29
837	https://materialfuture.net/posts/links/2020-01-links/	Links for January 2020	\N	\N	\N	2020-01-15
838	https://materialfuture.net/posts/links/2019-12-links/	Links for December 2019	\N	\N	\N	2019-12-18
839	https://materialfuture.net/posts/links/2019-11-links/	Links for November 2019	\N	\N	\N	2019-11-15
840	https://travisshears.com/snippets/org_roam_capture_templates/	Org-Roam capture templates	\N	\N	\N	2021-04-06
841	https://travisshears.com/blog/delete_all_my_friends/	delete all my duolingo friends	\N	\N	\N	2021-03-22
842	https://travisshears.com/snippets/restart-nginx/	Restart Nginx	\N	\N	\N	2021-02-07
843	https://travisshears.com/snippets/run-changed-tests/	Run Changed Tests	\N	\N	\N	2021-02-01
844	https://travisshears.com/blog/reef-plan-and-first-day/	getting started with reefing	\N	\N	\N	2021-01-30
845	https://travisshears.com/blog/first-tank/	my start in the aquarium hobby	\N	\N	\N	2021-01-28
846	https://travisshears.com/blog/scheinbertspitze-tour/	scheinbertspitze tour	\N	\N	\N	2021-01-17
847	https://travisshears.com/blog/schoenalmjoch-tour/	schönalmjoch tour	\N	\N	\N	2021-01-14
848	https://travisshears.com/blog/unteres-lichteck-ridge-tour/	unteres lichteck ridge tour	\N	\N	\N	2021-01-13
850	https://travisshears.com/snippets/strip-audio-from-video-file/	Strip Audio From Video File	\N	\N	\N	2021-01-09
851	https://travisshears.com/blog/garmisch-piste-tour/	garmisch piste tour	\N	\N	\N	2021-01-09
852	https://travisshears.com/blog/winter-hikes/	winter hikes	\N	\N	\N	2021-01-07
853	https://travisshears.com/blog/weibel_kante/	weibel kante	\N	\N	\N	2020-12-25
854	https://travisshears.com/blog/slovenia_trip/	slovenia trip	\N	\N	\N	2020-12-25
855	https://travisshears.com/snippets/gzip-existing-tar/	gzipping an existing tar	\N	\N	\N	2020-10-14
856	https://travisshears.com/blog/instagram-archive/	instagram archive	\N	\N	\N	2020-10-01
857	https://travisshears.com/map/	Map	\N	\N	\N	2020-09-28
858	https://travisshears.com/blog/why_small_images_plus_folderpics_demo/	small images + folderpics demo	\N	\N	\N	2020-09-14
859	https://travisshears.com/blog/micro-blog-plugin-demo/	micro blog plugin demo	\N	\N	\N	2020-08-23
861	https://travisshears.com/snippets/tmux-plus-screen/	tmux plus screen	\N	\N	\N	2020-08-17
862	https://travisshears.com/snippets/npm-i-vs-npm-ci/	npm i vs npm ci	\N	\N	\N	2020-08-17
863	https://travisshears.com/snippets/prevent-vim-auto-new-line/	Prevent Vim Auto New Lines	\N	\N	\N	2020-08-13
864	https://travisshears.com/snippets/auto-find-ssh-keys/	Auto Find SSH Keys	\N	\N	\N	2020-08-12
865	https://travisshears.com/snippets/short_server_names/	Using short server names	\N	\N	\N	2020-08-12
866	https://travisshears.com/snippets/disable_user/	Disable User	\N	\N	\N	2020-08-11
867	https://travisshears.com/blog/holland/	holland	\N	\N	\N	2020-08-10
869	https://travisshears.com/blog/year-progress/	year-progress demo	\N	\N	\N	2020-07-26
870	https://travisshears.com/blog/archiving-corona-cal/	archiving corona cal	\N	\N	\N	2020-07-23
871	https://travisshears.com/blog/camping-in-mayrhofen/	camping in mayrhofen	\N	\N	\N	2020-07-21
872	https://travisshears.com/blog/peertube-instance-launch/	peertube instance launch	\N	\N	\N	2020-07-20
873	https://travisshears.com/tutorials/basic-vps-setup/	Basic VPS Setup	\N	\N	\N	2020-07-20
874	https://travisshears.com/snippets/automatic_tmux_session_names/	Automatic tmux session names	\N	\N	\N	2020-07-13
875	https://travisshears.com/blog/weekend-in-frankenjura/	weekend in frankenjura	\N	\N	\N	2020-07-05
876	https://travisshears.com/snippets/file-search-plus-size/	File Search Plus Size	\N	\N	\N	2020-07-02
877	https://travisshears.com/snippets/mass-mkv-to-mp4-ffmpeg/	Convert .mkv to .mp4	\N	\N	\N	2020-06-30
878	https://travisshears.com/snippets/wipe-mongo-collection/	Wipe a Mongo Collection	\N	\N	\N	2020-06-29
879	https://travisshears.com/snippets/extending-gpg-key/	Extending GPG Keys	\N	\N	\N	2020-06-22
880	https://travisshears.com/snippets/moving-gpg-keys/	Moving GPG Keys	\N	\N	\N	2020-06-20
882	https://travisshears.com/snippets/git-force-push-with-lease/	Force push with --lease for safety	\N	\N	\N	2020-06-10
883	https://travisshears.com/tutorials/adding-api-docs/	Adding Documentation to an API	\N	\N	\N	2020-06-08
884	https://travisshears.com/snippets/open-notion-links/	Open Notion Links	\N	\N	\N	2020-06-07
885	https://travisshears.com/blog/personal-site-walk-through/	personal site walk through	\N	\N	\N	2020-06-01
886	https://travisshears.com/snippets/twtxt-config/	Twtxt Config Alias	\N	\N	\N	2020-05-30
887	https://travisshears.com/snippets/jsx-comments/	JSX Comments	\N	\N	\N	2020-05-26
888	https://travisshears.com/blog/first-svelte-app/	first svelte app	\N	\N	\N	2020-05-02
889	https://travisshears.com/blog/start-teaching/	teaching javascript	\N	\N	\N	2020-05-01
890	https://travisshears.com/tutorials/html-js-vs-code-setup/	HTML + JavaScript VS Code Setup	\N	\N	\N	2020-05-01
891	https://travisshears.com/tutorials/pull-request-homework-workflok/	Pull Request Homework Workflow	\N	\N	\N	2020-05-01
892	https://travisshears.com/tutorials/fromat-html-js-with-vs-code/	Format HTML & JavaScript with VS Code	\N	\N	\N	2020-05-01
893	https://travisshears.com/tutorials/protected-github-branches/	Protected Github Branches	\N	\N	\N	2020-05-01
894	https://travisshears.com/blog/sunrise/	project sunrise	\N	\N	\N	2020-04-30
895	https://travisshears.com/snippets/k8s-reg-secret/	Creating K8s registry secrets	\N	\N	\N	2020-03-29
896	https://travisshears.com/blog/galtenberg-ski-tour/	galtenberg ski tour	\N	\N	\N	2020-03-17
897	https://travisshears.com/blog/kochel-first-climb/	first climb kochel	\N	\N	\N	2020-03-16
899	https://travisshears.com/snippets/sending-files-locally/	Sending Files Locally	\N	\N	\N	2020-03-05
900	https://travisshears.com/snippets/vim-spelling/	Vim Spelling	\N	\N	\N	2020-03-05
901	https://travisshears.com/blog/bayrischzell-cross-country/	cross-country skiing	\N	\N	\N	2020-03-02
902	https://travisshears.com/snippets/git-repo-backup/	Git Repo Backup	\N	\N	\N	2020-02-23
903	https://travisshears.com/blog/rofanspitze-ski-tour/	rofanspitze ski tour	\N	\N	\N	2020-02-19
904	https://travisshears.com/blog/lenggries-avalanche-course/	lenggries avalanche course	\N	\N	\N	2020-02-07
905	https://travisshears.com/blog/mountain-safety-reminder/	mountain safety reminder	\N	\N	\N	2020-02-06
906	https://travisshears.com/blog/scuol-2020/	scuol hütte	\N	\N	\N	2020-02-03
907	https://travisshears.com/snippets/vim-fzf-plugin/	Vim FZF Plugin	\N	\N	\N	2020-01-30
908	https://travisshears.com/snippets/jq-command-line-json-processor/	JQ JSON processor	\N	\N	\N	2020-01-30
909	https://travisshears.com/snippets/emoji-commit-messages/	Emoji Commit Messages	\N	\N	\N	2020-01-28
910	https://travisshears.com/snippets/watch-command/	Watch Command	\N	\N	\N	2020-01-27
911	https://travisshears.com/snippets/move-file-range/	Move File Range	\N	\N	\N	2020-01-27
912	https://travisshears.com/snippets/git-zsh-plugin/	ZSH git plugin	\N	\N	\N	2020-01-27
913	https://travisshears.com/blog/start-of-ski-season/	start of ski season	\N	\N	\N	2020-01-12
915	https://travisshears.com/snippets/vim-placeholders/	Custom placeholders solution	\N	\N	\N	2020-01-12
916	https://travisshears.com/snippets/vim-arglist/	Super powers of the arg list	\N	\N	\N	2020-01-11
917	https://travisshears.com/snippets/vim-ripgrep-custom/	Custom ripgrep	\N	\N	\N	2020-01-11
918	https://travisshears.com/snippets/vim-jumps-fix/	Remapping ability to jump	\N	\N	\N	2020-01-11
919	https://travisshears.com/snippets/vim-substitute/	Replae <s> with spell and nohl	\N	\N	\N	2020-01-11
920	https://travisshears.com/snippets/vim-window-resize/	Resizing vim windows with arrow keys	\N	\N	\N	2020-01-11
921	https://travisshears.com/snippets/ffmpeg-screen-casts/	Uploadable FFMPEG screen casts	\N	\N	\N	2020-01-11
922	https://travisshears.com/snippets/vim-dictionary/	Vim dictionary lookup command	\N	\N	\N	2020-01-11
923	https://travisshears.com/blog/return-of-snippets/	the return of snippets	\N	\N	\N	2020-01-11
924	https://travisshears.com/snippets/gitlab-runners-config/	Configure more gitlab runners	\N	\N	\N	2020-01-11
925	https://travisshears.com/snippets/git-who-last/	Who last edited a file	\N	\N	\N	2020-01-11
926	https://travisshears.com/snippets/git-log-grep/	Search git logs with grep	\N	\N	\N	2020-01-11
927	https://travisshears.com/snippets/git-revert-branch/	Revert an entire feature branch	\N	\N	\N	2020-01-11
929	https://travisshears.com/snippets/find-folder/	Find that lost folder	\N	\N	\N	2020-01-11
932	https://travisshears.com/snippets/git-nocommit-merge/	Soft merge	\N	\N	\N	2020-01-11
933	https://travisshears.com/snippets/tmux-new/	Mutliplex all the shells	\N	\N	\N	2020-01-11
934	https://travisshears.com/snippets/git-rebase/	Rewrite history git history	\N	\N	\N	2020-01-11
935	https://travisshears.com/snippets/git-revert/	Oops I take that back 	\N	\N	\N	2020-01-11
936	https://travisshears.com/snippets/silver-searcher/	Silver Searcher, it's like grep but faster and easier	\N	\N	\N	2020-01-11
937	https://travisshears.com/snippets/pass-search/	Search Pass from password	\N	\N	\N	2020-01-11
938	https://travisshears.com/snippets/pass-bulk-import/	Bulk import into Pass	\N	\N	\N	2020-01-11
939	https://travisshears.com/snippets/pass-copy/	Copy password from Pass to the keyboard	\N	\N	\N	2020-01-11
940	https://travisshears.com/snippets/git-prev-commit-changes/	See previous commit changes	\N	\N	\N	2020-01-11
941	https://travisshears.com/snippets/aws-s3-sync/	Aws S3 Sync	\N	\N	\N	2020-01-11
943	https://travisshears.com/snippets/pretty-print-json/	Pretty print JSON	\N	\N	\N	2020-01-11
944	https://travisshears.com/snippets/who-is-using-that-port/	Who Is Using that damn port? (Mac)	\N	\N	\N	2020-01-11
945	https://travisshears.com/blog/climbing-grade-converter-tool/	climbing grade converter tool	\N	\N	\N	2019-10-19
946	https://travisshears.com/blog/arco/	arco	\N	\N	\N	2019-10-09
947	https://travisshears.com/blog/lofoten/	lofoten	\N	\N	\N	2019-09-29
948	https://travisshears.com/blog/laberdolomiten/	laberdolomiten	\N	\N	\N	2019-09-24
949	https://travisshears.com/blog/hacking-health/	hacking health in zurich	\N	\N	\N	2019-09-23
950	https://travisshears.com/blog/iceland-2019/	iceland	\N	\N	\N	2019-09-02
951	https://travisshears.com/blog/frauenwasserl/	frauenwasserl	\N	\N	\N	2019-08-19
952	https://travisshears.com/blog/karwendelspitze-2019/	karwendelspitze	\N	\N	\N	2019-07-21
953	https://travisshears.com/blog/scanning-for-meaning/	scanning for meaning	\N	\N	\N	2019-07-14
954	https://travisshears.com/blog/canada-2019/	canada	\N	\N	\N	2019-07-12
955	https://travisshears.com/blog/switzerland-liechtenstein-2019/	switzerland + liechtenstein	\N	\N	\N	2019-07-05
956	https://travisshears.com/blog/armycookbot/	army cook bot	\N	\N	\N	2019-07-01
957	https://travisshears.com/blog/klettergarten-bad-heilbrunn/	klettergarten bad heilbrunn	\N	\N	\N	2019-05-19
958	https://travisshears.com/blog/reviving-dotfiles/	reviving dotfiles	\N	\N	\N	2019-04-29
959	https://travisshears.com/blog/gitlab-npm-package-setup/	git hosted npm packages	\N	\N	\N	2019-04-17
960	https://travisshears.com/blog/corsica-2019/	corsica	\N	\N	\N	2019-04-10
961	https://travisshears.com/blog/local-pijul-with-docker/	try pijul with docker	\N	\N	\N	2019-04-01
962	https://travisshears.com/corona_cal/	\N	\N	\N	\N	0001-01-01
963	https://travisshears.com/version/	\N	\N	\N	\N	0001-01-01
964	https://travisshears.com/gpg/	GPG	\N	\N	\N	0001-01-01
965	https://travisshears.com/micro-blog/	Micro Blog	\N	\N	\N	0001-01-01
996	https://inqlab.net/rösti.html	Rösti	\N	\N	\N	2021-02-04
967	https://ix5.org/thoughts/2017/venezuela-presentation/	Venezuela: Un país de múltiples facetas	\N	\N	\N	2019-01-19
968	https://ix5.org/thoughts/2017/grundgesetz-article-9/	Article 9: Freedom of coalition	\N	\N	\N	2017-04-03
969	https://ix5.org/thoughts/2017/grundgesetz-article-8/	Article 8: Freedom of association	\N	\N	\N	2017-04-03
970	https://ix5.org/thoughts/2017/grundgesetz-article-7/	Article 7: School System	\N	\N	\N	2017-07-20
972	https://ix5.org/thoughts/2017/grundgesetz-article-5/	Article 5: Freedom of expression	\N	\N	\N	2017-07-20
973	https://ix5.org/thoughts/2017/grundgesetz-article-4/	Article 4: Freedom of Belief	\N	\N	\N	2017-07-20
974	https://ix5.org/thoughts/2017/grundgesetz-article-3/	Article 3: Equality	\N	\N	\N	2017-04-03
975	https://ix5.org/thoughts/2017/grundgesetz-article-2/	Article 2: Personal Freedoms	\N	\N	\N	2017-04-03
976	https://ix5.org/thoughts/2017/grundgesetz-article-1/	Article 1: Human Dignity and Rights	\N	\N	\N	2017-04-03
977	https://ix5.org/thoughts/2017/grundgesetz-beginning/	The Beginning	\N	\N	\N	2017-03-05
978	https://ix5.org/thoughts/2017/larry-wilmore-whca-2016/	“Yo Barry, you did it my nigga”	\N	\N	\N	2017-03-26
979	https://ix5.org/thoughts/2016/minimalism-is-for-suckers/	Minimalism is for suckers	\N	\N	\N	2017-03-02
980	https://ix5.org/thoughts/2015/donating-blood/	Donating blood	\N	\N	\N	2017-02-24
981	https://ix5.org/thoughts/2014/a-bit-of-wisdom/	A bit of wisdom	\N	\N	\N	2017-02-24
982	https://ix5.org/thoughts/2014/back-in-germany/	Back in Germany	\N	\N	\N	2017-02-24
983	https://ix5.org/thoughts/2014/2014-taiwan-bike-tour-travel-report/	2014 Taiwan bike tour travel report	\N	\N	\N	2018-01-27
984	https://ix5.org/thoughts/2014/changhua-county/	Changhua county	\N	\N	\N	2017-02-24
985	https://ix5.org/thoughts/2014/easy-going-on-little-liuciu-island/	Easy going on Little Liuciu Island	\N	\N	\N	2017-02-24
986	https://nor.the-rn.info/2021/04/09/building-norns-community/	Building “norns community”	\N	\N	\N	2021-04-09
987	https://nor.the-rn.info/2021/03/20/rounding-errors/	Rounding Errors	\N	\N	\N	2021-03-20
989	https://nor.the-rn.info/2020/12/29/the-eoy-info-sessions/	The EOY Info Sessions	\N	\N	\N	2020-12-29
990	https://nor.the-rn.info/2020/12/25/that-which-is-unique-breaks/	That Which is Unique, Breaks	\N	\N	\N	2020-12-25
991	https://nor.the-rn.info/2020/10/16/music-hackspace/	Music Hackspace	\N	\N	\N	2020-10-16
992	https://nor.the-rn.info/2020/09/29/pandemic-day-203-floyd-protests-day-127/	Pandemic Day 203 / Floyd Protests Day 127	\N	\N	\N	2020-09-29
993	https://nor.the-rn.info/2020/09/15/towards-the-polymyth/	Towards the Polymyth	\N	\N	\N	2020-09-15
994	https://nor.the-rn.info/2020/09/11/the-software-blues/	The Software Blues	\N	\N	\N	2020-09-11
995	https://nor.the-rn.info/2020/09/01/arcologies-covered-by-cdm/	arcologies Covered by CDM	\N	\N	\N	2020-09-01
997	https://inqlab.net/sky.html	Sky	\N	\N	\N	2020-09-09
998	https://inqlab.net/geopub-activitypub-for-content-curation.html	GeoPub: ActivityPub for content curation	\N	\N	\N	2020-04-06
999	https://inqlab.net/allegra-openengiadina.html	Allegra openEngiadina!	\N	\N	\N	2020-03-21
1000	https://inqlab.net/use-tor.html	Use Tor	\N	\N	\N	2020-03-20
1001	https://inqlab.net/a-primer-on-the-semantic-web-and-linked-data.html	A Primer on the Semantic Web and Linked Data	\N	\N	\N	2019-11-19
1003	https://inqlab.net/der-hase-und-der-igel.html	Der Hase und der Igel	\N	\N	\N	2019-09-14
1004	https://inqlab.net/large-underground-temple.html	Large Underground Temple	\N	\N	\N	2016-03-14
1005	https://inqlab.net/hong-kong-to-kunming.html	Hong Kong to Kunming	\N	\N	\N	2015-03-02
1006	https://inqlab.net/karawane.html	Karawane	\N	\N	\N	1916-02-05
1008	https://metasyn.pw/collections.html	5f97ccf1290b0a0a7ff5a95e	\N	\N	\N	2020-10-27
1009	https://metasyn.pw/hangul.html	5fb82d8526519b1134a64b54	\N	\N	\N	2020-11-20
1010	https://metasyn.pw/seedling.html	5fd07d52411b7550146a0c66	\N	\N	\N	2020-12-09
1011	https://metasyn.pw/raiu.html	6069181991aae3107ec3d119	\N	\N	\N	2021-04-04
1012	http://milofultz.com/2021/04/11/tiny-font-3-by-3	📕 Make A Tiny 3x3 Font	\N	\N	\N	2021-04-11
1013	http://milofultz.com/2021/03/06/sublime-keymap	Find and Remove Autocompletes in Sublime Text 3	\N	\N	\N	2021-03-06
1015	http://milofultz.com/2021/01/08/software	Apps, Software, and More That I Use Everyday	\N	\N	\N	2021-01-08
1016	http://milofultz.com/2021/01/06/reverse-horoscope	🌌 Reverse Horoscope - Find Out Your Real Birthday (JS)	\N	\N	\N	2021-01-06
1017	http://milofultz.com/2020/12/27/atlb-notes	📕 Algorithms To Live By - Book Notes	\N	\N	\N	2020-12-27
1018	http://milofultz.com/2020/12/13/aoc-day-13	Solution to Advent of Code 13 - LCM with Offsets	\N	\N	\N	2020-12-13
1019	http://milofultz.com/2020/12/01/advent-of-code	🧩 Advent Of Code 2020 - Solutions	\N	\N	\N	2020-12-01
1020	http://milofultz.com/2020/11/10/bytebeat	Bytebeat - Overview and How To Make/Record on OSX	\N	\N	\N	2020-11-10
1021	http://milofultz.com/2020/11/09/the-point-of-diminis	The point of diminishing returns is already here	\N	\N	\N	2020-11-09
1022	http://milofultz.com/2020/11/01/koi-koi-rules	Rules for Hanafuda game "Koi-Koi"	\N	\N	\N	2020-11-01
1023	http://milofultz.com/2020/10/31/tablatal-parser	📊 Tablatal Parser - Plaintext Database to JSON (Python)	\N	\N	\N	2020-10-31
1024	http://milofultz.com/2020/10/25/hiitimer	💻 HIITimer - Exercise Timer w/Routines and TTS (Python)	\N	\N	\N	2020-10-25
1025	http://milofultz.com/2020/10/21/html-css-js	HTML / CSS / JS Resources	\N	\N	\N	2020-10-21
1026	http://milofultz.com/2020/10/17/tod-python	💻 Tod - Plan and Manage Daily Tasks In The CLI (Python)	\N	\N	\N	2020-10-17
1027	http://milofultz.com/2020/10/16/friends-dont	Friends don't let friends look at pageviews	\N	\N	\N	2020-10-16
1028	http://milofultz.com/2020/10/12/track-python	💻 Track - Daily Journal and Log (Python)	\N	\N	\N	2020-10-12
1029	http://milofultz.com/2020/10/12/sleep-realms	🎧 Sleep Realms (Paulstretch)	\N	\N	\N	2020-10-12
1030	http://milofultz.com/2020/10/04/two-minute-rule	The Two-Minute Rule	\N	\N	\N	2020-10-04
1031	http://milofultz.com/2020/10/04/doing	Trying to become reacquainted with being bored	\N	\N	\N	2020-10-04
1032	http://milofultz.com/2020/09/30/evernote-images	💻 Maximize Evernote Storage Using Web Clipper (JS)	\N	\N	\N	2020-09-30
1034	http://milofultz.com/2020/09/23/mastodon	Mastodon	\N	\N	\N	2020-09-23
1035	http://milofultz.com/2020/09/01/domine	Domine (game from Hundred Rabbits)	\N	\N	\N	2020-09-01
1036	http://milofultz.com/2020/08/26/random-note	💻 Open A Random Note/Lo-Fi Idea Generator (Python)	\N	\N	\N	2020-08-26
1037	http://milofultz.com/2020/08/22/purple-rain-outro	🎼 Purple Rain Outro Transcription	\N	\N	\N	2020-08-22
1038	http://milofultz.com/2020/08/19/soulja-realms	🎧 Soulja Realms	\N	\N	\N	2020-08-19
1039	http://milofultz.com/2020/08/04/piu-piu-ringtone	🎧 Piu Piu ringtone but it's only Avgustina's laugh	\N	\N	\N	2020-08-04
1040	http://milofultz.com/2020/07/23/awfulizer	💻 Awfulizer - Make Surfing The Web Awful (Firefox)	\N	\N	\N	2020-07-23
1041	http://milofultz.com/2020/07/22/make-python-apps	Make Python 'Apps' and Shortcuts To Run Them on OSX	\N	\N	\N	2020-07-22
1042	http://milofultz.com/2020/07/18/programming-outline	Create a better program faster with an outline V2	\N	\N	\N	2020-07-18
1043	http://milofultz.com/2020/07/08/star-maker	💻 star_maker - a lo-fi ambient visual (Python)	\N	\N	\N	2020-07-08
1044	http://milofultz.com/2020/07/07/spacelove	🎧 spacelove.xm - Made using an old E-MAX sample	\N	\N	\N	2020-07-07
1045	http://milofultz.com/2020/07/03/wordsmash	💻 Wordsmash Explosion - Mastermind With Words (Python)	\N	\N	\N	2020-07-03
1046	http://milofultz.com/2020/07/02/bmcrawl	💻 Bookmark Crawler - Make Internet More Fun (Python)	\N	\N	\N	2020-07-02
1047	http://milofultz.com/2020/06/26/nobody-takes-advice	Nobody Takes Advice	\N	\N	\N	2020-06-26
1049	http://milofultz.com/2020/06/21/quantity-quality	Quality and quantity's relevance to critical feeling	\N	\N	\N	2020-06-21
1050	http://milofultz.com/2020/06/10/critical-feeling	Critical feeling is as important as critical thinking	\N	\N	\N	2020-06-10
1051	http://milofultz.com/2020/05/25/exercise-routine	Simple + Minimal Exercise Routine	\N	\N	\N	2020-05-25
1052	http://milofultz.com/2020/05/23/day-planner	🗺 Day planner based on location	\N	\N	\N	2020-05-23
1053	http://milofultz.com/2020/05/22/zettelkasten	I just found out about Zettelkasten	\N	\N	\N	2020-05-22
1054	http://milofultz.com/2020/05/22/keyboard-remapping	Keyboard Remapping on OSX - Adding the Insert Key	\N	\N	\N	2020-05-22
1055	http://milofultz.com/2020/05/22/just-in-case	Buying Things "Just In Case" vs. Real Estate	\N	\N	\N	2020-05-22
1056	http://milofultz.com/2020/05/17/adam-savage	The Adam Savage Trial Method	\N	\N	\N	2020-05-17
1057	http://milofultz.com/2020/05/01/old-internet	I Miss The Old Internet	\N	\N	\N	2020-05-01
1217	https://wiki.xxiivv.com/site/vertale.html	Meeting Andes	\N	\N	\N	2019-10-18
1117	https://natehn.com/posts/digital-security/	Notes on Digital Security	\N	\N	\N	2021-03-15
1094	https://irimi.one/music/slikback/	Slikback	\N	\N	\N	2021-04-18
1095	https://irimi.one/collage-poems/breath-of-fresh-air/	A Breath of Fresh Air	\N	\N	\N	2021-02-21
1096	https://irimi.one/posts/lieu/	Hello, Lieu!	\N	\N	\N	2021-02-14
1097	https://irimi.one/uses/software-setups/taskwarrior/	My Taskwarrior Setup	\N	\N	\N	2021-02-14
1098	https://irimi.one/music/aliceffekt/	Aliceffekt	\N	\N	\N	2021-02-06
1099	https://irimi.one/music/illeapolis-radio/	Mr. Roboto - Illeapolis Radio, Vol. 1	\N	\N	\N	2021-01-15
1100	https://irimi.one/music/professor-kliq/	Professor Kliq	\N	\N	\N	2021-01-04
1101	https://irimi.one/posts/motherplant/	motherplant	\N	\N	\N	2020-12-30
1102	https://irimi.one/music/sun23/	Zadig The Jasp - Sun 23	\N	\N	\N	2020-11-29
1103	https://irimi.one/posts/webring/	I’m on a Webring Now	\N	\N	\N	2020-11-14
1104	https://irimi.one/music/lone-electrone/	Lone Electrone	\N	\N	\N	2020-11-07
1105	https://irimi.one/collage-poems/jewelbox/	Like a Jewelbox in the Forest	\N	\N	\N	2020-10-31
1106	https://irimi.one/collage-poems/onethatlikestoread/	One That Likes to Read	\N	\N	\N	2020-10-31
1107	https://irimi.one/music/alpha-centauri/	Alicequests - Alpha Centauri	\N	\N	\N	2020-10-25
1108	https://irimi.one/music/50-tracks/	Netsh - 50 tracks to enhance your robotic implants	\N	\N	\N	2020-10-23
1109	https://irimi.one/posts/buying-music/	Buying Music Again	\N	\N	\N	2020-10-21
1110	https://irimi.one/music/keep-running/	V//Tomo - ♥K e e p Running♥	\N	\N	\N	2020-10-20
1112	https://irimi.one/collage-poems/forgotten/	He had forgotten all	\N	\N	\N	2020-10-13
1113	https://irimi.one/collage-poems/sameasyou/	Same as you	\N	\N	\N	2020-10-13
1114	https://irimi.one/stickers/proprietary-bullshit/	Proprietary Bullshit	\N	\N	\N	2020-09-18
1115	https://irimi.one/stickers/acab/	All Computers Are Broken	\N	\N	\N	2020-09-06
1116	https://irimi.one/stickers/fab-money/	If money can’t buy happiness then why is it so fabulous?	\N	\N	\N	2020-09-06
1118	https://natehn.com/posts/iphone-security/	Activist iPhone Security Guide	\N	\N	\N	2021-03-13
1119	https://natehn.com/library/	Library	\N	\N	\N	2021-02-28
1120	https://natehn.com/posts/2020/	Reflecting on 2020	\N	\N	\N	2021-01-17
1121	https://natehn.com/connect/	Connect	\N	\N	\N	2021-01-10
1122	https://natehn.com/posts/music-studio-nov-2020/	Music Studio (Nov. 2020)	\N	\N	\N	2020-11-14
1123	https://natehn.com/posts/leaving-facebook/	Leaving Facebook	\N	\N	\N	2020-11-09
1124	https://natehn.com/posts/on-memes/	On Memes	\N	\N	\N	2020-10-30
1125	https://natehn.com/feed/	Feed	\N	\N	\N	2020-10-09
1126	https://natehn.com/posts/land-acknowledgment/	Land Acknowledgment	\N	\N	\N	2020-09-22
1127	https://natehn.com/posts/this-website/	This Website, and How To Build Your Own	\N	\N	\N	2020-09-01
1128	https://natehn.com/about/	About	\N	\N	\N	2020-08-14
1129	https://www.gr0k.net/blog/logging-my-journey.html	Logging My Journey	\N	\N	\N	2021-02-26
1130	https://www.gr0k.net/blog/more-zynthian-workflow-updates.html	More Zynthian Workflow Updates	\N	\N	\N	2021-02-21
1131	https://www.gr0k.net/blog/zynthian-workflow.html	Zynthian Workflow	\N	\N	\N	2021-02-17
1132	https://www.gr0k.net/blog/the-monocled-frown.html	The Monocled Frown	\N	\N	\N	2021-02-05
1134	https://www.gr0k.net/blog/creating-soundfonts-in-polyphone.html	Creating SoundFonts in Polyphone	\N	\N	\N	2021-01-31
1135	https://www.gr0k.net/blog/zynthians-sequencer-zynseq.html	Zynthian's Sequencer - ZynSeq	\N	\N	\N	2021-01-29
1137	https://tendigits.space/projects/orca-box/	Orca Box	\N	\N	\N	2021-03-31
1138	https://tendigits.space/projects/birdhouse-cam/	Birdhouse Webcam	\N	\N	\N	2021-03-24
1139	https://tendigits.space/projects/bird-posters/	Bird Posters	\N	\N	\N	2021-03-24
1140	https://tendigits.space/notes/new-projects/	New Projects	\N	\N	\N	2021-03-17
1141	https://tendigits.space/notes/house/	House Maintenance	\N	\N	\N	2021-01-06
1142	https://tendigits.space/notes/inktober/	Inktober	\N	\N	\N	2020-10-01
1143	https://tendigits.space/notes/post-receive-hook/	Post Receive Hook	\N	\N	\N	2020-09-27
1144	https://tendigits.space/notes/bagels/	Bagels	\N	\N	\N	2020-09-26
1145	https://tendigits.space/notes/updating-ssh/	Updating SSL Certs	\N	\N	\N	2020-08-25
1147	https://tendigits.space/notes/ae-modular/	AE Modular	\N	\N	\N	2020-05-31
1148	https://tendigits.space/notes/site-11ty-setup/	This website's setup with 11ty	\N	\N	\N	2020-05-30
1149	https://tendigits.space/notes/hello/	Setting up this website	\N	\N	\N	2020-05-20
1154	https://wiki.xxiivv.com/site/roms.html	We are now in the osdev business	\N	\N	\N	2021-02-22
1151	https://wiki.xxiivv.com/site/noodle.html	Noodle in Uxn	\N	\N	\N	2021-03-17
1165	https://wiki.xxiivv.com/site/noton.html	Noton Release	\N	\N	\N	2020-11-19
1166	https://wiki.xxiivv.com/site/reform.html	Reform Oled	\N	\N	\N	2020-10-19
1155	https://wiki.xxiivv.com/site/radio.html	Baofeng UV-9R+	\N	\N	\N	2021-02-14
1156	https://wiki.xxiivv.com/site/busy_doing_nothing.html	The Logbook Book	\N	\N	\N	2021-02-08
1157	https://wiki.xxiivv.com/site/uxn.html	Uxn Sticker	\N	\N	\N	2021-02-03
1158	https://wiki.xxiivv.com/site/exed.html	Exed Desktop Release	\N	\N	\N	2021-01-22
1159	https://wiki.xxiivv.com/site/dito.html	Dito Desktop Release	\N	\N	\N	2021-01-20
1167	https://wiki.xxiivv.com/site/wiktopher.html	Tent City of Renate	\N	\N	\N	2017-11-06
1205	https://wiki.xxiivv.com/site/pino.html	In Minamiise	\N	\N	\N	2016-02-27
1161	https://wiki.xxiivv.com/site/origami.html	Gyro 6	\N	\N	\N	2020-12-04
1162	https://wiki.xxiivv.com/site/origami.html	Sonobe 30	\N	\N	\N	2020-12-04
1215	https://wiki.xxiivv.com/site/keyboard.html	OLKB Hi-pro mod Planck 6	\N	\N	\N	2016-01-02
1168	https://wiki.xxiivv.com/site/ayatori.html	Ayatori Notebook	\N	\N	\N	2020-10-04
1203	https://wiki.xxiivv.com/site/programming.html	Acorn BBC Micro Logo on Famicom	\N	\N	\N	2020-03-16
1201	https://wiki.xxiivv.com/site/donsol_famicom.html	Donsol Famicom Release	\N	\N	\N	2020-03-12
1195	https://wiki.xxiivv.com/site/pascal.html	Spiral Pattern	\N	\N	\N	2020-04-12
1170	https://wiki.xxiivv.com/site/longtermism.html	Brass Faucet	\N	\N	\N	2020-09-19
1171	https://wiki.xxiivv.com/site/spacetime_6502.html	Spacetime 6502	\N	\N	\N	2020-08-26
1172	https://wiki.xxiivv.com/site/usagi.html	Nesdev on Plan9	\N	\N	\N	2020-08-25
1173	https://wiki.xxiivv.com/site/plan9_color.html	Color Picker	\N	\N	\N	2020-08-14
1182	https://wiki.xxiivv.com/site/travel.html	Spent 7 weeks at sea	\N	\N	\N	2020-07-21
1183	https://wiki.xxiivv.com/site/nautical.html	Alphabet Flags	\N	\N	\N	2020-06-07
1175	https://wiki.xxiivv.com/site/chr_format.html	Nasu on Plan 9	\N	\N	\N	2020-08-07
1176	https://wiki.xxiivv.com/site/postscript.html	Postscript on Plan9	\N	\N	\N	2020-08-04
1177	https://wiki.xxiivv.com/site/plan9_clock.html	Not into babyblue	\N	\N	\N	2020-08-02
1178	https://wiki.xxiivv.com/site/plan9_c.html	Plan9 Draw	\N	\N	\N	2020-08-01
1179	https://wiki.xxiivv.com/site/acme.html	Custom Acme	\N	\N	\N	2020-07-31
1180	https://wiki.xxiivv.com/site/rio.html	Customizing Rio	\N	\N	\N	2020-07-30
1174	https://wiki.xxiivv.com/site/moogle.html	Pitch Yaw Roll	\N	\N	\N	2020-07-28
1181	https://wiki.xxiivv.com/site/moogle.html	Moogle Spheroid	\N	\N	\N	2020-07-28
1190	https://wiki.xxiivv.com/site/nespaint.html	The NesPaint Interface	\N	\N	\N	2020-05-21
1169	https://wiki.xxiivv.com/site/identity.html	Made In Moogle	\N	\N	\N	2010-02-16
1184	https://wiki.xxiivv.com/site/shimoda.html	Shimoda Station	\N	\N	\N	2020-05-28
1185	https://wiki.xxiivv.com/site/shimoda.html	Sunset Maru	\N	\N	\N	2020-05-28
1192	https://wiki.xxiivv.com/site/graf3dscene.html	Andes Castel In Construction	\N	\N	\N	2020-05-15
1198	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack III	\N	\N	\N	2020-03-31
1199	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack II	\N	\N	\N	2020-03-31
1200	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack I	\N	\N	\N	2020-03-31
1191	https://wiki.xxiivv.com/site/personal.html	Disused Hotel in Shimoda	\N	\N	\N	2010-02-28
1212	https://wiki.xxiivv.com/site/andes_castel.html	Castel Entrance	\N	\N	\N	2013-08-23
1209	https://wiki.xxiivv.com/site/oquonie.html	Aboard Pino	\N	\N	\N	2014-02-03
1196	https://wiki.xxiivv.com/site/pascal.html	Entaloneralie System 7	\N	\N	\N	2020-04-12
1204	https://wiki.xxiivv.com/site/donsol_famicom.html	Famicom AV to C1084 Monitor	\N	\N	\N	2020-03-12
1152	https://wiki.xxiivv.com/site/left.html	Uxambly drawing routines	\N	\N	\N	2017-08-07
1150	https://wiki.xxiivv.com/site/nasu.html	2-bit tiles in nasu	\N	\N	\N	2020-02-02
1193	https://wiki.xxiivv.com/site/minamiise.html	Nozoe at 5am	\N	\N	\N	2019-04-14
1197	https://wiki.xxiivv.com/site/minamiise.html	The Gokashou Coast	\N	\N	\N	2019-04-14
1202	https://wiki.xxiivv.com/site/minamiise.html	Nakatsuhamaura	\N	\N	\N	2019-04-14
1210	https://wiki.xxiivv.com/site/technology.html	Paper Computer	\N	\N	\N	2019-12-03
1211	https://wiki.xxiivv.com/site/tools.html	Tools Sticker Sheets	\N	\N	\N	2019-05-23
1160	https://wiki.xxiivv.com/site/left.html	Working on Oscean with Left	\N	\N	\N	2017-08-07
1213	https://wiki.xxiivv.com/site/morse.html	Morse Alphabet Chart	\N	\N	\N	2019-11-04
1214	https://wiki.xxiivv.com/site/macintosh.html	Neauismetica on Macintosh	\N	\N	\N	2019-11-01
1194	https://wiki.xxiivv.com/site/identity.html	Luna moth in Minamiise	\N	\N	\N	2010-02-16
1208	https://wiki.xxiivv.com/site/famicom.html	Famicom Keyboard	\N	\N	\N	2019-10-29
1216	https://wiki.xxiivv.com/site/famicom.html	OPN2 Cartridge	\N	\N	\N	2019-10-29
1207	https://wiki.xxiivv.com/site/identity.html	XXIIVV in NesPaint	\N	\N	\N	2010-02-16
1221	https://wiki.xxiivv.com/site/risan_aldeth.html	Aldeth	\N	\N	\N	2019-10-07
1229	https://wiki.xxiivv.com/site/risan_aldeth.html	Compression Tunnels	\N	\N	\N	2019-10-07
1246	https://wiki.xxiivv.com/site/andes_castel.html	The view from Laeisth	\N	\N	\N	2013-08-23
1236	https://wiki.xxiivv.com/site/risan_aldeth.html	Ehrivevnv Gate	\N	\N	\N	2019-10-07
1275	https://wiki.xxiivv.com/site/azolla.html	Azolla Release	\N	\N	\N	2019-05-14
1277	https://wiki.xxiivv.com/site/azolla.html	JSNation, Amsterdam	\N	\N	\N	2019-05-14
1241	https://wiki.xxiivv.com/site/neonev.html	Early Years	\N	\N	\N	2019-10-02
1222	https://wiki.xxiivv.com/site/kirleane.html	Paradichlorisse	\N	\N	\N	2019-09-30
1247	https://wiki.xxiivv.com/site/lard_shader.html	Study D	\N	\N	\N	2015-03-10
1234	https://wiki.xxiivv.com/site/aitasla.html	Reflector	\N	\N	\N	2019-10-09
1249	https://wiki.xxiivv.com/site/playground.html	The Playground Express	\N	\N	\N	2019-09-24
1251	https://wiki.xxiivv.com/site/talk.html	Talk at XOXO, Portland	\N	\N	\N	2015-04-21
1252	https://wiki.xxiivv.com/site/hundred_rabbits.html	Kelp	\N	\N	\N	2015-11-09
1257	https://wiki.xxiivv.com/site/macro.html	Caterpillar	\N	\N	\N	2010-08-21
1220	https://wiki.xxiivv.com/site/vertale.html	Depot	\N	\N	\N	2019-10-18
1224	https://wiki.xxiivv.com/site/vertale.html	Outside Passage	\N	\N	\N	2019-10-18
1225	https://wiki.xxiivv.com/site/vertale.html	Fork Passage	\N	\N	\N	2019-10-18
1231	https://wiki.xxiivv.com/site/dilitriel.html	Eaurizon Hangars	\N	\N	\N	2019-09-29
1237	https://wiki.xxiivv.com/site/dilitriel.html	Flighter Transit	\N	\N	\N	2019-09-29
1223	https://wiki.xxiivv.com/site/whiinders.html	Offline Station	\N	\N	\N	2019-10-15
1228	https://wiki.xxiivv.com/site/whiinders.html	Signalter	\N	\N	\N	2019-10-15
1219	https://wiki.xxiivv.com/site/vetetrandes.html	Saarafores Station	\N	\N	\N	2019-10-01
1230	https://wiki.xxiivv.com/site/vetetrandes.html	Escal	\N	\N	\N	2019-10-01
1233	https://wiki.xxiivv.com/site/vetetrandes.html	Shutting Ramp	\N	\N	\N	2019-10-01
1248	https://wiki.xxiivv.com/site/hardware.html	Sanwu Audio Player	\N	\N	\N	2019-09-25
1254	https://wiki.xxiivv.com/site/canada.html	Travel to Vancouver, Canada	\N	\N	\N	2010-07-08
1278	https://wiki.xxiivv.com/site/microbit.html	BBC Microbit	\N	\N	\N	2019-05-24
1232	https://wiki.xxiivv.com/site/laeisth.html	Es Plains	\N	\N	\N	2019-10-11
1243	https://wiki.xxiivv.com/site/kirleane.html	Soies Compressor	\N	\N	\N	2019-09-30
1238	https://wiki.xxiivv.com/site/dilitriel.html	Flighter	\N	\N	\N	2019-09-29
1239	https://wiki.xxiivv.com/site/dilitriel.html	Hanging Road	\N	\N	\N	2019-09-29
1242	https://wiki.xxiivv.com/site/vetetrandes.html	Autoconstructors	\N	\N	\N	2019-10-01
1283	https://wiki.xxiivv.com/site/microbit.html	Light Painting for the Microbit	\N	\N	\N	2019-05-24
1255	https://wiki.xxiivv.com/site/tools.html	The Family	\N	\N	\N	2019-05-23
1240	https://wiki.xxiivv.com/site/dilitriel.html	Support Conduits	\N	\N	\N	2019-09-29
1244	https://wiki.xxiivv.com/site/dilitriel.html	Valentinel Bridge	\N	\N	\N	2019-09-29
1284	https://wiki.xxiivv.com/site/tools.html	Orca Station	\N	\N	\N	2019-05-23
1253	https://wiki.xxiivv.com/site/andes.html	Andes	\N	\N	\N	2019-08-29
1287	https://wiki.xxiivv.com/site/osaka.html	Rock Castle in Osaka	\N	\N	\N	2010-02-19
1288	https://wiki.xxiivv.com/site/osaka.html	Rock Garden in Osaka	\N	\N	\N	2010-02-19
1289	https://wiki.xxiivv.com/site/osaka.html	Travel to Osaka, Japan	\N	\N	\N	2010-02-19
1256	https://wiki.xxiivv.com/site/ronin.html	Ronin Spiral	\N	\N	\N	2019-07-07
1262	https://wiki.xxiivv.com/site/plan9.html	Catclock	\N	\N	\N	2019-07-05
1263	https://wiki.xxiivv.com/site/plan9.html	Monochrome Rio	\N	\N	\N	2019-07-05
1264	https://wiki.xxiivv.com/site/plan9.html	Glenda	\N	\N	\N	2019-07-05
1259	https://wiki.xxiivv.com/site/ronin.html	Ronin Recursion	\N	\N	\N	2019-07-07
1261	https://wiki.xxiivv.com/site/ronin.html	Ronin Splash	\N	\N	\N	2019-07-07
1260	https://wiki.xxiivv.com/site/monome.html	Rack Monome	\N	\N	\N	2019-06-29
1265	https://wiki.xxiivv.com/site/monome.html	Linn Monome	\N	\N	\N	2019-06-29
1290	https://wiki.xxiivv.com/site/raspberry.html	Ad blocker with display	\N	\N	\N	2019-05-05
1266	https://wiki.xxiivv.com/site/skate.html	Minami Ise beach	\N	\N	\N	2019-05-27
1267	https://wiki.xxiivv.com/site/skate.html	Minami Ise beach 2	\N	\N	\N	2019-05-27
1280	https://wiki.xxiivv.com/site/skate.html	Getting back into it	\N	\N	\N	2019-05-27
1281	https://wiki.xxiivv.com/site/skate.html	Joy in picture	\N	\N	\N	2019-05-27
1250	https://wiki.xxiivv.com/site/studio.html	Microbrute Synth	\N	\N	\N	2019-04-23
1282	https://wiki.xxiivv.com/site/studio.html	Infinite Polivoks	\N	\N	\N	2019-04-23
1268	https://wiki.xxiivv.com/site/norns.html	Tutorials	\N	\N	\N	2019-06-10
1276	https://wiki.xxiivv.com/site/norns.html	Pong on Norns	\N	\N	\N	2019-06-10
1285	https://wiki.xxiivv.com/site/azolla.html	Algomech Festival, Sheffield	\N	\N	\N	2019-05-14
1286	https://wiki.xxiivv.com/site/azolla.html	Yajnev	\N	\N	\N	2019-05-14
1291	https://wiki.xxiivv.com/site/studio.html	Polivoks Mini B	\N	\N	\N	2019-04-23
1292	https://wiki.xxiivv.com/site/studio.html	Polivoks Mini A	\N	\N	\N	2019-04-23
1293	https://wiki.xxiivv.com/site/alicef.html	Polivoks	\N	\N	\N	2019-04-22
1300	https://wiki.xxiivv.com/site/shizuoka.html	Tea Fields	\N	\N	\N	2019-03-07
1301	https://wiki.xxiivv.com/site/shizuoka.html	Tea House	\N	\N	\N	2019-03-07
1298	https://wiki.xxiivv.com/site/pilot.html	Orca x Pilot	\N	\N	\N	2019-04-03
1299	https://wiki.xxiivv.com/site/pilot.html	The Pilot Synthetiser	\N	\N	\N	2019-04-03
1218	https://wiki.xxiivv.com/site/duomo.html	Slip Gate	\N	\N	\N	2017-12-23
1226	https://wiki.xxiivv.com/site/duomo.html	Drains	\N	\N	\N	2017-12-23
1227	https://wiki.xxiivv.com/site/duomo.html	Basin	\N	\N	\N	2017-12-23
1235	https://wiki.xxiivv.com/site/duomo.html	Refineries	\N	\N	\N	2017-12-23
1245	https://wiki.xxiivv.com/site/duomo.html	Septechoes	\N	\N	\N	2017-12-23
1335	https://wiki.xxiivv.com/site/directory.html	田園に死す	\N	\N	\N	2017-01-02
1366	https://wiki.xxiivv.com/site/physical.html	Elodie Vast	\N	\N	\N	2018-06-06
1344	https://wiki.xxiivv.com/site/discourse.html	Maude	\N	\N	\N	2018-09-23
1345	https://wiki.xxiivv.com/site/paradise.html	ParadiseOS	\N	\N	\N	2012-03-03
1346	https://wiki.xxiivv.com/site/wisdom.html	Sol Robeson	\N	\N	\N	2018-09-17
1303	https://wiki.xxiivv.com/site/juni.html	Holding the Chorded Keyboard	\N	\N	\N	2019-03-26
1304	https://wiki.xxiivv.com/site/juni.html	The Chorded Keyboard	\N	\N	\N	2019-03-26
1306	https://wiki.xxiivv.com/site/goals.html	Rekka on Pino in Shizuoka	\N	\N	\N	2019-03-18
1307	https://wiki.xxiivv.com/site/goals.html	Pino docked in Shizuoka	\N	\N	\N	2019-03-18
1302	https://wiki.xxiivv.com/site/shizuoka.html	Cherry Trees over Tea Fields	\N	\N	\N	2019-03-07
1311	https://wiki.xxiivv.com/site/illustration.html	Working remotely	\N	\N	\N	2019-03-04
1312	https://wiki.xxiivv.com/site/ogasawara.html	Futami Beach	\N	\N	\N	2019-01-24
1313	https://wiki.xxiivv.com/site/ogasawara.html	Futami Sailors	\N	\N	\N	2019-01-24
1319	https://wiki.xxiivv.com/site/lifestyle.html	Anchored in Ogasawara	\N	\N	\N	2019-02-20
1328	https://wiki.xxiivv.com/site/marshall_islands.html	A young okra plant at the hospital	\N	\N	\N	2018-10-20
1331	https://wiki.xxiivv.com/site/marshall_islands.html	Thai Basil	\N	\N	\N	2018-10-20
1324	https://wiki.xxiivv.com/site/rekka.html	In Ogasawara	\N	\N	\N	2006-07-07
1337	https://wiki.xxiivv.com/site/marshall_islands.html	Eggplant Twirl	\N	\N	\N	2018-10-20
1372	https://wiki.xxiivv.com/site/pino.html	A new sail for Pino	\N	\N	\N	2016-02-27
1314	https://wiki.xxiivv.com/site/ogasawara.html	Futami Arbor	\N	\N	\N	2019-01-24
1360	https://wiki.xxiivv.com/site/markl.html	Markl Dojo	\N	\N	\N	2017-11-09
1373	https://wiki.xxiivv.com/site/dotgrid.html	Improved the look and feel	\N	\N	\N	2017-11-03
1342	https://wiki.xxiivv.com/site/unix.html	Static	\N	\N	\N	2018-10-06
1308	https://wiki.xxiivv.com/site/bike.html	In front of Mt. Fuji	\N	\N	\N	2018-09-26
1356	https://wiki.xxiivv.com/site/donsol.html	Difficulty levels	\N	\N	\N	2015-03-05
1333	https://wiki.xxiivv.com/site/merveilles.html	Maru	\N	\N	\N	2018-12-12
1379	https://wiki.xxiivv.com/site/black.html	Lost in Niue	\N	\N	\N	2015-04-24
1334	https://wiki.xxiivv.com/site/merveilles.html	Mastodon Instance Inauguration	\N	\N	\N	2018-12-12
1330	https://wiki.xxiivv.com/site/nutrition.html	Deep Greens	\N	\N	\N	2017-07-19
1352	https://wiki.xxiivv.com/site/routine.html	Apartment in Koenji	\N	\N	\N	2018-08-21
1353	https://wiki.xxiivv.com/site/japan.html	Shimokitazawa	\N	\N	\N	2018-08-19
1332	https://wiki.xxiivv.com/site/hundred_rabbits.html	Neighbor Pino	\N	\N	\N	2015-11-09
1367	https://wiki.xxiivv.com/site/neon_hermetism.html	Soies Injection	\N	\N	\N	2018-05-25
1382	https://wiki.xxiivv.com/site/black.html	Beach In Rarotonga	\N	\N	\N	2015-04-24
1343	https://wiki.xxiivv.com/site/bike.html	Trek District S, in Fiji	\N	\N	\N	2018-09-26
1317	https://wiki.xxiivv.com/site/lietal.html	Alrök Fur Säldota	\N	\N	\N	2007-03-20
1340	https://wiki.xxiivv.com/site/marshall_islands.html	Sail to Majuro, Marshall Islands	\N	\N	\N	2018-10-20
1326	https://wiki.xxiivv.com/site/the_sublime.html	Majuro Anchorage	\N	\N	\N	2017-03-26
1357	https://wiki.xxiivv.com/site/sketchbook.html	Encounter with the floating eye	\N	\N	\N	2011-08-30
1370	https://wiki.xxiivv.com/site/webring.html	No, seriously.	\N	\N	\N	2018-05-15
1371	https://wiki.xxiivv.com/site/photography.html	ÅA	\N	\N	\N	2018-05-12
1358	https://wiki.xxiivv.com/site/essentials.html	Durable and simple tools	\N	\N	\N	2018-07-22
1350	https://wiki.xxiivv.com/site/ethics.html	The Land Sailor	\N	\N	\N	2018-08-29
1338	https://wiki.xxiivv.com/site/about.html	XXIIVV	\N	\N	\N	2018-08-28
1351	https://wiki.xxiivv.com/site/about.html	Ambigram	\N	\N	\N	2018-08-28
1329	https://wiki.xxiivv.com/site/riven.html	Riven Map	\N	\N	\N	2018-02-27
1347	https://wiki.xxiivv.com/site/fiji.html	Lami Bay II, Fiji	\N	\N	\N	2018-08-10
1348	https://wiki.xxiivv.com/site/fiji.html	Lami Bay, Fiji	\N	\N	\N	2018-08-10
1349	https://wiki.xxiivv.com/site/fiji.html	Cousteau	\N	\N	\N	2018-08-10
1355	https://wiki.xxiivv.com/site/fiji.html	Savusavu, Fiji	\N	\N	\N	2018-08-10
1327	https://wiki.xxiivv.com/site/orca.html	Orca x Dotgrid	\N	\N	\N	2013-09-05
1310	https://wiki.xxiivv.com/site/artwork.html	Coralinev Bike	\N	\N	\N	2007-11-23
1369	https://wiki.xxiivv.com/site/sketchbook.html	The Storm Transit	\N	\N	\N	2011-08-30
1361	https://wiki.xxiivv.com/site/noon_guest.html	MoonQuest OST Release	\N	\N	\N	2018-07-14
1359	https://wiki.xxiivv.com/site/faqs.html	Nakano Sakaue II	\N	\N	\N	2018-06-28
1363	https://wiki.xxiivv.com/site/faqs.html	Nakano Sakaue I	\N	\N	\N	2018-06-28
1375	https://wiki.xxiivv.com/site/paradise.html	The Inspector Cat	\N	\N	\N	2012-03-03
1381	https://wiki.xxiivv.com/site/visual.html	The Beldam Point Of View	\N	\N	\N	2010-06-19
1368	https://wiki.xxiivv.com/site/brane.html	The Millioneth Clock	\N	\N	\N	2014-09-18
1377	https://wiki.xxiivv.com/site/computer.html	In Bloom	\N	\N	\N	2018-04-22
1378	https://wiki.xxiivv.com/site/radio_station.html	Pimoroni Board	\N	\N	\N	2018-04-18
1354	https://wiki.xxiivv.com/site/framboisedorf.html	A Toy Piano for Rainy Days	\N	\N	\N	2018-04-05
1336	https://wiki.xxiivv.com/site/orca.html	Orca Type	\N	\N	\N	2013-09-05
1339	https://wiki.xxiivv.com/site/the_sublime.html	Sunrise in the Marshall Islands	\N	\N	\N	2017-03-26
1341	https://wiki.xxiivv.com/site/riven.html	The Portals Combination	\N	\N	\N	2018-02-27
1374	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Halftone	\N	\N	\N	2018-04-16
1376	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Super Meteor Exhibition	\N	\N	\N	2018-04-16
1380	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Nepturne 7757	\N	\N	\N	2018-04-16
1364	https://wiki.xxiivv.com/site/the_sublime.html	Drifting toward Fiji	\N	\N	\N	2017-03-26
1404	https://wiki.xxiivv.com/site/rotonde.html	The Webring Logo	\N	\N	\N	2017-10-12
1397	https://wiki.xxiivv.com/site/duomo.html	The Districts	\N	\N	\N	2017-12-23
1387	https://wiki.xxiivv.com/site/grimgrains.html	The Black Toothpaste Recipe	\N	\N	\N	2016-11-07
1438	https://wiki.xxiivv.com/site/grimgrains.html	Algea Crisp	\N	\N	\N	2016-11-07
1394	https://wiki.xxiivv.com/site/yajnev.html	Supermoon	\N	\N	\N	2011-07-16
1386	https://wiki.xxiivv.com/site/everyday.html	At sea, everything rusts	\N	\N	\N	2018-03-19
1395	https://wiki.xxiivv.com/site/marabu.html	Weeklybeats Tracking	\N	\N	\N	2017-08-11
1426	https://wiki.xxiivv.com/site/nutrition.html	Tempeh Carrot Soba	\N	\N	\N	2017-07-19
1434	https://wiki.xxiivv.com/site/nutrition.html	Papaya Bruschetta	\N	\N	\N	2017-07-19
1390	https://wiki.xxiivv.com/site/hiversaires.html	Aitasla	\N	\N	\N	2013-02-11
1453	https://wiki.xxiivv.com/site/known_magye.html	Known Magye Release	\N	\N	\N	2014-03-16
1396	https://wiki.xxiivv.com/site/dotgrid.html	Working away from snow	\N	\N	\N	2017-11-03
1413	https://wiki.xxiivv.com/site/rotonde.html	Rotonde Interface	\N	\N	\N	2017-10-12
1383	https://wiki.xxiivv.com/site/framboisedorf.html	A Small Pocket Synth	\N	\N	\N	2018-04-05
1439	https://wiki.xxiivv.com/site/collected_works.html	Collected works Release	\N	\N	\N	2017-05-29
1384	https://wiki.xxiivv.com/site/weather_station.html	Looking out for storms	\N	\N	\N	2018-03-21
1419	https://wiki.xxiivv.com/site/the_sublime.html	At sea, near The Marquesas	\N	\N	\N	2017-03-26
1448	https://wiki.xxiivv.com/site/the_sublime.html	Drifting	\N	\N	\N	2017-03-26
1420	https://wiki.xxiivv.com/site/rotonde.html	Rotonde Layout	\N	\N	\N	2017-10-12
1385	https://wiki.xxiivv.com/site/weather_station.html	Listening to the weather	\N	\N	\N	2018-03-21
1440	https://wiki.xxiivv.com/site/children_of_bramble.html	Immortal Bird	\N	\N	\N	2017-05-28
1414	https://wiki.xxiivv.com/site/wiktopher.html	Book Prototype	\N	\N	\N	2017-11-06
1411	https://wiki.xxiivv.com/site/dotgrid.html	General improvements	\N	\N	\N	2017-11-03
1405	https://wiki.xxiivv.com/site/new_zealand.html	Arrived in New Zealand	\N	\N	\N	2017-10-29
1389	https://wiki.xxiivv.com/site/riven.html	Portal combination is in my journal	\N	\N	\N	2018-02-27
1399	https://wiki.xxiivv.com/site/death.html	Dominion	\N	\N	\N	2006-11-14
1391	https://wiki.xxiivv.com/site/vambits.html	From Skógr Studios	\N	\N	\N	2010-03-11
1398	https://wiki.xxiivv.com/site/vambits.html	Fresh Vambit Cuts	\N	\N	\N	2010-03-11
1392	https://wiki.xxiivv.com/site/ehrivevnv.html	Orbit	\N	\N	\N	2018-01-28
1393	https://wiki.xxiivv.com/site/neausea.html	Of Fallen Pilgrims	\N	\N	\N	2018-01-24
1445	https://wiki.xxiivv.com/site/pino.html	Repairing the main sail	\N	\N	\N	2016-02-27
1460	https://wiki.xxiivv.com/site/pino.html	Becalmed	\N	\N	\N	2016-02-27
1458	https://wiki.xxiivv.com/site/nomad.html	Lost in Ensenada	\N	\N	\N	2017-01-18
1417	https://wiki.xxiivv.com/site/marabu.html	Marabu Tracker	\N	\N	\N	2017-08-11
1412	https://wiki.xxiivv.com/site/markl.html	Wood Stage	\N	\N	\N	2017-11-09
1421	https://wiki.xxiivv.com/site/marabu.html	Almost Stability	\N	\N	\N	2017-08-11
1388	https://wiki.xxiivv.com/site/film.html	Hiding from the rain	\N	\N	\N	2016-08-10
1400	https://wiki.xxiivv.com/site/vambits.html	Vambits on a Camera	\N	\N	\N	2010-03-11
1423	https://wiki.xxiivv.com/site/getapan_728k.html	Album cover	\N	\N	\N	2017-08-24
1435	https://wiki.xxiivv.com/site/arvelie.html	Neralie	\N	\N	\N	2017-07-16
1406	https://wiki.xxiivv.com/site/documentation.html	Analogies	\N	\N	\N	2017-11-24
1410	https://wiki.xxiivv.com/site/morals.html	And Jöns	\N	\N	\N	2017-11-17
1416	https://wiki.xxiivv.com/site/new_zealand.html	Sail to Whangarei, New Zealand	\N	\N	\N	2017-10-29
1401	https://wiki.xxiivv.com/site/film.html	Wandering in the North Island	\N	\N	\N	2016-08-10
1424	https://wiki.xxiivv.com/site/marabu.html	Removed everything	\N	\N	\N	2017-08-11
1402	https://wiki.xxiivv.com/site/film.html	Guerilla Gardening	\N	\N	\N	2016-08-10
1436	https://wiki.xxiivv.com/site/japanese.html	Sidonia	\N	\N	\N	2017-07-12
1437	https://wiki.xxiivv.com/site/japanese.html	Nakano	\N	\N	\N	2017-07-12
1428	https://wiki.xxiivv.com/site/niue.html	Chasms and Canyons	\N	\N	\N	2017-07-28
1429	https://wiki.xxiivv.com/site/niue.html	The Coastline	\N	\N	\N	2017-07-28
1430	https://wiki.xxiivv.com/site/niue.html	Limu Pools	\N	\N	\N	2017-07-28
1431	https://wiki.xxiivv.com/site/niue.html	Descent Way	\N	\N	\N	2017-07-28
1432	https://wiki.xxiivv.com/site/niue.html	Niue Coastline	\N	\N	\N	2017-07-28
1446	https://wiki.xxiivv.com/site/research.html	Raspberry Pi Computer	\N	\N	\N	2014-12-10
1444	https://wiki.xxiivv.com/site/thousand_rooms.html	Cat has a visitor.	\N	\N	\N	2017-04-29
1441	https://wiki.xxiivv.com/site/instrument.html	Waterproof	\N	\N	\N	2017-05-14
1442	https://wiki.xxiivv.com/site/instrument.html	Monitor View	\N	\N	\N	2017-05-14
1462	https://wiki.xxiivv.com/site/mexico.html	Guests in La Paz	\N	\N	\N	2017-02-03
1464	https://wiki.xxiivv.com/site/mexico.html	La Paz	\N	\N	\N	2017-02-03
1459	https://wiki.xxiivv.com/site/extended_sleep.html	Bird	\N	\N	\N	2015-04-29
1418	https://wiki.xxiivv.com/site/black.html	Rekka In The Dinghy	\N	\N	\N	2015-04-24
1443	https://wiki.xxiivv.com/site/language.html	Immortal Birds	\N	\N	\N	2016-07-07
1447	https://wiki.xxiivv.com/site/marquesas.html	Colorful Sight	\N	\N	\N	2017-03-02
1452	https://wiki.xxiivv.com/site/marquesas.html	Heavy Rain	\N	\N	\N	2017-03-02
1449	https://wiki.xxiivv.com/site/superworker.html	Recording Superworker	\N	\N	\N	2017-04-02
1450	https://wiki.xxiivv.com/site/superworker.html	Pocket Operator	\N	\N	\N	2017-04-02
1454	https://wiki.xxiivv.com/site/marquesas.html	Pampel	\N	\N	\N	2017-03-02
1455	https://wiki.xxiivv.com/site/marquesas.html	Pampel?	\N	\N	\N	2017-03-02
1456	https://wiki.xxiivv.com/site/marquesas.html	Nuku-Hiva	\N	\N	\N	2017-03-02
1461	https://wiki.xxiivv.com/site/black.html	Rekka in Los Angeles	\N	\N	\N	2015-04-24
1463	https://wiki.xxiivv.com/site/black.html	Pino in Ensenada	\N	\N	\N	2015-04-24
1525	https://wiki.xxiivv.com/site/knowledge.html	Dieter	\N	\N	\N	2015-12-29
1529	https://wiki.xxiivv.com/site/keyboard_468.html	1.4	\N	\N	\N	2014-12-27
1548	https://wiki.xxiivv.com/site/looking_glace.html	Looking Glace Release	\N	\N	\N	2015-08-28
1467	https://wiki.xxiivv.com/site/donsol.html	Donsol Desktop Release	\N	\N	\N	2015-03-05
1536	https://wiki.xxiivv.com/site/opal_inquisitors.html	Opal inquisitors Release	\N	\N	\N	2015-09-15
1528	https://wiki.xxiivv.com/site/hundred_rabbits.html	Rabbits	\N	\N	\N	2015-11-09
1518	https://wiki.xxiivv.com/site/blindfolk.html	Blindfolks	\N	\N	\N	2016-01-31
1496	https://wiki.xxiivv.com/site/camera.html	Learn Film Photo	\N	\N	\N	2016-07-14
1503	https://wiki.xxiivv.com/site/lives.html	At 1H1D in Osaka	\N	\N	\N	2016-05-31
1473	https://wiki.xxiivv.com/site/russian.html	Сердце получает нож	\N	\N	\N	2016-12-05
1480	https://wiki.xxiivv.com/site/nervous.html	Woulg	\N	\N	\N	2016-03-27
1483	https://wiki.xxiivv.com/site/lard_shader.html	Study C	\N	\N	\N	2015-03-10
1506	https://wiki.xxiivv.com/site/verreciel_soundtrack.html	Verreciel OST Release	\N	\N	\N	2016-05-09
1508	https://wiki.xxiivv.com/site/polygore.html	Hexagore	\N	\N	\N	2016-04-12
1530	https://wiki.xxiivv.com/site/rabbits_soundtrack.html	A Hundred Knobs	\N	\N	\N	2015-11-29
1468	https://wiki.xxiivv.com/site/donsol.html	Donsol Desktop Interface	\N	\N	\N	2015-03-05
1511	https://wiki.xxiivv.com/site/nervous.html	Exhibit B	\N	\N	\N	2016-03-27
1498	https://wiki.xxiivv.com/site/language.html	The Voynich	\N	\N	\N	2016-07-07
1471	https://wiki.xxiivv.com/site/film.html	San Francisco Street	\N	\N	\N	2016-08-10
1466	https://wiki.xxiivv.com/site/nomad.html	Fulcanelli	\N	\N	\N	2017-01-18
1469	https://wiki.xxiivv.com/site/directory.html	春野美子「茶の味」	\N	\N	\N	2017-01-02
1479	https://wiki.xxiivv.com/site/aesthetics.html	A Digest	\N	\N	\N	2016-10-27
1509	https://wiki.xxiivv.com/site/polygore.html	Pentagore	\N	\N	\N	2016-04-12
1517	https://wiki.xxiivv.com/site/lietal.html	The Lietal Flag	\N	\N	\N	2007-03-20
1519	https://wiki.xxiivv.com/site/hypervoid.html	Pandischopic	\N	\N	\N	2010-07-29
1477	https://wiki.xxiivv.com/site/grimgrains.html	Bamboo Charcoal	\N	\N	\N	2016-11-07
1512	https://wiki.xxiivv.com/site/nervous.html	Exhibit A	\N	\N	\N	2016-03-27
1531	https://wiki.xxiivv.com/site/macro.html	Cure Dents	\N	\N	\N	2010-08-21
1543	https://wiki.xxiivv.com/site/talk.html	Talk at Ars Electronica, Vienna	\N	\N	\N	2015-04-21
1499	https://wiki.xxiivv.com/site/pearls.html	Pearl	\N	\N	\N	2016-07-04
1472	https://wiki.xxiivv.com/site/film.html	San Francisco Stairs	\N	\N	\N	2016-08-10
1474	https://wiki.xxiivv.com/site/film.html	The Helm	\N	\N	\N	2016-08-10
1485	https://wiki.xxiivv.com/site/film.html	My Father At The Helm	\N	\N	\N	2016-08-10
1488	https://wiki.xxiivv.com/site/film.html	Early Sailing Days	\N	\N	\N	2016-08-10
1470	https://wiki.xxiivv.com/site/donsol.html	Progress on Donsol	\N	\N	\N	2015-03-05
1500	https://wiki.xxiivv.com/site/pearls.html	Cell	\N	\N	\N	2016-07-04
1534	https://wiki.xxiivv.com/site/mobile.html	Old Android UI	\N	\N	\N	2012-01-14
1523	https://wiki.xxiivv.com/site/bifurcan.html	Bifurcan Die	\N	\N	\N	2014-06-18
1489	https://wiki.xxiivv.com/site/film.html	Early Sailing Days	\N	\N	\N	2016-08-10
1490	https://wiki.xxiivv.com/site/film.html	Evening near Vancouver Island	\N	\N	\N	2016-08-10
1487	https://wiki.xxiivv.com/site/america.html	Sail to San Francisco	\N	\N	\N	2008-06-26
1520	https://wiki.xxiivv.com/site/beauty.html	02	\N	\N	\N	2014-10-22
1510	https://wiki.xxiivv.com/site/polygore.html	Trigore	\N	\N	\N	2016-04-12
1533	https://wiki.xxiivv.com/site/dictionarism.html	Diarism	\N	\N	\N	2015-10-31
1465	https://wiki.xxiivv.com/site/black.html	Sail to Ensenada, Mexico	\N	\N	\N	2015-04-24
1515	https://wiki.xxiivv.com/site/portalion.html	Portalion Cover	\N	\N	\N	2016-03-02
1526	https://wiki.xxiivv.com/site/orca.html	Orca Glyphs	\N	\N	\N	2013-09-05
1521	https://wiki.xxiivv.com/site/beauty.html	01	\N	\N	\N	2014-10-22
1495	https://wiki.xxiivv.com/site/rekka.html	Reading about sailing	\N	\N	\N	2006-07-07
1501	https://wiki.xxiivv.com/site/advent_v.html	Death	\N	\N	\N	2014-08-04
1502	https://wiki.xxiivv.com/site/advent_v.html	The Tavern	\N	\N	\N	2014-08-04
1482	https://wiki.xxiivv.com/site/wallpapers.html	Shinji	\N	\N	\N	2010-04-11
1524	https://wiki.xxiivv.com/site/keyboard.html	Setup	\N	\N	\N	2016-01-02
1505	https://wiki.xxiivv.com/site/rekka.html	Last days in Montreal	\N	\N	\N	2006-07-07
1522	https://wiki.xxiivv.com/site/beauty.html	03	\N	\N	\N	2014-10-22
1532	https://wiki.xxiivv.com/site/hundred_rabbits.html	The Whole Band	\N	\N	\N	2015-11-09
1513	https://wiki.xxiivv.com/site/verreciel.html	Eminence	\N	\N	\N	2015-09-27
1527	https://wiki.xxiivv.com/site/verreciel.html	Further	\N	\N	\N	2015-09-27
1535	https://wiki.xxiivv.com/site/verreciel.html	Prototype	\N	\N	\N	2015-09-27
1475	https://wiki.xxiivv.com/site/black.html	Ensenada Trash Hill	\N	\N	\N	2015-04-24
1476	https://wiki.xxiivv.com/site/black.html	The V Berth	\N	\N	\N	2015-04-24
1537	https://wiki.xxiivv.com/site/austria.html	Heading Out	\N	\N	\N	2015-08-30
1538	https://wiki.xxiivv.com/site/austria.html	Streets Like Amadeus	\N	\N	\N	2015-08-30
1539	https://wiki.xxiivv.com/site/austria.html	Vienna	\N	\N	\N	2015-08-30
1540	https://wiki.xxiivv.com/site/austria.html	Suddenly, Half-Life	\N	\N	\N	2015-08-30
1541	https://wiki.xxiivv.com/site/austria.html	Vienna	\N	\N	\N	2015-08-30
1542	https://wiki.xxiivv.com/site/austria.html	Ars Electronica	\N	\N	\N	2015-08-30
1544	https://wiki.xxiivv.com/site/austria.html	Linz Food	\N	\N	\N	2015-08-30
1545	https://wiki.xxiivv.com/site/austria.html	Linz	\N	\N	\N	2015-08-30
1555	https://wiki.xxiivv.com/site/infrared.html	Habitat 67	\N	\N	\N	2012-08-07
1594	https://wiki.xxiivv.com/site/ledoliel.html	2.1	\N	\N	\N	2014-05-31
1601	https://wiki.xxiivv.com/site/dew.html	Dew Interface	\N	\N	\N	2014-08-06
1608	https://wiki.xxiivv.com/site/dodecae.html	Flyer	\N	\N	\N	2014-12-04
1584	https://wiki.xxiivv.com/site/donsol.html	Mobile Interface Update	\N	\N	\N	2015-03-05
1585	https://wiki.xxiivv.com/site/lard_shader.html	Study B	\N	\N	\N	2015-03-10
1553	https://wiki.xxiivv.com/site/kaleidoscope.html	Chrestasebeia	\N	\N	\N	2014-04-03
1593	https://wiki.xxiivv.com/site/alphavetist.html	3.0	\N	\N	\N	2014-06-22
1629	https://wiki.xxiivv.com/site/serventines.html	Jenen	\N	\N	\N	2014-05-25
1549	https://wiki.xxiivv.com/site/beauty.html	Mytresial	\N	\N	\N	2014-10-22
1557	https://wiki.xxiivv.com/site/supervisitor.html	Trapezoid	\N	\N	\N	2014-12-06
1579	https://wiki.xxiivv.com/site/black.html	Ensenada Hills	\N	\N	\N	2015-04-24
1586	https://wiki.xxiivv.com/site/lard_shader.html	Study A	\N	\N	\N	2015-03-10
1587	https://wiki.xxiivv.com/site/donsol.html	Mobile Prototype	\N	\N	\N	2015-03-05
1621	https://wiki.xxiivv.com/site/telekinesis.html	Leap Motion Demo, Tokyo	\N	\N	\N	2013-09-12
1602	https://wiki.xxiivv.com/site/rafinograde.html	Glyph Art	\N	\N	\N	2014-12-13
1603	https://wiki.xxiivv.com/site/research.html	The sartre Ultravoid	\N	\N	\N	2014-12-10
1560	https://wiki.xxiivv.com/site/vocavularist.html	Vocavularist Release	\N	\N	\N	2013-08-07
1626	https://wiki.xxiivv.com/site/brane.html	IIIII	\N	\N	\N	2014-09-18
1627	https://wiki.xxiivv.com/site/brane.html	IIII	\N	\N	\N	2014-09-18
1562	https://wiki.xxiivv.com/site/the_will_the_wisp.html	Twitter Bot Birth	\N	\N	\N	2015-06-10
1588	https://wiki.xxiivv.com/site/america.html	Nebraska	\N	\N	\N	2008-06-26
1561	https://wiki.xxiivv.com/site/macro.html	Glass	\N	\N	\N	2010-08-21
1554	https://wiki.xxiivv.com/site/mobile.html	Breakout Prototype	\N	\N	\N	2012-01-14
1550	https://wiki.xxiivv.com/site/beauty.html	Genoviral	\N	\N	\N	2014-10-22
1631	https://wiki.xxiivv.com/site/serventines.html	Untenest	\N	\N	\N	2014-05-25
1615	https://wiki.xxiivv.com/site/paradise.html	Techgnostic Order	\N	\N	\N	2012-03-03
1563	https://wiki.xxiivv.com/site/eschatolor.html	Tevelision	\N	\N	\N	2015-05-19
1551	https://wiki.xxiivv.com/site/beauty.html	Vatoxoinal	\N	\N	\N	2014-10-22
1558	https://wiki.xxiivv.com/site/inventory.html	Everyday Carry	\N	\N	\N	2015-07-13
1591	https://wiki.xxiivv.com/site/hypervoid.html	Dischromatic	\N	\N	\N	2010-07-29
1592	https://wiki.xxiivv.com/site/hypervoid.html	Nulloid	\N	\N	\N	2010-07-29
1600	https://wiki.xxiivv.com/site/hypervoid.html	Antipigment	\N	\N	\N	2010-07-29
1574	https://wiki.xxiivv.com/site/time_alloy.html	Vertaline	\N	\N	\N	2015-05-03
1575	https://wiki.xxiivv.com/site/time_alloy.html	Opaline	\N	\N	\N	2015-05-03
1576	https://wiki.xxiivv.com/site/time_alloy.html	Slyverline	\N	\N	\N	2015-05-03
1578	https://wiki.xxiivv.com/site/extended_sleep.html	Extended Sleep Release	\N	\N	\N	2015-04-29
1564	https://wiki.xxiivv.com/site/netherlands.html	Amsterdam	\N	\N	\N	2015-05-12
1565	https://wiki.xxiivv.com/site/netherlands.html	Utrecht	\N	\N	\N	2015-05-12
1566	https://wiki.xxiivv.com/site/netherlands.html	Amsterdam	\N	\N	\N	2015-05-12
1567	https://wiki.xxiivv.com/site/netherlands.html	Travel to Utrecht	\N	\N	\N	2015-05-12
1556	https://wiki.xxiivv.com/site/infrared.html	Graveyard	\N	\N	\N	2012-08-07
1559	https://wiki.xxiivv.com/site/infrared.html	Rekka and Sunglasses	\N	\N	\N	2012-08-07
1568	https://wiki.xxiivv.com/site/astratas.html	Lines B	\N	\N	\N	2015-04-30
1570	https://wiki.xxiivv.com/site/ar_moire.html	Pattern IIII	\N	\N	\N	2015-05-06
1571	https://wiki.xxiivv.com/site/ar_moire.html	Pattern III	\N	\N	\N	2015-05-06
1572	https://wiki.xxiivv.com/site/ar_moire.html	Pattern II	\N	\N	\N	2015-05-06
1573	https://wiki.xxiivv.com/site/ar_moire.html	Pattern I	\N	\N	\N	2015-05-06
1569	https://wiki.xxiivv.com/site/astratas.html	Lines A	\N	\N	\N	2015-04-30
1577	https://wiki.xxiivv.com/site/astratas.html	Lines C	\N	\N	\N	2015-04-30
1581	https://wiki.xxiivv.com/site/talk.html	Talk at Amaze, Berlin	\N	\N	\N	2015-04-21
1589	https://wiki.xxiivv.com/site/america.html	Desert	\N	\N	\N	2008-06-26
1596	https://wiki.xxiivv.com/site/ramiel.html	Ramiel Release	\N	\N	\N	2015-01-14
1597	https://wiki.xxiivv.com/site/miniscopie.html	Reine - Miniscopie	\N	\N	\N	2015-01-09
1598	https://wiki.xxiivv.com/site/beldam_records.html	Founded Beldam	\N	\N	\N	2014-12-29
1599	https://wiki.xxiivv.com/site/keyboard_468.html	Prototype	\N	\N	\N	2014-12-27
1604	https://wiki.xxiivv.com/site/supervisitor.html	Dodecae	\N	\N	\N	2014-12-06
1605	https://wiki.xxiivv.com/site/supervisitor.html	Aliceffekt Live	\N	\N	\N	2014-12-06
1606	https://wiki.xxiivv.com/site/supervisitor.html	Brut Cover	\N	\N	\N	2014-12-06
1632	https://wiki.xxiivv.com/site/serventines.html	Qaro	\N	\N	\N	2014-05-25
1613	https://wiki.xxiivv.com/site/the_sartre_mechanism.html	Ultravoid	\N	\N	\N	2014-11-20
1609	https://wiki.xxiivv.com/site/defraction_optics.html	II	\N	\N	\N	2014-11-19
1611	https://wiki.xxiivv.com/site/defraction_optics.html	Waveform	\N	\N	\N	2014-11-19
1612	https://wiki.xxiivv.com/site/defraction_optics.html	Circleform	\N	\N	\N	2014-11-19
1614	https://wiki.xxiivv.com/site/defraction_optics.html	Cover Page	\N	\N	\N	2014-11-19
1633	https://wiki.xxiivv.com/site/serventines.html	Anopass	\N	\N	\N	2014-05-25
1622	https://wiki.xxiivv.com/site/modernista.html	05	\N	\N	\N	2014-10-07
1623	https://wiki.xxiivv.com/site/modernista.html	04	\N	\N	\N	2014-10-07
1624	https://wiki.xxiivv.com/site/modernista.html	02	\N	\N	\N	2014-10-07
1625	https://wiki.xxiivv.com/site/modernista.html	01	\N	\N	\N	2014-10-07
1630	https://wiki.xxiivv.com/site/ten_axitecture.html	Ten Axitecture	\N	\N	\N	2014-09-07
1580	https://wiki.xxiivv.com/site/flactals.html	Torazine	\N	\N	\N	2014-01-29
1582	https://wiki.xxiivv.com/site/flactals.html	Nestorine	\N	\N	\N	2014-01-29
1583	https://wiki.xxiivv.com/site/flactals.html	Coraline	\N	\N	\N	2014-01-29
1644	https://wiki.xxiivv.com/site/dew.html	Prototype	\N	\N	\N	2014-08-06
1654	https://wiki.xxiivv.com/site/vocavularist.html	2.0	\N	\N	\N	2013-08-07
1645	https://wiki.xxiivv.com/site/advent_v.html	The Advent V Release	\N	\N	\N	2014-08-04
1716	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Lost Osaka Tempers	\N	\N	\N	2009-01-01
1635	https://wiki.xxiivv.com/site/serventines.html	Qovledon	\N	\N	\N	2014-05-25
1636	https://wiki.xxiivv.com/site/serventines.html	Gaspse	\N	\N	\N	2014-05-25
1693	https://wiki.xxiivv.com/site/fuji.html	Climb Crew	\N	\N	\N	2013-07-12
1692	https://wiki.xxiivv.com/site/hiversaires.html	Hiversaires Release	\N	\N	\N	2013-02-11
1694	https://wiki.xxiivv.com/site/fuji.html	Torchlights	\N	\N	\N	2013-07-12
1695	https://wiki.xxiivv.com/site/fuji.html	From Kawaguchiko	\N	\N	\N	2013-07-12
1696	https://wiki.xxiivv.com/site/fuji.html	Mt. Fuji Summit	\N	\N	\N	2013-07-12
1676	https://wiki.xxiivv.com/site/known_magye.html	PowPow, San Francisco	\N	\N	\N	2014-03-16
1677	https://wiki.xxiivv.com/site/known_magye.html	Live at DNA Lougne	\N	\N	\N	2014-03-16
1700	https://wiki.xxiivv.com/site/dei_dain.html	Dei Dain Release	\N	\N	\N	2013-06-17
1702	https://wiki.xxiivv.com/site/dei_dain.html	Mega Ran Tour, Tokyo	\N	\N	\N	2013-06-17
1686	https://wiki.xxiivv.com/site/telekinesis.html	Pure Data Controller	\N	\N	\N	2013-09-12
1640	https://wiki.xxiivv.com/site/ledoliel.html	2.0	\N	\N	\N	2014-05-31
1687	https://wiki.xxiivv.com/site/orca.html	Orca Machine	\N	\N	\N	2013-09-05
1649	https://wiki.xxiivv.com/site/serventines.html	Mount Duomo	\N	\N	\N	2014-05-25
1688	https://wiki.xxiivv.com/site/andes_castel.html	Entrance	\N	\N	\N	2013-08-23
1685	https://wiki.xxiivv.com/site/lietal.html	iOS7 Patch	\N	\N	\N	2007-03-20
1646	https://wiki.xxiivv.com/site/ledoliel.html	1.2	\N	\N	\N	2014-05-31
1657	https://wiki.xxiivv.com/site/ledoliel.html	Space friends	\N	\N	\N	2014-05-31
1658	https://wiki.xxiivv.com/site/ledoliel.html	Strange Diplomacy	\N	\N	\N	2014-05-31
1684	https://wiki.xxiivv.com/site/wallpapers.html	Motto	\N	\N	\N	2010-04-11
1712	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	SquareSound, Melbourne	\N	\N	\N	2012-10-20
1705	https://wiki.xxiivv.com/site/artwork.html	Space Marine Colour	\N	\N	\N	2007-11-23
1706	https://wiki.xxiivv.com/site/wallpapers.html	Rami Ismail Rant	\N	\N	\N	2010-04-11
1639	https://wiki.xxiivv.com/site/bifurcan.html	1.2	\N	\N	\N	2014-06-18
1647	https://wiki.xxiivv.com/site/bifurcan.html	Screensaver	\N	\N	\N	2014-06-18
1699	https://wiki.xxiivv.com/site/infrared.html	Soldat	\N	\N	\N	2012-08-07
1701	https://wiki.xxiivv.com/site/infrared.html	Infrared Set 2	\N	\N	\N	2012-08-07
1661	https://wiki.xxiivv.com/site/purgateus.html	The Autumn	\N	\N	\N	2014-05-16
1663	https://wiki.xxiivv.com/site/purgateus.html	Purgateus Release	\N	\N	\N	2014-05-16
1670	https://wiki.xxiivv.com/site/methascope.html	20x	\N	\N	\N	2014-04-09
1671	https://wiki.xxiivv.com/site/methascope.html	200x	\N	\N	\N	2014-04-09
1673	https://wiki.xxiivv.com/site/vast.html	Vast Release	\N	\N	\N	2014-03-28
1689	https://wiki.xxiivv.com/site/vocavularist.html	1.0	\N	\N	\N	2013-08-07
1652	https://wiki.xxiivv.com/site/virtual_machines.html	Cover	\N	\N	\N	2014-06-24
1653	https://wiki.xxiivv.com/site/alphavetist.html	Katakana Practice	\N	\N	\N	2014-06-22
1650	https://wiki.xxiivv.com/site/noirca.html	1.1	\N	\N	\N	2014-06-25
1651	https://wiki.xxiivv.com/site/noirca.html	Go Board	\N	\N	\N	2014-06-25
1637	https://wiki.xxiivv.com/site/damoiseau_canalx.html	Damoiseau et Canalx Release	\N	\N	\N	2014-08-27
1638	https://wiki.xxiivv.com/site/neralie.html	Neralie Mobile	\N	\N	\N	2014-08-22
1675	https://wiki.xxiivv.com/site/vast.html	Preview	\N	\N	\N	2014-03-28
1679	https://wiki.xxiivv.com/site/oquonie_soundtrack.html	Soundman	\N	\N	\N	2014-02-10
1683	https://wiki.xxiivv.com/site/flactals.html	Qraxia	\N	\N	\N	2014-01-29
1641	https://wiki.xxiivv.com/site/kaleidoscope.html	Ode, The Perfect Bei	\N	\N	\N	2014-04-03
1698	https://wiki.xxiivv.com/site/lietal.html	The Säldota	\N	\N	\N	2007-03-20
1655	https://wiki.xxiivv.com/site/bifurcan.html	Update	\N	\N	\N	2014-06-18
1659	https://wiki.xxiivv.com/site/serventines.html	Snailden	\N	\N	\N	2014-05-25
1672	https://wiki.xxiivv.com/site/methascope.html	2000x	\N	\N	\N	2014-04-09
1704	https://wiki.xxiivv.com/site/hiversaires.html	Post Mortem	\N	\N	\N	2013-02-11
1660	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	Autumn Leaves	\N	\N	\N	2014-05-19
1662	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	Spring	\N	\N	\N	2014-05-19
1664	https://wiki.xxiivv.com/site/purgateus.html	Night Time	\N	\N	\N	2014-05-16
1665	https://wiki.xxiivv.com/site/purgateus.html	Dusk	\N	\N	\N	2014-05-16
1666	https://wiki.xxiivv.com/site/nereid.html	The Habitat	\N	\N	\N	2014-04-22
1667	https://wiki.xxiivv.com/site/nereid.html	The Stems	\N	\N	\N	2014-04-22
1668	https://wiki.xxiivv.com/site/nereid.html	The South	\N	\N	\N	2014-04-22
1669	https://wiki.xxiivv.com/site/nereid.html	The Highways	\N	\N	\N	2014-04-22
1703	https://wiki.xxiivv.com/site/macro.html	Macro DIY iPhone	\N	\N	\N	2010-08-21
1642	https://wiki.xxiivv.com/site/kaleidoscope.html	Lineggen	\N	\N	\N	2014-04-03
1643	https://wiki.xxiivv.com/site/kaleidoscope.html	Diagolite I	\N	\N	\N	2014-04-03
1648	https://wiki.xxiivv.com/site/kaleidoscope.html	Diagolite I	\N	\N	\N	2014-04-03
1690	https://wiki.xxiivv.com/site/typography.html	Mirai Seu	\N	\N	\N	2009-07-13
1707	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 24	\N	\N	\N	2013-02-11
1708	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 20	\N	\N	\N	2013-02-11
1697	https://wiki.xxiivv.com/site/fuji.html	Dusk	\N	\N	\N	2013-07-12
1715	https://wiki.xxiivv.com/site/macro.html	Building a telescope	\N	\N	\N	2010-08-21
1691	https://wiki.xxiivv.com/site/typography.html	Milavregarian	\N	\N	\N	2009-07-13
1717	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Cheapbeats - Tokyo	\N	\N	\N	2012-10-20
1718	https://wiki.xxiivv.com/site/infrared.html	Tokyo Infrared II	\N	\N	\N	2012-08-07
1719	https://wiki.xxiivv.com/site/infrared.html	Tokyo Infrared	\N	\N	\N	2012-08-07
1766	https://wiki.xxiivv.com/site/notebook.html	Swing near Oigura	\N	\N	\N	2007-12-18
1725	https://wiki.xxiivv.com/site/artwork.html	Neoneve Afloat Revis	\N	\N	\N	2007-11-23
1755	https://wiki.xxiivv.com/site/volkenessen.html	Volkenessen Release	\N	\N	\N	2012-01-29
1761	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Mini	\N	\N	\N	2009-07-13
1728	https://wiki.xxiivv.com/site/pico_battle.html	Pico Battle Release	\N	\N	\N	2012-06-27
1752	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	La Nuit Blanche, Montreal	\N	\N	\N	2012-02-11
1737	https://wiki.xxiivv.com/site/macro.html	Fibers	\N	\N	\N	2010-08-21
1741	https://wiki.xxiivv.com/site/germany.html	Travel to Berlin	\N	\N	\N	2012-03-24
1769	https://wiki.xxiivv.com/site/aliceffekt.html	True Form	\N	\N	\N	2011-08-24
1800	https://wiki.xxiivv.com/site/vambits.html	Vambits, Last Gen	\N	\N	\N	2010-03-11
1745	https://wiki.xxiivv.com/site/ring_of_scales.html	Ring of scales	\N	\N	\N	2012-03-13
1724	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Tokyo Tempers	\N	\N	\N	2009-01-01
1799	https://wiki.xxiivv.com/site/death.html	Milk	\N	\N	\N	2006-11-14
1758	https://wiki.xxiivv.com/site/oscean.html	The Pillars	\N	\N	\N	2012-01-13
1757	https://wiki.xxiivv.com/site/mobile.html	Character Builder	\N	\N	\N	2012-01-14
1720	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Ehrivevnv Studies Release	\N	\N	\N	2012-10-20
1760	https://wiki.xxiivv.com/site/from_saharaphorest.html	From Saharaphorest Release	\N	\N	\N	2011-11-28
1762	https://wiki.xxiivv.com/site/from_saharaphorest.html	From Saharaphorest	\N	\N	\N	2011-11-28
1734	https://wiki.xxiivv.com/site/collegiennes.html	Toronto Game Jam 201	\N	\N	\N	2010-08-06
1721	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Blip Festival, Tokyo	\N	\N	\N	2012-10-20
1722	https://wiki.xxiivv.com/site/waiting_for_horus.html	Mar	\N	\N	\N	2012-02-21
1723	https://wiki.xxiivv.com/site/infrared.html	Wereda	\N	\N	\N	2012-08-07
1748	https://wiki.xxiivv.com/site/prototyping.html	PP3DP 1kg Spool Holder	\N	\N	\N	2012-03-07
1730	https://wiki.xxiivv.com/site/diluvium.html	Logo	\N	\N	\N	2012-05-20
1733	https://wiki.xxiivv.com/site/occulter.html	Coal	\N	\N	\N	2012-05-02
1735	https://wiki.xxiivv.com/site/occulter.html	Binchotan	\N	\N	\N	2012-05-02
1736	https://wiki.xxiivv.com/site/occulter.html	Occulter	\N	\N	\N	2012-05-02
1795	https://wiki.xxiivv.com/site/siseon.html	Siseon	\N	\N	\N	2011-02-05
1731	https://wiki.xxiivv.com/site/diluvium.html	Diluvium	\N	\N	\N	2012-05-20
1743	https://wiki.xxiivv.com/site/france.html	Some bridge some place	\N	\N	\N	2012-03-19
1776	https://wiki.xxiivv.com/site/yajnev.html	Yajnev Thoughts	\N	\N	\N	2011-07-16
1759	https://wiki.xxiivv.com/site/unreleased.html	Merveilles	\N	\N	\N	2009-12-08
1726	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Vetetrandes Lettres Release	\N	\N	\N	2012-03-23
1739	https://wiki.xxiivv.com/site/victorian_punch.html	Punch on the table	\N	\N	\N	2012-04-02
1740	https://wiki.xxiivv.com/site/victorian_punch.html	Banned	\N	\N	\N	2012-04-02
1727	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	iVardensphere Tour, Montreal	\N	\N	\N	2012-03-23
1742	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Noise Complex, Paris	\N	\N	\N	2012-03-23
1744	https://wiki.xxiivv.com/site/france.html	Travel to Paris	\N	\N	\N	2012-03-19
1749	https://wiki.xxiivv.com/site/spagettini_scale.html	Spagettini Scale	\N	\N	\N	2012-03-05
1746	https://wiki.xxiivv.com/site/hex_hive_necklace.html	First Hex Hive Prototype	\N	\N	\N	2012-03-09
1747	https://wiki.xxiivv.com/site/hex_hive_necklace.html	Hex Hive Necklace	\N	\N	\N	2012-03-09
1750	https://wiki.xxiivv.com/site/paradise.html	Lost in Paradise	\N	\N	\N	2012-03-03
1754	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	Es gulf sunflowers Release	\N	\N	\N	2012-02-11
1772	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Lith	\N	\N	\N	2009-07-13
1751	https://wiki.xxiivv.com/site/waiting_for_horus.html	Waiting for Horus	\N	\N	\N	2012-02-21
1753	https://wiki.xxiivv.com/site/waiting_for_horus.html	Rah	\N	\N	\N	2012-02-21
1729	https://wiki.xxiivv.com/site/artwork.html	Hydro74 Remix	\N	\N	\N	2007-11-23
1756	https://wiki.xxiivv.com/site/artwork.html	Veins of brambles	\N	\N	\N	2007-11-23
1767	https://wiki.xxiivv.com/site/the_sixth_season.html	Sixth Season Release	\N	\N	\N	2011-05-21
1773	https://wiki.xxiivv.com/site/rlionn.html	The Rlionn Oasis	\N	\N	\N	2011-08-13
1774	https://wiki.xxiivv.com/site/blam.html	Blam Release	\N	\N	\N	2011-08-04
1768	https://wiki.xxiivv.com/site/rekka.html	Boucherville	\N	\N	\N	2006-07-07
1780	https://wiki.xxiivv.com/site/vermillionth.html	Vermillionth Release	\N	\N	\N	2011-03-20
1782	https://wiki.xxiivv.com/site/vermillionth.html	Live in Paris	\N	\N	\N	2011-03-20
1779	https://wiki.xxiivv.com/site/wallpapers.html	Echorridoors	\N	\N	\N	2010-04-11
1798	https://wiki.xxiivv.com/site/to_the_aeons_hell.html	8Static - Philadelphia	\N	\N	\N	2011-01-07
1770	https://wiki.xxiivv.com/site/sketchbook.html	Andes Necklace	\N	\N	\N	2011-08-30
1771	https://wiki.xxiivv.com/site/aliceffekt.html	Aliceffekt Shirt I	\N	\N	\N	2011-08-24
1775	https://wiki.xxiivv.com/site/notebook.html	The Trial of the Tide	\N	\N	\N	2007-12-18
1781	https://wiki.xxiivv.com/site/the_sixth_season.html	Kinetik Festival, Montreal	\N	\N	\N	2011-05-21
1794	https://wiki.xxiivv.com/site/unreleased.html	Merveilles Portable	\N	\N	\N	2009-12-08
1783	https://wiki.xxiivv.com/site/czech.html	Artifical Mountain Top 2	\N	\N	\N	2011-02-28
1784	https://wiki.xxiivv.com/site/czech.html	Joe	\N	\N	\N	2011-02-28
1785	https://wiki.xxiivv.com/site/czech.html	Nearby Liberec	\N	\N	\N	2011-02-28
1789	https://wiki.xxiivv.com/site/czech.html	Classic	\N	\N	\N	2011-02-28
1797	https://wiki.xxiivv.com/site/notebook.html	Dilitriel	\N	\N	\N	2007-12-18
1860	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	\N	\N	2009-11-03
1817	https://wiki.xxiivv.com/site/canada.html	Jaques Cartier	\N	\N	\N	2010-07-08
1818	https://wiki.xxiivv.com/site/canada.html	Longueuil	\N	\N	\N	2010-07-08
1813	https://wiki.xxiivv.com/site/hypervoid.html	Noirescent	\N	\N	\N	2010-07-29
1847	https://wiki.xxiivv.com/site/osaka.html	Lanterns	\N	\N	\N	2010-02-19
1848	https://wiki.xxiivv.com/site/osaka.html	Temple	\N	\N	\N	2010-02-19
1849	https://wiki.xxiivv.com/site/osaka.html	Ornate	\N	\N	\N	2010-02-19
1850	https://wiki.xxiivv.com/site/osaka.html	Travel to Tokyo, Japan	\N	\N	\N	2010-02-19
1880	https://wiki.xxiivv.com/site/america.html	New York	\N	\N	\N	2008-06-26
1829	https://wiki.xxiivv.com/site/tokyo.html	In Bloom	\N	\N	\N	2010-02-24
1854	https://wiki.xxiivv.com/site/dinaisth.html	Map	\N	\N	\N	2010-02-13
1828	https://wiki.xxiivv.com/site/rekka.html	Leaving	\N	\N	\N	2006-07-07
1803	https://wiki.xxiivv.com/site/pico3.html	Pico3 Release	\N	\N	\N	2010-10-17
1824	https://wiki.xxiivv.com/site/zjeveni.html	Zjeveni	\N	\N	\N	2010-06-17
1875	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	Toy Company, Montreal	\N	\N	\N	2009-01-06
1877	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	Otoroutes Miniatures	\N	\N	\N	2009-01-06
1831	https://wiki.xxiivv.com/site/yokohama.html	China Town	\N	\N	\N	2010-03-02
1810	https://wiki.xxiivv.com/site/macro.html	Raspberry Close Up	\N	\N	\N	2010-08-21
1816	https://wiki.xxiivv.com/site/cenote.html	Cenote	\N	\N	\N	2010-07-20
1819	https://wiki.xxiivv.com/site/audio.html	Loft	\N	\N	\N	2010-07-06
1871	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Recit	\N	\N	\N	2009-07-13
1840	https://wiki.xxiivv.com/site/yokohama.html	Dragon	\N	\N	\N	2010-03-02
1872	https://wiki.xxiivv.com/site/malice.html	Malice Release	\N	\N	\N	2008-06-27
1881	https://wiki.xxiivv.com/site/malice.html	Pulsewave, New York	\N	\N	\N	2008-06-27
1820	https://wiki.xxiivv.com/site/nataniev.html	Nataniev Portrait	\N	\N	\N	2010-07-01
1832	https://wiki.xxiivv.com/site/tokyo.html	Floppy	\N	\N	\N	2010-02-24
1861	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	\N	\N	2009-11-03
1844	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	1H1D vs Shikanokoa, Osaka	\N	\N	\N	2010-02-26
1805	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen II	\N	\N	\N	2010-03-11
1806	https://wiki.xxiivv.com/site/vambits.html	Vambits, DIY	\N	\N	\N	2010-03-11
1807	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen Hallowe	\N	\N	\N	2010-03-11
1826	https://wiki.xxiivv.com/site/idyllic_miners.html	Idyllic Miners Release	\N	\N	\N	2010-05-12
1859	https://wiki.xxiivv.com/site/cyanosis_fever.html	Cyanosis Fever	\N	\N	\N	2009-11-11
1802	https://wiki.xxiivv.com/site/collegiennes.html	Prince Of The Arcade	\N	\N	\N	2010-08-06
1814	https://wiki.xxiivv.com/site/hypervoid.html	Infraviolet	\N	\N	\N	2010-07-29
1815	https://wiki.xxiivv.com/site/hypervoid.html	Dilesion	\N	\N	\N	2010-07-29
1823	https://wiki.xxiivv.com/site/visual.html	Nataniev Fork	\N	\N	\N	2010-06-19
1852	https://wiki.xxiivv.com/site/maeve.html	Pcellar II	\N	\N	\N	2009-10-15
1821	https://wiki.xxiivv.com/site/drownspire.html	Our Studio	\N	\N	\N	2010-06-21
1822	https://wiki.xxiivv.com/site/drownspire.html	Founded Drownspire	\N	\N	\N	2010-06-21
1853	https://wiki.xxiivv.com/site/maeve.html	Pcellar	\N	\N	\N	2009-10-15
1827	https://wiki.xxiivv.com/site/idyllic_miners.html	Kinetik Festival, Montreal	\N	\N	\N	2010-05-12
1855	https://wiki.xxiivv.com/site/unreleased.html	Neonev Raft	\N	\N	\N	2009-12-08
1882	https://wiki.xxiivv.com/site/america.html	Travel to New York	\N	\N	\N	2008-06-26
1856	https://wiki.xxiivv.com/site/neauismetica.html	The Library Of Sand	\N	\N	\N	2009-08-28
1830	https://wiki.xxiivv.com/site/wallpapers.html	Devilsse	\N	\N	\N	2010-04-11
1870	https://wiki.xxiivv.com/site/neauismetica.html	Our forgotten Alphabet	\N	\N	\N	2009-08-28
1808	https://wiki.xxiivv.com/site/personal.html	District 9 Costume II	\N	\N	\N	2010-02-28
1845	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	Netlabel Party - Tokyo	\N	\N	\N	2010-02-26
1834	https://wiki.xxiivv.com/site/tokyo.html	Hanami Train	\N	\N	\N	2010-02-24
1835	https://wiki.xxiivv.com/site/tokyo.html	Wishes	\N	\N	\N	2010-02-24
1837	https://wiki.xxiivv.com/site/tokyo.html	Blaze Blue	\N	\N	\N	2010-02-24
1866	https://wiki.xxiivv.com/site/drypoint.html	Drypoint Release	\N	\N	\N	2009-09-12
1879	https://wiki.xxiivv.com/site/downtemperature.html	Toy Company, Montreal	\N	\N	\N	2007-03-03
1883	https://wiki.xxiivv.com/site/downtemperature.html	Gone Plains	\N	\N	\N	2007-03-03
1878	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Nakano Tempers	\N	\N	\N	2009-01-01
1865	https://wiki.xxiivv.com/site/maeve.html	First Ludivine	\N	\N	\N	2009-10-15
1867	https://wiki.xxiivv.com/site/drypoint.html	Drypoint Landing Zone	\N	\N	\N	2009-09-12
1839	https://wiki.xxiivv.com/site/rekka.html	Hanami Orange	\N	\N	\N	2006-07-07
1863	https://wiki.xxiivv.com/site/notebook.html	Self Portrait	\N	\N	\N	2007-12-18
1862	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	\N	\N	2009-11-03
1864	https://wiki.xxiivv.com/site/valentinel_hopes.html	Valentinel Hopes	\N	\N	\N	2009-11-03
1868	https://wiki.xxiivv.com/site/pedestrian_paradise.html	Pedestrian Paradise Reissue	\N	\N	\N	2009-09-07
1869	https://wiki.xxiivv.com/site/pedestrian_paradise.html	Pedestrian Paradise Release	\N	\N	\N	2009-09-07
1873	https://wiki.xxiivv.com/site/nether_esper_inserts.html	Howl Virgil System	\N	\N	\N	2009-05-17
1801	https://wiki.xxiivv.com/site/artwork.html	Tools to creative	\N	\N	\N	2007-11-23
1857	https://wiki.xxiivv.com/site/artwork.html	Neoneve at the docks	\N	\N	\N	2007-11-23
1804	https://wiki.xxiivv.com/site/merure.html	Merure Release	\N	\N	\N	2009-01-08
1825	https://wiki.xxiivv.com/site/merure.html	Erri Launch	\N	\N	\N	2009-01-08
1858	https://wiki.xxiivv.com/site/merure.html	Merure 2 Launch	\N	\N	\N	2009-01-08
1874	https://wiki.xxiivv.com/site/notebook.html	Heist	\N	\N	\N	2007-12-18
1843	https://wiki.xxiivv.com/site/rekka.html	Rekka in Osaka	\N	\N	\N	2006-07-07
289	https://now.lectronice.com/then/2020-12w51/	2020W51 :: kalama musi ike nanpa wan	\N	\N	\N	2020-12-13
213	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
301	https://now.lectronice.com/then/2020-09w39/	2020W39 :: Questions and fear of the future	\N	\N	\N	2020-09-20
309	https://longest.voyage/log/just-an-earthquake/	Just an Earthquake	\N	\N	\N	2021-02-21
15	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	motore immoto 1	\N	\N	\N	2020-07-09
30	https://notes.neeasade.net/adhoc-executable-patching-on-nix.html	adhoc executable patching on nixos	\N	\N	\N	2020-03-14
226	https://oddworlds.org/gallery/2021-01.html	2021-01	\N	\N	\N	2021-01-22
50	https://writing.natwelch.com/post/706	Zany hijinks while eating the food from Zelda	\N	\N	\N	2019-09-23
236	https://oddworlds.org/cooking/focaccia-genovese.html	Focaccia Genovese	\N	\N	\N	2020-05-18
69	https://resevoir.net//color-in-film	https://resevoir.net//color-in-film	\N	\N	\N	2019-03-16
77	https://resevoir.net//foraging	https://resevoir.net//foraging	\N	\N	\N	2020-10-09
633	https://icyphox.sh/blog/mastodon-to-pleroma	Migrating from Mastodon to Pleroma	\N	\N	\N	2020-09-04
82	https://resevoir.net//intermediate-representations	https://resevoir.net//intermediate-representations	\N	\N	\N	2020-03-08
252	https://chad.is/beautiful-code/	Beautiful code does not make a beautiful product	\N	\N	\N	2013-03-27
98	https://resevoir.net//sailboat-as-gaze	https://resevoir.net//sailboat-as-gaze	\N	\N	\N	2020-09-17
115	https://resevoir.net//writing-drawings	https://resevoir.net//writing-drawings	\N	\N	\N	2019-11-08
129	https://szymonkaliski.com/writing/2019-03-31-end-user-programming/	End-User Programming	\N	\N	\N	2019-03-31
326	https://longest.voyage/log/week4/	Week 4: Random Thoughts	\N	\N	\N	2018-11-18
147	https://szymonkaliski.com/writing/2017-08-20-skyrock-projects/	Teaching Creative Coding in Taipei	\N	\N	\N	2017-08-20
165	https://szymonkaliski.com/projects/google-io-android-diversity/	No title	\N	\N	\N	2015-11-28
178	gemini://xj-ix.luxe/posts/2021-01-14-parasitic-hypervisor.gmi	parasitic hypervisor	\N	\N	\N	2021-01-14
192	gemini://xj-ix.luxe/posts/2020-04-20-why-permanent-global-identity.gmi	why permanent global identity?	\N	\N	\N	2020-04-20
643	https://icyphox.sh/blog/s-nail	The S-nail mail client	\N	\N	\N	2020-05-06
648	https://icyphox.sh/blog/covid19-disinfo	COVID-19 disinformation	\N	\N	\N	2020-03-15
663	https://icyphox.sh/blog/pycon-wrap-up	PyCon India 2019 wrap-up	\N	\N	\N	2019-10-15
1	http://nonmateria.com/posts/2021_03_19__la_retta.html	la retta	\N	\N	\N	2021-03-19
201	http://nonmateria.com/posts/2021_03_19__la_retta.html	la retta	\N	\N	\N	2021-03-19
336	https://kokorobot.ca/site/rug.html	Ocean plait mat tutorial	\N	\N	\N	2020-12-07
202	http://nonmateria.com/posts/2021_03_15__url_changed.html	url changed	\N	\N	\N	2021-03-15
687	https://royniang.com/practice.html	Fixed weight issues; some new glyphs	\N	\N	\N	2020-10-01
348	https://phse.net/authoring-a-gemini-capsule-with-hugo/	Authoring a Gemini Capsule with Hugo	\N	\N	\N	2021-02-14
3	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	infected clock III	\N	\N	\N	2020-11-16
371	https://rosano.hmm.garden	Personal wiki	\N	\N	\N	2021-01-03
688	https://royniang.com/practice.html	Drafted m, n, t; some fixes	\N	\N	\N	2020-10-01
379	/en/carrot-price	Carrot Price	\N	\N	\N	2018-07-04
385	https://teknari.com/blogpost/1595774170477/St+Petersburg+Handmade+Prints+Book	St Petersburg Handmade Prints Book	\N	\N	\N	2020-07-26
689	https://royniang.com/practice.html	Drafted l, a, d and b	\N	\N	\N	2020-10-01
386	https://teknari.com/blogpost/1595699426843/St+Petersburg	St Petersburg	\N	\N	\N	2020-07-25
390	https://teknari.com/blogpost/1595684574574/2015+December+Journal+	2015 December Journal 	\N	\N	\N	2020-07-25
406	https://teknari.com/blogpost/1594235757539/2014+Journal	2014 Journal	\N	\N	\N	2020-07-08
614	https://gueorgui.net/blog/2020/new-projects-dissertation-returnees/	Two new projects: dissertation and Returnees 海归	\N	\N	\N	2020-03-22
726	https://royniang.com/diary.html	Petting Canelle at La Réole	\N	\N	\N	2019-08-01
680	https://royniang.com/patience.html	Added public gmi files to koikoi’s build	\N	\N	\N	2020-11-01
683	https://royniang.com/type_design.html	The specimen of Akzidenz Grotesque	\N	\N	\N	2020-10-22
727	https://royniang.com/identity.html	Minous, stretching	\N	\N	\N	2019-02-01
720	https://royniang.com/street.html	Kid and grandpa on a scooter	\N	\N	\N	2019-10-03
728	https://royniang.com/identity.html	Minous, the stray cat	\N	\N	\N	2019-02-01
743	http://q.pfiffer.org/posts/2020-03-02-Decoupling_your_game_loop.html	 Decoupling your game loop	\N	\N	\N	2020-03-02
759	http://q.pfiffer.org/posts/2017-10-21-Notes_from_two_weeks_of_haskell.html	 Notes from Two Weeks of Haskell	\N	\N	\N	2017-10-21
780	http://q.pfiffer.org/posts/2013-12-09-Bcache_and_LVM.html	 Bcache and LVM non-destructive setup	\N	\N	\N	2013-12-09
814	https://materialfuture.net/posts/music/space-album-video/	Space Album Video - Video Schedules	\N	\N	\N	2020-11-07
795	https://www.edwinwenink.xyz/posts/50-quiz_yourself_in_vim/	Study Tip: Quiz yourself in Vim	\N	\N	\N	2020-06-16
796	https://www.edwinwenink.xyz/posts/49-russell_ai_technocracy_surveillance/	Russell on AI in technocracy and surveillance	\N	\N	\N	2020-05-08
849	https://travisshears.com/blog/schachentorkopf-ridge-tour/	schachentorkopf ridge tour	\N	\N	\N	2021-01-09
824	https://materialfuture.net/posts/blog/time-to-step-back/	Time to Step Back and Reflect	\N	\N	\N	2020-08-16
1885	https://wiki.xxiivv.com/site/artwork.html	When	\N	\N	\N	2007-11-23
1892	https://wiki.xxiivv.com/site/quotes.html	Telepaths	\N	\N	\N	2006-07-28
1884	https://wiki.xxiivv.com/site/downtemperature.html	Toy Company, Montreal	\N	\N	\N	2007-03-03
1891	https://wiki.xxiivv.com/site/death.html	Metropolis	\N	\N	\N	2006-11-14
1895	https://wiki.xxiivv.com/site/rekka.html	New Challenger	\N	\N	\N	2006-07-07
1889	https://wiki.xxiivv.com/site/lietal.html	Composing Words	\N	\N	\N	2007-03-20
1890	https://wiki.xxiivv.com/site/downtemperature.html	Downtemperature Release	\N	\N	\N	2007-03-03
1887	https://wiki.xxiivv.com/site/notebook.html	Best Rave Evar	\N	\N	\N	2007-12-18
1886	https://wiki.xxiivv.com/site/artwork.html	Time Stands Still	\N	\N	\N	2007-11-23
1893	https://wiki.xxiivv.com/site/old_cities.html	01	\N	\N	\N	2006-07-14
1894	https://wiki.xxiivv.com/site/old_cities.html	01	\N	\N	\N	2006-07-14
860	https://travisshears.com/tutorials/pi-static-ip/	Setting a Static IP on Pi	\N	\N	\N	2020-08-19
868	https://travisshears.com/blog/ski-gear-2019-2020/	2019/2020 ski gear	\N	\N	\N	2020-08-07
1163	https://wiki.xxiivv.com/site/origami.html	Sonobe 3	\N	\N	\N	2020-12-04
881	https://travisshears.com/snippets/deployment-env-yaml-snippet/	K8s deployment.yaml env vscode snippet	\N	\N	\N	2020-06-20
1164	https://wiki.xxiivv.com/site/origami.html	Sonobe 12	\N	\N	\N	2020-12-04
898	https://travisshears.com/snippets/vim-open-file-under-cursor/	Vim Open File Under Cursor	\N	\N	\N	2020-03-06
914	https://travisshears.com/snippets/shell-for-loops/	For loops in bash / zsh shells	\N	\N	\N	2020-01-12
928	https://travisshears.com/snippets/scp/	I need a file off my server but I don't want to set up FTP	\N	\N	\N	2020-01-11
930	https://travisshears.com/snippets/git-better-git-add/	Better Git Add	\N	\N	\N	2020-01-11
931	https://travisshears.com/snippets/git-move-branch/	Move Branch	\N	\N	\N	2020-01-11
942	https://travisshears.com/snippets/aws-cloud-front-inval/	AWS CloudFront invalidation Sync	\N	\N	\N	2020-01-11
966	https://ix5.org/thoughts/2020/moving/	Moving	\N	\N	\N	2020-03-02
971	https://ix5.org/thoughts/2017/grundgesetz-article-6/	Article 6: Marriage, Family and Children	\N	\N	\N	2017-04-03
988	https://nor.the-rn.info/2021/03/06/why-im-streaming-the-writing-of-my-next-album/	Why I’m Streaming the Making of My Next Album	\N	\N	\N	2021-03-06
1002	https://inqlab.net/lord-of-the-flies.html	Lord of the Flies	\N	\N	\N	2019-10-22
1007	https://metasyn.pw/memex.html	5f90c23e68d81f624bd57bc9	\N	\N	\N	2020-10-21
1014	http://milofultz.com/2021/01/28/snake-js	🐍 SNAKEHACK - snake with constantly changing controls	\N	\N	\N	2021-01-28
1033	http://milofultz.com/2020/09/26/zentube	💻 Zentube - Youtube Lite w/Note Taking (HTML/CSS/JS)	\N	\N	\N	2020-09-26
1048	http://milofultz.com/2020/06/25/inexpensive-games	Inexpensive and Minimal Equipment Games To Play	\N	\N	\N	2020-06-25
1851	https://wiki.xxiivv.com/site/identity.html	72DEC2 Converses	\N	\N	\N	2010-02-16
1111	https://irimi.one/music/ursulas-cartrigdes-lord-of-the-game/	Death Grips - Lord of the Game (Ursula's Cartridges DnB Remix)	\N	\N	\N	2020-10-19
1133	https://www.gr0k.net/blog/zynthin-tips-and-tricks.html	Zynthian Tips and Tricks	\N	\N	\N	2021-02-03
1136	https://www.gr0k.net/blog/zynthian-first-impressions.html	Zynthian v4.1 Kit - First Impressions	\N	\N	\N	2021-01-28
1146	https://tendigits.space/notes/imac-with-linux/	New Linux for an old iMac	\N	\N	\N	2020-06-17
1258	https://wiki.xxiivv.com/site/minamiise.html	After the Rain	\N	\N	\N	2019-04-14
1409	https://wiki.xxiivv.com/site/left.html	Original Writing Layout	\N	\N	\N	2017-08-07
1422	https://wiki.xxiivv.com/site/left.html	Left Screencapture	\N	\N	\N	2017-08-07
1186	https://wiki.xxiivv.com/site/shimoda.html	Robusta Mit Pino	\N	\N	\N	2020-05-28
1187	https://wiki.xxiivv.com/site/shimoda.html	下田温泉富士屋ホテル	\N	\N	\N	2020-05-28
1188	https://wiki.xxiivv.com/site/shimoda.html	Shimoda Waterway	\N	\N	\N	2020-05-28
1189	https://wiki.xxiivv.com/site/shimoda.html	Pino in Shimoda	\N	\N	\N	2020-05-28
1269	https://wiki.xxiivv.com/site/minamiise.html	Up that hill	\N	\N	\N	2019-04-14
1270	https://wiki.xxiivv.com/site/minamiise.html	Shore Ghostly	\N	\N	\N	2019-04-14
1362	https://wiki.xxiivv.com/site/wiktopher.html	A Bed Of Dust	\N	\N	\N	2017-11-06
1427	https://wiki.xxiivv.com/site/left.html	Tooling	\N	\N	\N	2017-08-07
1153	https://wiki.xxiivv.com/site/nasu.html	Nasu on Uxn	\N	\N	\N	2020-02-02
1206	https://wiki.xxiivv.com/site/nasu.html	Nasu Web Release	\N	\N	\N	2020-02-02
1271	https://wiki.xxiivv.com/site/minamiise.html	Coastal Ghostly	\N	\N	\N	2019-04-14
1272	https://wiki.xxiivv.com/site/minamiise.html	Gokasho	\N	\N	\N	2019-04-14
1273	https://wiki.xxiivv.com/site/minamiise.html	Kirihara	\N	\N	\N	2019-04-14
1274	https://wiki.xxiivv.com/site/minamiise.html	In a ghost town near you	\N	\N	\N	2019-04-14
1279	https://wiki.xxiivv.com/site/minamiise.html	Tennis Court Skate Park	\N	\N	\N	2019-04-14
1294	https://wiki.xxiivv.com/site/minamiise.html	Shannon Entropy	\N	\N	\N	2019-04-14
1295	https://wiki.xxiivv.com/site/minamiise.html	Our Neighbor	\N	\N	\N	2019-04-14
1296	https://wiki.xxiivv.com/site/minamiise.html	Shima Yacht Arbor	\N	\N	\N	2019-04-14
1738	https://wiki.xxiivv.com/site/personal.html	Bored in France	\N	\N	\N	2010-02-28
1763	https://wiki.xxiivv.com/site/personal.html	Shiro	\N	\N	\N	2010-02-28
1764	https://wiki.xxiivv.com/site/personal.html	Chez Liette	\N	\N	\N	2010-02-28
1777	https://wiki.xxiivv.com/site/personal.html	Alex Shoes	\N	\N	\N	2010-02-28
1778	https://wiki.xxiivv.com/site/personal.html	Jerome	\N	\N	\N	2010-02-28
1809	https://wiki.xxiivv.com/site/personal.html	District 9 Costume I	\N	\N	\N	2010-02-28
1836	https://wiki.xxiivv.com/site/personal.html	Lea	\N	\N	\N	2010-02-28
1842	https://wiki.xxiivv.com/site/personal.html	Kabukicho	\N	\N	\N	2010-02-28
1786	https://wiki.xxiivv.com/site/czech.html	Country Side	\N	\N	\N	2011-02-28
1297	https://wiki.xxiivv.com/site/minamiise.html	Sail to Minamiise, Japan	\N	\N	\N	2019-04-14
1478	https://wiki.xxiivv.com/site/black.html	Ensenada Water Walk	\N	\N	\N	2015-04-24
1481	https://wiki.xxiivv.com/site/black.html	Near La Paz	\N	\N	\N	2015-04-24
1433	https://wiki.xxiivv.com/site/niue.html	Sail to Alofi, Niue	\N	\N	\N	2017-07-28
1484	https://wiki.xxiivv.com/site/black.html	Off The Coast Of Mexico	\N	\N	\N	2015-04-24
1486	https://wiki.xxiivv.com/site/black.html	Ensenada Trash Hill Top	\N	\N	\N	2015-04-24
1504	https://wiki.xxiivv.com/site/black.html	Cooking	\N	\N	\N	2015-04-24
1595	https://wiki.xxiivv.com/site/oquonie.html	Nephtaline wandering	\N	\N	\N	2014-02-03
1607	https://wiki.xxiivv.com/site/oquonie.html	Bit Bazaar	\N	\N	\N	2014-02-03
1634	https://wiki.xxiivv.com/site/serventines.html	Milreaf	\N	\N	\N	2014-05-25
1610	https://wiki.xxiivv.com/site/oquonie.html	Walkthrough	\N	\N	\N	2014-02-03
1674	https://wiki.xxiivv.com/site/kaleidoscope.html	Gorgeous Leon	\N	\N	\N	2014-04-03
1656	https://wiki.xxiivv.com/site/oquonie.html	Nastazie	\N	\N	\N	2014-02-03
1678	https://wiki.xxiivv.com/site/oquonie.html	A Lost Neomine	\N	\N	\N	2014-02-03
1680	https://wiki.xxiivv.com/site/oquonie.html	Goodies	\N	\N	\N	2014-02-03
1681	https://wiki.xxiivv.com/site/oquonie.html	And so began testing	\N	\N	\N	2014-02-03
1682	https://wiki.xxiivv.com/site/oquonie.html	From Thailand	\N	\N	\N	2014-02-03
1546	https://wiki.xxiivv.com/site/austria.html	Wolfinger Hotel	\N	\N	\N	2015-08-30
1415	https://wiki.xxiivv.com/site/dotgrid.html	Dotless Dotgrid Interface	\N	\N	\N	2017-11-03
1547	https://wiki.xxiivv.com/site/austria.html	Travel to Vienna	\N	\N	\N	2015-08-30
1497	https://wiki.xxiivv.com/site/pino.html	Workstation Aboard Pino	\N	\N	\N	2016-02-27
1514	https://wiki.xxiivv.com/site/pino.html	From Inside	\N	\N	\N	2016-02-27
1516	https://wiki.xxiivv.com/site/pino.html	Slice	\N	\N	\N	2016-02-27
1425	https://wiki.xxiivv.com/site/marabu.html	Version 2	\N	\N	\N	2017-08-11
1305	https://wiki.xxiivv.com/site/shizuoka.html	Moored downtown Shizuoka	\N	\N	\N	2019-03-07
1309	https://wiki.xxiivv.com/site/shizuoka.html	Sail to Shizuoka, Japan	\N	\N	\N	2019-03-07
1765	https://wiki.xxiivv.com/site/collegiennes.html	Prince of the Arcade	\N	\N	\N	2010-08-06
1457	https://wiki.xxiivv.com/site/marquesas.html	Sail to Nuku Hiva, Marquesas	\N	\N	\N	2017-03-02
1315	https://wiki.xxiivv.com/site/ogasawara.html	Marus	\N	\N	\N	2019-01-24
1316	https://wiki.xxiivv.com/site/ogasawara.html	Terraforming done right	\N	\N	\N	2019-01-24
1318	https://wiki.xxiivv.com/site/ogasawara.html	Omura Weather Station	\N	\N	\N	2019-01-24
1320	https://wiki.xxiivv.com/site/ogasawara.html	Epave	\N	\N	\N	2019-01-24
1321	https://wiki.xxiivv.com/site/ogasawara.html	An Old Bunker	\N	\N	\N	2019-01-24
1322	https://wiki.xxiivv.com/site/ogasawara.html	Omura Entrance	\N	\N	\N	2019-01-24
1323	https://wiki.xxiivv.com/site/ogasawara.html	Mixed Architecture	\N	\N	\N	2019-01-24
1325	https://wiki.xxiivv.com/site/ogasawara.html	Sail to Chichijima, Japan	\N	\N	\N	2019-01-24
1365	https://wiki.xxiivv.com/site/hundred_rabbits.html	Rekka At work	\N	\N	\N	2015-11-09
1732	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Kinetik Festival, Montreal	\N	\N	\N	2012-03-23
1552	https://wiki.xxiivv.com/site/beauty.html	Hydreviral	\N	\N	\N	2014-10-22
1616	https://wiki.xxiivv.com/site/beauty.html	A voice in the night	\N	\N	\N	2014-10-22
1590	https://wiki.xxiivv.com/site/america.html	Desert Snow Covered Moutains	\N	\N	\N	2008-06-26
1403	https://wiki.xxiivv.com/site/film.html	Auckland	\N	\N	\N	2016-08-10
1407	https://wiki.xxiivv.com/site/film.html	Auckland Beach	\N	\N	\N	2016-08-10
1408	https://wiki.xxiivv.com/site/film.html	Whangarei Bridge	\N	\N	\N	2016-08-10
1617	https://wiki.xxiivv.com/site/beauty.html	Plasmytic	\N	\N	\N	2014-10-22
1618	https://wiki.xxiivv.com/site/beauty.html	Benignytic	\N	\N	\N	2014-10-22
1451	https://wiki.xxiivv.com/site/the_sublime.html	Scare In Rarotonga	\N	\N	\N	2017-03-26
1888	https://wiki.xxiivv.com/site/artwork.html	Neoneve Afloat	\N	\N	\N	2007-11-23
1793	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Neau	\N	\N	\N	2009-07-13
1619	https://wiki.xxiivv.com/site/beauty.html	Leiomytic	\N	\N	\N	2014-10-22
1491	https://wiki.xxiivv.com/site/film.html	Old Camera Gear	\N	\N	\N	2016-08-10
1492	https://wiki.xxiivv.com/site/film.html	Meeting With Alaska Friends	\N	\N	\N	2016-08-10
1493	https://wiki.xxiivv.com/site/film.html	Pino Docked	\N	\N	\N	2016-08-10
1494	https://wiki.xxiivv.com/site/film.html	Before the evening	\N	\N	\N	2016-08-10
1620	https://wiki.xxiivv.com/site/beauty.html	Nevocytic	\N	\N	\N	2014-10-22
1628	https://wiki.xxiivv.com/site/brane.html	III	\N	\N	\N	2014-09-18
1709	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 15	\N	\N	\N	2013-02-11
1710	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 12	\N	\N	\N	2013-02-11
1711	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 10	\N	\N	\N	2013-02-11
1713	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 9	\N	\N	\N	2013-02-11
1714	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 8	\N	\N	\N	2013-02-11
1812	https://wiki.xxiivv.com/site/collegiennes.html	Cloud is a Lie	\N	\N	\N	2010-08-06
1838	https://wiki.xxiivv.com/site/tokyo.html	Lea	\N	\N	\N	2010-02-24
1507	https://wiki.xxiivv.com/site/rekka.html	Sailing trip in Quebec	\N	\N	\N	2006-07-07
1787	https://wiki.xxiivv.com/site/czech.html	Visualscream Studio	\N	\N	\N	2011-02-28
1788	https://wiki.xxiivv.com/site/czech.html	Tree of Pan	\N	\N	\N	2011-02-28
1790	https://wiki.xxiivv.com/site/czech.html	Spaceship Church	\N	\N	\N	2011-02-28
1791	https://wiki.xxiivv.com/site/czech.html	Czech Ramen	\N	\N	\N	2011-02-28
1792	https://wiki.xxiivv.com/site/czech.html	Travel to Czech	\N	\N	\N	2011-02-28
1876	https://wiki.xxiivv.com/site/merure.html	Merure I Cover	\N	\N	\N	2009-01-08
1796	https://wiki.xxiivv.com/site/artwork.html	Yajnev	\N	\N	\N	2007-11-23
1841	https://wiki.xxiivv.com/site/tokyo.html	Void Garden	\N	\N	\N	2010-02-24
1811	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen I	\N	\N	\N	2010-03-11
1833	https://wiki.xxiivv.com/site/vambits.html	Vambits in Japan	\N	\N	\N	2010-03-11
1846	https://wiki.xxiivv.com/site/tokyo.html	Kabukicho	\N	\N	\N	2010-02-24
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

