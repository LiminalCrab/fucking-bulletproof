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
    host_title text,
    post_url text,
    post_date date
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
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, host_title, post_url, post_date) FROM stdin;
13	W10 :: Stacking up voxels	https://now.lectronice.com/then/2021-03w10/	2021-03-07
1	Ruby squares	https://bismuth.garden/2020/11/ruby-squares	2020-11-11
2	Links: Beyond sustainable	https://bismuth.garden/2020/09/beyond-sustainable	2020-09-21
3	Oddments II	https://bismuth.garden/2020/09/oddments-2	2020-09-20
4	Oddments	https://bismuth.garden/2020/09/oddments	2020-09-14
5	‘Did you find it?’ ‘I did’	https://bismuth.garden/2020/09/did-you-find-it-i-did	2020-09-11
6	Sowing seeds	https://bismuth.garden/2020/09/sowing-seeds	2020-09-10
7	Kotlin, extensions et génériques	https://xvw.github.io/longs/kotlin_extensions.html	2020-04-29
10	Konbini, Tac au tac et Manben	https://xvw.github.io/longs/konbini_tac_au_tac_manben.html	2018-08-19
11	Voyager dans le temps avec un Zipper	https://xvw.github.io/longs/zipper_history.html	2017-11-20
12	Un cas d'école à l'utilisation des GADTs	https://xvw.github.io/longs/introduction_gadt.html	2017-10-16
14	W9 :: Sitting in front of the sun	https://now.lectronice.com/then/2021-03w09/	2021-02-28
15	W8 :: Watching the world burn	https://now.lectronice.com/then/2021-02w08/	2021-02-21
16	W7 :: Struggling with Godot	https://now.lectronice.com/then/2021-02w07/	2021-02-14
17	2021W6 :: Sweating profusely	https://now.lectronice.com/then/2021-02w06/	2021-02-07
18	2021W5 :: Exploring vast spaces	https://now.lectronice.com/then/2021-02w05/	2021-01-31
19	2021W4 :: Headbanging	https://now.lectronice.com/then/2021-01w04/	2021-01-24
20	2021W3 :: Floating	https://now.lectronice.com/then/2021-01w03/	2021-01-17
21	2021W2 :: Soreness	https://now.lectronice.com/then/2021-01w02/	2021-01-10
22	2021W1 :: Hello new year	https://now.lectronice.com/then/2021-01w01/	2021-01-03
23	2020W53 :: Back to game development	https://now.lectronice.com/then/2020-12w53/	2020-12-27
24	2020W52 :: Chilling	https://now.lectronice.com/then/2020-12w52/	2020-12-20
25	2020W51 :: kalama musi ike nanpa wan	https://now.lectronice.com/then/2020-12w51/	2020-12-13
26	2020W50 :: Music and sore muscles	https://now.lectronice.com/then/2020-12w50/	2020-12-06
27	2020W49 :: Songs?	https://now.lectronice.com/then/2020-11w49/	2020-11-29
28	2020W48 :: Slacking	https://now.lectronice.com/then/2020-11w48/	2020-11-22
29	2020W47 :: Meandering	https://now.lectronice.com/then/2020-11w47/	2020-11-15
31	2020W45 :: Crunching/procrastinating	https://now.lectronice.com/then/2020-11w45/	2020-11-01
32	2020W44 :: Music again	https://now.lectronice.com/then/2020-10w44/	2020-10-25
33	2020W43 :: Teenage Artiphon Engineering	https://now.lectronice.com/then/2020-10w43/	2020-10-18
34	2020W42 :: Beats	https://now.lectronice.com/then/2020-10w42/	2020-10-11
35	2020W41 :: Global confusion	https://now.lectronice.com/then/2020-10w41/	2020-10-04
36	2020W40 :: Drawing again	https://now.lectronice.com/then/2020-09w40/	2020-09-27
37	2020W39 :: Questions and fear of the future	https://now.lectronice.com/then/2020-09w39/	2020-09-20
38	2020W38 :: Toki Pona and slow burn out	https://now.lectronice.com/then/2020-09w38/	2020-09-13
39	2020W37 :: toki pona li pona	https://now.lectronice.com/then/2020-09w37/	2020-09-06
40	2020W36 :: Keyboards and lack of sleep	https://now.lectronice.com/then/2020-08w36/	2020-08-30
41	2020W35 :: Opuscule on acid with a plaid	https://now.lectronice.com/then/2020-08w35/	2020-08-23
42	2020W34 :: HTML, Pi 4, acid and game design	https://now.lectronice.com/then/2020-08w34/	2020-08-16
43	2020W33 :: Starting a now page	https://now.lectronice.com/then/2020-08w33/	2020-08-09
44	2020W32 :: Testing my template	https://now.lectronice.com/then/2020-08w32/	2020-08-02
47	Configuring Neovim using Lua	https://icyphox.sh/blog/nvim-lua	2021-02-07
46	Hello Again World	https://gueorgui.net/blog/2020/hello-again-world/	2020-02-01
48	We can do better than Signal	https://icyphox.sh/blog/signal	2021-01-17
49	What's next after WhatsApp?	https://icyphox.sh/blog/whatsapp	2021-01-08
50	2020 in review	https://icyphox.sh/blog/2020-in-review	2020-12-24
51	My music streaming setup	https://icyphox.sh/blog/music-streaming	2020-12-13
52	The Workman keyboard layout	https://icyphox.sh/blog/workman	2020-10-24
53	My submissions for r2wars 2020	https://icyphox.sh/blog/r2wars-2020	2020-09-13
54	Migrating from Mastodon to Pleroma	https://icyphox.sh/blog/mastodon-to-pleroma	2020-09-04
55	The Ducky One 2 SF	https://icyphox.sh/blog/ducky-one-2	2020-08-22
56	Some thoughts on Twitter	https://icyphox.sh/blog/twitter	2020-08-03
57	Status update	https://icyphox.sh/blog/2020-07-20	2020-07-20
58	Flask-JWT-Extended × Flask-Login	https://icyphox.sh/blog/flask-jwt-login	2020-06-24
59	You don't need news	https://icyphox.sh/blog/dont-news	2020-06-21
60	Migrating to the RPi	https://icyphox.sh/blog/pi	2020-06-04
61	Site changes	https://icyphox.sh/blog/site-changes	2020-05-27
62	The efficacy of deepfakes	https://icyphox.sh/blog/efficacy-deepfakes	2020-05-11
63	Simplicity (mostly) guarantees security	https://icyphox.sh/blog/simplicity-security	2020-05-07
64	The S-nail mail client	https://icyphox.sh/blog/s-nail	2020-05-06
65	Stop joining mastodon.social	https://icyphox.sh/blog/mastodon-social	2020-05-05
66	OpenBSD on the HP Envy 13	https://icyphox.sh/blog/openbsd-hp-envy	2020-04-17
67	The Zen of KISS Linux	https://icyphox.sh/blog/kiss-zen	2020-04-03
68	Introducing mael	https://icyphox.sh/blog/mael	2020-03-29
70	Nullcon 2020	https://icyphox.sh/blog/nullcon-2020	2020-03-09
71	Setting up Prosody for XMPP	https://icyphox.sh/blog/prosody	2020-02-18
72	Status update	https://icyphox.sh/blog/2020-01-18	2020-01-18
73	Vimb&#58; my Firefox replacement	https://icyphox.sh/blog/mnml-browsing	2020-01-16
74	Five days in a TTY	https://icyphox.sh/blog/five-days-tty	2020-01-13
76	Disinfo war&#58; RU vs GB	https://icyphox.sh/blog/ru-vs-gb	2019-12-12
77	Instagram OPSEC	https://icyphox.sh/blog/ig-opsec	2019-12-02
78	Save .ORG!	https://icyphox.sh/blog/save-org	2019-11-23
79	Status update	https://icyphox.sh/blog/2019-11-16	2019-11-16
80	IRC for DMs	https://icyphox.sh/blog/irc-for-dms	2019-11-03
82	Hacky scripts	https://icyphox.sh/blog/hacky-scripts	2019-10-24
83	Status update	https://icyphox.sh/blog/2019-10-16	2019-10-16
84	PyCon India 2019 wrap-up	https://icyphox.sh/blog/pycon-wrap-up	2019-10-15
85	Thoughts on digital minimalism	https://icyphox.sh/blog/digital-minimalism	2019-10-05
86	Status update	https://icyphox.sh/blog/2019-09-27	2019-09-27
87	Status update	https://icyphox.sh/blog/2019-09-17	2019-09-17
88	Disinformation demystified	https://icyphox.sh/blog/disinfo	2019-09-10
89	Setting up my personal mailserver	https://icyphox.sh/blog/mailserver	2019-08-15
90	Picking the FB50 smart lock (CVE-2019-13143)	https://icyphox.sh/blog/fb50	2019-08-05
91	Return Oriented Programming on ARM (32-bit)	https://icyphox.sh/blog/rop-on-arm	2019-06-06
92	My setup	https://icyphox.sh/blog/my-setup	2019-05-13
93	Python for Reverse Engineering	https://icyphox.sh/blog/python-for-re-1	2019-02-08
129	Rösti	https://inqlab.net/rösti.html	2021-02-04
95	Choosing comments for this blog	https://crlf.site/log/notes/200624-comments/	2020-06-24
96	How to improve your handwriting	https://crlf.site/log/notes/200616-links/	2020-06-16
97	Notebooks and paper reviews	https://crlf.site/log/notes/200530-links/	2020-05-30
98	Fountain pen ink properties	https://crlf.site/log/notes/200430-inks/	2020-04-30
99	Moving	https://ix5.org/thoughts/2020/moving/	2020-03-02
100	Venezuela: Un país de múltiples facetas	https://ix5.org/thoughts/2017/venezuela-presentation/	2019-01-19
101	Article 9: Freedom of coalition	https://ix5.org/thoughts/2017/grundgesetz-article-9/	2017-04-03
102	Article 8: Freedom of association	https://ix5.org/thoughts/2017/grundgesetz-article-8/	2017-04-03
103	Article 7: School System	https://ix5.org/thoughts/2017/grundgesetz-article-7/	2017-07-20
105	Article 5: Freedom of expression	https://ix5.org/thoughts/2017/grundgesetz-article-5/	2017-07-20
106	Article 4: Freedom of Belief	https://ix5.org/thoughts/2017/grundgesetz-article-4/	2017-07-20
107	Article 3: Equality	https://ix5.org/thoughts/2017/grundgesetz-article-3/	2017-04-03
108	Article 2: Personal Freedoms	https://ix5.org/thoughts/2017/grundgesetz-article-2/	2017-04-03
109	Article 1: Human Dignity and Rights	https://ix5.org/thoughts/2017/grundgesetz-article-1/	2017-04-03
110	The Beginning	https://ix5.org/thoughts/2017/grundgesetz-beginning/	2017-03-05
111	“Yo Barry, you did it my nigga”	https://ix5.org/thoughts/2017/larry-wilmore-whca-2016/	2017-03-26
112	Minimalism is for suckers	https://ix5.org/thoughts/2016/minimalism-is-for-suckers/	2017-03-02
113	Donating blood	https://ix5.org/thoughts/2015/donating-blood/	2017-02-24
114	A bit of wisdom	https://ix5.org/thoughts/2014/a-bit-of-wisdom/	2017-02-24
115	Back in Germany	https://ix5.org/thoughts/2014/back-in-germany/	2017-02-24
116	2014 Taiwan bike tour travel report	https://ix5.org/thoughts/2014/2014-taiwan-bike-tour-travel-report/	2018-01-27
117	Changhua county	https://ix5.org/thoughts/2014/changhua-county/	2017-02-24
118	Easy going on Little Liuciu Island	https://ix5.org/thoughts/2014/easy-going-on-little-liuciu-island/	2017-02-24
119	Rounding Errors	https://nor.the-rn.info/2021/03/20/rounding-errors/	2021-03-20
121	The EOY Info Sessions	https://nor.the-rn.info/2020/12/29/the-eoy-info-sessions/	2020-12-29
122	That Which is Unique, Breaks	https://nor.the-rn.info/2020/12/25/that-which-is-unique-breaks/	2020-12-25
123	Music Hackspace	https://nor.the-rn.info/2020/10/16/music-hackspace/	2020-10-16
124	Pandemic Day 203 / Floyd Protests Day 127	https://nor.the-rn.info/2020/09/29/pandemic-day-203-floyd-protests-day-127/	2020-09-29
125	Towards the Polymyth	https://nor.the-rn.info/2020/09/15/towards-the-polymyth/	2020-09-15
126	The Software Blues	https://nor.the-rn.info/2020/09/11/the-software-blues/	2020-09-11
127	arcologies Covered by CDM	https://nor.the-rn.info/2020/09/01/arcologies-covered-by-cdm/	2020-09-01
128	arcologies	https://nor.the-rn.info/2020/08/30/arcologies/	2020-08-30
130	Sky	https://inqlab.net/sky.html	2020-09-09
131	GeoPub: ActivityPub for content curation	https://inqlab.net/geopub-activitypub-for-content-curation.html	2020-04-06
132	Allegra openEngiadina!	https://inqlab.net/allegra-openengiadina.html	2020-03-21
133	Use Tor	https://inqlab.net/use-tor.html	2020-03-20
134	A Primer on the Semantic Web and Linked Data	https://inqlab.net/a-primer-on-the-semantic-web-and-linked-data.html	2019-11-19
135	Lord of the Flies	https://inqlab.net/lord-of-the-flies.html	2019-10-22
136	Der Hase und der Igel	https://inqlab.net/der-hase-und-der-igel.html	2019-09-14
137	Large Underground Temple	https://inqlab.net/large-underground-temple.html	2016-03-14
138	Hong Kong to Kunming	https://inqlab.net/hong-kong-to-kunming.html	2015-03-02
139	Karawane	https://inqlab.net/karawane.html	1916-02-05
140	Find and Remove Autocompletes in Sublime Text 3	http://milofultz.com/2021/03/06/sublime-keymap	2021-03-06
141	🐍 SNAKEHACK - snake with constantly changing controls	http://milofultz.com/2021/01/28/snake-js	2021-01-28
142	Apps, Software, and More That I Use Everyday	http://milofultz.com/2021/01/08/software	2021-01-08
144	📕 Algorithms To Live By - Book Notes	http://milofultz.com/2020/12/27/atlb-notes	2020-12-27
145	Solution to Advent of Code 13 - LCM with Offsets	http://milofultz.com/2020/12/13/aoc-day-13	2020-12-13
146	🧩 Advent Of Code 2020 - Solutions	http://milofultz.com/2020/12/01/advent-of-code	2020-12-01
148	The point of diminishing returns is already here	http://milofultz.com/2020/11/09/the-point-of-diminis	2020-11-09
149	Rules for Hanafuda game "Koi-Koi"	http://milofultz.com/2020/11/01/koi-koi-rules	2020-11-01
150	📊 Tablatal Parser - Plaintext Database to JSON (Python)	http://milofultz.com/2020/10/31/tablatal-parser	2020-10-31
151	💻 HIITimer - Exercise Timer w/Routines and TTS (Python)	http://milofultz.com/2020/10/25/hiitimer	2020-10-25
152	HTML / CSS / JS Resources	http://milofultz.com/2020/10/21/html-css-js	2020-10-21
153	💻 Tod - Plan and Manage Daily Tasks In The CLI (Python)	http://milofultz.com/2020/10/17/tod-python	2020-10-17
154	Friends don't let friends look at pageviews	http://milofultz.com/2020/10/16/friends-dont	2020-10-16
155	💻 Track - Daily Journal and Log (Python)	http://milofultz.com/2020/10/12/track-python	2020-10-12
156	🎧 Sleep Realms (Paulstretch)	http://milofultz.com/2020/10/12/sleep-realms	2020-10-12
157	The Two-Minute Rule	http://milofultz.com/2020/10/04/two-minute-rule	2020-10-04
158	Trying to become reacquainted with being bored	http://milofultz.com/2020/10/04/doing	2020-10-04
160	💻 Zentube - Youtube Lite w/Note Taking (HTML/CSS/JS)	http://milofultz.com/2020/09/26/zentube	2020-09-26
161	Mastodon	http://milofultz.com/2020/09/23/mastodon	2020-09-23
162	Domine (game from Hundred Rabbits)	http://milofultz.com/2020/09/01/domine	2020-09-01
163	💻 Open A Random Note/Lo-Fi Idea Generator (Python)	http://milofultz.com/2020/08/26/random-note	2020-08-26
164	🎼 Purple Rain Outro Transcription	http://milofultz.com/2020/08/22/purple-rain-outro	2020-08-22
165	🎧 Soulja Realms	http://milofultz.com/2020/08/19/soulja-realms	2020-08-19
166	🎧 Piu Piu ringtone but it's only Avgustina's laugh	http://milofultz.com/2020/08/04/piu-piu-ringtone	2020-08-04
167	💻 Awfulizer - Make Surfing The Web Awful (Firefox)	http://milofultz.com/2020/07/23/awfulizer	2020-07-23
168	Make Python 'Apps' and Shortcuts To Run Them on OSX	http://milofultz.com/2020/07/22/make-python-apps	2020-07-22
169	Create a better program faster with an outline V2	http://milofultz.com/2020/07/18/programming-outline	2020-07-18
170	💻 star_maker - a lo-fi ambient visual (Python)	http://milofultz.com/2020/07/08/star-maker	2020-07-08
171	🎧 spacelove.xm - Made using an old E-MAX sample	http://milofultz.com/2020/07/07/spacelove	2020-07-07
172	💻 Wordsmash Explosion - Mastermind With Words (Python)	http://milofultz.com/2020/07/03/wordsmash	2020-07-03
173	💻 Bookmark Crawler - Make Internet More Fun (Python)	http://milofultz.com/2020/07/02/bmcrawl	2020-07-02
174	Nobody Takes Advice	http://milofultz.com/2020/06/26/nobody-takes-advice	2020-06-26
176	Quality and quantity's relevance to critical feeling	http://milofultz.com/2020/06/21/quantity-quality	2020-06-21
177	Critical feeling is as important as critical thinking	http://milofultz.com/2020/06/10/critical-feeling	2020-06-10
178	Simple + Minimal Exercise Routine	http://milofultz.com/2020/05/25/exercise-routine	2020-05-25
179	🗺 Day planner based on location	http://milofultz.com/2020/05/23/day-planner	2020-05-23
180	I just found out about Zettelkasten	http://milofultz.com/2020/05/22/zettelkasten	2020-05-22
181	Keyboard Remapping on OSX - Adding the Insert Key	http://milofultz.com/2020/05/22/keyboard-remapping	2020-05-22
182	Buying Things "Just In Case" vs. Real Estate	http://milofultz.com/2020/05/22/just-in-case	2020-05-22
183	The Adam Savage Trial Method	http://milofultz.com/2020/05/17/adam-savage	2020-05-17
184	I Miss The Old Internet	http://milofultz.com/2020/05/01/old-internet	2020-05-01
208	New Projects	https://tendigits.space/notes/new-projects/	2021-03-17
185	A Breath of Fresh Air	https://irimi.one/collage-poems/breath-of-fresh-air/	2021-02-21
186	Hello, Lieu!	https://irimi.one/posts/lieu/	2021-02-14
187	My Taskwarrior Setup	https://irimi.one/uses/software-setups/taskwarrior/	2021-02-14
188	Aliceffekt	https://irimi.one/music/aliceffekt/	2021-02-06
189	Mr. Roboto - Illeapolis Radio, Vol. 1	https://irimi.one/music/illeapolis-radio/	2021-01-15
190	Professor Kliq	https://irimi.one/music/professor-kliq/	2021-01-04
191	motherplant	https://irimi.one/posts/motherplant/	2020-12-30
192	Zadig The Jasp - Sun 23	https://irimi.one/music/sun23/	2020-11-29
193	I’m on a Webring Now	https://irimi.one/posts/webring/	2020-11-14
195	Like a Jewelbox in the Forest	https://irimi.one/collage-poems/jewelbox/	2020-10-31
196	One That Likes to Read	https://irimi.one/collage-poems/onethatlikestoread/	2020-10-31
197	Alicequests - Alpha Centauri	https://irimi.one/music/alpha-centauri/	2020-10-25
198	Netsh - 50 tracks to enhance your robotic implants	https://irimi.one/music/50-tracks/	2020-10-23
199	Buying Music Again	https://irimi.one/posts/buying-music/	2020-10-21
200	V//Tomo - ♥K e e p Running♥	https://irimi.one/music/keep-running/	2020-10-20
202	He had forgotten all	https://irimi.one/collage-poems/forgotten/	2020-10-13
203	Same as you	https://irimi.one/collage-poems/sameasyou/	2020-10-13
204	Proprietary Bullshit	https://irimi.one/stickers/proprietary-bullshit/	2020-09-18
205	All Computers Are Broken	https://irimi.one/stickers/acab/	2020-09-06
206	If money can’t buy happiness then why is it so fabulous?	https://irimi.one/stickers/fab-money/	2020-09-06
207	Memento Mori	https://irimi.one/stickers/memento-mori/	2020-09-06
209	House Maintenance	https://tendigits.space/notes/house/	2021-01-06
210	Inktober	https://tendigits.space/notes/inktober/	2020-10-01
211	Post Receive Hook	https://tendigits.space/notes/post-receive-hook/	2020-09-27
212	Bagels	https://tendigits.space/notes/bagels/	2020-09-26
213	Updating SSL Certs	https://tendigits.space/notes/updating-ssh/	2020-08-25
214	New Linux for an old iMac	https://tendigits.space/notes/imac-with-linux/	2020-06-17
215	AE Modular	https://tendigits.space/notes/ae-modular/	2020-05-31
8	Tests unitaires de fonctions impures	https://xvw.github.io/longs/introduction_algebraic_effects.html	2020-03-10
9	Un article sur les monades en 2018	https://xvw.github.io/longs/introduction_aux_monades.html	2018-08-22
30	2020W46 :: Tiredness and absurdity	https://now.lectronice.com/then/2020-11w46/	2020-11-08
45	Two new projects: dissertation and Returnees 海归	https://gueorgui.net/blog/2020/new-projects-dissertation-returnees/	2020-03-22
69	COVID-19 disinformation	https://icyphox.sh/blog/covid19-disinfo	2020-03-15
75	2019 in review	https://icyphox.sh/blog/2019-in-review	2020-01-02
81	The intelligence conundrum	https://icyphox.sh/blog/intel-conundrum	2019-10-28
94	Comments powered by Remark42	https://crlf.site/log/notes/200720-comments/	2020-07-20
104	Article 6: Marriage, Family and Children	https://ix5.org/thoughts/2017/grundgesetz-article-6/	2017-04-03
120	Why I’m Streaming the Making of My Next Album	https://nor.the-rn.info/2021/03/06/why-im-streaming-the-writing-of-my-next-album/	2021-03-06
143	🌌 Reverse Horoscope - Find Out Your Real Birthday (JS)	http://milofultz.com/2021/01/06/reverse-horoscope	2021-01-06
147	Bytebeat - Overview and How To Make/Record on OSX	http://milofultz.com/2020/11/10/bytebeat	2020-11-10
159	💻 Maximize Evernote Storage Using Web Clipper (JS)	http://milofultz.com/2020/09/30/evernote-images	2020-09-30
175	Inexpensive and Minimal Equipment Games To Play	http://milofultz.com/2020/06/25/inexpensive-games	2020-06-25
194	Lone Electrone	https://irimi.one/music/lone-electrone/	2020-11-07
201	Death Grips - Lord of the Game (Ursula's Cartridges DnB Remix)	https://irimi.one/music/ursulas-cartrigdes-lord-of-the-game/	2020-10-19
216	This website's setup with 11ty	https://tendigits.space/notes/site-11ty-setup/	2020-05-30
217	Bird Posters	https://tendigits.space/notes/bird-posters/	2020-05-20
218	Setting up this website	https://tendigits.space/notes/hello/	2020-05-12
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 718, true);


--
-- PostgreSQL database dump complete
--

