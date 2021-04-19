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

COPY public.posts (id, article_url, article_title, article_summary, article_host, article_date) FROM stdin;
4	http://nonmateria.com/posts/2020_10_30__pages_added.html	pages added	\N	\N	2020-10-30
5	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	infected clock II	\N	\N	2020-10-27
6	http://nonmateria.com/posts/2020_07_12__infected_clock.html	infected clock	\N	\N	2020-07-12
7	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
8	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
9	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
10	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
11	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
12	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
13	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
14	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
16	http://nonmateria.com/posts/2020_04_10__la_cauzione.html	la cauzione	\N	\N	2020-04-10
17	https://notes.neeasade.net/systemd-user-services.html	systemd user services	\N	\N	2021-01-02
18	https://notes.neeasade.net/search-term-playlists.html	search term playlists	\N	\N	2020-12-13
19	https://notes.neeasade.net/color-spaces.html	reasoning about colors	\N	\N	2020-11-24
20	https://notes.neeasade.net/my-shell-prompt.html	my shell prompt	\N	\N	2020-11-09
21	https://notes.neeasade.net/Automata-tiling-backgrounds-2.html	Automata tiling backgrounds 2	\N	\N	2020-08-14
22	https://notes.neeasade.net/Aug-2020.html	8 Months Adrift	\N	\N	2020-08-04
23	https://notes.neeasade.net/Pinebook-Pro.html	Pinebook Pro	\N	\N	2020-06-09
24	https://notes.neeasade.net/tickling-bash-a-rofi-adventure.html	tickling bash, the quest for the perfect menu	\N	\N	2020-05-10
25	https://notes.neeasade.net/Automata-tiling-backgrounds.html	Automata tiling backgrounds	\N	\N	2020-05-08
26	https://notes.neeasade.net/checking-for-toots.html	checking for toots	\N	\N	2020-05-03
27	https://notes.neeasade.net/blog-meta.html	May Days	\N	\N	2020-05-02
28	https://notes.neeasade.net/reverse-ssh-tunnels.html	reverse ssh tunnels	\N	\N	2020-04-10
29	https://notes.neeasade.net/xeros-irc-ref.html	xero's irc ref	\N	\N	2020-04-04
31	https://notes.neeasade.net/On-Emacs.html	On Emacs	\N	\N	2019-12-06
32	https://aless.co/2020/	2020	\N	\N	2020-12-11
33	https://aless.co/typed-web-workers/	Typed Web Workers	\N	\N	2020-04-30
34	https://aless.co/gatsby-wasm-plugin/	Building a Gatsby Plugin with Wasm	\N	\N	2020-01-06
35	https://aless.co/2019/	2019	\N	\N	2019-12-01
36	https://aless.co/resume-as-code/	Resume as Code	\N	\N	2019-10-08
37	https://aless.co/how-to-build-a-keyboard/	How to Build a Keyboard, Pt.1	\N	\N	2019-05-27
38	https://aless.co/working-at-the-edge/	Working at the Edge	\N	\N	2019-02-18
39	https://aless.co/teach-a-girl-to-program/	Teach a Girl to Program	\N	\N	2016-06-28
40	https://aless.co/from-bitmaker-to-breather/	From Bitmaker to Breather	\N	\N	2015-03-04
41	https://aless.co/coding-is-not-cs/	Coding != Computer Science	\N	\N	2014-07-07
42	https://writing.natwelch.com/post/714	2020: Year in Review	\N	\N	2021-01-02
43	https://writing.natwelch.com/post/713	Bugs Fixed on Vacation	\N	\N	2020-11-05
44	https://writing.natwelch.com/post/711	Tales from Isolation: Coding	\N	\N	2020-04-05
45	https://writing.natwelch.com/post/710	2019: Year in Review	\N	\N	2020-01-02
46	https://writing.natwelch.com/post/703	Nat Welch Manifesto	\N	\N	2019-12-01
47	https://writing.natwelch.com/post/709	Inspiration	\N	\N	2019-11-10
48	https://writing.natwelch.com/post/708	Exercise of Grandmasters	\N	\N	2019-10-12
49	https://writing.natwelch.com/post/707	reportd: Self hosted CSP reporting	\N	\N	2019-10-05
51	https://writing.natwelch.com/post/705	Hack a satellite	\N	\N	2019-09-22
52	https://writing.natwelch.com/post/704	The Nat Index 2019-09-14	\N	\N	2019-09-14
53	https://writing.natwelch.com/post/701	Japan 2019 Travel Log Day 6, 7 & 8	\N	\N	2019-05-22
54	https://writing.natwelch.com/post/699	DIY Cron & Continuous Delivery on GKE	\N	\N	2019-05-20
55	https://writing.natwelch.com/post/700	Japan 2019 Travel Log Day 5	\N	\N	2019-05-19
56	https://writing.natwelch.com/post/698	Japan 2019 Travel Log Day 4	\N	\N	2019-05-18
57	https://writing.natwelch.com/post/697	Japan 2019 Travel Log Day 3	\N	\N	2019-05-16
58	https://writing.natwelch.com/post/696	Japan 2019 Travel Log Day 2	\N	\N	2019-05-15
59	https://writing.natwelch.com/post/695	Japan 2019 Travel Log Day 1	\N	\N	2019-05-14
60	https://writing.natwelch.com/post/694	What's making me happy 2019-04-20	\N	\N	2019-04-21
61	https://writing.natwelch.com/post/693	New book night	\N	\N	2019-04-16
62	https://resevoir.net//about	https://resevoir.net//about	\N	\N	2018-12-17
63	https://resevoir.net//annotation	https://resevoir.net//annotation	\N	\N	2019-09-15
64	https://resevoir.net//auto-rickshaw	https://resevoir.net//auto-rickshaw	\N	\N	2018-08-25
65	https://resevoir.net//bicycles	https://resevoir.net//bicycles	\N	\N	2020-10-09
66	https://resevoir.net//biking	https://resevoir.net//biking	\N	\N	2019-09-19
67	https://resevoir.net//bricolage	https://resevoir.net//bricolage	\N	\N	2020-06-26
68	https://resevoir.net//chasmic	https://resevoir.net//chasmic	\N	\N	2019-09-22
70	https://resevoir.net//community-network-project	https://resevoir.net//community-network-project	\N	\N	2019-07-23
71	https://resevoir.net//craft	https://resevoir.net//craft	\N	\N	2020-06-17
72	https://resevoir.net//daerim-dong	https://resevoir.net//daerim-dong	\N	\N	2018-01-28
73	https://resevoir.net//deep-work	https://resevoir.net//deep-work	\N	\N	2019-05-02
74	https://resevoir.net//documenting	https://resevoir.net//documenting	\N	\N	2020-06-17
75	https://resevoir.net//eoy-2019	https://resevoir.net//eoy-2019	\N	\N	2020-01-04
76	https://resevoir.net//fermentation	https://resevoir.net//fermentation	\N	\N	2020-04-04
2	http://nonmateria.com/posts/2021_03_15__url_changed.html	url changed	\N	\N	2021-03-15
78	https://resevoir.net//fraktur	https://resevoir.net//fraktur	\N	\N	2018-12-20
79	https://resevoir.net//git-for-filmmakers	https://resevoir.net//git-for-filmmakers	\N	\N	2019-08-29
80	https://resevoir.net//historiography	https://resevoir.net//historiography	\N	\N	2018-11-08
81	https://resevoir.net//index	https://resevoir.net//index	\N	\N	2020-06-17
83	https://resevoir.net//jonathan	https://resevoir.net//jonathan	\N	\N	2019-11-12
84	https://resevoir.net//kiron	https://resevoir.net//kiron	\N	\N	2018-08-02
85	https://resevoir.net//library	https://resevoir.net//library	\N	\N	2019-09-01
86	https://resevoir.net//lifestyle	https://resevoir.net//lifestyle	\N	\N	2020-06-10
87	https://resevoir.net//manifestations	https://resevoir.net//manifestations	\N	\N	2019-08-11
88	https://resevoir.net//mediums	https://resevoir.net//mediums	\N	\N	2020-06-17
89	https://resevoir.net//midi-plotter	https://resevoir.net//midi-plotter	\N	\N	2020-08-06
90	https://resevoir.net//org-mode	https://resevoir.net//org-mode	\N	\N	2019-09-22
91	https://resevoir.net//pointers	https://resevoir.net//pointers	\N	\N	2020-03-08
92	https://resevoir.net//portable-printing	https://resevoir.net//portable-printing	\N	\N	2019-04-12
93	https://resevoir.net//portable-typewriter	https://resevoir.net//portable-typewriter	\N	\N	2018-12-20
94	https://resevoir.net//practice	https://resevoir.net//practice	\N	\N	2020-06-17
95	https://resevoir.net//quotes	https://resevoir.net//quotes	\N	\N	2019-07-28
96	https://resevoir.net//research	https://resevoir.net//research	\N	\N	2020-06-17
97	https://resevoir.net//resevoir	https://resevoir.net//resevoir	\N	\N	2020-06-17
99	https://resevoir.net//sailing	https://resevoir.net//sailing	\N	\N	2020-10-09
100	https://resevoir.net//selfcare-checklist	https://resevoir.net//selfcare-checklist	\N	\N	0001-01-01
101	https://resevoir.net//service-design	https://resevoir.net//service-design	\N	\N	2018-08-08
102	https://resevoir.net//slitscan-experiments	https://resevoir.net//slitscan-experiments	\N	\N	2018-11-02
103	https://resevoir.net//slitscan-video	https://resevoir.net//slitscan-video	\N	\N	2018-01-08
104	https://resevoir.net//space	https://resevoir.net//space	\N	\N	2019-09-27
105	https://resevoir.net//studies	https://resevoir.net//studies	\N	\N	2019-05-28
106	https://resevoir.net//tactile	https://resevoir.net//tactile	\N	\N	2020-06-16
107	https://resevoir.net//targets	https://resevoir.net//targets	\N	\N	2019-04-13
108	https://resevoir.net//text	https://resevoir.net//text	\N	\N	2019-08-05
109	https://resevoir.net//time-based	https://resevoir.net//time-based	\N	\N	2020-06-17
110	https://resevoir.net//tools	https://resevoir.net//tools	\N	\N	2020-06-17
111	https://resevoir.net//trails	https://resevoir.net//trails	\N	\N	2019-05-02
112	https://resevoir.net//urgency	https://resevoir.net//urgency	\N	\N	2019-08-02
113	https://resevoir.net//visiweave	https://resevoir.net//visiweave	\N	\N	2020-04-16
114	https://resevoir.net//webring	https://resevoir.net//webring	\N	\N	2019-08-20
116	https://resevoir.net//year-in-books-2019	https://resevoir.net//year-in-books-2019	\N	\N	2020-01-04
117	https://szymonkaliski.com/newsletter/2021-03-29-q1-2021/	Q1 2021	\N	\N	2021-03-29
118	https://szymonkaliski.com/projects/haze/	No title	\N	\N	2021-02-17
119	https://szymonkaliski.com/newsletter/2020-12-28-end-of-2020/	End of 2020	\N	\N	2020-12-28
120	https://szymonkaliski.com/projects/fabfungus/	No title	\N	\N	2020-11-12
121	https://szymonkaliski.com/projects/liveboard/	No title	\N	\N	2020-07-23
122	https://szymonkaliski.com/projects/protoboard/	No title	\N	\N	2020-07-14
123	https://szymonkaliski.com/projects/hhann/	No title	\N	\N	2020-06-30
124	https://szymonkaliski.com/writing/2020-04-19-memex-dreams/	Memex Dreams	\N	\N	2020-04-19
125	https://szymonkaliski.com/projects/archivist/	No title	\N	\N	2020-01-01
126	https://szymonkaliski.com/projects/nott/	No title	\N	\N	2019-07-01
127	https://szymonkaliski.com/projects/volume-brush/	No title	\N	\N	2019-06-25
128	https://szymonkaliski.com/projects/modeler/	No title	\N	\N	2019-04-19
130	https://szymonkaliski.com/writing/2019-03-01-building-dacein/	Building Dacein	\N	\N	2019-03-01
131	https://szymonkaliski.com/projects/dacein/	No title	\N	\N	2019-03-01
132	https://szymonkaliski.com/writing/2018-11-27-laboratory-residency/	Laboratory Residency	\N	\N	2018-11-27
133	https://szymonkaliski.com/projects/hiccup-sdf/	No title	\N	\N	2018-11-25
134	https://szymonkaliski.com/projects/hhtwm/	No title	\N	\N	2018-11-03
135	https://szymonkaliski.com/projects/sketchbook-cli/	No title	\N	\N	2018-08-29
136	https://szymonkaliski.com/projects/editable-cli/	No title	\N	\N	2018-08-19
137	https://szymonkaliski.com/projects/hot-visualize-change/	No title	\N	\N	2018-05-16
138	https://szymonkaliski.com/projects/crln/	No title	\N	\N	2018-04-07
139	https://szymonkaliski.com/projects/mntn/	No title	\N	\N	2018-03-10
140	https://szymonkaliski.com/writing/2018-01-28-diy-monome/	DIY Monome	\N	\N	2018-01-28
141	https://szymonkaliski.com/projects/diy-monome/	No title	\N	\N	2018-01-28
142	https://szymonkaliski.com/writing/2017-12-04-flsun-i3-3d-printer/	FLSUN i3 3D Printer	\N	\N	2017-12-04
143	https://szymonkaliski.com/writing/2017-11-10-exploring-tidal-and-diagrams/	Learning Haskell part 2	\N	\N	2017-11-10
144	https://szymonkaliski.com/writing/2017-10-02-learning-haskell/	Learning Haskell	\N	\N	2017-10-02
145	https://szymonkaliski.com/writing/2017-09-08-building-das-ui/	Building DAS-UI	\N	\N	2017-09-08
146	https://szymonkaliski.com/projects/das-ui/	No title	\N	\N	2017-09-08
148	https://szymonkaliski.com/writing/2017-07-07-building-neutron/	Building Neutron	\N	\N	2017-07-07
149	https://szymonkaliski.com/projects/neutron/	No title	\N	\N	2017-07-07
150	https://szymonkaliski.com/writing/2017-05-31-exploring-reasonml/	Exploring ReasonML	\N	\N	2017-05-31
151	https://szymonkaliski.com/writing/2017-04-30-time-tracking/	Timav	\N	\N	2017-04-30
152	https://szymonkaliski.com/projects/timav/	No title	\N	\N	2017-04-30
153	https://szymonkaliski.com/writing/2017-03-31-parametrium/	Building Parametrium	\N	\N	2017-03-31
519	\N	touched	\N	\N	\N
204	http://nonmateria.com/posts/2020_10_30__pages_added.html	pages added	\N	\N	2020-10-30
205	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	infected clock II	\N	\N	2020-10-27
206	http://nonmateria.com/posts/2020_07_12__infected_clock.html	infected clock	\N	\N	2020-07-12
207	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
208	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
209	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
210	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
211	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
212	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
213	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
214	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
216	http://nonmateria.com/posts/2020_04_10__la_cauzione.html	la cauzione	\N	\N	2020-04-10
217	https://oddworlds.org/gallery/gallery-2021.html	2021 Photo Gallery	\N	\N	2021-03-22
154	https://szymonkaliski.com/projects/parametrium/	No title	\N	\N	2017-03-31
155	https://szymonkaliski.com/writing/2017-02-28-building-wallgen/	Building Wallgen	\N	\N	2017-02-28
156	https://szymonkaliski.com/projects/wallgen/	No title	\N	\N	2017-02-25
157	https://szymonkaliski.com/writing/2017-01-31-building-sdf-ui/	Building SDF-UI	\N	\N	2017-01-31
158	https://szymonkaliski.com/projects/sdf-ui/	No title	\N	\N	2017-01-29
159	https://szymonkaliski.com/writing/2017-01-18-kinect-2-osx/	Kinect 2 on macOS with Skeleton Tracking	\N	\N	2017-01-18
160	https://szymonkaliski.com/writing/2016-12-29-ofcourse-io/	Teaching Creative Coding in Shanghai	\N	\N	2016-12-29
161	https://szymonkaliski.com/projects/bareconductive-picap/	No title	\N	\N	2016-09-09
162	https://szymonkaliski.com/projects/ballantines-heartbeats/	No title	\N	\N	2016-07-18
163	https://szymonkaliski.com/projects/glsl-auto-ui/	No title	\N	\N	2016-04-20
164	https://szymonkaliski.com/projects/gla-london-2050/	No title	\N	\N	2016-02-01
165	https://szymonkaliski.com/projects/google-io-android-diversity/	No title	\N	\N	2015-11-28
166	https://szymonkaliski.com/projects/fonomapa/	No title	\N	\N	2015-10-08
167	https://szymonkaliski.com/projects/kinect2osc/	No title	\N	\N	2015-09-20
168	https://szymonkaliski.com/projects/loop-pi/	No title	\N	\N	2014-10-19
170	https://szymonkaliski.com/projects/eeg2osc/	No title	\N	\N	2014-10-10
171	https://szymonkaliski.com/projects/sonic-explorer/	No title	\N	\N	2014-10-08
172	https://szymonkaliski.com/projects/institut-des-mutations/	No title	\N	\N	2014-03-28
173	https://szymonkaliski.com/projects/nodation/	No title	\N	\N	2014-02-19
174	https://szymonkaliski.com/projects/zamek-interactive-movie/	No title	\N	\N	2013-12-20
175	https://szymonkaliski.com/projects/beatbattle-visuals/	No title	\N	\N	2013-12-14
176	https://szymonkaliski.com/projects/hello-poznan/	No title	\N	\N	2013-04-19
177	https://szymonkaliski.com/projects/sensorium-book-covers/	No title	\N	\N	2012-05-18
179	gemini://xj-ix.luxe/posts/2020-12-22-i-made-it.en.gmi	i made it	\N	\N	2020-12-22
180	gemini://xj-ix.luxe/posts/2020-11-17-nyu-tokyo-roadmap.gmi	nyu.tokyo (ᴎoT THɘ wiᴙɘb) roadmap	\N	\N	2020-11-17
181	gemini://xj-ix.luxe/posts/2020-11-17-go-build-your-own-eco-village.gmi	re: a miscommunication	\N	\N	2020-11-17
182	gemini://xj-ix.luxe/posts/2020-10-07-entering-the-dark-forest.gmi	entering the dark forest	\N	\N	2020-10-07
183	gemini://xj-ix.luxe/posts/2020-09-12-grid-grid.gmi	grid-grid, intimations on building decentralized computer systems	\N	\N	2020-09-12
184	gemini://xj-ix.luxe/posts/2020-08-20-inverting-the-technolopy.gmi	inverting the technopoly	\N	\N	2020-08-20
185	gemini://xj-ix.luxe/posts/2020-08-16-hyperlocal-concept-quandries.gmi	hyperlocal concept, quandaries	\N	\N	2020-08-16
186	gemini://xj-ix.luxe/posts/2020-08-11-memex-dev-updates.gmi	memex dev updates	\N	\N	2020-08-11
187	gemini://xj-ix.luxe/posts/2020-08-07-social-admin.gmi	social.ssg admin	\N	\N	2020-08-07
188	gemini://xj-ix.luxe/posts/2020-07-14-ethical-marketing-hyperlocal.gmi	ethical marketing at hyperlocal	\N	\N	2020-07-14
189	gemini://xj-ix.luxe/posts/2020-06-18-rlog.gmi	rlog	\N	\N	2020-06-18
190	gemini://xj-ix.luxe/posts/2020-06-02-hyperlocal-roadmap.gmi	hyperlocal	\N	\N	2020-06-02
191	gemini://xj-ix.luxe/posts/2020-04-30-honey-ginger-sauce.gmi	honey ginger sauce	\N	\N	2020-04-30
193	gemini://xj-ix.luxe/posts/2020-03-13-platanos-fritos.es.gmi	platanos fritos	\N	\N	2020-03-13
194	gemini://xj-ix.luxe/posts/2020-03-10-discussions-on-network-topology.gmi	p2p network topology, why even bother?	\N	\N	2020-03-10
195	gemini://xj-ix.luxe/posts/2020-01-27-universal-basic-internet.gmi	universal basic internet	\N	\N	2020-01-27
196	gemini://xj-ix.luxe/posts/2020-01-20-null-media-next.gmi	null.media@next	\N	\N	2020-01-20
197	gemini://xj-ix.luxe/posts/2020-01-09-native-frp.gmi	native functional reactive programming	\N	\N	2020-01-09
198	gemini://xj-ix.luxe/posts/2019-thaumaturgy.gmi	thaumaturgy	\N	\N	2019-01-01
199	gemini://xj-ix.luxe/posts/2019-stop-and-think.gmi	stop and think	\N	\N	2019-01-01
200	gemini://xj-ix.luxe/posts/2019-quickly-export-gitlab-projects.gmi	quickly export corpogit projects	\N	\N	2019-01-01
202	http://nonmateria.com/posts/2021_03_15__url_changed.html	url changed	\N	\N	2021-03-15
218	https://oddworlds.org/cooking/moka.html	Coffee with a "moka" machine	\N	\N	2021-03-21
219	https://oddworlds.org/cooking/pita.html	Pita	\N	\N	2021-03-15
220	https://oddworlds.org/wiki/radio.html	Radio	\N	\N	2021-03-09
221	https://oddworlds.org/wiki/entrepreneurship.html	Entrepreneurship	\N	\N	2021-02-10
222	https://oddworlds.org/wiki/ethics.html	Ethics	\N	\N	2021-02-10
223	https://oddworlds.org/cooking/0-fermenting.html	Meta: Fermenting	\N	\N	2021-02-09
224	https://oddworlds.org/wiki/repair.html	Repair	\N	\N	2021-02-08
225	https://oddworlds.org/cooking/0-sourdough.html	Meta: Starting and maintaining Sourdough	\N	\N	2021-02-04
227	https://oddworlds.org/gallery/2020-11.html	2020-11	\N	\N	2020-08-22
228	https://oddworlds.org/thoughts/memoria.html	Memoria	\N	\N	2020-08-16
229	https://oddworlds.org/gallery/2020-08.html	2020-08	\N	\N	2020-07-22
230	https://oddworlds.org/gallery/2020-09.html	2020-09	\N	\N	2020-07-22
231	https://oddworlds.org/gallery/2020-10.html	2020-10	\N	\N	2020-07-22
232	https://oddworlds.org/gallery/2020-07.html	2020-07	\N	\N	2020-06-22
234	https://oddworlds.org/cooking/pizza.html	Pizza	\N	\N	2020-05-23
235	https://oddworlds.org/gallery/2020-06.html	2020-06	\N	\N	2020-05-22
236	https://oddworlds.org/cooking/focaccia-genovese.html	Focaccia Genovese	\N	\N	2020-05-18
237	https://chad.is/dick-jokes/	Dick jokes	\N	\N	2021-04-17
238	https://chad.is/endless-forms-most-beautiful/	Endless forms most beautiful	\N	\N	2021-01-23
239	https://chad.is/the-work-of-the-listener/	The work of the listener	\N	\N	2020-06-06
240	https://chad.is/self-as-process/	Self as Process	\N	\N	2019-11-06
241	https://chad.is/getting-started-complexity-science/	Getting started with complexity science	\N	\N	2019-11-02
242	https://chad.is/technologies-of-the-self/	Technologies of the Self: A Short Introduction	\N	\N	2019-09-23
243	https://chad.is/managing-oneself/	Managing Oneself	\N	\N	2019-09-18
244	https://chad.is/copenhagen/	Copenhagen versus the universe	\N	\N	2019-09-14
245	https://chad.is/reductionism/	Reductionism can explain neither carrots nor consciousness	\N	\N	2019-09-11
246	https://chad.is/hereditary/	Hereditary	\N	\N	2019-09-07
247	https://chad.is/burden-of-consciousness/	Confronting the burden of consciousness	\N	\N	2018-11-29
248	https://chad.is/ebook-innovation/	What happened to ebook innovation?	\N	\N	2018-08-26
249	https://chad.is/design-systems/	Designing self-sustaining systems	\N	\N	2015-12-14
251	https://chad.is/creativity-management/	Creative work cannot be managed	\N	\N	2013-05-29
252	https://chad.is/beautiful-code/	Beautiful code does not make a beautiful product	\N	\N	2013-03-27
253	https://chad.is/startup-offers/	What to know before joining a startup	\N	\N	2013-03-18
254	https://chad.is/cautious-prometheus/	The advantages of design in the 21st century	\N	\N	2013-02-14
255	https://chad.is/guns-technology-culture/	Guns as technology, guns as culture	\N	\N	2012-12-18
256	https://chad.is/design-hacking/	Design & Hacking	\N	\N	2012-11-22
257	https://chad.is/asynchronous/	Don’t Make Me Wait	\N	\N	2012-11-08
258	https://chad.is/zero-to-one/	Going from Zero to One	\N	\N	2012-11-01
259	https://chad.is/design-of-design/	The Design of Design	\N	\N	2012-10-09
272	https://now.lectronice.com/then/2021-04w14/	W14 :: Fixing old things	\N	\N	2021-04-04
260	https://bismuth.garden/2020/11/ruby-squares	Ruby squares	\N	\N	2020-11-11
261	https://bismuth.garden/2020/09/beyond-sustainable	Links: Beyond sustainable	\N	\N	2020-09-21
262	https://bismuth.garden/2020/09/oddments-2	Oddments II	\N	\N	2020-09-20
263	https://bismuth.garden/2020/09/oddments	Oddments	\N	\N	2020-09-14
264	https://bismuth.garden/2020/09/did-you-find-it-i-did	‘Did you find it?’ ‘I did’	\N	\N	2020-09-11
265	https://bismuth.garden/2020/09/sowing-seeds	Sowing seeds	\N	\N	2020-09-10
267	https://xvw.github.io/longs/introduction_algebraic_effects.html	Tests unitaires de fonctions impures	\N	\N	2020-03-10
268	https://xvw.github.io/longs/introduction_aux_monades.html	Un article sur les monades en 2018	\N	\N	2018-08-22
269	https://xvw.github.io/longs/konbini_tac_au_tac_manben.html	Konbini, Tac au tac et Manben	\N	\N	2018-08-19
270	https://xvw.github.io/longs/zipper_history.html	Voyager dans le temps avec un Zipper	\N	\N	2017-11-20
271	https://xvw.github.io/longs/introduction_gadt.html	Un cas d'école à l'utilisation des GADTs	\N	\N	2017-10-16
273	https://now.lectronice.com/then/2021-03w13/	W13 :: Bulking	\N	\N	2021-03-28
274	https://now.lectronice.com/then/2021-03w12/	W12 :: Darkness my old friend	\N	\N	2021-03-21
275	https://now.lectronice.com/then/2021-03w11/	W11 :: Tokiponing	\N	\N	2021-03-14
276	https://now.lectronice.com/then/2021-03w10/	W10 :: Stacking up voxels	\N	\N	2021-03-07
277	https://now.lectronice.com/then/2021-03w09/	W9 :: Sitting in front of the sun	\N	\N	2021-02-28
278	https://now.lectronice.com/then/2021-02w08/	W8 :: Watching the world burn	\N	\N	2021-02-21
279	https://now.lectronice.com/then/2021-02w07/	W7 :: Struggling with Godot	\N	\N	2021-02-14
280	https://now.lectronice.com/then/2021-02w06/	2021W6 :: Sweating profusely	\N	\N	2021-02-07
281	https://now.lectronice.com/then/2021-02w05/	2021W5 :: Exploring vast spaces	\N	\N	2021-01-31
282	https://now.lectronice.com/then/2021-01w04/	2021W4 :: Headbanging	\N	\N	2021-01-24
283	https://now.lectronice.com/then/2021-01w03/	2021W3 :: Floating	\N	\N	2021-01-17
284	https://now.lectronice.com/then/2021-01w02/	2021W2 :: Soreness	\N	\N	2021-01-10
286	https://now.lectronice.com/then/2020-12w53/	2020W53 :: Back to game development	\N	\N	2020-12-27
287	https://now.lectronice.com/then/2020-12w52/	2020W52 :: Chilling	\N	\N	2020-12-20
288	https://now.lectronice.com/then/2020-12w51/	2020W51 :: kalama musi ike nanpa wan	\N	\N	2020-12-13
289	https://now.lectronice.com/then/2020-12w50/	2020W50 :: Music and sore muscles	\N	\N	2020-12-06
290	https://now.lectronice.com/then/2020-11w49/	2020W49 :: Songs?	\N	\N	2020-11-29
291	https://now.lectronice.com/then/2020-11w48/	2020W48 :: Slacking	\N	\N	2020-11-22
292	https://now.lectronice.com/then/2020-11w47/	2020W47 :: Meandering	\N	\N	2020-11-15
293	https://now.lectronice.com/then/2020-11w46/	2020W46 :: Tiredness and absurdity	\N	\N	2020-11-08
295	https://now.lectronice.com/then/2020-10w44/	2020W44 :: Music again	\N	\N	2020-10-25
296	https://now.lectronice.com/then/2020-10w43/	2020W43 :: Teenage Artiphon Engineering	\N	\N	2020-10-18
297	https://now.lectronice.com/then/2020-10w42/	2020W42 :: Beats	\N	\N	2020-10-11
298	https://now.lectronice.com/then/2020-10w41/	2020W41 :: Global confusion	\N	\N	2020-10-04
299	https://now.lectronice.com/then/2020-09w40/	2020W40 :: Drawing again	\N	\N	2020-09-27
300	https://now.lectronice.com/then/2020-09w39/	2020W39 :: Questions and fear of the future	\N	\N	2020-09-20
302	https://now.lectronice.com/then/2020-09w37/	2020W37 :: toki pona li pona	\N	\N	2020-09-06
303	https://now.lectronice.com/then/2020-08w36/	2020W36 :: Keyboards and lack of sleep	\N	\N	2020-08-30
304	https://now.lectronice.com/then/2020-08w35/	2020W35 :: Opuscule on acid with a plaid	\N	\N	2020-08-23
306	https://now.lectronice.com/then/2020-08w33/	2020W33 :: Starting a now page	\N	\N	2020-08-09
307	https://now.lectronice.com/then/2020-08w32/	2020W32 :: Testing my template	\N	\N	2020-08-02
308	https://longest.voyage/log/just-an-earthquake/	Just an Earthquake	\N	\N	2021-02-21
309	https://longest.voyage/log/writing-notes/	Writing Notes	\N	\N	2021-02-20
310	https://longest.voyage/log/nice-and-soft/	Nice And Soft	\N	\N	2021-02-20
311	https://longest.voyage/log/2021-01/	January Rambling	\N	\N	2021-01-17
312	https://longest.voyage/log/autumn-abroad/	Autumn Abroad	\N	\N	2020-11-15
313	https://longest.voyage/log/a-new-anxiety/	A New Anxiety	\N	\N	2020-11-08
314	https://longest.voyage/log/apolitical/	Apolitical	\N	\N	2020-10-09
315	https://longest.voyage/log/snacks-and-such/	Snacks and the Weather	\N	\N	2020-09-14
316	https://longest.voyage/log/waiting/	Waiting	\N	\N	2020-07-24
317	https://longest.voyage/log/growth/	Growth	\N	\N	2020-05-20
318	https://longest.voyage/log/life-in-the-shoebox/	Life in the Shoebox	\N	\N	2020-04-26
319	https://longest.voyage/log/the-burger-search/	The Burger Search	\N	\N	2020-04-11
320	https://longest.voyage/log/one-at-a-time/	One at a Time	\N	\N	2020-03-14
321	https://longest.voyage/log/first-month/	First Month	\N	\N	2020-02-08
322	https://longest.voyage/log/lag/	Lag	\N	\N	2020-01-20
323	https://longest.voyage/log/arrival/	Arrival	\N	\N	2020-01-09
324	https://longest.voyage/log/replay/	Replay	\N	\N	2019-12-02
325	https://longest.voyage/log/week4/	Week 4: Random Thoughts	\N	\N	2018-11-18
326	https://longest.voyage/log/countdown/	Countdown	\N	\N	2018-09-25
327	https://kokorobot.ca/site/pandoc.html	Pandoc notes	\N	\N	2021-04-01
329	https://kokorobot.ca/site/busydoingnothing.html	Busy Doing Nothing e-book release	\N	\N	2021-02-19
330	https://kokorobot.ca/site/illustration.html	Uxn mascot	\N	\N	2021-02-01
331	https://kokorobot.ca/site/2020dec31.html	2020 yearend review	\N	\N	2021-01-11
335	https://ameyama.com/blog/2020-the-year-in-review	(雨山) 2020: The Year in Review	\N	\N	2020-12-30
333	https://kokorobot.ca/site/conversion.html	Conversion charts	\N	\N	2020-12-14
332	https://kokorobot.ca/site/rug.html	Rope mats	\N	\N	2020-12-07
336	https://ameyama.com/blog/sleep-with-me-a-testimonial	(雨山) Sleep With Me: A Testimonial	\N	\N	2020-10-07
337	https://ameyama.com/blog/vercel	(雨山) Vercel	\N	\N	2020-09-28
338	https://ameyama.com/blog/focus-on-the-inputs	(雨山) Focus on the Inputs	\N	\N	2020-07-10
339	https://ameyama.com/blog/reply-none	(雨山) Reply None	\N	\N	2020-05-30
340	https://ameyama.com/blog/grief	(雨山) Grief	\N	\N	2020-04-28
341	https://ameyama.com/blog/passgen	(雨山) Passgen	\N	\N	2020-04-27
342	https://ameyama.com/blog/bookshelf	(雨山) Bookshelf	\N	\N	2020-04-16
343	https://ameyama.com/blog/public-domain-tapes	(雨山) Public Domain Tapes	\N	\N	2020-04-02
344	https://ameyama.com/blog/public-domain-resources	(雨山) Public Domain Resources	\N	\N	2020-03-29
345	https://phse.net/no-off-switch/	No Off Switch	\N	\N	2021-02-26
346	https://phse.net/authoring-a-gemini-capsule-with-hugo/	Authoring a Gemini Capsule with Hugo	\N	\N	2021-02-14
347	https://phse.net/the-perfect-todo-list/	The Perfect To-Do List	\N	\N	2021-01-31
349	https://phse.net/2020/	Yearly Review 2020	\N	\N	2021-01-03
350	https://phse.net/respecting-motion-preferences/	Respecting Motion Preferences	\N	\N	2020-08-15
351	https://phse.net/managing-specificity-with-css-variables/	Managing Specificity with CSS Variables	\N	\N	2020-02-29
352	https://phse.net/three-layer-goal-setting/	Three Layer Goal-Setting	\N	\N	2020-01-10
353	https://phse.net/2019/	Yearly Review 2019	\N	\N	2019-12-30
354	https://phse.net/tetris-analogy/	Why is Tetris such a good analogy?	\N	\N	2019-10-25
355	https://phse.net/a-new-minimalism/	A New Minimalism	\N	\N	2019-09-28
356	https://phse.net/august-update/	August Update	\N	\N	2019-08-20
357	https://phse.net/naive-sudoku/	Naive Sudoku	\N	\N	2019-07-27
358	https://phse.net/notes-template/	How I organize project notes	\N	\N	2019-06-08
359	https://phse.net/choose-people/	Choose people, not projects	\N	\N	2019-06-05
360	https://phse.net/curiosity/	Curiosity & Focus	\N	\N	2019-03-30
361	https://phse.net/commonplace/	A Commonplace Repository	\N	\N	2019-03-23
362	https://phse.net/recently/	Recently	\N	\N	2019-03-21
363	https://phse.net/tools/	A List of the Tools I'm Using	\N	\N	2019-02-12
364	https://phse.net/sketchbook/	Always Carry a Sketchbook	\N	\N	2019-02-09
365	https://phse.net/2018/	Yearly Review 2018	\N	\N	2019-01-01
366	https://phse.net/minimalism/	On Minimalism	\N	\N	2018-12-31
367	https://ring.0data.app	Small Web App Ring	\N	\N	2021-03-29
368	https://emojilog.rosano.ca	Emoji Log	\N	\N	2021-03-25
369	https://rosano.hmm.garden	Personal wiki	\N	\N	2021-01-03
370	https://0data.app	Zero Data App	\N	\N	2020-12-08
371	https://kommit.rosano.ca	Kommit	\N	\N	2020-06-24
372	/en/aural	Aural	\N	\N	2019-12-17
374	https://launchlet.dev	Launchlet	\N	\N	2019-11-19
375	https://idiomatic.rosano.ca	Idiomatic	\N	\N	2019-01-24
376	/en/sonogrid	sonogrid	\N	\N	2018-09-06
377	/en/carrot-price	Carrot Price	\N	\N	2018-07-04
379	/en/ticker	Ticker	\N	\N	2015-02-25
380	/en/quick-record	Quick Record	\N	\N	2015-01-16
381	/en/audioscrub	AudioScrub	\N	\N	2014-08-08
382	https://teknari.com/blogpost/1595783382418/Books	Books	\N	\N	2020-07-26
383	https://teknari.com/blogpost/1595774170477/St+Petersburg+Handmade+Prints+Book	St Petersburg Handmade Prints Book	\N	\N	2020-07-26
384	https://teknari.com/blogpost/1595699426843/St+Petersburg	St Petersburg	\N	\N	2020-07-25
385	https://teknari.com/blogpost/1595697208582/Dreams+of+Itself	Dreams of Itself	\N	\N	2020-07-25
407	\N	2021-04-04_0h50m10	\N	\N	\N
408	\N	2021-04-03_11h23m04	\N	\N	\N
409	\N	birth	\N	\N	\N
410	\N	goose	\N	\N	\N
411	\N	image	\N	\N	\N
412	\N	2021-02-01_15h03m25	\N	\N	\N
413	\N	2021-01-06 2h23m53	\N	\N	\N
414	\N	2016-02-22_21h52m05	\N	\N	\N
415	\N	on the desk	\N	\N	\N
416	\N	arc	\N	\N	\N
417	\N	simplicity	\N	\N	\N
418	\N	user	\N	\N	\N
419	\N	chapel perilous	\N	\N	\N
420	\N	boom3	\N	\N	\N
421	\N	beedi2	\N	\N	\N
422	\N	occo2.2	\N	\N	\N
423	\N	space	\N	\N	\N
424	\N	hashtag5	\N	\N	\N
425	\N	oops	\N	\N	\N
426	\N	closed	\N	\N	\N
427	\N	double	\N	\N	\N
428	\N	quieta (remix of y. misdaq)	\N	\N	\N
429	\N	try, try	\N	\N	\N
430	\N	tricky	\N	\N	\N
431	\N	dusty mix1 (remix of y. misdaq)	\N	\N	\N
432	\N	to be young (remix of y. misdaq)	\N	\N	\N
433	\N	interests	\N	\N	\N
434	\N	teka	\N	\N	\N
435	\N	montauk	\N	\N	\N
436	\N	fixed	\N	\N	\N
437	\N	midnight gospel	\N	\N	\N
438	\N	chapel perilous	\N	\N	\N
439	\N	important numbers	\N	\N	\N
440	\N	nichtern	\N	\N	\N
441	\N	challenging	\N	\N	\N
442	\N	stimming	\N	\N	\N
443	\N	the uncertainty	\N	\N	\N
444	\N	internal	\N	\N	\N
445	\N	monkey	\N	\N	\N
446	\N	tension	\N	\N	\N
447	\N	gardeners	\N	\N	\N
448	\N	stache	\N	\N	\N
449	\N	meaning	\N	\N	\N
450	\N	discomfort	\N	\N	\N
451	\N	it's fukin 2017 man	\N	\N	\N
452	\N	sesame	\N	\N	\N
453	\N	candles	\N	\N	\N
454	\N	singular	\N	\N	\N
455	\N	tryst	\N	\N	\N
456	\N	movement	\N	\N	\N
457	\N	stranded	\N	\N	\N
458	\N	tremble	\N	\N	\N
459	\N	lost in abstractions	\N	\N	\N
460	\N	knife concerns	\N	\N	\N
461	\N	commit to your mistakes	\N	\N	\N
462	\N	tutor	\N	\N	\N
463	\N	clarity	\N	\N	\N
464	\N	kindly	\N	\N	\N
465	\N	witness marks	\N	\N	\N
466	\N	not content	\N	\N	\N
467	\N	going sideways	\N	\N	\N
468	\N	writing mushrooms	\N	\N	\N
469	\N	the permanent business	\N	\N	\N
470	\N	the means of production	\N	\N	\N
471	\N	adequate images	\N	\N	\N
472	\N	tidepools	\N	\N	\N
473	\N	agape	\N	\N	\N
474	\N	élan	\N	\N	\N
475	\N	taijitu	\N	\N	\N
476	\N	the shock of photography	\N	\N	\N
477	\N	meds	\N	\N	\N
478	\N	introverted	\N	\N	\N
479	\N	mornings	\N	\N	\N
480	\N	princess	\N	\N	\N
481	\N	sublimated	\N	\N	\N
482	\N	2019-05-19_16h26m57	\N	\N	\N
483	\N	2019-05-13_23h35m40	\N	\N	\N
484	\N	2019-04-14_22h08m50	\N	\N	\N
485	\N	foundry	\N	\N	\N
486	\N	vibrant	\N	\N	\N
487	\N	secrets	\N	\N	\N
488	\N	mysterium	\N	\N	\N
489	\N	sleeparchive mix	\N	\N	\N
490	\N	absorbing J	\N	\N	\N
491	\N	The Vile Arts Radio Hour 2018-04-02	\N	\N	\N
492	\N	single	\N	\N	\N
493	\N	shimmer	\N	\N	\N
494	\N	crimp	\N	\N	\N
495	\N	shearing	\N	\N	\N
496	\N	how many	\N	\N	\N
497	\N	dubious	\N	\N	\N
498	\N	digits	\N	\N	\N
499	\N	thimble(remix)	\N	\N	\N
500	\N	disquiet	\N	\N	\N
501	\N	digits2	\N	\N	\N
502	\N	thimble	\N	\N	\N
503	\N	project	\N	\N	\N
504	\N	speculative8	\N	\N	\N
505	\N	engender	\N	\N	\N
506	\N	tripl	\N	\N	\N
507	\N	kit envy	\N	\N	\N
508	\N	curmudgeon	\N	\N	\N
509	\N	talking	\N	\N	\N
510	\N	ticl	\N	\N	\N
511	\N	weird try	\N	\N	\N
512	\N	2016-02-22 21h52m05	\N	\N	\N
513	\N	untitled	\N	\N	\N
514	\N	restore	\N	\N	\N
515	\N	01_serocell=.mp3	\N	\N	\N
516	\N	the dawning realisation that you're fighting for your soul	\N	\N	\N
517	\N	luv	\N	\N	\N
518	\N	no greater love	\N	\N	\N
388	https://teknari.com/blogpost/1595684574574/2015+December+Journal+	2015 December Journal 	\N	\N	2020-07-25
389	https://teknari.com/blogpost/1595683646064/2015+November+Journal+	2015 November Journal 	\N	\N	2020-07-25
390	https://teknari.com/blogpost/1595683324704/2015+October+Journal+	2015 October Journal 	\N	\N	2020-07-25
391	https://teknari.com/blogpost/1595682675547/2015+September+Journal+	2015 September Journal 	\N	\N	2020-07-25
392	https://teknari.com/blogpost/1595681107423/2015+August+Journal	2015 August Journal	\N	\N	2020-07-25
393	https://teknari.com/blogpost/1595548974481/2015+July+Journal	2015 July Journal	\N	\N	2020-07-24
394	https://teknari.com/blogpost/1595537557776/2015+Journal+June	2015 Journal June	\N	\N	2020-07-23
395	https://teknari.com/blogpost/1595536068883/2015+May+Journal	2015 May Journal	\N	\N	2020-07-23
396	https://teknari.com/blogpost/1595502848493/Apple+I	Apple I	\N	\N	2020-07-23
397	https://teknari.com/blogpost/1594587027196/2015+April+Journal	2015 April Journal	\N	\N	2020-07-12
398	https://teknari.com/blogpost/1594567446819/2015+March+Journal	2015 March Journal	\N	\N	2020-07-12
400	https://teknari.com/blogpost/1594344859804/2015+January+Journal	2015 January Journal	\N	\N	2020-07-10
401	https://teknari.com/blogpost/1594318116313/2017+Journal	2017 Journal	\N	\N	2020-07-09
402	https://teknari.com/blogpost/1594317403488/2016+Journal	2016 Journal	\N	\N	2020-07-09
403	https://teknari.com/blogpost/1594314179451/2018+Journal	2018 Journal	\N	\N	2020-07-09
404	https://teknari.com/blogpost/1594235757539/2014+Journal	2014 Journal	\N	\N	2020-07-08
405	https://teknari.com/blogpost/1594234205140/2013+Journal	2013 Journal	\N	\N	2020-07-08
406	https://teknari.com/blogpost/1594233551325/	\N	\N	\N	2020-07-08
520	\N	sub	\N	\N	\N
521	\N	short	\N	\N	\N
522	\N	degraded brik	\N	\N	\N
523	\N	until	\N	\N	\N
524	\N	empty2.2	\N	\N	\N
525	\N	brik2	\N	\N	\N
526	\N	empty2.1	\N	\N	\N
527	\N	disconnected	\N	\N	\N
528	\N	brik	\N	\N	\N
529	\N	a minor tragedy	\N	\N	\N
530	\N	silicone	\N	\N	\N
531	\N	happy bird day	\N	\N	\N
532	\N	not in time	\N	\N	\N
533	\N	tumble	\N	\N	\N
534	\N	lost in this	\N	\N	\N
535	\N	subtract	\N	\N	\N
536	\N	calling in the spirits	\N	\N	\N
537	\N	acid2	\N	\N	\N
538	\N	acid	\N	\N	\N
539	\N	in the mist	\N	\N	\N
540	\N	mic on drone	\N	\N	\N
541	\N	techno no mic	\N	\N	\N
542	\N	tidal1	\N	\N	\N
543	\N	auspice	\N	\N	\N
544	\N	code break	\N	\N	\N
545	\N	echo	\N	\N	\N
546	\N	stupid rave stuff	\N	\N	\N
547	\N	pipilan5	\N	\N	\N
548	\N	pipilan4	\N	\N	\N
549	\N	pipilan3	\N	\N	\N
550	\N	pipilan2	\N	\N	\N
551	\N	pipilan1	\N	\N	\N
552	\N	shoes	\N	\N	\N
553	\N	mic test 2	\N	\N	\N
554	\N	clone	\N	\N	\N
555	\N	beat2	\N	\N	\N
556	\N	urate	\N	\N	\N
557	\N	clone_2	\N	\N	\N
558	\N	2015-02-21_s900.tv	\N	\N	\N
559	\N	retrieved faith	\N	\N	\N
560	\N	retrieving faith	\N	\N	\N
561	\N	naus	\N	\N	\N
562	\N	user48736353001 pt2	\N	\N	\N
563	\N	user48736353001	\N	\N	\N
564	\N	drumik	\N	\N	\N
565	\N	distro	\N	\N	\N
566	\N	grooval	\N	\N	\N
567	\N	imagine christmas wishes shooting out of your eyes	\N	\N	\N
568	\N	scape 22.12.14	\N	\N	\N
569	\N	wrong? give thank. because. the burden.	\N	\N	\N
570	\N	track point	\N	\N	\N
571	\N	tick2	\N	\N	\N
572	\N	pipilan 11-19-2014	\N	\N	\N
573	\N	live settings	\N	\N	\N
574	\N	dna mobius	\N	\N	\N
575	\N	talk	\N	\N	\N
576	\N	kittens	\N	\N	\N
577	\N	pure memory	\N	\N	\N
578	\N	mjendcharles	\N	\N	\N
579	\N	Crossed Wires II	\N	\N	\N
580	\N	close to spirit	\N	\N	\N
581	\N	beq	\N	\N	\N
582	\N	Ardisson mix Take II	\N	\N	\N
583	\N	numeral dirge	\N	\N	\N
584	\N	drive corruption	\N	\N	\N
585	\N	mipilan sketches 7.15.2014	\N	\N	\N
586	\N	mipilan sketches 7.14.2014	\N	\N	\N
587	\N	all my people make it nice	\N	\N	\N
588	\N	easy pickings	\N	\N	\N
589	\N	fall	\N	\N	\N
590	\N	end of silence	\N	\N	\N
591	\N	structural integration	\N	\N	\N
592	\N	trim	\N	\N	\N
593	\N	serocell - corner moves	\N	\N	\N
594	\N	2014-04-03_3h00m16	\N	\N	\N
595	\N	unicorn [detected dropped samples remix]	\N	\N	\N
596	\N	post-lingual ontology	\N	\N	\N
597	\N	janet street porter & the neo surrealists	\N	\N	\N
598	\N	dissent	\N	\N	\N
599	\N	3 - who could have known	\N	\N	\N
600	\N	2 - the denial of depth	\N	\N	\N
601	\N	1 - empathy	\N	\N	\N
602	\N	balinese postcard	\N	\N	\N
603	\N	7 - tunisia	\N	\N	\N
604	\N	6 - prelude	\N	\N	\N
605	\N	5 - passive	\N	\N	\N
606	\N	4 - africa	\N	\N	\N
607	\N	3 - hairpin	\N	\N	\N
608	\N	2 - cantata	\N	\N	\N
609	\N	1 - applebum	\N	\N	\N
610	\N	the grand symbolic myriad	\N	\N	\N
611	\N	live @ pasquo & getwax	\N	\N	\N
617	https://sixey.es/food/rat_mince.html	Köttfärssås-recept	\N	\N	\N
613	https://gueorgui.net/blog/2020/hello-again-world/	Hello again, World!	\N	\N	2020-02-01
615	https://sixey.es/imagery/postit/	Sticky note gallery	\N	\N	\N
614	https://sixey.es/imagery/600/	600 diary: february	\N	\N	\N
618	https://sixey.es/sounds/tapes/	More tape canon tapes	\N	\N	\N
619	https://sixey.es/imagery/mavica/	2020 floppy cam diary	\N	\N	\N
620	https://sixey.es/sounds/cb/bontempi.html	bontempi 509 audio out	\N	\N	\N
621	https://sixey.es/imagery/mspaint/	+ images in mspaint	\N	\N	2019-09-10
622	https://sixey.es/imagery/arthur/	arthur_resource	\N	\N	2019-09-07
623	https://icyphox.sh/blog/free-sw-censor	Free software should not censor	\N	\N	2021-04-07
624	https://icyphox.sh/blog/nvim-lua	Configuring Neovim using Lua	\N	\N	2021-02-07
625	https://icyphox.sh/blog/signal	We can do better than Signal	\N	\N	2021-01-17
626	https://icyphox.sh/blog/whatsapp	What's next after WhatsApp?	\N	\N	2021-01-08
627	https://icyphox.sh/blog/2020-in-review	2020 in review	\N	\N	2020-12-24
628	https://icyphox.sh/blog/music-streaming	My music streaming setup	\N	\N	2020-12-13
629	https://icyphox.sh/blog/workman	The Workman keyboard layout	\N	\N	2020-10-24
630	https://icyphox.sh/blog/r2wars-2020	My submissions for r2wars 2020	\N	\N	2020-09-13
631	https://icyphox.sh/blog/mastodon-to-pleroma	Migrating from Mastodon to Pleroma	\N	\N	2020-09-04
632	https://icyphox.sh/blog/ducky-one-2	The Ducky One 2 SF	\N	\N	2020-08-22
633	https://icyphox.sh/blog/twitter	Some thoughts on Twitter	\N	\N	2020-08-03
634	https://icyphox.sh/blog/2020-07-20	Status update	\N	\N	2020-07-20
636	https://icyphox.sh/blog/dont-news	You don't need news	\N	\N	2020-06-21
637	https://icyphox.sh/blog/pi	Migrating to the RPi	\N	\N	2020-06-04
638	https://icyphox.sh/blog/site-changes	Site changes	\N	\N	2020-05-27
639	https://icyphox.sh/blog/efficacy-deepfakes	The efficacy of deepfakes	\N	\N	2020-05-11
640	https://icyphox.sh/blog/simplicity-security	Simplicity (mostly) guarantees security	\N	\N	2020-05-07
641	https://icyphox.sh/blog/s-nail	The S-nail mail client	\N	\N	2020-05-06
642	https://icyphox.sh/blog/mastodon-social	Stop joining mastodon.social	\N	\N	2020-05-05
643	https://icyphox.sh/blog/openbsd-hp-envy	OpenBSD on the HP Envy 13	\N	\N	2020-04-17
645	https://icyphox.sh/blog/mael	Introducing mael	\N	\N	2020-03-29
646	https://icyphox.sh/blog/covid19-disinfo	COVID-19 disinformation	\N	\N	2020-03-15
647	https://icyphox.sh/blog/nullcon-2020	Nullcon 2020	\N	\N	2020-03-09
649	https://icyphox.sh/blog/2020-01-18	Status update	\N	\N	2020-01-18
650	https://icyphox.sh/blog/mnml-browsing	Vimb&#58; my Firefox replacement	\N	\N	2020-01-16
651	https://icyphox.sh/blog/five-days-tty	Five days in a TTY	\N	\N	2020-01-13
652	https://icyphox.sh/blog/2019-in-review	2019 in review	\N	\N	2020-01-02
653	https://icyphox.sh/blog/ru-vs-gb	Disinfo war&#58; RU vs GB	\N	\N	2019-12-12
654	https://icyphox.sh/blog/ig-opsec	Instagram OPSEC	\N	\N	2019-12-02
655	https://icyphox.sh/blog/save-org	Save .ORG!	\N	\N	2019-11-23
656	https://icyphox.sh/blog/2019-11-16	Status update	\N	\N	2019-11-16
657	https://icyphox.sh/blog/irc-for-dms	IRC for DMs	\N	\N	2019-11-03
658	https://icyphox.sh/blog/intel-conundrum	The intelligence conundrum	\N	\N	2019-10-28
659	https://icyphox.sh/blog/hacky-scripts	Hacky scripts	\N	\N	2019-10-24
660	https://icyphox.sh/blog/2019-10-16	Status update	\N	\N	2019-10-16
661	https://icyphox.sh/blog/pycon-wrap-up	PyCon India 2019 wrap-up	\N	\N	2019-10-15
663	https://icyphox.sh/blog/2019-09-27	Status update	\N	\N	2019-09-27
664	https://icyphox.sh/blog/2019-09-17	Status update	\N	\N	2019-09-17
665	https://icyphox.sh/blog/disinfo	Disinformation demystified	\N	\N	2019-09-10
666	https://icyphox.sh/blog/mailserver	Setting up my personal mailserver	\N	\N	2019-08-15
667	https://icyphox.sh/blog/fb50	Picking the FB50 smart lock (CVE-2019-13143)	\N	\N	2019-08-05
668	https://icyphox.sh/blog/rop-on-arm	Return Oriented Programming on ARM (32-bit)	\N	\N	2019-06-06
669	https://icyphox.sh/blog/my-setup	My setup	\N	\N	2019-05-13
670	https://icyphox.sh/blog/python-for-re-1	Python for Reverse Engineering	\N	\N	2019-02-08
671	https://royniang.com/fastmail_and_9front.html	Fastmail and 9front	\N	\N	2021-01-15
672	https://royniang.com/scrawl_01y06.html	Scrawl 01Y06	\N	\N	2020-12-08
673	https://royniang.com/scrawl_01y02.html	Scrawl 01Y02	\N	\N	2020-12-04
682	https://royniang.com/miminaga.html	New Qt home	\N	\N	2020-10-10
675	https://royniang.com/xok9.html	XOK9 Laptop	\N	\N	2021-02-11
676	https://royniang.com/haiku_os.html	Easy computing	\N	\N	2020-12-08
679	https://royniang.com/sf_guro.html	Almost done with the lowercase alphabet	\N	\N	2020-10-31
677	https://royniang.com/patience.html	Patience (Daniel Clowes, 2016)	\N	\N	2020-11-01
680	https://royniang.com/gemini.html	Testing microblogging with gemini	\N	\N	2020-10-28
674	https://royniang.com/type_design.html	Learning hinting	\N	\N	2020-10-22
701	https://royniang.com/intrfc.html	INTRFC.com is live	\N	\N	2020-05-13
705	https://royniang.com/japanese.html	ガロ	\N	\N	2020-03-31
706	https://royniang.com/library.html	ほんやら洞のべんさん	\N	\N	2020-03-27
683	https://royniang.com/practice.html	Began working on the uppercase	\N	\N	2020-10-01
684	https://royniang.com/practice.html	Better ascenders and descenders	\N	\N	2020-10-01
685	https://royniang.com/practice.html	Fixed weight issues; some new glyphs	\N	\N	2020-10-01
707	https://royniang.com/computers.html	Bombed shell	\N	\N	2020-03-24
703	https://royniang.com/illustration.html	HyperCard portrait	\N	\N	2020-05-04
690	https://royniang.com/cooking_tools.html	Hario V60	\N	\N	2020-09-23
691	https://royniang.com/watching.html	絞死刑 (大島 渚, 1968)	\N	\N	2020-09-19
692	https://royniang.com/kiroku.html	Mémoires	\N	\N	2020-09-17
693	https://royniang.com/language.html	Design and communication	\N	\N	2020-09-16
711	https://royniang.com/cameras.html	Leica M5	\N	\N	2020-03-12
712	https://royniang.com/roy_niang.html	Out of focus	\N	\N	2020-03-11
695	https://royniang.com/9front.html	Stacking	\N	\N	2020-09-02
696	https://royniang.com/programming.html	Ken Thompson and Dennis Ritchie	\N	\N	2020-08-27
697	https://royniang.com/sam.html	Navigation	\N	\N	2020-08-07
698	https://royniang.com/photography.html	Selfportrait	\N	\N	2020-07-30
699	https://royniang.com/rio.html	Busy 9front session	\N	\N	2020-07-19
727	https://crlf.site/log/notes/200720-comments/	Comments powered by Remark42	\N	\N	2020-07-20
725	https://royniang.com/identity.html	Minous, stretching	\N	\N	2019-02-01
708	https://royniang.com/edc.html	Busted Moleskine	\N	\N	2020-03-21
726	https://royniang.com/identity.html	Minous, the stray cat	\N	\N	2019-02-01
709	https://royniang.com/reading.html	Lockdown cleaning	\N	\N	2020-03-19
694	https://royniang.com/keyboards.html	RAMA M10-C	\N	\N	2020-03-17
710	https://royniang.com/keyboards.html	The Pebbles keyboard	\N	\N	2020-03-17
713	https://royniang.com/street.html	Octopus	\N	\N	2019-10-03
714	https://royniang.com/street.html	Goldfishes	\N	\N	2019-10-03
715	https://royniang.com/street.html	Summertime umbrella	\N	\N	2019-10-03
716	https://royniang.com/street.html	Girl playing with her dog	\N	\N	2019-10-03
717	https://royniang.com/street.html	iPad sunshade	\N	\N	2019-10-03
720	https://royniang.com/communities.html	Joined Merveilles	\N	\N	2019-09-25
721	https://royniang.com/nature.html	Riverside at La Réole	\N	\N	2019-08-02
722	https://royniang.com/nature.html	Hidden house at La Réole	\N	\N	2019-08-02
723	https://royniang.com/nature.html	Abandoned building at La Réole	\N	\N	2019-08-02
689	https://royniang.com/diary.html	Alto getting used to his new home	\N	\N	2019-08-01
700	https://royniang.com/diary.html	Maurane preparing her next movie	\N	\N	2019-08-01
719	https://royniang.com/street.html	Bicycle kids	\N	\N	2019-10-03
702	https://royniang.com/diary.html	End of the lockdown	\N	\N	2019-08-01
704	https://royniang.com/diary.html	Annoying Alto during lockdown	\N	\N	2019-08-01
732	https://simone.computer/#/blog	The Mascot	\N	\N	2021-01-29
729	https://crlf.site/log/notes/200616-links/	How to improve your handwriting	\N	\N	2020-06-16
730	https://crlf.site/log/notes/200530-links/	Notebooks and paper reviews	\N	\N	2020-05-30
731	https://crlf.site/log/notes/200430-inks/	Fountain pen ink properties	\N	\N	2020-04-30
733	https://simply.personal.jenett.org/in-the-mundane/	in the mundane	\N	\N	2021-03-13
734	http://q.pfiffer.org/posts/2021-02-18-To_Know_A_Place.html	 Knowing A Place	\N	\N	2021-02-18
735	http://q.pfiffer.org/posts/2021-01-03-2020_in_review.html	 2020 In Review	\N	\N	2021-01-03
736	http://q.pfiffer.org/posts/2020-10-22-Canyonlands.html	 A Canyonlands Figure-8	\N	\N	2020-10-22
738	http://q.pfiffer.org/posts/2020-04-03-MulletCache.html	 MulletCache	\N	\N	2020-04-03
739	http://q.pfiffer.org/posts/2020-03-25-Setjmp_Primer.html	 Setjmp/Longjmp Exception Handling in C	\N	\N	2020-03-25
740	http://q.pfiffer.org/posts/2020-03-12-A_Random_Python_Timezone_Bug.html	 A Random Python Timezone Bug	\N	\N	2020-03-12
741	http://q.pfiffer.org/posts/2020-03-02-Decoupling_your_game_loop.html	 Decoupling your game loop	\N	\N	2020-03-02
742	http://q.pfiffer.org/posts/2020-02-27-JSON_Aggregates.html	 Django Aggregates Over JSONB	\N	\N	2020-02-27
743	http://q.pfiffer.org/posts/2020-02-13-MR2_FireSale.html	 The Great MR2 FireSale	\N	\N	2020-02-13
744	http://q.pfiffer.org/posts/2020-01-28-Local_Bad_Times_Ideas.html	 Local Bad Times Ideas	\N	\N	2020-01-28
745	http://q.pfiffer.org/posts/2020-01-03-2019_in_review.html	 2019 In Review	\N	\N	2020-01-03
746	http://q.pfiffer.org/posts/2019-12-03-Python_Threading_Locks.html	 Python 2 Threading Primitives, Locks and Events	\N	\N	2019-12-03
747	http://q.pfiffer.org/posts/2019-08-29-Camping_plus_others_megamix.html	 Camping + Others Megamix	\N	\N	2019-08-29
748	http://q.pfiffer.org/posts/2019-05-12-Emerald_Outback_2019.html	 Oregon Emerald Outback 2019	\N	\N	2019-05-12
749	http://q.pfiffer.org/posts/2019-04-07-Moab_2019.html	 Moab 2019	\N	\N	2019-04-07
750	http://q.pfiffer.org/posts/2019-03-26-SE_Asia_Retrospect_2.html	 SE Asia Dubai, Nepal	\N	\N	2019-03-26
751	http://q.pfiffer.org/posts/2019-03-25-SE_Asia_Retrospect.html	 SE Asia Guangzhou and Pakistan	\N	\N	2019-03-25
752	http://q.pfiffer.org/posts/2019-03-24-2018_in_review.html	 2018 In Review	\N	\N	2019-03-24
753	http://q.pfiffer.org/posts/2018-08-15-Outback_2018.html	 Oregon Outback 2018	\N	\N	2018-08-15
754	http://q.pfiffer.org/posts/2018-03-28-Track_goals_2018.html	 Cycling Goals 2018	\N	\N	2018-03-28
755	http://q.pfiffer.org/posts/2018-01-05-2017_in_review.html	 2017 In Review	\N	\N	2018-01-05
757	http://q.pfiffer.org/posts/2017-10-21-Notes_from_two_weeks_of_haskell.html	 Notes from Two Weeks of Haskell	\N	\N	2017-10-21
758	http://q.pfiffer.org/posts/2017-09-30-Bug_Story_1.html	 Lets Talk About a Bug	\N	\N	2017-09-30
759	http://q.pfiffer.org/posts/2016-12-31-2016_in_review.html	 2016 In Review	\N	\N	2016-12-31
760	http://q.pfiffer.org/posts/2016-04-25-Camping_checklist.html	 Camping Checklist	\N	\N	2016-04-25
761	http://q.pfiffer.org/posts/2015-12-30-2015_in_review.html	 2015 In Review	\N	\N	2015-12-30
762	http://q.pfiffer.org/posts/2015-07-18-Simple_image_and_audio.html	 Simple image and audio wth FFMPEG	\N	\N	2015-07-18
763	http://q.pfiffer.org/posts/2015-06-04-256_Colors_weechat.html	 256 Colors in weechat-curses	\N	\N	2015-06-04
764	http://q.pfiffer.org/posts/2015-01-01-2014_in_review.html	 2014 In Review	\N	\N	2015-01-01
765	http://q.pfiffer.org/posts/2014-09-28-graphs_pt1.html	 Fun with Graphs part 1 Getting Started	\N	\N	2014-09-28
766	http://q.pfiffer.org/posts/2014-09-17-Last_Day.html	 Last Day	\N	\N	2014-09-17
767	http://q.pfiffer.org/posts/2014-09-10-Seven_Star_Mountain.html	 Seven Star Mountain	\N	\N	2014-09-10
768	http://q.pfiffer.org/posts/2014-09-06-Street_Fightin.html	 Street Fightin	\N	\N	2014-09-06
769	http://q.pfiffer.org/posts/2014-09-05-Bikes.html	 Bikes	\N	\N	2014-09-05
770	http://q.pfiffer.org/posts/2014-09-03-Blood.html	 Blood	\N	\N	2014-09-03
771	http://q.pfiffer.org/posts/2014-09-01-Wander.html	 Wander	\N	\N	2014-09-01
772	http://q.pfiffer.org/posts/2014-08-29-Market_Forces.html	 Market Forces	\N	\N	2014-08-29
774	http://q.pfiffer.org/posts/2014-08-26-Escape_Sling.html	 Escape Sling	\N	\N	2014-08-26
775	http://q.pfiffer.org/posts/2014-02-10-Erlang_port_drivers.html	 Erlang port driver pitfalls	\N	\N	2014-02-10
776	http://q.pfiffer.org/posts/2014-01-01-2013_in_review.html	 2013 In Review	\N	\N	2014-01-01
777	http://q.pfiffer.org/posts/2013-12-16-DNSMasq_setup.html	 Sane dnsmasq setup	\N	\N	2013-12-16
778	http://q.pfiffer.org/posts/2013-12-09-Bcache_and_LVM.html	 Bcache and LVM non-destructive setup	\N	\N	2013-12-09
779	http://q.pfiffer.org/posts/2013-11-16-Listserve_Postmortem.html	 Listserve Post-mortem	\N	\N	2013-11-16
780	http://q.pfiffer.org/posts/2013-11-06-2013_kvm_coreos.html	 KVM, CoreOS and LVM	\N	\N	2013-11-06
781	http://q.pfiffer.org/posts/2013-10-28-Hong_Kong_Day_6.html	 Hong Kong Day 6	\N	\N	2013-10-28
782	http://q.pfiffer.org/posts/2013-10-27-Hong_Kong_Day_5.html	 Hong Kong Day 5	\N	\N	2013-10-27
783	http://q.pfiffer.org/posts/2013-10-26-Hong_Kong_Day_4.html	 Hong Kong Day 4	\N	\N	2013-10-26
784	http://q.pfiffer.org/posts/2013-10-25-Hong_Kong_Day_3.html	 Hong Kong Day 3	\N	\N	2013-10-25
785	http://q.pfiffer.org/posts/2013-10-24-Hong_Kong_Day_2.html	 Hong Kong Day 2	\N	\N	2013-10-24
786	http://q.pfiffer.org/posts/2013-10-23-Hong_Kong_Day_1.html	 Hong Kong Day 1	\N	\N	2013-10-23
787	http://q.pfiffer.org/posts/2013-10-21-Hong_Kong_Day_0.html	 Hong Kong Day 0	\N	\N	2013-10-21
788	http://q.pfiffer.org/posts/2013-10-19-first.html	 Initial Post	\N	\N	2013-10-19
790	https://www.edwinwenink.xyz/posts/53-update_kobo_annotation/	Extracting Kobo EPUB Annotations	\N	\N	2021-01-08
791	https://www.edwinwenink.xyz/posts/52-bayesian_terminology/	On Bayesian likelihood	\N	\N	2020-09-01
792	https://www.edwinwenink.xyz/posts/51-python_secondary_sorting/	Secondary sorting in Python	\N	\N	2020-07-29
793	https://www.edwinwenink.xyz/posts/50-quiz_yourself_in_vim/	Study Tip: Quiz yourself in Vim	\N	\N	2020-06-16
794	https://www.edwinwenink.xyz/posts/49-russell_ai_technocracy_surveillance/	Russell on AI in technocracy and surveillance	\N	\N	2020-05-08
796	https://www.edwinwenink.xyz/posts/47-tilde_server/	Setting up your own tilde club (UNIX)	\N	\N	2020-04-11
797	https://www.edwinwenink.xyz/posts/46-ai_and_healthcare/	Tech giants will battle over your health data	\N	\N	2020-03-17
798	https://www.edwinwenink.xyz/posts/45-raven_paradox_inductive_inference/	The Raven Paradox of Inductive Reasoning	\N	\N	2020-02-11
799	https://materialfuture.net/posts/blog/2021-4-14-odysee-lbry/	I've Created A Odysee Channel	\N	\N	2021-04-14
800	https://materialfuture.net/posts/blog/2021-3-02-general-updates/	General Updates - March 2nd 2021	\N	\N	2021-03-02
801	https://materialfuture.net/posts/servers/centos-rehl-talk/	CentOS - RHEL Talk	\N	\N	2021-02-04
802	https://materialfuture.net/posts/blog/music-update/	Update: Music 2021	\N	\N	2021-01-26
803	https://materialfuture.net/posts/blog/activitypub-migration/	Online Purge - Meaningful Interaction	\N	\N	2021-01-12
804	https://materialfuture.net/posts/blog/2020-year-end-retrospective/	2020 Year-End Retrospective	\N	\N	2021-01-07
805	https://materialfuture.net/posts/books/books-completed-2020/	2020 - Books Completed + Retrospective	\N	\N	2020-12-29
807	https://materialfuture.net/posts/music/sin-album/	Sin - Album	\N	\N	2020-12-21
808	https://materialfuture.net/posts/blog/music-page/	New Music Page	\N	\N	2020-12-16
809	https://materialfuture.net/posts/blog/services-update/	Services and Site Update - December 2020	\N	\N	2020-12-16
810	https://materialfuture.net/posts/videos/experimental-videos-mandelbrot/	Experimental Videos - Mandelbrot Set 4K	\N	\N	2020-12-16
811	https://materialfuture.net/posts/music/streaming-services/	Streaming Services and Listening To Music	\N	\N	2020-11-27
812	https://materialfuture.net/posts/music/space-album-video/	Space Album Video - Video Schedules	\N	\N	2020-11-07
813	https://materialfuture.net/posts/servers/2020-11-6-learn-netdata/	Network Monitoring Via NetData	\N	\N	2020-11-06
814	https://materialfuture.net/posts/blog/2020-11-5-youtube-videos/	My YouTube Channel	\N	\N	2020-11-05
815	https://materialfuture.net/posts/games/gameboy-sprite-sheet-assets-itch/	GameBoy Sprite Sheets and Assets	\N	\N	2020-10-21
816	https://materialfuture.net/posts/blog/2020-10-2-resumes/	Setting Up A Resume With LaTeX	\N	\N	2020-10-01
817	https://materialfuture.net/posts/blog/rss/	What IS RSS?	\N	\N	2020-09-22
818	https://materialfuture.net/posts/games/new-games-category/	New Games Category	\N	\N	2020-09-10
819	https://materialfuture.net/posts/blog/updates/	September 2020 Update	\N	\N	2020-09-09
820	https://materialfuture.net/posts/blog/ideal-phone/	My Version Of An Ideal Phone	\N	\N	2020-08-23
821	https://materialfuture.net/posts/blog/2020-8-18-emacs-irc/	Emacs - IRC and Other Stuff	\N	\N	2020-08-18
822	https://materialfuture.net/posts/blog/time-to-step-back/	Time to Step Back and Reflect	\N	\N	2020-08-16
823	https://materialfuture.net/posts/blog/2020-07-org-mode/	What Is Org-Mode?	\N	\N	2020-07-22
825	https://materialfuture.net/posts/blog/2020-06-current/	Current Projects And Current Roadmap	\N	\N	2020-06-16
826	https://materialfuture.net/posts/blog/2020-06-ipfs/	IPFS For An Easy P2P Network	\N	\N	2020-06-16
827	https://materialfuture.net/posts/books/practical-c-programming/	Practical C Programming - Retrospective	\N	\N	2020-06-04
828	https://materialfuture.net/posts/blog/2020-05-git-revamp/	Self-Hosting Git Client for a Decentralized Future	\N	\N	2020-05-25
829	https://materialfuture.net/posts/blog/2020-04-email-server/	Creating A Personal Email Server With Postfix + Dovecot	\N	\N	2020-04-17
830	https://materialfuture.net/posts/blog/2020-03-emacs/	Why I Use Emacs, And Why It Matters	\N	\N	2020-03-28
831	https://materialfuture.net/posts/blog/2020-03-current-goals/	Current Goals - What I'm Working On	\N	\N	2020-03-12
832	https://materialfuture.net/posts/links/2020-02-links/	Links for February 2020	\N	\N	2020-02-19
833	https://materialfuture.net/posts/blog/2020-roadmap-and-restrospective/	2020 Roadmap and 2019 Retrospective	\N	\N	2020-02-05
834	https://materialfuture.net/posts/blog/2020-01-site-redesign/	Redesigning My Site + Minimalism On The Web	\N	\N	2020-01-29
835	https://materialfuture.net/posts/links/2020-01-links/	Links for January 2020	\N	\N	2020-01-15
836	https://materialfuture.net/posts/links/2019-12-links/	Links for December 2019	\N	\N	2019-12-18
837	https://materialfuture.net/posts/links/2019-11-links/	Links for November 2019	\N	\N	2019-11-15
838	https://travisshears.com/snippets/org_roam_capture_templates/	Org-Roam capture templates	\N	\N	2021-04-06
839	https://travisshears.com/blog/delete_all_my_friends/	delete all my duolingo friends	\N	\N	2021-03-22
840	https://travisshears.com/snippets/restart-nginx/	Restart Nginx	\N	\N	2021-02-07
841	https://travisshears.com/snippets/run-changed-tests/	Run Changed Tests	\N	\N	2021-02-01
842	https://travisshears.com/blog/reef-plan-and-first-day/	getting started with reefing	\N	\N	2021-01-30
843	https://travisshears.com/blog/first-tank/	my start in the aquarium hobby	\N	\N	2021-01-28
844	https://travisshears.com/blog/scheinbertspitze-tour/	scheinbertspitze tour	\N	\N	2021-01-17
846	https://travisshears.com/blog/unteres-lichteck-ridge-tour/	unteres lichteck ridge tour	\N	\N	2021-01-13
847	https://travisshears.com/blog/schachentorkopf-ridge-tour/	schachentorkopf ridge tour	\N	\N	2021-01-09
848	https://travisshears.com/snippets/strip-audio-from-video-file/	Strip Audio From Video File	\N	\N	2021-01-09
849	https://travisshears.com/blog/garmisch-piste-tour/	garmisch piste tour	\N	\N	2021-01-09
850	https://travisshears.com/blog/winter-hikes/	winter hikes	\N	\N	2021-01-07
851	https://travisshears.com/blog/weibel_kante/	weibel kante	\N	\N	2020-12-25
852	https://travisshears.com/blog/slovenia_trip/	slovenia trip	\N	\N	2020-12-25
853	https://travisshears.com/snippets/gzip-existing-tar/	gzipping an existing tar	\N	\N	2020-10-14
854	https://travisshears.com/blog/instagram-archive/	instagram archive	\N	\N	2020-10-01
855	https://travisshears.com/map/	Map	\N	\N	2020-09-28
856	https://travisshears.com/blog/why_small_images_plus_folderpics_demo/	small images + folderpics demo	\N	\N	2020-09-14
857	https://travisshears.com/blog/micro-blog-plugin-demo/	micro blog plugin demo	\N	\N	2020-08-23
858	https://travisshears.com/tutorials/pi-static-ip/	Setting a Static IP on Pi	\N	\N	2020-08-19
859	https://travisshears.com/snippets/tmux-plus-screen/	tmux plus screen	\N	\N	2020-08-17
861	https://travisshears.com/snippets/prevent-vim-auto-new-line/	Prevent Vim Auto New Lines	\N	\N	2020-08-13
862	https://travisshears.com/snippets/auto-find-ssh-keys/	Auto Find SSH Keys	\N	\N	2020-08-12
863	https://travisshears.com/snippets/short_server_names/	Using short server names	\N	\N	2020-08-12
864	https://travisshears.com/snippets/disable_user/	Disable User	\N	\N	2020-08-11
865	https://travisshears.com/blog/holland/	holland	\N	\N	2020-08-10
866	https://travisshears.com/blog/ski-gear-2019-2020/	2019/2020 ski gear	\N	\N	2020-08-07
867	https://travisshears.com/blog/year-progress/	year-progress demo	\N	\N	2020-07-26
869	https://travisshears.com/blog/camping-in-mayrhofen/	camping in mayrhofen	\N	\N	2020-07-21
870	https://travisshears.com/blog/peertube-instance-launch/	peertube instance launch	\N	\N	2020-07-20
871	https://travisshears.com/tutorials/basic-vps-setup/	Basic VPS Setup	\N	\N	2020-07-20
872	https://travisshears.com/snippets/automatic_tmux_session_names/	Automatic tmux session names	\N	\N	2020-07-13
873	https://travisshears.com/blog/weekend-in-frankenjura/	weekend in frankenjura	\N	\N	2020-07-05
874	https://travisshears.com/snippets/file-search-plus-size/	File Search Plus Size	\N	\N	2020-07-02
875	https://travisshears.com/snippets/mass-mkv-to-mp4-ffmpeg/	Convert .mkv to .mp4	\N	\N	2020-06-30
876	https://travisshears.com/snippets/wipe-mongo-collection/	Wipe a Mongo Collection	\N	\N	2020-06-29
877	https://travisshears.com/snippets/extending-gpg-key/	Extending GPG Keys	\N	\N	2020-06-22
878	https://travisshears.com/snippets/moving-gpg-keys/	Moving GPG Keys	\N	\N	2020-06-20
880	https://travisshears.com/snippets/git-force-push-with-lease/	Force push with --lease for safety	\N	\N	2020-06-10
881	https://travisshears.com/tutorials/adding-api-docs/	Adding Documentation to an API	\N	\N	2020-06-08
882	https://travisshears.com/snippets/open-notion-links/	Open Notion Links	\N	\N	2020-06-07
883	https://travisshears.com/blog/personal-site-walk-through/	personal site walk through	\N	\N	2020-06-01
884	https://travisshears.com/snippets/twtxt-config/	Twtxt Config Alias	\N	\N	2020-05-30
885	https://travisshears.com/snippets/jsx-comments/	JSX Comments	\N	\N	2020-05-26
886	https://travisshears.com/blog/first-svelte-app/	first svelte app	\N	\N	2020-05-02
887	https://travisshears.com/blog/start-teaching/	teaching javascript	\N	\N	2020-05-01
888	https://travisshears.com/tutorials/html-js-vs-code-setup/	HTML + JavaScript VS Code Setup	\N	\N	2020-05-01
889	https://travisshears.com/tutorials/pull-request-homework-workflok/	Pull Request Homework Workflow	\N	\N	2020-05-01
890	https://travisshears.com/tutorials/fromat-html-js-with-vs-code/	Format HTML & JavaScript with VS Code	\N	\N	2020-05-01
891	https://travisshears.com/tutorials/protected-github-branches/	Protected Github Branches	\N	\N	2020-05-01
892	https://travisshears.com/blog/sunrise/	project sunrise	\N	\N	2020-04-30
893	https://travisshears.com/snippets/k8s-reg-secret/	Creating K8s registry secrets	\N	\N	2020-03-29
894	https://travisshears.com/blog/galtenberg-ski-tour/	galtenberg ski tour	\N	\N	2020-03-17
895	https://travisshears.com/blog/kochel-first-climb/	first climb kochel	\N	\N	2020-03-16
896	https://travisshears.com/snippets/vim-open-file-under-cursor/	Vim Open File Under Cursor	\N	\N	2020-03-06
897	https://travisshears.com/snippets/sending-files-locally/	Sending Files Locally	\N	\N	2020-03-05
898	https://travisshears.com/snippets/vim-spelling/	Vim Spelling	\N	\N	2020-03-05
900	https://travisshears.com/snippets/git-repo-backup/	Git Repo Backup	\N	\N	2020-02-23
901	https://travisshears.com/blog/rofanspitze-ski-tour/	rofanspitze ski tour	\N	\N	2020-02-19
902	https://travisshears.com/blog/lenggries-avalanche-course/	lenggries avalanche course	\N	\N	2020-02-07
903	https://travisshears.com/blog/mountain-safety-reminder/	mountain safety reminder	\N	\N	2020-02-06
904	https://travisshears.com/blog/scuol-2020/	scuol hütte	\N	\N	2020-02-03
905	https://travisshears.com/snippets/vim-fzf-plugin/	Vim FZF Plugin	\N	\N	2020-01-30
906	https://travisshears.com/snippets/jq-command-line-json-processor/	JQ JSON processor	\N	\N	2020-01-30
907	https://travisshears.com/snippets/emoji-commit-messages/	Emoji Commit Messages	\N	\N	2020-01-28
908	https://travisshears.com/snippets/watch-command/	Watch Command	\N	\N	2020-01-27
909	https://travisshears.com/snippets/move-file-range/	Move File Range	\N	\N	2020-01-27
910	https://travisshears.com/snippets/git-zsh-plugin/	ZSH git plugin	\N	\N	2020-01-27
911	https://travisshears.com/blog/start-of-ski-season/	start of ski season	\N	\N	2020-01-12
912	https://travisshears.com/snippets/shell-for-loops/	For loops in bash / zsh shells	\N	\N	2020-01-12
913	https://travisshears.com/snippets/vim-placeholders/	Custom placeholders solution	\N	\N	2020-01-12
914	https://travisshears.com/snippets/vim-arglist/	Super powers of the arg list	\N	\N	2020-01-11
915	https://travisshears.com/snippets/vim-ripgrep-custom/	Custom ripgrep	\N	\N	2020-01-11
917	https://travisshears.com/snippets/vim-substitute/	Replae <s> with spell and nohl	\N	\N	2020-01-11
918	https://travisshears.com/snippets/vim-window-resize/	Resizing vim windows with arrow keys	\N	\N	2020-01-11
919	https://travisshears.com/snippets/ffmpeg-screen-casts/	Uploadable FFMPEG screen casts	\N	\N	2020-01-11
920	https://travisshears.com/snippets/vim-dictionary/	Vim dictionary lookup command	\N	\N	2020-01-11
921	https://travisshears.com/blog/return-of-snippets/	the return of snippets	\N	\N	2020-01-11
922	https://travisshears.com/snippets/gitlab-runners-config/	Configure more gitlab runners	\N	\N	2020-01-11
923	https://travisshears.com/snippets/git-who-last/	Who last edited a file	\N	\N	2020-01-11
924	https://travisshears.com/snippets/git-log-grep/	Search git logs with grep	\N	\N	2020-01-11
925	https://travisshears.com/snippets/git-revert-branch/	Revert an entire feature branch	\N	\N	2020-01-11
926	https://travisshears.com/snippets/scp/	I need a file off my server but I don't want to set up FTP	\N	\N	2020-01-11
927	https://travisshears.com/snippets/find-folder/	Find that lost folder	\N	\N	2020-01-11
928	https://travisshears.com/snippets/git-better-git-add/	Better Git Add	\N	\N	2020-01-11
929	https://travisshears.com/snippets/git-move-branch/	Move Branch	\N	\N	2020-01-11
932	https://travisshears.com/snippets/git-rebase/	Rewrite history git history	\N	\N	2020-01-11
933	https://travisshears.com/snippets/git-revert/	Oops I take that back 	\N	\N	2020-01-11
934	https://travisshears.com/snippets/silver-searcher/	Silver Searcher, it's like grep but faster and easier	\N	\N	2020-01-11
935	https://travisshears.com/snippets/pass-search/	Search Pass from password	\N	\N	2020-01-11
936	https://travisshears.com/snippets/pass-bulk-import/	Bulk import into Pass	\N	\N	2020-01-11
937	https://travisshears.com/snippets/pass-copy/	Copy password from Pass to the keyboard	\N	\N	2020-01-11
938	https://travisshears.com/snippets/git-prev-commit-changes/	See previous commit changes	\N	\N	2020-01-11
939	https://travisshears.com/snippets/aws-s3-sync/	Aws S3 Sync	\N	\N	2020-01-11
940	https://travisshears.com/snippets/aws-cloud-front-inval/	AWS CloudFront invalidation Sync	\N	\N	2020-01-11
941	https://travisshears.com/snippets/pretty-print-json/	Pretty print JSON	\N	\N	2020-01-11
943	https://travisshears.com/blog/climbing-grade-converter-tool/	climbing grade converter tool	\N	\N	2019-10-19
944	https://travisshears.com/blog/arco/	arco	\N	\N	2019-10-09
945	https://travisshears.com/blog/lofoten/	lofoten	\N	\N	2019-09-29
946	https://travisshears.com/blog/laberdolomiten/	laberdolomiten	\N	\N	2019-09-24
947	https://travisshears.com/blog/hacking-health/	hacking health in zurich	\N	\N	2019-09-23
948	https://travisshears.com/blog/iceland-2019/	iceland	\N	\N	2019-09-02
949	https://travisshears.com/blog/frauenwasserl/	frauenwasserl	\N	\N	2019-08-19
950	https://travisshears.com/blog/karwendelspitze-2019/	karwendelspitze	\N	\N	2019-07-21
951	https://travisshears.com/blog/scanning-for-meaning/	scanning for meaning	\N	\N	2019-07-14
952	https://travisshears.com/blog/canada-2019/	canada	\N	\N	2019-07-12
953	https://travisshears.com/blog/switzerland-liechtenstein-2019/	switzerland + liechtenstein	\N	\N	2019-07-05
954	https://travisshears.com/blog/armycookbot/	army cook bot	\N	\N	2019-07-01
955	https://travisshears.com/blog/klettergarten-bad-heilbrunn/	klettergarten bad heilbrunn	\N	\N	2019-05-19
956	https://travisshears.com/blog/reviving-dotfiles/	reviving dotfiles	\N	\N	2019-04-29
957	https://travisshears.com/blog/gitlab-npm-package-setup/	git hosted npm packages	\N	\N	2019-04-17
958	https://travisshears.com/blog/corsica-2019/	corsica	\N	\N	2019-04-10
959	https://travisshears.com/blog/local-pijul-with-docker/	try pijul with docker	\N	\N	2019-04-01
960	https://travisshears.com/corona_cal/	\N	\N	\N	0001-01-01
961	https://travisshears.com/version/	\N	\N	\N	0001-01-01
962	https://travisshears.com/gpg/	GPG	\N	\N	0001-01-01
963	https://travisshears.com/micro-blog/	Micro Blog	\N	\N	0001-01-01
994	https://inqlab.net/rösti.html	Rösti	\N	\N	2021-02-04
964	https://ix5.org/thoughts/2020/moving/	Moving	\N	\N	2020-03-02
966	https://ix5.org/thoughts/2017/grundgesetz-article-9/	Article 9: Freedom of coalition	\N	\N	2017-04-03
967	https://ix5.org/thoughts/2017/grundgesetz-article-8/	Article 8: Freedom of association	\N	\N	2017-04-03
968	https://ix5.org/thoughts/2017/grundgesetz-article-7/	Article 7: School System	\N	\N	2017-07-20
969	https://ix5.org/thoughts/2017/grundgesetz-article-6/	Article 6: Marriage, Family and Children	\N	\N	2017-04-03
970	https://ix5.org/thoughts/2017/grundgesetz-article-5/	Article 5: Freedom of expression	\N	\N	2017-07-20
971	https://ix5.org/thoughts/2017/grundgesetz-article-4/	Article 4: Freedom of Belief	\N	\N	2017-07-20
972	https://ix5.org/thoughts/2017/grundgesetz-article-3/	Article 3: Equality	\N	\N	2017-04-03
973	https://ix5.org/thoughts/2017/grundgesetz-article-2/	Article 2: Personal Freedoms	\N	\N	2017-04-03
974	https://ix5.org/thoughts/2017/grundgesetz-article-1/	Article 1: Human Dignity and Rights	\N	\N	2017-04-03
975	https://ix5.org/thoughts/2017/grundgesetz-beginning/	The Beginning	\N	\N	2017-03-05
976	https://ix5.org/thoughts/2017/larry-wilmore-whca-2016/	“Yo Barry, you did it my nigga”	\N	\N	2017-03-26
977	https://ix5.org/thoughts/2016/minimalism-is-for-suckers/	Minimalism is for suckers	\N	\N	2017-03-02
978	https://ix5.org/thoughts/2015/donating-blood/	Donating blood	\N	\N	2017-02-24
979	https://ix5.org/thoughts/2014/a-bit-of-wisdom/	A bit of wisdom	\N	\N	2017-02-24
980	https://ix5.org/thoughts/2014/back-in-germany/	Back in Germany	\N	\N	2017-02-24
982	https://ix5.org/thoughts/2014/changhua-county/	Changhua county	\N	\N	2017-02-24
983	https://ix5.org/thoughts/2014/easy-going-on-little-liuciu-island/	Easy going on Little Liuciu Island	\N	\N	2017-02-24
984	https://nor.the-rn.info/2021/04/09/building-norns-community/	Building “norns community”	\N	\N	2021-04-09
985	https://nor.the-rn.info/2021/03/20/rounding-errors/	Rounding Errors	\N	\N	2021-03-20
986	https://nor.the-rn.info/2021/03/06/why-im-streaming-the-writing-of-my-next-album/	Why I’m Streaming the Making of My Next Album	\N	\N	2021-03-06
987	https://nor.the-rn.info/2020/12/29/the-eoy-info-sessions/	The EOY Info Sessions	\N	\N	2020-12-29
988	https://nor.the-rn.info/2020/12/25/that-which-is-unique-breaks/	That Which is Unique, Breaks	\N	\N	2020-12-25
989	https://nor.the-rn.info/2020/10/16/music-hackspace/	Music Hackspace	\N	\N	2020-10-16
990	https://nor.the-rn.info/2020/09/29/pandemic-day-203-floyd-protests-day-127/	Pandemic Day 203 / Floyd Protests Day 127	\N	\N	2020-09-29
991	https://nor.the-rn.info/2020/09/15/towards-the-polymyth/	Towards the Polymyth	\N	\N	2020-09-15
992	https://nor.the-rn.info/2020/09/11/the-software-blues/	The Software Blues	\N	\N	2020-09-11
993	https://nor.the-rn.info/2020/09/01/arcologies-covered-by-cdm/	arcologies Covered by CDM	\N	\N	2020-09-01
995	https://inqlab.net/sky.html	Sky	\N	\N	2020-09-09
997	https://inqlab.net/allegra-openengiadina.html	Allegra openEngiadina!	\N	\N	2020-03-21
998	https://inqlab.net/use-tor.html	Use Tor	\N	\N	2020-03-20
999	https://inqlab.net/a-primer-on-the-semantic-web-and-linked-data.html	A Primer on the Semantic Web and Linked Data	\N	\N	2019-11-19
1000	https://inqlab.net/lord-of-the-flies.html	Lord of the Flies	\N	\N	2019-10-22
1001	https://inqlab.net/der-hase-und-der-igel.html	Der Hase und der Igel	\N	\N	2019-09-14
1003	https://inqlab.net/hong-kong-to-kunming.html	Hong Kong to Kunming	\N	\N	2015-03-02
1004	https://inqlab.net/karawane.html	Karawane	\N	\N	1916-02-05
1005	https://metasyn.pw/memex.html	5f90c23e68d81f624bd57bc9	\N	\N	2020-10-21
1007	https://metasyn.pw/hangul.html	5fb82d8526519b1134a64b54	\N	\N	2020-11-20
1008	https://metasyn.pw/seedling.html	5fd07d52411b7550146a0c66	\N	\N	2020-12-09
1009	https://metasyn.pw/raiu.html	6069181991aae3107ec3d119	\N	\N	2021-04-04
1010	http://milofultz.com/2021/04/11/tiny-font-3-by-3	📕 Make A Tiny 3x3 Font	\N	\N	2021-04-11
1011	http://milofultz.com/2021/03/06/sublime-keymap	Find and Remove Autocompletes in Sublime Text 3	\N	\N	2021-03-06
1012	http://milofultz.com/2021/01/28/snake-js	🐍 SNAKEHACK - snake with constantly changing controls	\N	\N	2021-01-28
1013	http://milofultz.com/2021/01/08/software	Apps, Software, and More That I Use Everyday	\N	\N	2021-01-08
1015	http://milofultz.com/2020/12/27/atlb-notes	📕 Algorithms To Live By - Book Notes	\N	\N	2020-12-27
1016	http://milofultz.com/2020/12/13/aoc-day-13	Solution to Advent of Code 13 - LCM with Offsets	\N	\N	2020-12-13
1017	http://milofultz.com/2020/12/01/advent-of-code	🧩 Advent Of Code 2020 - Solutions	\N	\N	2020-12-01
1018	http://milofultz.com/2020/11/10/bytebeat	Bytebeat - Overview and How To Make/Record on OSX	\N	\N	2020-11-10
1019	http://milofultz.com/2020/11/09/the-point-of-diminis	The point of diminishing returns is already here	\N	\N	2020-11-09
1020	http://milofultz.com/2020/11/01/koi-koi-rules	Rules for Hanafuda game "Koi-Koi"	\N	\N	2020-11-01
1021	http://milofultz.com/2020/10/31/tablatal-parser	📊 Tablatal Parser - Plaintext Database to JSON (Python)	\N	\N	2020-10-31
1022	http://milofultz.com/2020/10/25/hiitimer	💻 HIITimer - Exercise Timer w/Routines and TTS (Python)	\N	\N	2020-10-25
1023	http://milofultz.com/2020/10/21/html-css-js	HTML / CSS / JS Resources	\N	\N	2020-10-21
1024	http://milofultz.com/2020/10/17/tod-python	💻 Tod - Plan and Manage Daily Tasks In The CLI (Python)	\N	\N	2020-10-17
1025	http://milofultz.com/2020/10/16/friends-dont	Friends don't let friends look at pageviews	\N	\N	2020-10-16
1026	http://milofultz.com/2020/10/12/track-python	💻 Track - Daily Journal and Log (Python)	\N	\N	2020-10-12
1027	http://milofultz.com/2020/10/12/sleep-realms	🎧 Sleep Realms (Paulstretch)	\N	\N	2020-10-12
1028	http://milofultz.com/2020/10/04/two-minute-rule	The Two-Minute Rule	\N	\N	2020-10-04
1029	http://milofultz.com/2020/10/04/doing	Trying to become reacquainted with being bored	\N	\N	2020-10-04
1030	http://milofultz.com/2020/09/30/evernote-images	💻 Maximize Evernote Storage Using Web Clipper (JS)	\N	\N	2020-09-30
1031	http://milofultz.com/2020/09/26/zentube	💻 Zentube - Youtube Lite w/Note Taking (HTML/CSS/JS)	\N	\N	2020-09-26
1032	http://milofultz.com/2020/09/23/mastodon	Mastodon	\N	\N	2020-09-23
1033	http://milofultz.com/2020/09/01/domine	Domine (game from Hundred Rabbits)	\N	\N	2020-09-01
1034	http://milofultz.com/2020/08/26/random-note	💻 Open A Random Note/Lo-Fi Idea Generator (Python)	\N	\N	2020-08-26
1035	http://milofultz.com/2020/08/22/purple-rain-outro	🎼 Purple Rain Outro Transcription	\N	\N	2020-08-22
1036	http://milofultz.com/2020/08/19/soulja-realms	🎧 Soulja Realms	\N	\N	2020-08-19
1038	http://milofultz.com/2020/07/23/awfulizer	💻 Awfulizer - Make Surfing The Web Awful (Firefox)	\N	\N	2020-07-23
1039	http://milofultz.com/2020/07/22/make-python-apps	Make Python 'Apps' and Shortcuts To Run Them on OSX	\N	\N	2020-07-22
1040	http://milofultz.com/2020/07/18/programming-outline	Create a better program faster with an outline V2	\N	\N	2020-07-18
1041	http://milofultz.com/2020/07/08/star-maker	💻 star_maker - a lo-fi ambient visual (Python)	\N	\N	2020-07-08
1042	http://milofultz.com/2020/07/07/spacelove	🎧 spacelove.xm - Made using an old E-MAX sample	\N	\N	2020-07-07
1043	http://milofultz.com/2020/07/03/wordsmash	💻 Wordsmash Explosion - Mastermind With Words (Python)	\N	\N	2020-07-03
1044	http://milofultz.com/2020/07/02/bmcrawl	💻 Bookmark Crawler - Make Internet More Fun (Python)	\N	\N	2020-07-02
1045	http://milofultz.com/2020/06/26/nobody-takes-advice	Nobody Takes Advice	\N	\N	2020-06-26
1046	http://milofultz.com/2020/06/25/inexpensive-games	Inexpensive and Minimal Equipment Games To Play	\N	\N	2020-06-25
1047	http://milofultz.com/2020/06/21/quantity-quality	Quality and quantity's relevance to critical feeling	\N	\N	2020-06-21
1048	http://milofultz.com/2020/06/10/critical-feeling	Critical feeling is as important as critical thinking	\N	\N	2020-06-10
1049	http://milofultz.com/2020/05/25/exercise-routine	Simple + Minimal Exercise Routine	\N	\N	2020-05-25
1050	http://milofultz.com/2020/05/23/day-planner	🗺 Day planner based on location	\N	\N	2020-05-23
1051	http://milofultz.com/2020/05/22/zettelkasten	I just found out about Zettelkasten	\N	\N	2020-05-22
1053	http://milofultz.com/2020/05/22/just-in-case	Buying Things "Just In Case" vs. Real Estate	\N	\N	2020-05-22
1054	http://milofultz.com/2020/05/17/adam-savage	The Adam Savage Trial Method	\N	\N	2020-05-17
1055	http://milofultz.com/2020/05/01/old-internet	I Miss The Old Internet	\N	\N	2020-05-01
1056	https://wolfmd.me/blog/book-reviews.html#gulliver	Book Reviews | Gulliver's Travels	\N	\N	\N
1057	https://wolfmd.me/blog/quarantine-spending-habits.html	Quarantine Spending Habits | 2019 vs 2020	\N	\N	\N
1058	https://wolfmd.me/blog/observing-notes.html	Watching and Writing | Practice in Detailed Descriptions	\N	\N	\N
1059	https://wolfmd.me/blog/future-projects.html	Future Projects	\N	\N	\N
1060	https://wolfmd.me/blog/troika-is-cool.html	Troika! Is Cool	\N	\N	\N
1061	https://wolfmd.me/blog/book-reviews.html#lem	Book Review: Mortal Engines and Fiasco	\N	\N	\N
1062	https://wolfmd.me/blog/book-reviews.html#puck	Book Review: Puck of Pook's Hill	\N	\N	\N
1063	https://wolfmd.me/blog/book-reviews.html#fantasyandsf	Book Review: Magazine of Fantasy and Science Fiction: Vol. 1 No. 5, December 1950	\N	\N	\N
1064	https://wolfmd.me/blog/minimalism-v-self-reliance.html	Minimalism and Self-Reliance	\N	\N	\N
1065	https://wolfmd.me/blog/stuffed-animals-and-aging.html	Stuffed Animals and Aging	\N	\N	\N
1066	https://wolfmd.me/blog/we-made-a-pico8-game.html	We Made A Pico-8 Game	\N	\N	\N
1136	https://tendigits.space/projects/bird-posters/	Bird Posters	\N	\N	2021-03-24
1068	https://wolfmd.me/blog/rtl-sdr-and-adsb-during-oakland-riots.html	WTF Is That Sound? Using an RTL-SDR and ADS-B to Figure Out What is in the Sky	\N	\N	\N
1069	https://wolfmd.me/blog/dreaming-without-imagination.html	Dreaming Without Imagination	\N	\N	\N
1070	https://wolfmd.me/blog/personal-knowledge-repositories.html	Personal Knowledge Repositories: Notes on Notes	\N	\N	\N
1071	https://wolfmd.me/blog/phantom-vibration-syndrome.html	Phantom Vibration Syndrome: A Digital Vestigial Limb	\N	\N	\N
1072	https://wolfmd.me/blog/please-unlock-that-cemetery.html	Please Unlock That Cemetery: A Case For Liberating Honored Greenspaces	\N	\N	\N
1073	https://wolfmd.me/blog/getting-dovecot-to-play-nice.html	Getting Dovecot to Play Nice and Procmail to Stop Calling Me Bogus	\N	\N	\N
1074	https://wolfmd.me/blog/enhance-your-salt-pax-dev-2018.html	Enhance Your Salt: Notes From PAX Dev 2018	\N	\N	\N
1075	https://wolfmd.me/blog/on-leaving-the-midwest.html	On Leaving the Midwest	\N	\N	\N
1076	https://wolfmd.me/blog/observability-notes-from-o11ycon-2018.html	Observability For All: Notes From O11ycon 2018	\N	\N	\N
1077	https://wolfmd.me/blog/monochromancy-and-attention.html	Monochromancy And Attention	\N	\N	\N
1078	https://wolfmd.me/blog/setting-up-a-canarytoken.html	Setting Up A Canary Token	\N	\N	\N
1079	https://wolfmd.me/blog/reflections-on-colemak.html	Reflections on Two Seasons of Colemak	\N	\N	\N
1080	https://wolfmd.me/blog/fixing-a-wonky-commodore.html	Troubleshooting the Commodore 64: Solutions to Issues I Have Encountered	\N	\N	\N
1081	https://wolfmd.me/blog/c64/starfleet-i.html	Starfleet I - by The Pirates of the World	\N	\N	\N
1082	https://wolfmd.me/blog/playing-with-the-odin.html	Playing with the Odin Part 1	\N	\N	\N
1083	https://wolfmd.me/blog/c64/sports-games-ii.html	Sports Games II	\N	\N	\N
1084	https://wolfmd.me/blog/a-big-stack-of-pirated-c64-games.html	A Big Stack of Pirated Commodore 64 Games	\N	\N	\N
1085	https://wolfmd.me/blog/rolling-out-rss-in-2017.html	Rolling Out RSS in 2017	\N	\N	\N
1086	https://wolfmd.me/blog/theres-a-demon-in-my-gpg-pub-key.html#goodwill-glitch	What a Cool TV	\N	\N	\N
1087	https://wolfmd.me/blog/in-defense-of-old-in-defense-of-new.html#aging-sound	Aging Sound: The Modern Appeal of Cassette Tapes	\N	\N	\N
1088	https://wolfmd.me/blog/how-to-make-a-cassette-tape-loop.html	How to Make a Cassette Tape Loop	\N	\N	\N
1089	https://wolfmd.me/blog/the-secret-scared-by-a-scraper-phisher.html	The Secret (of Yahoo)	\N	\N	\N
1090	https://wolfmd.me/blog/theres-a-demon-in-my-gpg-pub-key.html	There's A Demon In My GPG Key	\N	\N	\N
1114	https://natehn.com/posts/digital-security/	Notes on Digital Security	\N	\N	2021-03-15
1091	https://irimi.one/music/slikback/	Slikback	\N	\N	2021-04-18
1092	https://irimi.one/collage-poems/breath-of-fresh-air/	A Breath of Fresh Air	\N	\N	2021-02-21
1093	https://irimi.one/posts/lieu/	Hello, Lieu!	\N	\N	2021-02-14
1094	https://irimi.one/uses/software-setups/taskwarrior/	My Taskwarrior Setup	\N	\N	2021-02-14
1095	https://irimi.one/music/aliceffekt/	Aliceffekt	\N	\N	2021-02-06
1096	https://irimi.one/music/illeapolis-radio/	Mr. Roboto - Illeapolis Radio, Vol. 1	\N	\N	2021-01-15
1097	https://irimi.one/music/professor-kliq/	Professor Kliq	\N	\N	2021-01-04
1098	https://irimi.one/posts/motherplant/	motherplant	\N	\N	2020-12-30
1099	https://irimi.one/music/sun23/	Zadig The Jasp - Sun 23	\N	\N	2020-11-29
1101	https://irimi.one/music/lone-electrone/	Lone Electrone	\N	\N	2020-11-07
1102	https://irimi.one/collage-poems/jewelbox/	Like a Jewelbox in the Forest	\N	\N	2020-10-31
1103	https://irimi.one/collage-poems/onethatlikestoread/	One That Likes to Read	\N	\N	2020-10-31
1104	https://irimi.one/music/alpha-centauri/	Alicequests - Alpha Centauri	\N	\N	2020-10-25
1105	https://irimi.one/music/50-tracks/	Netsh - 50 tracks to enhance your robotic implants	\N	\N	2020-10-23
1106	https://irimi.one/posts/buying-music/	Buying Music Again	\N	\N	2020-10-21
1107	https://irimi.one/music/keep-running/	V//Tomo - ♥K e e p Running♥	\N	\N	2020-10-20
1109	https://irimi.one/collage-poems/forgotten/	He had forgotten all	\N	\N	2020-10-13
1110	https://irimi.one/collage-poems/sameasyou/	Same as you	\N	\N	2020-10-13
1111	https://irimi.one/stickers/proprietary-bullshit/	Proprietary Bullshit	\N	\N	2020-09-18
1112	https://irimi.one/stickers/acab/	All Computers Are Broken	\N	\N	2020-09-06
1113	https://irimi.one/stickers/fab-money/	If money can’t buy happiness then why is it so fabulous?	\N	\N	2020-09-06
1115	https://natehn.com/posts/iphone-security/	Activist iPhone Security Guide	\N	\N	2021-03-13
1116	https://natehn.com/library/	Library	\N	\N	2021-02-28
1117	https://natehn.com/posts/2020/	Reflecting on 2020	\N	\N	2021-01-17
1118	https://natehn.com/connect/	Connect	\N	\N	2021-01-10
1119	https://natehn.com/posts/music-studio-nov-2020/	Music Studio (Nov. 2020)	\N	\N	2020-11-14
1120	https://natehn.com/posts/leaving-facebook/	Leaving Facebook	\N	\N	2020-11-09
1121	https://natehn.com/posts/on-memes/	On Memes	\N	\N	2020-10-30
1122	https://natehn.com/feed/	Feed	\N	\N	2020-10-09
1123	https://natehn.com/posts/land-acknowledgment/	Land Acknowledgment	\N	\N	2020-09-22
1124	https://natehn.com/posts/this-website/	This Website, and How To Build Your Own	\N	\N	2020-09-01
1125	https://natehn.com/about/	About	\N	\N	2020-08-14
1126	https://www.gr0k.net/blog/logging-my-journey.html	Logging My Journey	\N	\N	2021-02-26
1127	https://www.gr0k.net/blog/more-zynthian-workflow-updates.html	More Zynthian Workflow Updates	\N	\N	2021-02-21
1128	https://www.gr0k.net/blog/zynthian-workflow.html	Zynthian Workflow	\N	\N	2021-02-17
1129	https://www.gr0k.net/blog/the-monocled-frown.html	The Monocled Frown	\N	\N	2021-02-05
1131	https://www.gr0k.net/blog/creating-soundfonts-in-polyphone.html	Creating SoundFonts in Polyphone	\N	\N	2021-01-31
1132	https://www.gr0k.net/blog/zynthians-sequencer-zynseq.html	Zynthian's Sequencer - ZynSeq	\N	\N	2021-01-29
1133	https://www.gr0k.net/blog/zynthian-first-impressions.html	Zynthian v4.1 Kit - First Impressions	\N	\N	2021-01-28
1134	https://tendigits.space/projects/orca-box/	Orca Box	\N	\N	2021-03-31
1135	https://tendigits.space/projects/birdhouse-cam/	Birdhouse Webcam	\N	\N	2021-03-24
1138	https://tendigits.space/notes/house/	House Maintenance	\N	\N	2021-01-06
1139	https://tendigits.space/notes/inktober/	Inktober	\N	\N	2020-10-01
1140	https://tendigits.space/notes/post-receive-hook/	Post Receive Hook	\N	\N	2020-09-27
1141	https://tendigits.space/notes/bagels/	Bagels	\N	\N	2020-09-26
1142	https://tendigits.space/notes/updating-ssh/	Updating SSL Certs	\N	\N	2020-08-25
1143	https://tendigits.space/notes/imac-with-linux/	New Linux for an old iMac	\N	\N	2020-06-17
1144	https://tendigits.space/notes/ae-modular/	AE Modular	\N	\N	2020-05-31
1146	https://tendigits.space/notes/hello/	Setting up this website	\N	\N	2020-05-20
1151	https://wiki.xxiivv.com/site/roms.html	We are now in the osdev business	\N	\N	2021-02-22
1152	https://wiki.xxiivv.com/site/radio.html	Baofeng UV-9R+	\N	\N	2021-02-14
1148	https://wiki.xxiivv.com/site/noodle.html	Noodle in Uxn	\N	\N	2021-03-17
1162	https://wiki.xxiivv.com/site/noton.html	Noton Release	\N	\N	2020-11-19
1163	https://wiki.xxiivv.com/site/reform.html	Reform Oled	\N	\N	2020-10-19
1153	https://wiki.xxiivv.com/site/busy_doing_nothing.html	The Logbook Book	\N	\N	2021-02-08
1154	https://wiki.xxiivv.com/site/uxn.html	Uxn Sticker	\N	\N	2021-02-03
1155	https://wiki.xxiivv.com/site/exed.html	Exed Desktop Release	\N	\N	2021-01-22
1156	https://wiki.xxiivv.com/site/dito.html	Dito Desktop Release	\N	\N	2021-01-20
1164	https://wiki.xxiivv.com/site/wiktopher.html	Tent City of Renate	\N	\N	2017-11-06
1202	https://wiki.xxiivv.com/site/pino.html	In Minamiise	\N	\N	2016-02-27
1158	https://wiki.xxiivv.com/site/origami.html	Gyro 6	\N	\N	2020-12-04
1159	https://wiki.xxiivv.com/site/origami.html	Sonobe 30	\N	\N	2020-12-04
1212	https://wiki.xxiivv.com/site/keyboard.html	OLKB Hi-pro mod Planck 6	\N	\N	2016-01-02
1165	https://wiki.xxiivv.com/site/ayatori.html	Ayatori Notebook	\N	\N	2020-10-04
1200	https://wiki.xxiivv.com/site/programming.html	Acorn BBC Micro Logo on Famicom	\N	\N	2020-03-16
1198	https://wiki.xxiivv.com/site/donsol_famicom.html	Donsol Famicom Release	\N	\N	2020-03-12
1192	https://wiki.xxiivv.com/site/pascal.html	Spiral Pattern	\N	\N	2020-04-12
1167	https://wiki.xxiivv.com/site/longtermism.html	Brass Faucet	\N	\N	2020-09-19
1168	https://wiki.xxiivv.com/site/spacetime_6502.html	Spacetime 6502	\N	\N	2020-08-26
1169	https://wiki.xxiivv.com/site/usagi.html	Nesdev on Plan9	\N	\N	2020-08-25
1170	https://wiki.xxiivv.com/site/plan9_color.html	Color Picker	\N	\N	2020-08-14
1179	https://wiki.xxiivv.com/site/travel.html	Spent 7 weeks at sea	\N	\N	2020-07-21
1180	https://wiki.xxiivv.com/site/nautical.html	Alphabet Flags	\N	\N	2020-06-07
1172	https://wiki.xxiivv.com/site/chr_format.html	Nasu on Plan 9	\N	\N	2020-08-07
1173	https://wiki.xxiivv.com/site/postscript.html	Postscript on Plan9	\N	\N	2020-08-04
1174	https://wiki.xxiivv.com/site/plan9_clock.html	Not into babyblue	\N	\N	2020-08-02
1175	https://wiki.xxiivv.com/site/plan9_c.html	Plan9 Draw	\N	\N	2020-08-01
1176	https://wiki.xxiivv.com/site/acme.html	Custom Acme	\N	\N	2020-07-31
1177	https://wiki.xxiivv.com/site/rio.html	Customizing Rio	\N	\N	2020-07-30
1171	https://wiki.xxiivv.com/site/moogle.html	Pitch Yaw Roll	\N	\N	2020-07-28
1178	https://wiki.xxiivv.com/site/moogle.html	Moogle Spheroid	\N	\N	2020-07-28
1187	https://wiki.xxiivv.com/site/nespaint.html	The NesPaint Interface	\N	\N	2020-05-21
1166	https://wiki.xxiivv.com/site/identity.html	Made In Moogle	\N	\N	2010-02-16
1181	https://wiki.xxiivv.com/site/shimoda.html	Shimoda Station	\N	\N	2020-05-28
1182	https://wiki.xxiivv.com/site/shimoda.html	Sunset Maru	\N	\N	2020-05-28
1189	https://wiki.xxiivv.com/site/graf3dscene.html	Andes Castel In Construction	\N	\N	2020-05-15
1195	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack III	\N	\N	2020-03-31
1196	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack II	\N	\N	2020-03-31
1197	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack I	\N	\N	2020-03-31
1188	https://wiki.xxiivv.com/site/personal.html	Disused Hotel in Shimoda	\N	\N	2010-02-28
1216	https://wiki.xxiivv.com/site/vetetrandes.html	Saarafores Station	\N	\N	2019-10-01
1206	https://wiki.xxiivv.com/site/oquonie.html	Aboard Pino	\N	\N	2014-02-03
1193	https://wiki.xxiivv.com/site/pascal.html	Entaloneralie System 7	\N	\N	2020-04-12
1201	https://wiki.xxiivv.com/site/donsol_famicom.html	Famicom AV to C1084 Monitor	\N	\N	2020-03-12
1215	https://wiki.xxiivv.com/site/duomo.html	Slip Gate	\N	\N	2017-12-23
1147	https://wiki.xxiivv.com/site/nasu.html	2-bit tiles in nasu	\N	\N	2020-02-02
1190	https://wiki.xxiivv.com/site/minamiise.html	Nozoe at 5am	\N	\N	2019-04-14
1194	https://wiki.xxiivv.com/site/minamiise.html	The Gokashou Coast	\N	\N	2019-04-14
1199	https://wiki.xxiivv.com/site/minamiise.html	Nakatsuhamaura	\N	\N	2019-04-14
1150	https://wiki.xxiivv.com/site/nasu.html	Nasu on Uxn	\N	\N	2020-02-02
1207	https://wiki.xxiivv.com/site/technology.html	Paper Computer	\N	\N	2019-12-03
1208	https://wiki.xxiivv.com/site/tools.html	Tools Sticker Sheets	\N	\N	2019-05-23
1209	https://wiki.xxiivv.com/site/andes_castel.html	Castel Entrance	\N	\N	2013-08-23
1210	https://wiki.xxiivv.com/site/morse.html	Morse Alphabet Chart	\N	\N	2019-11-04
1211	https://wiki.xxiivv.com/site/macintosh.html	Neauismetica on Macintosh	\N	\N	2019-11-01
1191	https://wiki.xxiivv.com/site/identity.html	Luna moth in Minamiise	\N	\N	2010-02-16
1205	https://wiki.xxiivv.com/site/famicom.html	Famicom Keyboard	\N	\N	2019-10-29
1213	https://wiki.xxiivv.com/site/famicom.html	OPN2 Cartridge	\N	\N	2019-10-29
1149	https://wiki.xxiivv.com/site/left.html	Uxambly drawing routines	\N	\N	2017-08-07
1157	https://wiki.xxiivv.com/site/left.html	Working on Oscean with Left	\N	\N	2017-08-07
1214	https://wiki.xxiivv.com/site/vertale.html	Meeting Andes	\N	\N	2019-10-18
1217	https://wiki.xxiivv.com/site/vertale.html	Depot	\N	\N	2019-10-18
1204	https://wiki.xxiivv.com/site/identity.html	XXIIVV in NesPaint	\N	\N	2010-02-16
1272	https://wiki.xxiivv.com/site/azolla.html	Azolla Release	\N	\N	2019-05-14
1274	https://wiki.xxiivv.com/site/azolla.html	JSNation, Amsterdam	\N	\N	2019-05-14
1243	https://wiki.xxiivv.com/site/andes_castel.html	The view from Laeisth	\N	\N	2013-08-23
1238	https://wiki.xxiivv.com/site/neonev.html	Early Years	\N	\N	2019-10-02
1219	https://wiki.xxiivv.com/site/kirleane.html	Paradichlorisse	\N	\N	2019-09-30
1218	https://wiki.xxiivv.com/site/risan_aldeth.html	Aldeth	\N	\N	2019-10-07
1244	https://wiki.xxiivv.com/site/lard_shader.html	Study D	\N	\N	2015-03-10
1248	https://wiki.xxiivv.com/site/talk.html	Talk at XOXO, Portland	\N	\N	2015-04-21
1226	https://wiki.xxiivv.com/site/risan_aldeth.html	Compression Tunnels	\N	\N	2019-10-07
1233	https://wiki.xxiivv.com/site/risan_aldeth.html	Ehrivevnv Gate	\N	\N	2019-10-07
1227	https://wiki.xxiivv.com/site/vetetrandes.html	Escal	\N	\N	2019-10-01
1249	https://wiki.xxiivv.com/site/hundred_rabbits.html	Kelp	\N	\N	2015-11-09
1231	https://wiki.xxiivv.com/site/aitasla.html	Reflector	\N	\N	2019-10-09
1228	https://wiki.xxiivv.com/site/dilitriel.html	Eaurizon Hangars	\N	\N	2019-09-29
1234	https://wiki.xxiivv.com/site/dilitriel.html	Flighter Transit	\N	\N	2019-09-29
1245	https://wiki.xxiivv.com/site/hardware.html	Sanwu Audio Player	\N	\N	2019-09-25
1230	https://wiki.xxiivv.com/site/vetetrandes.html	Shutting Ramp	\N	\N	2019-10-01
1254	https://wiki.xxiivv.com/site/macro.html	Caterpillar	\N	\N	2010-08-21
1221	https://wiki.xxiivv.com/site/vertale.html	Outside Passage	\N	\N	2019-10-18
1222	https://wiki.xxiivv.com/site/vertale.html	Fork Passage	\N	\N	2019-10-18
1220	https://wiki.xxiivv.com/site/whiinders.html	Offline Station	\N	\N	2019-10-15
1225	https://wiki.xxiivv.com/site/whiinders.html	Signalter	\N	\N	2019-10-15
1246	https://wiki.xxiivv.com/site/playground.html	The Playground Express	\N	\N	2019-09-24
1275	https://wiki.xxiivv.com/site/microbit.html	BBC Microbit	\N	\N	2019-05-24
1229	https://wiki.xxiivv.com/site/laeisth.html	Es Plains	\N	\N	2019-10-11
1240	https://wiki.xxiivv.com/site/kirleane.html	Soies Compressor	\N	\N	2019-09-30
1235	https://wiki.xxiivv.com/site/dilitriel.html	Flighter	\N	\N	2019-09-29
1239	https://wiki.xxiivv.com/site/vetetrandes.html	Autoconstructors	\N	\N	2019-10-01
1280	https://wiki.xxiivv.com/site/microbit.html	Light Painting for the Microbit	\N	\N	2019-05-24
1252	https://wiki.xxiivv.com/site/tools.html	The Family	\N	\N	2019-05-23
1236	https://wiki.xxiivv.com/site/dilitriel.html	Hanging Road	\N	\N	2019-09-29
1237	https://wiki.xxiivv.com/site/dilitriel.html	Support Conduits	\N	\N	2019-09-29
1241	https://wiki.xxiivv.com/site/dilitriel.html	Valentinel Bridge	\N	\N	2019-09-29
1281	https://wiki.xxiivv.com/site/tools.html	Orca Station	\N	\N	2019-05-23
1251	https://wiki.xxiivv.com/site/canada.html	Travel to Vancouver, Canada	\N	\N	2010-07-08
1250	https://wiki.xxiivv.com/site/andes.html	Andes	\N	\N	2019-08-29
1284	https://wiki.xxiivv.com/site/osaka.html	Rock Castle in Osaka	\N	\N	2010-02-19
1285	https://wiki.xxiivv.com/site/osaka.html	Rock Garden in Osaka	\N	\N	2010-02-19
1253	https://wiki.xxiivv.com/site/ronin.html	Ronin Spiral	\N	\N	2019-07-07
1286	https://wiki.xxiivv.com/site/osaka.html	Travel to Osaka, Japan	\N	\N	2010-02-19
1259	https://wiki.xxiivv.com/site/plan9.html	Catclock	\N	\N	2019-07-05
1260	https://wiki.xxiivv.com/site/plan9.html	Monochrome Rio	\N	\N	2019-07-05
1261	https://wiki.xxiivv.com/site/plan9.html	Glenda	\N	\N	2019-07-05
1256	https://wiki.xxiivv.com/site/ronin.html	Ronin Recursion	\N	\N	2019-07-07
1258	https://wiki.xxiivv.com/site/ronin.html	Ronin Splash	\N	\N	2019-07-07
1257	https://wiki.xxiivv.com/site/monome.html	Rack Monome	\N	\N	2019-06-29
1262	https://wiki.xxiivv.com/site/monome.html	Linn Monome	\N	\N	2019-06-29
1287	https://wiki.xxiivv.com/site/raspberry.html	Ad blocker with display	\N	\N	2019-05-05
1263	https://wiki.xxiivv.com/site/skate.html	Minami Ise beach	\N	\N	2019-05-27
1264	https://wiki.xxiivv.com/site/skate.html	Minami Ise beach 2	\N	\N	2019-05-27
1277	https://wiki.xxiivv.com/site/skate.html	Getting back into it	\N	\N	2019-05-27
1278	https://wiki.xxiivv.com/site/skate.html	Joy in picture	\N	\N	2019-05-27
1247	https://wiki.xxiivv.com/site/studio.html	Microbrute Synth	\N	\N	2019-04-23
1279	https://wiki.xxiivv.com/site/studio.html	Infinite Polivoks	\N	\N	2019-04-23
1265	https://wiki.xxiivv.com/site/norns.html	Tutorials	\N	\N	2019-06-10
1273	https://wiki.xxiivv.com/site/norns.html	Pong on Norns	\N	\N	2019-06-10
1282	https://wiki.xxiivv.com/site/azolla.html	Algomech Festival, Sheffield	\N	\N	2019-05-14
1283	https://wiki.xxiivv.com/site/azolla.html	Yajnev	\N	\N	2019-05-14
1288	https://wiki.xxiivv.com/site/studio.html	Polivoks Mini B	\N	\N	2019-04-23
1289	https://wiki.xxiivv.com/site/studio.html	Polivoks Mini A	\N	\N	2019-04-23
1290	https://wiki.xxiivv.com/site/alicef.html	Polivoks	\N	\N	2019-04-22
1297	https://wiki.xxiivv.com/site/shizuoka.html	Tea Fields	\N	\N	2019-03-07
1298	https://wiki.xxiivv.com/site/shizuoka.html	Tea House	\N	\N	2019-03-07
1295	https://wiki.xxiivv.com/site/pilot.html	Orca x Pilot	\N	\N	2019-04-03
1296	https://wiki.xxiivv.com/site/pilot.html	The Pilot Synthetiser	\N	\N	2019-04-03
1299	https://wiki.xxiivv.com/site/shizuoka.html	Cherry Trees over Tea Fields	\N	\N	2019-03-07
1223	https://wiki.xxiivv.com/site/duomo.html	Drains	\N	\N	2017-12-23
1224	https://wiki.xxiivv.com/site/duomo.html	Basin	\N	\N	2017-12-23
1300	https://wiki.xxiivv.com/site/juni.html	Holding the Chorded Keyboard	\N	\N	2019-03-26
1301	https://wiki.xxiivv.com/site/juni.html	The Chorded Keyboard	\N	\N	2019-03-26
1232	https://wiki.xxiivv.com/site/duomo.html	Refineries	\N	\N	2017-12-23
1242	https://wiki.xxiivv.com/site/duomo.html	Septechoes	\N	\N	2017-12-23
1363	https://wiki.xxiivv.com/site/physical.html	Elodie Vast	\N	\N	2018-06-06
1341	https://wiki.xxiivv.com/site/discourse.html	Maude	\N	\N	2018-09-23
1342	https://wiki.xxiivv.com/site/paradise.html	ParadiseOS	\N	\N	2012-03-03
1308	https://wiki.xxiivv.com/site/illustration.html	Working remotely	\N	\N	2019-03-04
1303	https://wiki.xxiivv.com/site/goals.html	Rekka on Pino in Shizuoka	\N	\N	2019-03-18
1304	https://wiki.xxiivv.com/site/goals.html	Pino docked in Shizuoka	\N	\N	2019-03-18
1302	https://wiki.xxiivv.com/site/shizuoka.html	Moored downtown Shizuoka	\N	\N	2019-03-07
1306	https://wiki.xxiivv.com/site/shizuoka.html	Sail to Shizuoka, Japan	\N	\N	2019-03-07
1325	https://wiki.xxiivv.com/site/marshall_islands.html	A young okra plant at the hospital	\N	\N	2018-10-20
1328	https://wiki.xxiivv.com/site/marshall_islands.html	Thai Basil	\N	\N	2018-10-20
1321	https://wiki.xxiivv.com/site/rekka.html	In Ogasawara	\N	\N	2006-07-07
1309	https://wiki.xxiivv.com/site/ogasawara.html	Futami Beach	\N	\N	2019-01-24
1307	https://wiki.xxiivv.com/site/artwork.html	Coralinev Bike	\N	\N	2007-11-23
1316	https://wiki.xxiivv.com/site/lifestyle.html	Anchored in Ogasawara	\N	\N	2019-02-20
1310	https://wiki.xxiivv.com/site/ogasawara.html	Futami Sailors	\N	\N	2019-01-24
1334	https://wiki.xxiivv.com/site/marshall_islands.html	Eggplant Twirl	\N	\N	2018-10-20
1357	https://wiki.xxiivv.com/site/markl.html	Markl Dojo	\N	\N	2017-11-09
1332	https://wiki.xxiivv.com/site/directory.html	田園に死す	\N	\N	2017-01-02
1339	https://wiki.xxiivv.com/site/unix.html	Static	\N	\N	2018-10-06
1305	https://wiki.xxiivv.com/site/bike.html	In front of Mt. Fuji	\N	\N	2018-09-26
1353	https://wiki.xxiivv.com/site/donsol.html	Difficulty levels	\N	\N	2015-03-05
1330	https://wiki.xxiivv.com/site/merveilles.html	Maru	\N	\N	2018-12-12
1376	https://wiki.xxiivv.com/site/black.html	Lost in Niue	\N	\N	2015-04-24
1331	https://wiki.xxiivv.com/site/merveilles.html	Mastodon Instance Inauguration	\N	\N	2018-12-12
1327	https://wiki.xxiivv.com/site/nutrition.html	Deep Greens	\N	\N	2017-07-19
1349	https://wiki.xxiivv.com/site/routine.html	Apartment in Koenji	\N	\N	2018-08-21
1350	https://wiki.xxiivv.com/site/japan.html	Shimokitazawa	\N	\N	2018-08-19
1329	https://wiki.xxiivv.com/site/hundred_rabbits.html	Neighbor Pino	\N	\N	2015-11-09
1364	https://wiki.xxiivv.com/site/neon_hermetism.html	Soies Injection	\N	\N	2018-05-25
1379	https://wiki.xxiivv.com/site/black.html	Beach In Rarotonga	\N	\N	2015-04-24
1340	https://wiki.xxiivv.com/site/bike.html	Trek District S, in Fiji	\N	\N	2018-09-26
1323	https://wiki.xxiivv.com/site/the_sublime.html	Majuro Anchorage	\N	\N	2017-03-26
1314	https://wiki.xxiivv.com/site/lietal.html	Alrök Fur Säldota	\N	\N	2007-03-20
1337	https://wiki.xxiivv.com/site/marshall_islands.html	Sail to Majuro, Marshall Islands	\N	\N	2018-10-20
1343	https://wiki.xxiivv.com/site/wisdom.html	Sol Robeson	\N	\N	2018-09-17
1354	https://wiki.xxiivv.com/site/sketchbook.html	Encounter with the floating eye	\N	\N	2011-08-30
1367	https://wiki.xxiivv.com/site/webring.html	No, seriously.	\N	\N	2018-05-15
1368	https://wiki.xxiivv.com/site/photography.html	ÅA	\N	\N	2018-05-12
1355	https://wiki.xxiivv.com/site/essentials.html	Durable and simple tools	\N	\N	2018-07-22
1347	https://wiki.xxiivv.com/site/ethics.html	The Land Sailor	\N	\N	2018-08-29
1335	https://wiki.xxiivv.com/site/about.html	XXIIVV	\N	\N	2018-08-28
1348	https://wiki.xxiivv.com/site/about.html	Ambigram	\N	\N	2018-08-28
1326	https://wiki.xxiivv.com/site/riven.html	Riven Map	\N	\N	2018-02-27
1338	https://wiki.xxiivv.com/site/riven.html	The Portals Combination	\N	\N	2018-02-27
1344	https://wiki.xxiivv.com/site/fiji.html	Lami Bay II, Fiji	\N	\N	2018-08-10
1345	https://wiki.xxiivv.com/site/fiji.html	Lami Bay, Fiji	\N	\N	2018-08-10
1346	https://wiki.xxiivv.com/site/fiji.html	Cousteau	\N	\N	2018-08-10
1352	https://wiki.xxiivv.com/site/fiji.html	Savusavu, Fiji	\N	\N	2018-08-10
1324	https://wiki.xxiivv.com/site/orca.html	Orca x Dotgrid	\N	\N	2013-09-05
1372	https://wiki.xxiivv.com/site/paradise.html	The Inspector Cat	\N	\N	2012-03-03
1370	https://wiki.xxiivv.com/site/dotgrid.html	Improved the look and feel	\N	\N	2017-11-03
1358	https://wiki.xxiivv.com/site/noon_guest.html	MoonQuest OST Release	\N	\N	2018-07-14
1356	https://wiki.xxiivv.com/site/faqs.html	Nakano Sakaue II	\N	\N	2018-06-28
1360	https://wiki.xxiivv.com/site/faqs.html	Nakano Sakaue I	\N	\N	2018-06-28
1366	https://wiki.xxiivv.com/site/sketchbook.html	The Storm Transit	\N	\N	2011-08-30
1378	https://wiki.xxiivv.com/site/visual.html	The Beldam Point Of View	\N	\N	2010-06-19
1365	https://wiki.xxiivv.com/site/brane.html	The Millioneth Clock	\N	\N	2014-09-18
1374	https://wiki.xxiivv.com/site/computer.html	In Bloom	\N	\N	2018-04-22
1375	https://wiki.xxiivv.com/site/radio_station.html	Pimoroni Board	\N	\N	2018-04-18
1351	https://wiki.xxiivv.com/site/framboisedorf.html	A Toy Piano for Rainy Days	\N	\N	2018-04-05
1333	https://wiki.xxiivv.com/site/orca.html	Orca Type	\N	\N	2013-09-05
1336	https://wiki.xxiivv.com/site/the_sublime.html	Sunrise in the Marshall Islands	\N	\N	2017-03-26
1380	https://wiki.xxiivv.com/site/framboisedorf.html	A Small Pocket Synth	\N	\N	2018-04-05
1371	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Halftone	\N	\N	2018-04-16
1373	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Super Meteor Exhibition	\N	\N	2018-04-16
1377	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Nepturne 7757	\N	\N	2018-04-16
1381	https://wiki.xxiivv.com/site/weather_station.html	Looking out for storms	\N	\N	2018-03-21
1382	https://wiki.xxiivv.com/site/weather_station.html	Listening to the weather	\N	\N	2018-03-21
1361	https://wiki.xxiivv.com/site/the_sublime.html	Drifting toward Fiji	\N	\N	2017-03-26
1401	https://wiki.xxiivv.com/site/rotonde.html	The Webring Logo	\N	\N	2017-10-12
1394	https://wiki.xxiivv.com/site/duomo.html	The Districts	\N	\N	2017-12-23
1384	https://wiki.xxiivv.com/site/grimgrains.html	The Black Toothpaste Recipe	\N	\N	2016-11-07
1435	https://wiki.xxiivv.com/site/grimgrains.html	Algea Crisp	\N	\N	2016-11-07
1391	https://wiki.xxiivv.com/site/yajnev.html	Supermoon	\N	\N	2011-07-16
1456	https://wiki.xxiivv.com/site/extended_sleep.html	Bird	\N	\N	2015-04-29
1392	https://wiki.xxiivv.com/site/marabu.html	Weeklybeats Tracking	\N	\N	2017-08-11
1423	https://wiki.xxiivv.com/site/nutrition.html	Tempeh Carrot Soba	\N	\N	2017-07-19
1431	https://wiki.xxiivv.com/site/nutrition.html	Papaya Bruschetta	\N	\N	2017-07-19
1387	https://wiki.xxiivv.com/site/hiversaires.html	Aitasla	\N	\N	2013-02-11
1450	https://wiki.xxiivv.com/site/known_magye.html	Known Magye Release	\N	\N	2014-03-16
1393	https://wiki.xxiivv.com/site/dotgrid.html	Working away from snow	\N	\N	2017-11-03
1410	https://wiki.xxiivv.com/site/rotonde.html	Rotonde Interface	\N	\N	2017-10-12
1383	https://wiki.xxiivv.com/site/everyday.html	At sea, everything rusts	\N	\N	2018-03-19
1436	https://wiki.xxiivv.com/site/collected_works.html	Collected works Release	\N	\N	2017-05-29
1437	https://wiki.xxiivv.com/site/children_of_bramble.html	Immortal Bird	\N	\N	2017-05-28
1416	https://wiki.xxiivv.com/site/the_sublime.html	At sea, near The Marquesas	\N	\N	2017-03-26
1445	https://wiki.xxiivv.com/site/the_sublime.html	Drifting	\N	\N	2017-03-26
1417	https://wiki.xxiivv.com/site/rotonde.html	Rotonde Layout	\N	\N	2017-10-12
1411	https://wiki.xxiivv.com/site/wiktopher.html	Book Prototype	\N	\N	2017-11-06
1408	https://wiki.xxiivv.com/site/dotgrid.html	General improvements	\N	\N	2017-11-03
1402	https://wiki.xxiivv.com/site/new_zealand.html	Arrived in New Zealand	\N	\N	2017-10-29
1420	https://wiki.xxiivv.com/site/getapan_728k.html	Album cover	\N	\N	2017-08-24
1432	https://wiki.xxiivv.com/site/arvelie.html	Neralie	\N	\N	2017-07-16
1386	https://wiki.xxiivv.com/site/riven.html	Portal combination is in my journal	\N	\N	2018-02-27
1396	https://wiki.xxiivv.com/site/death.html	Dominion	\N	\N	2006-11-14
1388	https://wiki.xxiivv.com/site/vambits.html	From Skógr Studios	\N	\N	2010-03-11
1395	https://wiki.xxiivv.com/site/vambits.html	Fresh Vambit Cuts	\N	\N	2010-03-11
1389	https://wiki.xxiivv.com/site/ehrivevnv.html	Orbit	\N	\N	2018-01-28
1390	https://wiki.xxiivv.com/site/neausea.html	Of Fallen Pilgrims	\N	\N	2018-01-24
1442	https://wiki.xxiivv.com/site/pino.html	Repairing the main sail	\N	\N	2016-02-27
1457	https://wiki.xxiivv.com/site/pino.html	Becalmed	\N	\N	2016-02-27
1455	https://wiki.xxiivv.com/site/nomad.html	Lost in Ensenada	\N	\N	2017-01-18
1414	https://wiki.xxiivv.com/site/marabu.html	Marabu Tracker	\N	\N	2017-08-11
1409	https://wiki.xxiivv.com/site/markl.html	Wood Stage	\N	\N	2017-11-09
1418	https://wiki.xxiivv.com/site/marabu.html	Almost Stability	\N	\N	2017-08-11
1385	https://wiki.xxiivv.com/site/film.html	Hiding from the rain	\N	\N	2016-08-10
1397	https://wiki.xxiivv.com/site/vambits.html	Vambits on a Camera	\N	\N	2010-03-11
1440	https://wiki.xxiivv.com/site/language.html	Immortal Birds	\N	\N	2016-07-07
1407	https://wiki.xxiivv.com/site/morals.html	And Jöns	\N	\N	2017-11-17
1403	https://wiki.xxiivv.com/site/documentation.html	Analogies	\N	\N	2017-11-24
1413	https://wiki.xxiivv.com/site/new_zealand.html	Sail to Whangarei, New Zealand	\N	\N	2017-10-29
1398	https://wiki.xxiivv.com/site/film.html	Wandering in the North Island	\N	\N	2016-08-10
1421	https://wiki.xxiivv.com/site/marabu.html	Removed everything	\N	\N	2017-08-11
1399	https://wiki.xxiivv.com/site/film.html	Guerilla Gardening	\N	\N	2016-08-10
1433	https://wiki.xxiivv.com/site/japanese.html	Sidonia	\N	\N	2017-07-12
1434	https://wiki.xxiivv.com/site/japanese.html	Nakano	\N	\N	2017-07-12
1425	https://wiki.xxiivv.com/site/niue.html	Chasms and Canyons	\N	\N	2017-07-28
1426	https://wiki.xxiivv.com/site/niue.html	The Coastline	\N	\N	2017-07-28
1427	https://wiki.xxiivv.com/site/niue.html	Limu Pools	\N	\N	2017-07-28
1428	https://wiki.xxiivv.com/site/niue.html	Descent Way	\N	\N	2017-07-28
1429	https://wiki.xxiivv.com/site/niue.html	Niue Coastline	\N	\N	2017-07-28
1443	https://wiki.xxiivv.com/site/research.html	Raspberry Pi Computer	\N	\N	2014-12-10
1441	https://wiki.xxiivv.com/site/thousand_rooms.html	Cat has a visitor.	\N	\N	2017-04-29
1438	https://wiki.xxiivv.com/site/instrument.html	Waterproof	\N	\N	2017-05-14
1439	https://wiki.xxiivv.com/site/instrument.html	Monitor View	\N	\N	2017-05-14
1459	https://wiki.xxiivv.com/site/mexico.html	Guests in La Paz	\N	\N	2017-02-03
1461	https://wiki.xxiivv.com/site/mexico.html	La Paz	\N	\N	2017-02-03
1464	https://wiki.xxiivv.com/site/donsol.html	Donsol Desktop Release	\N	\N	2015-03-05
1415	https://wiki.xxiivv.com/site/black.html	Rekka In The Dinghy	\N	\N	2015-04-24
1458	https://wiki.xxiivv.com/site/black.html	Rekka in Los Angeles	\N	\N	2015-04-24
1444	https://wiki.xxiivv.com/site/marquesas.html	Colorful Sight	\N	\N	2017-03-02
1449	https://wiki.xxiivv.com/site/marquesas.html	Heavy Rain	\N	\N	2017-03-02
1446	https://wiki.xxiivv.com/site/superworker.html	Recording Superworker	\N	\N	2017-04-02
1447	https://wiki.xxiivv.com/site/superworker.html	Pocket Operator	\N	\N	2017-04-02
1451	https://wiki.xxiivv.com/site/marquesas.html	Pampel	\N	\N	2017-03-02
1452	https://wiki.xxiivv.com/site/marquesas.html	Pampel?	\N	\N	2017-03-02
1453	https://wiki.xxiivv.com/site/marquesas.html	Nuku-Hiva	\N	\N	2017-03-02
1460	https://wiki.xxiivv.com/site/black.html	Pino in Ensenada	\N	\N	2015-04-24
1463	https://wiki.xxiivv.com/site/nomad.html	Fulcanelli	\N	\N	2017-01-18
1400	https://wiki.xxiivv.com/site/film.html	Auckland	\N	\N	2016-08-10
1522	https://wiki.xxiivv.com/site/knowledge.html	Dieter	\N	\N	2015-12-29
1514	https://wiki.xxiivv.com/site/lietal.html	The Lietal Flag	\N	\N	2007-03-20
1516	https://wiki.xxiivv.com/site/hypervoid.html	Pandischopic	\N	\N	2010-07-29
1466	https://wiki.xxiivv.com/site/directory.html	春野美子「茶の味」	\N	\N	2017-01-02
1533	https://wiki.xxiivv.com/site/opal_inquisitors.html	Opal inquisitors Release	\N	\N	2015-09-15
1525	https://wiki.xxiivv.com/site/hundred_rabbits.html	Rabbits	\N	\N	2015-11-09
1515	https://wiki.xxiivv.com/site/blindfolk.html	Blindfolks	\N	\N	2016-01-31
1493	https://wiki.xxiivv.com/site/camera.html	Learn Film Photo	\N	\N	2016-07-14
1500	https://wiki.xxiivv.com/site/lives.html	At 1H1D in Osaka	\N	\N	2016-05-31
1470	https://wiki.xxiivv.com/site/russian.html	Сердце получает нож	\N	\N	2016-12-05
1474	https://wiki.xxiivv.com/site/grimgrains.html	Bamboo Charcoal	\N	\N	2016-11-07
1465	https://wiki.xxiivv.com/site/donsol.html	Donsol Desktop Interface	\N	\N	2015-03-05
1531	https://wiki.xxiivv.com/site/mobile.html	Old Android UI	\N	\N	2012-01-14
1517	https://wiki.xxiivv.com/site/beauty.html	02	\N	\N	2014-10-22
1527	https://wiki.xxiivv.com/site/rabbits_soundtrack.html	A Hundred Knobs	\N	\N	2015-11-29
1476	https://wiki.xxiivv.com/site/aesthetics.html	A Digest	\N	\N	2016-10-27
1503	https://wiki.xxiivv.com/site/verreciel_soundtrack.html	Verreciel OST Release	\N	\N	2016-05-09
1480	https://wiki.xxiivv.com/site/lard_shader.html	Study C	\N	\N	2015-03-10
1495	https://wiki.xxiivv.com/site/language.html	The Voynich	\N	\N	2016-07-07
1505	https://wiki.xxiivv.com/site/polygore.html	Hexagore	\N	\N	2016-04-12
1506	https://wiki.xxiivv.com/site/polygore.html	Pentagore	\N	\N	2016-04-12
1479	https://wiki.xxiivv.com/site/wallpapers.html	Shinji	\N	\N	2010-04-11
1468	https://wiki.xxiivv.com/site/film.html	San Francisco Street	\N	\N	2016-08-10
1467	https://wiki.xxiivv.com/site/donsol.html	Progress on Donsol	\N	\N	2015-03-05
1477	https://wiki.xxiivv.com/site/nervous.html	Woulg	\N	\N	2016-03-27
1508	https://wiki.xxiivv.com/site/nervous.html	Exhibit B	\N	\N	2016-03-27
1509	https://wiki.xxiivv.com/site/nervous.html	Exhibit A	\N	\N	2016-03-27
1526	https://wiki.xxiivv.com/site/keyboard_468.html	1.4	\N	\N	2014-12-27
1469	https://wiki.xxiivv.com/site/film.html	San Francisco Stairs	\N	\N	2016-08-10
1471	https://wiki.xxiivv.com/site/film.html	The Helm	\N	\N	2016-08-10
1482	https://wiki.xxiivv.com/site/film.html	My Father At The Helm	\N	\N	2016-08-10
1485	https://wiki.xxiivv.com/site/film.html	Early Sailing Days	\N	\N	2016-08-10
1496	https://wiki.xxiivv.com/site/pearls.html	Pearl	\N	\N	2016-07-04
1497	https://wiki.xxiivv.com/site/pearls.html	Cell	\N	\N	2016-07-04
1523	https://wiki.xxiivv.com/site/orca.html	Orca Glyphs	\N	\N	2013-09-05
1520	https://wiki.xxiivv.com/site/bifurcan.html	Bifurcan Die	\N	\N	2014-06-18
1486	https://wiki.xxiivv.com/site/film.html	Early Sailing Days	\N	\N	2016-08-10
1487	https://wiki.xxiivv.com/site/film.html	Evening near Vancouver Island	\N	\N	2016-08-10
1540	https://wiki.xxiivv.com/site/talk.html	Talk at Ars Electronica, Vienna	\N	\N	2015-04-21
1507	https://wiki.xxiivv.com/site/polygore.html	Trigore	\N	\N	2016-04-12
1530	https://wiki.xxiivv.com/site/dictionarism.html	Diarism	\N	\N	2015-10-31
1472	https://wiki.xxiivv.com/site/black.html	Ensenada Trash Hill	\N	\N	2015-04-24
1512	https://wiki.xxiivv.com/site/portalion.html	Portalion Cover	\N	\N	2016-03-02
1492	https://wiki.xxiivv.com/site/rekka.html	Reading about sailing	\N	\N	2006-07-07
1502	https://wiki.xxiivv.com/site/rekka.html	Last days in Montreal	\N	\N	2006-07-07
1498	https://wiki.xxiivv.com/site/advent_v.html	Death	\N	\N	2014-08-04
1499	https://wiki.xxiivv.com/site/advent_v.html	The Tavern	\N	\N	2014-08-04
1484	https://wiki.xxiivv.com/site/america.html	Sail to San Francisco	\N	\N	2008-06-26
1528	https://wiki.xxiivv.com/site/macro.html	Cure Dents	\N	\N	2010-08-21
1518	https://wiki.xxiivv.com/site/beauty.html	01	\N	\N	2014-10-22
1521	https://wiki.xxiivv.com/site/keyboard.html	Setup	\N	\N	2016-01-02
1545	https://wiki.xxiivv.com/site/looking_glace.html	Looking Glace Release	\N	\N	2015-08-28
1534	https://wiki.xxiivv.com/site/austria.html	Heading Out	\N	\N	2015-08-30
1529	https://wiki.xxiivv.com/site/hundred_rabbits.html	The Whole Band	\N	\N	2015-11-09
1510	https://wiki.xxiivv.com/site/verreciel.html	Eminence	\N	\N	2015-09-27
1524	https://wiki.xxiivv.com/site/verreciel.html	Further	\N	\N	2015-09-27
1532	https://wiki.xxiivv.com/site/verreciel.html	Prototype	\N	\N	2015-09-27
1473	https://wiki.xxiivv.com/site/black.html	The V Berth	\N	\N	2015-04-24
1519	https://wiki.xxiivv.com/site/beauty.html	03	\N	\N	2014-10-22
1546	https://wiki.xxiivv.com/site/beauty.html	Mytresial	\N	\N	2014-10-22
1547	https://wiki.xxiivv.com/site/beauty.html	Genoviral	\N	\N	2014-10-22
1535	https://wiki.xxiivv.com/site/austria.html	Streets Like Amadeus	\N	\N	2015-08-30
1536	https://wiki.xxiivv.com/site/austria.html	Vienna	\N	\N	2015-08-30
1537	https://wiki.xxiivv.com/site/austria.html	Suddenly, Half-Life	\N	\N	2015-08-30
1538	https://wiki.xxiivv.com/site/austria.html	Vienna	\N	\N	2015-08-30
1539	https://wiki.xxiivv.com/site/austria.html	Ars Electronica	\N	\N	2015-08-30
1541	https://wiki.xxiivv.com/site/austria.html	Linz Food	\N	\N	2015-08-30
1548	https://wiki.xxiivv.com/site/beauty.html	Vatoxoinal	\N	\N	2014-10-22
1549	https://wiki.xxiivv.com/site/beauty.html	Hydreviral	\N	\N	2014-10-22
1552	https://wiki.xxiivv.com/site/infrared.html	Habitat 67	\N	\N	2012-08-07
1591	https://wiki.xxiivv.com/site/ledoliel.html	2.1	\N	\N	2014-05-31
1598	https://wiki.xxiivv.com/site/dew.html	Dew Interface	\N	\N	2014-08-06
1605	https://wiki.xxiivv.com/site/dodecae.html	Flyer	\N	\N	2014-12-04
1581	https://wiki.xxiivv.com/site/donsol.html	Mobile Interface Update	\N	\N	2015-03-05
1582	https://wiki.xxiivv.com/site/lard_shader.html	Study B	\N	\N	2015-03-10
1550	https://wiki.xxiivv.com/site/kaleidoscope.html	Chrestasebeia	\N	\N	2014-04-03
1590	https://wiki.xxiivv.com/site/alphavetist.html	3.0	\N	\N	2014-06-22
1626	https://wiki.xxiivv.com/site/serventines.html	Jenen	\N	\N	2014-05-25
1613	https://wiki.xxiivv.com/site/beauty.html	A voice in the night	\N	\N	2014-10-22
1554	https://wiki.xxiivv.com/site/supervisitor.html	Trapezoid	\N	\N	2014-12-06
1576	https://wiki.xxiivv.com/site/black.html	Ensenada Hills	\N	\N	2015-04-24
1583	https://wiki.xxiivv.com/site/lard_shader.html	Study A	\N	\N	2015-03-10
1584	https://wiki.xxiivv.com/site/donsol.html	Mobile Prototype	\N	\N	2015-03-05
1618	https://wiki.xxiivv.com/site/telekinesis.html	Leap Motion Demo, Tokyo	\N	\N	2013-09-12
1599	https://wiki.xxiivv.com/site/rafinograde.html	Glyph Art	\N	\N	2014-12-13
1600	https://wiki.xxiivv.com/site/research.html	The sartre Ultravoid	\N	\N	2014-12-10
1557	https://wiki.xxiivv.com/site/vocavularist.html	Vocavularist Release	\N	\N	2013-08-07
1623	https://wiki.xxiivv.com/site/brane.html	IIIII	\N	\N	2014-09-18
1624	https://wiki.xxiivv.com/site/brane.html	IIII	\N	\N	2014-09-18
1559	https://wiki.xxiivv.com/site/the_will_the_wisp.html	Twitter Bot Birth	\N	\N	2015-06-10
1585	https://wiki.xxiivv.com/site/america.html	Nebraska	\N	\N	2008-06-26
1558	https://wiki.xxiivv.com/site/macro.html	Glass	\N	\N	2010-08-21
1551	https://wiki.xxiivv.com/site/mobile.html	Breakout Prototype	\N	\N	2012-01-14
1614	https://wiki.xxiivv.com/site/beauty.html	Plasmytic	\N	\N	2014-10-22
1628	https://wiki.xxiivv.com/site/serventines.html	Untenest	\N	\N	2014-05-25
1612	https://wiki.xxiivv.com/site/paradise.html	Techgnostic Order	\N	\N	2012-03-03
1560	https://wiki.xxiivv.com/site/eschatolor.html	Tevelision	\N	\N	2015-05-19
1555	https://wiki.xxiivv.com/site/inventory.html	Everyday Carry	\N	\N	2015-07-13
1588	https://wiki.xxiivv.com/site/hypervoid.html	Dischromatic	\N	\N	2010-07-29
1589	https://wiki.xxiivv.com/site/hypervoid.html	Nulloid	\N	\N	2010-07-29
1597	https://wiki.xxiivv.com/site/hypervoid.html	Antipigment	\N	\N	2010-07-29
1571	https://wiki.xxiivv.com/site/time_alloy.html	Vertaline	\N	\N	2015-05-03
1572	https://wiki.xxiivv.com/site/time_alloy.html	Opaline	\N	\N	2015-05-03
1573	https://wiki.xxiivv.com/site/time_alloy.html	Slyverline	\N	\N	2015-05-03
1575	https://wiki.xxiivv.com/site/extended_sleep.html	Extended Sleep Release	\N	\N	2015-04-29
1561	https://wiki.xxiivv.com/site/netherlands.html	Amsterdam	\N	\N	2015-05-12
1562	https://wiki.xxiivv.com/site/netherlands.html	Utrecht	\N	\N	2015-05-12
1563	https://wiki.xxiivv.com/site/netherlands.html	Amsterdam	\N	\N	2015-05-12
1564	https://wiki.xxiivv.com/site/netherlands.html	Travel to Utrecht	\N	\N	2015-05-12
1553	https://wiki.xxiivv.com/site/infrared.html	Graveyard	\N	\N	2012-08-07
1556	https://wiki.xxiivv.com/site/infrared.html	Rekka and Sunglasses	\N	\N	2012-08-07
1567	https://wiki.xxiivv.com/site/ar_moire.html	Pattern IIII	\N	\N	2015-05-06
1568	https://wiki.xxiivv.com/site/ar_moire.html	Pattern III	\N	\N	2015-05-06
1569	https://wiki.xxiivv.com/site/ar_moire.html	Pattern II	\N	\N	2015-05-06
1565	https://wiki.xxiivv.com/site/astratas.html	Lines B	\N	\N	2015-04-30
1566	https://wiki.xxiivv.com/site/astratas.html	Lines A	\N	\N	2015-04-30
1574	https://wiki.xxiivv.com/site/astratas.html	Lines C	\N	\N	2015-04-30
1578	https://wiki.xxiivv.com/site/talk.html	Talk at Amaze, Berlin	\N	\N	2015-04-21
1586	https://wiki.xxiivv.com/site/america.html	Desert	\N	\N	2008-06-26
1593	https://wiki.xxiivv.com/site/ramiel.html	Ramiel Release	\N	\N	2015-01-14
1594	https://wiki.xxiivv.com/site/miniscopie.html	Reine - Miniscopie	\N	\N	2015-01-09
1595	https://wiki.xxiivv.com/site/beldam_records.html	Founded Beldam	\N	\N	2014-12-29
1596	https://wiki.xxiivv.com/site/keyboard_468.html	Prototype	\N	\N	2014-12-27
1601	https://wiki.xxiivv.com/site/supervisitor.html	Dodecae	\N	\N	2014-12-06
1602	https://wiki.xxiivv.com/site/supervisitor.html	Aliceffekt Live	\N	\N	2014-12-06
1615	https://wiki.xxiivv.com/site/beauty.html	Benignytic	\N	\N	2014-10-22
1610	https://wiki.xxiivv.com/site/the_sartre_mechanism.html	Ultravoid	\N	\N	2014-11-20
1606	https://wiki.xxiivv.com/site/defraction_optics.html	II	\N	\N	2014-11-19
1608	https://wiki.xxiivv.com/site/defraction_optics.html	Waveform	\N	\N	2014-11-19
1609	https://wiki.xxiivv.com/site/defraction_optics.html	Circleform	\N	\N	2014-11-19
1629	https://wiki.xxiivv.com/site/serventines.html	Qaro	\N	\N	2014-05-25
1619	https://wiki.xxiivv.com/site/modernista.html	05	\N	\N	2014-10-07
1620	https://wiki.xxiivv.com/site/modernista.html	04	\N	\N	2014-10-07
1621	https://wiki.xxiivv.com/site/modernista.html	02	\N	\N	2014-10-07
1630	https://wiki.xxiivv.com/site/serventines.html	Anopass	\N	\N	2014-05-25
1627	https://wiki.xxiivv.com/site/ten_axitecture.html	Ten Axitecture	\N	\N	2014-09-07
1634	https://wiki.xxiivv.com/site/damoiseau_canalx.html	Damoiseau et Canalx Release	\N	\N	2014-08-27
1635	https://wiki.xxiivv.com/site/neralie.html	Neralie Mobile	\N	\N	2014-08-22
1577	https://wiki.xxiivv.com/site/flactals.html	Torazine	\N	\N	2014-01-29
1579	https://wiki.xxiivv.com/site/flactals.html	Nestorine	\N	\N	2014-01-29
1580	https://wiki.xxiivv.com/site/flactals.html	Coraline	\N	\N	2014-01-29
1641	https://wiki.xxiivv.com/site/dew.html	Prototype	\N	\N	2014-08-06
1651	https://wiki.xxiivv.com/site/vocavularist.html	2.0	\N	\N	2013-08-07
1642	https://wiki.xxiivv.com/site/advent_v.html	The Advent V Release	\N	\N	2014-08-04
1713	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Lost Osaka Tempers	\N	\N	2009-01-01
1646	https://wiki.xxiivv.com/site/serventines.html	Mount Duomo	\N	\N	2014-05-25
1656	https://wiki.xxiivv.com/site/serventines.html	Snailden	\N	\N	2014-05-25
1690	https://wiki.xxiivv.com/site/fuji.html	Climb Crew	\N	\N	2013-07-12
1689	https://wiki.xxiivv.com/site/hiversaires.html	Hiversaires Release	\N	\N	2013-02-11
1691	https://wiki.xxiivv.com/site/fuji.html	Torchlights	\N	\N	2013-07-12
1692	https://wiki.xxiivv.com/site/fuji.html	From Kawaguchiko	\N	\N	2013-07-12
1693	https://wiki.xxiivv.com/site/fuji.html	Mt. Fuji Summit	\N	\N	2013-07-12
1673	https://wiki.xxiivv.com/site/known_magye.html	PowPow, San Francisco	\N	\N	2014-03-16
1674	https://wiki.xxiivv.com/site/known_magye.html	Live at DNA Lougne	\N	\N	2014-03-16
1697	https://wiki.xxiivv.com/site/dei_dain.html	Dei Dain Release	\N	\N	2013-06-17
1699	https://wiki.xxiivv.com/site/dei_dain.html	Mega Ran Tour, Tokyo	\N	\N	2013-06-17
1683	https://wiki.xxiivv.com/site/telekinesis.html	Pure Data Controller	\N	\N	2013-09-12
1637	https://wiki.xxiivv.com/site/ledoliel.html	2.0	\N	\N	2014-05-31
1684	https://wiki.xxiivv.com/site/orca.html	Orca Machine	\N	\N	2013-09-05
1658	https://wiki.xxiivv.com/site/purgateus.html	The Autumn	\N	\N	2014-05-16
1685	https://wiki.xxiivv.com/site/andes_castel.html	Entrance	\N	\N	2013-08-23
1682	https://wiki.xxiivv.com/site/lietal.html	iOS7 Patch	\N	\N	2007-03-20
1643	https://wiki.xxiivv.com/site/ledoliel.html	1.2	\N	\N	2014-05-31
1654	https://wiki.xxiivv.com/site/ledoliel.html	Space friends	\N	\N	2014-05-31
1655	https://wiki.xxiivv.com/site/ledoliel.html	Strange Diplomacy	\N	\N	2014-05-31
1681	https://wiki.xxiivv.com/site/wallpapers.html	Motto	\N	\N	2010-04-11
1709	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	SquareSound, Melbourne	\N	\N	2012-10-20
1702	https://wiki.xxiivv.com/site/artwork.html	Space Marine Colour	\N	\N	2007-11-23
1703	https://wiki.xxiivv.com/site/wallpapers.html	Rami Ismail Rant	\N	\N	2010-04-11
1719	https://wiki.xxiivv.com/site/waiting_for_horus.html	Mar	\N	\N	2012-02-21
1636	https://wiki.xxiivv.com/site/bifurcan.html	1.2	\N	\N	2014-06-18
1644	https://wiki.xxiivv.com/site/bifurcan.html	Screensaver	\N	\N	2014-06-18
1696	https://wiki.xxiivv.com/site/infrared.html	Soldat	\N	\N	2012-08-07
1698	https://wiki.xxiivv.com/site/infrared.html	Infrared Set 2	\N	\N	2012-08-07
1660	https://wiki.xxiivv.com/site/purgateus.html	Purgateus Release	\N	\N	2014-05-16
1667	https://wiki.xxiivv.com/site/methascope.html	20x	\N	\N	2014-04-09
1649	https://wiki.xxiivv.com/site/virtual_machines.html	Cover	\N	\N	2014-06-24
1650	https://wiki.xxiivv.com/site/alphavetist.html	Katakana Practice	\N	\N	2014-06-22
1670	https://wiki.xxiivv.com/site/vast.html	Vast Release	\N	\N	2014-03-28
1686	https://wiki.xxiivv.com/site/vocavularist.html	1.0	\N	\N	2013-08-07
1647	https://wiki.xxiivv.com/site/noirca.html	1.1	\N	\N	2014-06-25
1648	https://wiki.xxiivv.com/site/noirca.html	Go Board	\N	\N	2014-06-25
1672	https://wiki.xxiivv.com/site/vast.html	Preview	\N	\N	2014-03-28
1676	https://wiki.xxiivv.com/site/oquonie_soundtrack.html	Soundman	\N	\N	2014-02-10
1680	https://wiki.xxiivv.com/site/flactals.html	Qraxia	\N	\N	2014-01-29
1638	https://wiki.xxiivv.com/site/kaleidoscope.html	Ode, The Perfect Bei	\N	\N	2014-04-03
1695	https://wiki.xxiivv.com/site/lietal.html	The Säldota	\N	\N	2007-03-20
1652	https://wiki.xxiivv.com/site/bifurcan.html	Update	\N	\N	2014-06-18
1668	https://wiki.xxiivv.com/site/methascope.html	200x	\N	\N	2014-04-09
1669	https://wiki.xxiivv.com/site/methascope.html	2000x	\N	\N	2014-04-09
1701	https://wiki.xxiivv.com/site/hiversaires.html	Post Mortem	\N	\N	2013-02-11
1657	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	Autumn Leaves	\N	\N	2014-05-19
1659	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	Spring	\N	\N	2014-05-19
1661	https://wiki.xxiivv.com/site/purgateus.html	Night Time	\N	\N	2014-05-16
1662	https://wiki.xxiivv.com/site/purgateus.html	Dusk	\N	\N	2014-05-16
1663	https://wiki.xxiivv.com/site/nereid.html	The Habitat	\N	\N	2014-04-22
1664	https://wiki.xxiivv.com/site/nereid.html	The Stems	\N	\N	2014-04-22
1665	https://wiki.xxiivv.com/site/nereid.html	The South	\N	\N	2014-04-22
1666	https://wiki.xxiivv.com/site/nereid.html	The Highways	\N	\N	2014-04-22
1700	https://wiki.xxiivv.com/site/macro.html	Macro DIY iPhone	\N	\N	2010-08-21
1639	https://wiki.xxiivv.com/site/kaleidoscope.html	Lineggen	\N	\N	2014-04-03
1640	https://wiki.xxiivv.com/site/kaleidoscope.html	Diagolite I	\N	\N	2014-04-03
1645	https://wiki.xxiivv.com/site/kaleidoscope.html	Diagolite I	\N	\N	2014-04-03
1687	https://wiki.xxiivv.com/site/typography.html	Mirai Seu	\N	\N	2009-07-13
1704	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 24	\N	\N	2013-02-11
1705	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 20	\N	\N	2013-02-11
1694	https://wiki.xxiivv.com/site/fuji.html	Dusk	\N	\N	2013-07-12
1715	https://wiki.xxiivv.com/site/infrared.html	Tokyo Infrared II	\N	\N	2012-08-07
1712	https://wiki.xxiivv.com/site/macro.html	Building a telescope	\N	\N	2010-08-21
1688	https://wiki.xxiivv.com/site/typography.html	Milavregarian	\N	\N	2009-07-13
1714	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Cheapbeats - Tokyo	\N	\N	2012-10-20
1717	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Ehrivevnv Studies Release	\N	\N	2012-10-20
1718	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Blip Festival, Tokyo	\N	\N	2012-10-20
1716	https://wiki.xxiivv.com/site/infrared.html	Tokyo Infrared	\N	\N	2012-08-07
1725	https://wiki.xxiivv.com/site/pico_battle.html	Pico Battle Release	\N	\N	2012-06-27
1722	https://wiki.xxiivv.com/site/artwork.html	Neoneve Afloat Revis	\N	\N	2007-11-23
1738	https://wiki.xxiivv.com/site/germany.html	Travel to Berlin	\N	\N	2012-03-24
1742	https://wiki.xxiivv.com/site/ring_of_scales.html	Ring of scales	\N	\N	2012-03-13
1752	https://wiki.xxiivv.com/site/volkenessen.html	Volkenessen Release	\N	\N	2012-01-29
1749	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	La Nuit Blanche, Montreal	\N	\N	2012-02-11
1734	https://wiki.xxiivv.com/site/macro.html	Fibers	\N	\N	2010-08-21
1758	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Mini	\N	\N	2009-07-13
1766	https://wiki.xxiivv.com/site/aliceffekt.html	True Form	\N	\N	2011-08-24
1797	https://wiki.xxiivv.com/site/vambits.html	Vambits, Last Gen	\N	\N	2010-03-11
1763	https://wiki.xxiivv.com/site/notebook.html	Swing near Oigura	\N	\N	2007-12-18
1721	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Tokyo Tempers	\N	\N	2009-01-01
1796	https://wiki.xxiivv.com/site/death.html	Milk	\N	\N	2006-11-14
1755	https://wiki.xxiivv.com/site/oscean.html	The Pillars	\N	\N	2012-01-13
1754	https://wiki.xxiivv.com/site/mobile.html	Character Builder	\N	\N	2012-01-14
1792	https://wiki.xxiivv.com/site/siseon.html	Siseon	\N	\N	2011-02-05
1757	https://wiki.xxiivv.com/site/from_saharaphorest.html	From Saharaphorest Release	\N	\N	2011-11-28
1759	https://wiki.xxiivv.com/site/from_saharaphorest.html	From Saharaphorest	\N	\N	2011-11-28
1800	https://wiki.xxiivv.com/site/pico3.html	Pico3 Release	\N	\N	2010-10-17
1730	https://wiki.xxiivv.com/site/occulter.html	Coal	\N	\N	2012-05-02
1745	https://wiki.xxiivv.com/site/prototyping.html	PP3DP 1kg Spool Holder	\N	\N	2012-03-07
1727	https://wiki.xxiivv.com/site/diluvium.html	Logo	\N	\N	2012-05-20
1728	https://wiki.xxiivv.com/site/diluvium.html	Diluvium	\N	\N	2012-05-20
1732	https://wiki.xxiivv.com/site/occulter.html	Binchotan	\N	\N	2012-05-02
1733	https://wiki.xxiivv.com/site/occulter.html	Occulter	\N	\N	2012-05-02
1801	https://wiki.xxiivv.com/site/merure.html	Merure Release	\N	\N	2009-01-08
1769	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Lith	\N	\N	2009-07-13
1740	https://wiki.xxiivv.com/site/france.html	Some bridge some place	\N	\N	2012-03-19
1773	https://wiki.xxiivv.com/site/yajnev.html	Yajnev Thoughts	\N	\N	2011-07-16
1726	https://wiki.xxiivv.com/site/artwork.html	Hydro74 Remix	\N	\N	2007-11-23
1764	https://wiki.xxiivv.com/site/the_sixth_season.html	Sixth Season Release	\N	\N	2011-05-21
1756	https://wiki.xxiivv.com/site/unreleased.html	Merveilles	\N	\N	2009-12-08
1723	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Vetetrandes Lettres Release	\N	\N	2012-03-23
1736	https://wiki.xxiivv.com/site/victorian_punch.html	Punch on the table	\N	\N	2012-04-02
1737	https://wiki.xxiivv.com/site/victorian_punch.html	Banned	\N	\N	2012-04-02
1724	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	iVardensphere Tour, Montreal	\N	\N	2012-03-23
1729	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Kinetik Festival, Montreal	\N	\N	2012-03-23
1741	https://wiki.xxiivv.com/site/france.html	Travel to Paris	\N	\N	2012-03-19
1746	https://wiki.xxiivv.com/site/spagettini_scale.html	Spagettini Scale	\N	\N	2012-03-05
1743	https://wiki.xxiivv.com/site/hex_hive_necklace.html	First Hex Hive Prototype	\N	\N	2012-03-09
1744	https://wiki.xxiivv.com/site/hex_hive_necklace.html	Hex Hive Necklace	\N	\N	2012-03-09
1747	https://wiki.xxiivv.com/site/paradise.html	Lost in Paradise	\N	\N	2012-03-03
1751	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	Es gulf sunflowers Release	\N	\N	2012-02-11
1748	https://wiki.xxiivv.com/site/waiting_for_horus.html	Waiting for Horus	\N	\N	2012-02-21
1750	https://wiki.xxiivv.com/site/waiting_for_horus.html	Rah	\N	\N	2012-02-21
1790	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Neau	\N	\N	2009-07-13
1731	https://wiki.xxiivv.com/site/collegiennes.html	Toronto Game Jam 201	\N	\N	2010-08-06
1770	https://wiki.xxiivv.com/site/rlionn.html	The Rlionn Oasis	\N	\N	2011-08-13
1771	https://wiki.xxiivv.com/site/blam.html	Blam Release	\N	\N	2011-08-04
1795	https://wiki.xxiivv.com/site/to_the_aeons_hell.html	8Static - Philadelphia	\N	\N	2011-01-07
1777	https://wiki.xxiivv.com/site/vermillionth.html	Vermillionth Release	\N	\N	2011-03-20
1779	https://wiki.xxiivv.com/site/vermillionth.html	Live in Paris	\N	\N	2011-03-20
1776	https://wiki.xxiivv.com/site/wallpapers.html	Echorridoors	\N	\N	2010-04-11
1765	https://wiki.xxiivv.com/site/rekka.html	Boucherville	\N	\N	2006-07-07
1767	https://wiki.xxiivv.com/site/sketchbook.html	Andes Necklace	\N	\N	2011-08-30
1768	https://wiki.xxiivv.com/site/aliceffekt.html	Aliceffekt Shirt I	\N	\N	2011-08-24
1791	https://wiki.xxiivv.com/site/unreleased.html	Merveilles Portable	\N	\N	2009-12-08
1772	https://wiki.xxiivv.com/site/notebook.html	The Trial of the Tide	\N	\N	2007-12-18
1778	https://wiki.xxiivv.com/site/the_sixth_season.html	Kinetik Festival, Montreal	\N	\N	2011-05-21
1753	https://wiki.xxiivv.com/site/artwork.html	Veins of brambles	\N	\N	2007-11-23
1780	https://wiki.xxiivv.com/site/czech.html	Artifical Mountain Top 2	\N	\N	2011-02-28
1781	https://wiki.xxiivv.com/site/czech.html	Joe	\N	\N	2011-02-28
1782	https://wiki.xxiivv.com/site/czech.html	Nearby Liberec	\N	\N	2011-02-28
1794	https://wiki.xxiivv.com/site/notebook.html	Dilitriel	\N	\N	2007-12-18
1762	https://wiki.xxiivv.com/site/collegiennes.html	Prince of the Arcade	\N	\N	2010-08-06
1799	https://wiki.xxiivv.com/site/collegiennes.html	Prince Of The Arcade	\N	\N	2010-08-06
1857	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	\N	2009-11-03
1814	https://wiki.xxiivv.com/site/canada.html	Jaques Cartier	\N	\N	2010-07-08
1815	https://wiki.xxiivv.com/site/canada.html	Longueuil	\N	\N	2010-07-08
1810	https://wiki.xxiivv.com/site/hypervoid.html	Noirescent	\N	\N	2010-07-29
1844	https://wiki.xxiivv.com/site/osaka.html	Lanterns	\N	\N	2010-02-19
1845	https://wiki.xxiivv.com/site/osaka.html	Temple	\N	\N	2010-02-19
1846	https://wiki.xxiivv.com/site/osaka.html	Ornate	\N	\N	2010-02-19
1847	https://wiki.xxiivv.com/site/osaka.html	Travel to Tokyo, Japan	\N	\N	2010-02-19
1877	https://wiki.xxiivv.com/site/america.html	New York	\N	\N	2008-06-26
1826	https://wiki.xxiivv.com/site/tokyo.html	In Bloom	\N	\N	2010-02-24
1851	https://wiki.xxiivv.com/site/dinaisth.html	Map	\N	\N	2010-02-13
1825	https://wiki.xxiivv.com/site/rekka.html	Leaving	\N	\N	2006-07-07
1828	https://wiki.xxiivv.com/site/yokohama.html	China Town	\N	\N	2010-03-02
1821	https://wiki.xxiivv.com/site/zjeveni.html	Zjeveni	\N	\N	2010-06-17
1872	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	Toy Company, Montreal	\N	\N	2009-01-06
1874	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	Otoroutes Miniatures	\N	\N	2009-01-06
1856	https://wiki.xxiivv.com/site/cyanosis_fever.html	Cyanosis Fever	\N	\N	2009-11-11
1807	https://wiki.xxiivv.com/site/macro.html	Raspberry Close Up	\N	\N	2010-08-21
1813	https://wiki.xxiivv.com/site/cenote.html	Cenote	\N	\N	2010-07-20
1816	https://wiki.xxiivv.com/site/audio.html	Loft	\N	\N	2010-07-06
1868	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Recit	\N	\N	2009-07-13
1829	https://wiki.xxiivv.com/site/tokyo.html	Floppy	\N	\N	2010-02-24
1841	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	1H1D vs Shikanokoa, Osaka	\N	\N	2010-02-26
1869	https://wiki.xxiivv.com/site/malice.html	Malice Release	\N	\N	2008-06-27
1878	https://wiki.xxiivv.com/site/malice.html	Pulsewave, New York	\N	\N	2008-06-27
1817	https://wiki.xxiivv.com/site/nataniev.html	Nataniev Portrait	\N	\N	2010-07-01
1837	https://wiki.xxiivv.com/site/yokohama.html	Dragon	\N	\N	2010-03-02
1858	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	\N	2009-11-03
1859	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	\N	\N	2009-11-03
1849	https://wiki.xxiivv.com/site/maeve.html	Pcellar II	\N	\N	2009-10-15
1802	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen II	\N	\N	2010-03-11
1803	https://wiki.xxiivv.com/site/vambits.html	Vambits, DIY	\N	\N	2010-03-11
1804	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen Hallowe	\N	\N	2010-03-11
1809	https://wiki.xxiivv.com/site/collegiennes.html	Cloud is a Lie	\N	\N	2010-08-06
1811	https://wiki.xxiivv.com/site/hypervoid.html	Infraviolet	\N	\N	2010-07-29
1812	https://wiki.xxiivv.com/site/hypervoid.html	Dilesion	\N	\N	2010-07-29
1820	https://wiki.xxiivv.com/site/visual.html	Nataniev Fork	\N	\N	2010-06-19
1850	https://wiki.xxiivv.com/site/maeve.html	Pcellar	\N	\N	2009-10-15
1818	https://wiki.xxiivv.com/site/drownspire.html	Our Studio	\N	\N	2010-06-21
1819	https://wiki.xxiivv.com/site/drownspire.html	Founded Drownspire	\N	\N	2010-06-21
1823	https://wiki.xxiivv.com/site/idyllic_miners.html	Idyllic Miners Release	\N	\N	2010-05-12
1824	https://wiki.xxiivv.com/site/idyllic_miners.html	Kinetik Festival, Montreal	\N	\N	2010-05-12
1852	https://wiki.xxiivv.com/site/unreleased.html	Neonev Raft	\N	\N	2009-12-08
1879	https://wiki.xxiivv.com/site/america.html	Travel to New York	\N	\N	2008-06-26
1827	https://wiki.xxiivv.com/site/wallpapers.html	Devilsse	\N	\N	2010-04-11
1853	https://wiki.xxiivv.com/site/neauismetica.html	The Library Of Sand	\N	\N	2009-08-28
1805	https://wiki.xxiivv.com/site/personal.html	District 9 Costume II	\N	\N	2010-02-28
1842	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	Netlabel Party - Tokyo	\N	\N	2010-02-26
1831	https://wiki.xxiivv.com/site/tokyo.html	Hanami Train	\N	\N	2010-02-24
1832	https://wiki.xxiivv.com/site/tokyo.html	Wishes	\N	\N	2010-02-24
1867	https://wiki.xxiivv.com/site/neauismetica.html	Our forgotten Alphabet	\N	\N	2009-08-28
1863	https://wiki.xxiivv.com/site/drypoint.html	Drypoint Release	\N	\N	2009-09-12
1876	https://wiki.xxiivv.com/site/downtemperature.html	Toy Company, Montreal	\N	\N	2007-03-03
1880	https://wiki.xxiivv.com/site/downtemperature.html	Gone Plains	\N	\N	2007-03-03
1881	https://wiki.xxiivv.com/site/downtemperature.html	Toy Company, Montreal	\N	\N	2007-03-03
1862	https://wiki.xxiivv.com/site/maeve.html	First Ludivine	\N	\N	2009-10-15
1864	https://wiki.xxiivv.com/site/drypoint.html	Drypoint Landing Zone	\N	\N	2009-09-12
1875	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Nakano Tempers	\N	\N	2009-01-01
1836	https://wiki.xxiivv.com/site/rekka.html	Hanami Orange	\N	\N	2006-07-07
1822	https://wiki.xxiivv.com/site/merure.html	Erri Launch	\N	\N	2009-01-08
1861	https://wiki.xxiivv.com/site/valentinel_hopes.html	Valentinel Hopes	\N	\N	2009-11-03
1865	https://wiki.xxiivv.com/site/pedestrian_paradise.html	Pedestrian Paradise Reissue	\N	\N	2009-09-07
1866	https://wiki.xxiivv.com/site/pedestrian_paradise.html	Pedestrian Paradise Release	\N	\N	2009-09-07
1870	https://wiki.xxiivv.com/site/nether_esper_inserts.html	Howl Virgil System	\N	\N	2009-05-17
1854	https://wiki.xxiivv.com/site/artwork.html	Neoneve at the docks	\N	\N	2007-11-23
1882	https://wiki.xxiivv.com/site/artwork.html	When	\N	\N	2007-11-23
1883	https://wiki.xxiivv.com/site/artwork.html	Time Stands Still	\N	\N	2007-11-23
1855	https://wiki.xxiivv.com/site/merure.html	Merure 2 Launch	\N	\N	2009-01-08
1840	https://wiki.xxiivv.com/site/rekka.html	Rekka in Osaka	\N	\N	2006-07-07
1860	https://wiki.xxiivv.com/site/notebook.html	Self Portrait	\N	\N	2007-12-18
1871	https://wiki.xxiivv.com/site/notebook.html	Heist	\N	\N	2007-12-18
1884	https://wiki.xxiivv.com/site/notebook.html	Best Rave Evar	\N	\N	2007-12-18
15	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
215	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	motore immoto 1	\N	\N	2020-07-09
728	https://crlf.site/log/notes/200624-comments/	Choosing comments for this blog	\N	\N	2020-06-24
226	https://oddworlds.org/gallery/2021-01.html	2021-01	\N	\N	2021-01-22
233	https://oddworlds.org/thoughts/thelast.html	The Last $THING You'll Ever Buy	\N	\N	2020-06-11
30	https://notes.neeasade.net/adhoc-executable-patching-on-nix.html	adhoc executable patching on nixos	\N	\N	2020-03-14
616	https://sixey.es/imagery/600/	600 diary: january	\N	\N	\N
50	https://writing.natwelch.com/post/706	Zany hijinks while eating the food from Zelda	\N	\N	2019-09-23
250	https://chad.is/wabi-sabi/	Nothing lasts, nothing is finished, and nothing is perfect	\N	\N	2013-11-03
69	https://resevoir.net//color-in-film	https://resevoir.net//color-in-film	\N	\N	2019-03-16
266	https://xvw.github.io/longs/kotlin_extensions.html	Kotlin, extensions et génériques	\N	\N	2020-04-29
77	https://resevoir.net//foraging	https://resevoir.net//foraging	\N	\N	2020-10-09
285	https://now.lectronice.com/then/2021-01w01/	2021W1 :: Hello new year	\N	\N	2021-01-03
82	https://resevoir.net//intermediate-representations	https://resevoir.net//intermediate-representations	\N	\N	2020-03-08
294	https://now.lectronice.com/then/2020-11w45/	2020W45 :: Crunching/procrastinating	\N	\N	2020-11-01
98	https://resevoir.net//sailboat-as-gaze	https://resevoir.net//sailboat-as-gaze	\N	\N	2020-09-17
115	https://resevoir.net//writing-drawings	https://resevoir.net//writing-drawings	\N	\N	2019-11-08
129	https://szymonkaliski.com/writing/2019-03-31-end-user-programming/	End-User Programming	\N	\N	2019-03-31
301	https://now.lectronice.com/then/2020-09w38/	2020W38 :: Toki Pona and slow burn out	\N	\N	2020-09-13
147	https://szymonkaliski.com/writing/2017-08-20-skyrock-projects/	Teaching Creative Coding in Taipei	\N	\N	2017-08-20
169	https://szymonkaliski.com/projects/sensorium/	No title	\N	\N	2014-10-10
178	gemini://xj-ix.luxe/posts/2021-01-14-parasitic-hypervisor.gmi	parasitic hypervisor	\N	\N	2021-01-14
192	gemini://xj-ix.luxe/posts/2020-04-20-why-permanent-global-identity.gmi	why permanent global identity?	\N	\N	2020-04-20
305	https://now.lectronice.com/then/2020-08w34/	2020W34 :: HTML, Pi 4, acid and game design	\N	\N	2020-08-16
635	https://icyphox.sh/blog/flask-jwt-login	Flask-JWT-Extended × Flask-Login	\N	\N	2020-06-24
328	https://kokorobot.ca/site/wunderrabbits.html	Wunderland Rabbits	\N	\N	2021-03-18
1	http://nonmateria.com/posts/2021_03_19__la_retta.html	la retta	\N	\N	2021-03-19
201	http://nonmateria.com/posts/2021_03_19__la_retta.html	la retta	\N	\N	2021-03-19
644	https://icyphox.sh/blog/kiss-zen	The Zen of KISS Linux	\N	\N	2020-04-03
648	https://icyphox.sh/blog/prosody	Setting up Prosody for XMPP	\N	\N	2020-02-18
662	https://icyphox.sh/blog/digital-minimalism	Thoughts on digital minimalism	\N	\N	2019-10-05
3	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	infected clock III	\N	\N	2020-11-16
203	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	infected clock III	\N	\N	2020-11-16
334	https://kokorobot.ca/site/rug.html	Ocean plait mat tutorial	\N	\N	2020-12-07
756	http://q.pfiffer.org/posts/2017-12-05-Augment_vs_Rewrite.html	 Augment vs. Rewrite	\N	\N	2017-12-05
737	http://q.pfiffer.org/posts/2020-04-23-Personal_Gentoo_Overlay.html	 Building a Personal Gentoo Overlay	\N	\N	2020-04-23
348	https://phse.net/utility-classes-i-have-known-and-loved/	Utility Classes I Have Known and Loved	\N	\N	2021-01-16
373	https://massagetxt.rosano.ca	MassageTXT	\N	\N	2019-11-26
378	https://rosano.tumblr.com/tagged/Opus-7/chrono	Belonging	\N	\N	2016-10-06
386	https://teknari.com/blogpost/1595696509825/Eraser	Eraser	\N	\N	2020-07-25
387	https://teknari.com/blogpost/1595694736717/Chickenfruit	Chickenfruit	\N	\N	2020-07-25
399	https://teknari.com/blogpost/1594562577891/2015+February+Journal	2015 February Journal	\N	\N	2020-07-12
612	https://gueorgui.net/blog/2020/new-projects-dissertation-returnees/	Two new projects: dissertation and Returnees 海归	\N	\N	2020-03-22
686	https://royniang.com/practice.html	Drafted m, n, t; some fixes	\N	\N	2020-10-01
678	https://royniang.com/patience.html	Added public gmi files to koikoi’s build	\N	\N	2020-11-01
687	https://royniang.com/practice.html	Drafted l, a, d and b	\N	\N	2020-10-01
688	https://royniang.com/practice.html	First glyphs	\N	\N	2020-10-01
681	https://royniang.com/type_design.html	The specimen of Akzidenz Grotesque	\N	\N	2020-10-22
718	https://royniang.com/street.html	Kid and grandpa on a scooter	\N	\N	2019-10-03
789	https://www.edwinwenink.xyz/posts/54-a_plain_text_writing_convention/	Two perspectives on a plain-text writing convention	\N	\N	2021-03-12
724	https://royniang.com/diary.html	Petting Canelle at La Réole	\N	\N	2019-08-01
773	http://q.pfiffer.org/posts/2014-08-29-Panic_Measures.html	 Panic Measures	\N	\N	2014-08-29
806	https://materialfuture.net/posts/games/games-completed-retrospective/	2020 - Games Completed + Retrospective	\N	\N	2020-12-29
795	https://www.edwinwenink.xyz/posts/48-vim_fast_creating_and_linking_notes/	Creating and linking Zettelkasten notes in Vim	\N	\N	2020-04-15
824	https://materialfuture.net/posts/blog/2020-06-tools-workflows/	Tools and Workflows I Use	\N	\N	2020-06-27
845	https://travisshears.com/blog/schoenalmjoch-tour/	schönalmjoch tour	\N	\N	2021-01-14
860	https://travisshears.com/snippets/npm-i-vs-npm-ci/	npm i vs npm ci	\N	\N	2020-08-17
879	https://travisshears.com/snippets/deployment-env-yaml-snippet/	K8s deployment.yaml env vscode snippet	\N	\N	2020-06-20
868	https://travisshears.com/blog/archiving-corona-cal/	archiving corona cal	\N	\N	2020-07-23
1889	https://wiki.xxiivv.com/site/quotes.html	Telepaths	\N	\N	2006-07-28
1887	https://wiki.xxiivv.com/site/downtemperature.html	Downtemperature Release	\N	\N	2007-03-03
1888	https://wiki.xxiivv.com/site/death.html	Metropolis	\N	\N	2006-11-14
1885	https://wiki.xxiivv.com/site/artwork.html	Neoneve Afloat	\N	\N	2007-11-23
1892	https://wiki.xxiivv.com/site/rekka.html	New Challenger	\N	\N	2006-07-07
1890	https://wiki.xxiivv.com/site/old_cities.html	01	\N	\N	2006-07-14
1255	https://wiki.xxiivv.com/site/minamiise.html	After the Rain	\N	\N	2019-04-14
899	https://travisshears.com/blog/bayrischzell-cross-country/	cross-country skiing	\N	\N	2020-03-02
1266	https://wiki.xxiivv.com/site/minamiise.html	Up that hill	\N	\N	2019-04-14
916	https://travisshears.com/snippets/vim-jumps-fix/	Remapping ability to jump	\N	\N	2020-01-11
930	https://travisshears.com/snippets/git-nocommit-merge/	Soft merge	\N	\N	2020-01-11
931	https://travisshears.com/snippets/tmux-new/	Mutliplex all the shells	\N	\N	2020-01-11
942	https://travisshears.com/snippets/who-is-using-that-port/	Who Is Using that damn port? (Mac)	\N	\N	2020-01-11
965	https://ix5.org/thoughts/2017/venezuela-presentation/	Venezuela: Un país de múltiples facetas	\N	\N	2019-01-19
981	https://ix5.org/thoughts/2014/2014-taiwan-bike-tour-travel-report/	2014 Taiwan bike tour travel report	\N	\N	2018-01-27
996	https://inqlab.net/geopub-activitypub-for-content-curation.html	GeoPub: ActivityPub for content curation	\N	\N	2020-04-06
1002	https://inqlab.net/large-underground-temple.html	Large Underground Temple	\N	\N	2016-03-14
1006	https://metasyn.pw/collections.html	5f97ccf1290b0a0a7ff5a95e	\N	\N	2020-10-27
1014	http://milofultz.com/2021/01/06/reverse-horoscope	🌌 Reverse Horoscope - Find Out Your Real Birthday (JS)	\N	\N	2021-01-06
1037	http://milofultz.com/2020/08/04/piu-piu-ringtone	🎧 Piu Piu ringtone but it's only Avgustina's laugh	\N	\N	2020-08-04
1052	http://milofultz.com/2020/05/22/keyboard-remapping	Keyboard Remapping on OSX - Adding the Insert Key	\N	\N	2020-05-22
1267	https://wiki.xxiivv.com/site/minamiise.html	Shore Ghostly	\N	\N	2019-04-14
1067	https://wolfmd.me/blog/setting-up-sdrtrunk-and-icecast-because\n          -boredom\n          .html	Setting Up SDRTrunk and Icecast Streaming to Pass the Time	\N	\N	\N
1100	https://irimi.one/posts/webring/	I’m on a Webring Now	\N	\N	2020-11-14
1108	https://irimi.one/music/ursulas-cartrigdes-lord-of-the-game/	Death Grips - Lord of the Game (Ursula's Cartridges DnB Remix)	\N	\N	2020-10-19
1130	https://www.gr0k.net/blog/zynthin-tips-and-tricks.html	Zynthian Tips and Tricks	\N	\N	2021-02-03
1137	https://tendigits.space/notes/new-projects/	New Projects	\N	\N	2021-03-17
1145	https://tendigits.space/notes/site-11ty-setup/	This website's setup with 11ty	\N	\N	2020-05-30
1268	https://wiki.xxiivv.com/site/minamiise.html	Coastal Ghostly	\N	\N	2019-04-14
1269	https://wiki.xxiivv.com/site/minamiise.html	Gokasho	\N	\N	2019-04-14
1270	https://wiki.xxiivv.com/site/minamiise.html	Kirihara	\N	\N	2019-04-14
1271	https://wiki.xxiivv.com/site/minamiise.html	In a ghost town near you	\N	\N	2019-04-14
1183	https://wiki.xxiivv.com/site/shimoda.html	Robusta Mit Pino	\N	\N	2020-05-28
1184	https://wiki.xxiivv.com/site/shimoda.html	下田温泉富士屋ホテル	\N	\N	2020-05-28
1160	https://wiki.xxiivv.com/site/origami.html	Sonobe 3	\N	\N	2020-12-04
1161	https://wiki.xxiivv.com/site/origami.html	Sonobe 12	\N	\N	2020-12-04
1185	https://wiki.xxiivv.com/site/shimoda.html	Shimoda Waterway	\N	\N	2020-05-28
1276	https://wiki.xxiivv.com/site/minamiise.html	Tennis Court Skate Park	\N	\N	2019-04-14
1186	https://wiki.xxiivv.com/site/shimoda.html	Pino in Shimoda	\N	\N	2020-05-28
1359	https://wiki.xxiivv.com/site/wiktopher.html	A Bed Of Dust	\N	\N	2017-11-06
1848	https://wiki.xxiivv.com/site/identity.html	72DEC2 Converses	\N	\N	2010-02-16
1735	https://wiki.xxiivv.com/site/personal.html	Bored in France	\N	\N	2010-02-28
1203	https://wiki.xxiivv.com/site/nasu.html	Nasu Web Release	\N	\N	2020-02-02
1760	https://wiki.xxiivv.com/site/personal.html	Shiro	\N	\N	2010-02-28
1761	https://wiki.xxiivv.com/site/personal.html	Chez Liette	\N	\N	2010-02-28
1774	https://wiki.xxiivv.com/site/personal.html	Alex Shoes	\N	\N	2010-02-28
1775	https://wiki.xxiivv.com/site/personal.html	Jerome	\N	\N	2010-02-28
1406	https://wiki.xxiivv.com/site/left.html	Original Writing Layout	\N	\N	2017-08-07
1419	https://wiki.xxiivv.com/site/left.html	Left Screencapture	\N	\N	2017-08-07
1424	https://wiki.xxiivv.com/site/left.html	Tooling	\N	\N	2017-08-07
1806	https://wiki.xxiivv.com/site/personal.html	District 9 Costume I	\N	\N	2010-02-28
1833	https://wiki.xxiivv.com/site/personal.html	Lea	\N	\N	2010-02-28
1839	https://wiki.xxiivv.com/site/personal.html	Kabukicho	\N	\N	2010-02-28
1462	https://wiki.xxiivv.com/site/black.html	Sail to Ensenada, Mexico	\N	\N	2015-04-24
1475	https://wiki.xxiivv.com/site/black.html	Ensenada Water Walk	\N	\N	2015-04-24
1478	https://wiki.xxiivv.com/site/black.html	Near La Paz	\N	\N	2015-04-24
1412	https://wiki.xxiivv.com/site/dotgrid.html	Dotless Dotgrid Interface	\N	\N	2017-11-03
1481	https://wiki.xxiivv.com/site/black.html	Off The Coast Of Mexico	\N	\N	2015-04-24
1504	https://wiki.xxiivv.com/site/rekka.html	Sailing trip in Quebec	\N	\N	2006-07-07
1720	https://wiki.xxiivv.com/site/infrared.html	Wereda	\N	\N	2012-08-07
1739	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Noise Complex, Paris	\N	\N	2012-03-23
1483	https://wiki.xxiivv.com/site/black.html	Ensenada Trash Hill Top	\N	\N	2015-04-24
1501	https://wiki.xxiivv.com/site/black.html	Cooking	\N	\N	2015-04-24
1592	https://wiki.xxiivv.com/site/oquonie.html	Nephtaline wandering	\N	\N	2014-02-03
1404	https://wiki.xxiivv.com/site/film.html	Auckland Beach	\N	\N	2016-08-10
1405	https://wiki.xxiivv.com/site/film.html	Whangarei Bridge	\N	\N	2016-08-10
1488	https://wiki.xxiivv.com/site/film.html	Old Camera Gear	\N	\N	2016-08-10
1489	https://wiki.xxiivv.com/site/film.html	Meeting With Alaska Friends	\N	\N	2016-08-10
1291	https://wiki.xxiivv.com/site/minamiise.html	Shannon Entropy	\N	\N	2019-04-14
1292	https://wiki.xxiivv.com/site/minamiise.html	Our Neighbor	\N	\N	2019-04-14
1293	https://wiki.xxiivv.com/site/minamiise.html	Shima Yacht Arbor	\N	\N	2019-04-14
1294	https://wiki.xxiivv.com/site/minamiise.html	Sail to Minamiise, Japan	\N	\N	2019-04-14
1706	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 15	\N	\N	2013-02-11
1611	https://wiki.xxiivv.com/site/defraction_optics.html	Cover Page	\N	\N	2014-11-19
1622	https://wiki.xxiivv.com/site/modernista.html	01	\N	\N	2014-10-07
1625	https://wiki.xxiivv.com/site/brane.html	III	\N	\N	2014-09-18
1604	https://wiki.xxiivv.com/site/oquonie.html	Bit Bazaar	\N	\N	2014-02-03
1490	https://wiki.xxiivv.com/site/film.html	Pino Docked	\N	\N	2016-08-10
1491	https://wiki.xxiivv.com/site/film.html	Before the evening	\N	\N	2016-08-10
1793	https://wiki.xxiivv.com/site/artwork.html	Yajnev	\N	\N	2007-11-23
1587	https://wiki.xxiivv.com/site/america.html	Desert Snow Covered Moutains	\N	\N	2008-06-26
1311	https://wiki.xxiivv.com/site/ogasawara.html	Futami Arbor	\N	\N	2019-01-24
1312	https://wiki.xxiivv.com/site/ogasawara.html	Marus	\N	\N	2019-01-24
1313	https://wiki.xxiivv.com/site/ogasawara.html	Terraforming done right	\N	\N	2019-01-24
1315	https://wiki.xxiivv.com/site/ogasawara.html	Omura Weather Station	\N	\N	2019-01-24
1317	https://wiki.xxiivv.com/site/ogasawara.html	Epave	\N	\N	2019-01-24
1318	https://wiki.xxiivv.com/site/ogasawara.html	An Old Bunker	\N	\N	2019-01-24
1631	https://wiki.xxiivv.com/site/serventines.html	Milreaf	\N	\N	2014-05-25
1607	https://wiki.xxiivv.com/site/oquonie.html	Walkthrough	\N	\N	2014-02-03
1632	https://wiki.xxiivv.com/site/serventines.html	Qovledon	\N	\N	2014-05-25
1633	https://wiki.xxiivv.com/site/serventines.html	Gaspse	\N	\N	2014-05-25
1448	https://wiki.xxiivv.com/site/the_sublime.html	Scare In Rarotonga	\N	\N	2017-03-26
1808	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen I	\N	\N	2010-03-11
1319	https://wiki.xxiivv.com/site/ogasawara.html	Omura Entrance	\N	\N	2019-01-24
1320	https://wiki.xxiivv.com/site/ogasawara.html	Mixed Architecture	\N	\N	2019-01-24
1322	https://wiki.xxiivv.com/site/ogasawara.html	Sail to Chichijima, Japan	\N	\N	2019-01-24
1422	https://wiki.xxiivv.com/site/marabu.html	Version 2	\N	\N	2017-08-11
1798	https://wiki.xxiivv.com/site/artwork.html	Tools to creative	\N	\N	2007-11-23
1603	https://wiki.xxiivv.com/site/supervisitor.html	Brut Cover	\N	\N	2014-12-06
1671	https://wiki.xxiivv.com/site/kaleidoscope.html	Gorgeous Leon	\N	\N	2014-04-03
1362	https://wiki.xxiivv.com/site/hundred_rabbits.html	Rekka At work	\N	\N	2015-11-09
1430	https://wiki.xxiivv.com/site/niue.html	Sail to Alofi, Niue	\N	\N	2017-07-28
1454	https://wiki.xxiivv.com/site/marquesas.html	Sail to Nuku Hiva, Marquesas	\N	\N	2017-03-02
1616	https://wiki.xxiivv.com/site/beauty.html	Leiomytic	\N	\N	2014-10-22
1542	https://wiki.xxiivv.com/site/austria.html	Linz	\N	\N	2015-08-30
1617	https://wiki.xxiivv.com/site/beauty.html	Nevocytic	\N	\N	2014-10-22
1570	https://wiki.xxiivv.com/site/ar_moire.html	Pattern I	\N	\N	2015-05-06
1369	https://wiki.xxiivv.com/site/pino.html	A new sail for Pino	\N	\N	2016-02-27
1494	https://wiki.xxiivv.com/site/pino.html	Workstation Aboard Pino	\N	\N	2016-02-27
1511	https://wiki.xxiivv.com/site/pino.html	From Inside	\N	\N	2016-02-27
1513	https://wiki.xxiivv.com/site/pino.html	Slice	\N	\N	2016-02-27
1707	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 12	\N	\N	2013-02-11
1543	https://wiki.xxiivv.com/site/austria.html	Wolfinger Hotel	\N	\N	2015-08-30
1544	https://wiki.xxiivv.com/site/austria.html	Travel to Vienna	\N	\N	2015-08-30
1708	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 10	\N	\N	2013-02-11
1653	https://wiki.xxiivv.com/site/oquonie.html	Nastazie	\N	\N	2014-02-03
1675	https://wiki.xxiivv.com/site/oquonie.html	A Lost Neomine	\N	\N	2014-02-03
1677	https://wiki.xxiivv.com/site/oquonie.html	Goodies	\N	\N	2014-02-03
1710	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 9	\N	\N	2013-02-11
1711	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 8	\N	\N	2013-02-11
1886	https://wiki.xxiivv.com/site/lietal.html	Composing Words	\N	\N	2007-03-20
1678	https://wiki.xxiivv.com/site/oquonie.html	And so began testing	\N	\N	2014-02-03
1679	https://wiki.xxiivv.com/site/oquonie.html	From Thailand	\N	\N	2014-02-03
1830	https://wiki.xxiivv.com/site/vambits.html	Vambits in Japan	\N	\N	2010-03-11
1873	https://wiki.xxiivv.com/site/merure.html	Merure I Cover	\N	\N	2009-01-08
1891	https://wiki.xxiivv.com/site/old_cities.html	01	\N	\N	2006-07-14
1783	https://wiki.xxiivv.com/site/czech.html	Country Side	\N	\N	2011-02-28
1784	https://wiki.xxiivv.com/site/czech.html	Visualscream Studio	\N	\N	2011-02-28
1785	https://wiki.xxiivv.com/site/czech.html	Tree of Pan	\N	\N	2011-02-28
1786	https://wiki.xxiivv.com/site/czech.html	Classic	\N	\N	2011-02-28
1787	https://wiki.xxiivv.com/site/czech.html	Spaceship Church	\N	\N	2011-02-28
1788	https://wiki.xxiivv.com/site/czech.html	Czech Ramen	\N	\N	2011-02-28
1789	https://wiki.xxiivv.com/site/czech.html	Travel to Czech	\N	\N	2011-02-28
1834	https://wiki.xxiivv.com/site/tokyo.html	Blaze Blue	\N	\N	2010-02-24
1835	https://wiki.xxiivv.com/site/tokyo.html	Lea	\N	\N	2010-02-24
1838	https://wiki.xxiivv.com/site/tokyo.html	Void Garden	\N	\N	2010-02-24
1843	https://wiki.xxiivv.com/site/tokyo.html	Kabukicho	\N	\N	2010-02-24
\.


--
-- Data for Name: sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sites (id, site_url, site_title, site_favicon) FROM stdin;
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 1892, true);


--
-- Name: sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sites_id_seq', 1, false);


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

