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
16	W7 :: Struggling with Godot	https://now.lectronice.com/then/2021-02w07/	2021-02-14
7	Kotlin, extensions et génériques	https://xvw.github.io/longs/kotlin_extensions.html	2020-04-29
10	Konbini, Tac au tac et Manben	https://xvw.github.io/longs/konbini_tac_au_tac_manben.html	2018-08-19
54	Migrating from Mastodon to Pleroma	https://icyphox.sh/blog/mastodon-to-pleroma	2020-09-04
11	Voyager dans le temps avec un Zipper	https://xvw.github.io/longs/zipper_history.html	2017-11-20
25	2020W51 :: kalama musi ike nanpa wan	https://now.lectronice.com/then/2020-12w51/	2020-12-13
17	2021W6 :: Sweating profusely	https://now.lectronice.com/then/2021-02w06/	2021-02-07
24	2020W52 :: Chilling	https://now.lectronice.com/then/2020-12w52/	2020-12-20
21	2021W2 :: Soreness	https://now.lectronice.com/then/2021-01w02/	2021-01-10
20	2021W3 :: Floating	https://now.lectronice.com/then/2021-01w03/	2021-01-17
26	2020W50 :: Music and sore muscles	https://now.lectronice.com/then/2020-12w50/	2020-12-06
19	2021W4 :: Headbanging	https://now.lectronice.com/then/2021-01w04/	2021-01-24
18	2021W5 :: Exploring vast spaces	https://now.lectronice.com/then/2021-02w05/	2021-01-31
22	2021W1 :: Hello new year	https://now.lectronice.com/then/2021-01w01/	2021-01-03
23	2020W53 :: Back to game development	https://now.lectronice.com/then/2020-12w53/	2020-12-27
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
6685	Just an Earthquake	https://longest.voyage/log/just-an-earthquake/	2021-02-21
6686	Writing Notes	https://longest.voyage/log/writing-notes/	2021-02-20
47	Configuring Neovim using Lua	https://icyphox.sh/blog/nvim-lua	2021-02-07
48	We can do better than Signal	https://icyphox.sh/blog/signal	2021-01-17
49	What's next after WhatsApp?	https://icyphox.sh/blog/whatsapp	2021-01-08
50	2020 in review	https://icyphox.sh/blog/2020-in-review	2020-12-24
46	Hello Again World	https://gueorgui.net/blog/2020/hello-again-world/	2020-02-01
51	My music streaming setup	https://icyphox.sh/blog/music-streaming	2020-12-13
52	The Workman keyboard layout	https://icyphox.sh/blog/workman	2020-10-24
53	My submissions for r2wars 2020	https://icyphox.sh/blog/r2wars-2020	2020-09-13
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
13	W10 :: Stacking up voxels	https://now.lectronice.com/then/2021-03w10/	2021-03-07
14	W9 :: Sitting in front of the sun	https://now.lectronice.com/then/2021-03w09/	2021-02-28
15	W8 :: Watching the world burn	https://now.lectronice.com/then/2021-02w08/	2021-02-21
85	Thoughts on digital minimalism	https://icyphox.sh/blog/digital-minimalism	2019-10-05
80	IRC for DMs	https://icyphox.sh/blog/irc-for-dms	2019-11-03
87	Status update	https://icyphox.sh/blog/2019-09-17	2019-09-17
86	Status update	https://icyphox.sh/blog/2019-09-27	2019-09-27
88	Disinformation demystified	https://icyphox.sh/blog/disinfo	2019-09-10
89	Setting up my personal mailserver	https://icyphox.sh/blog/mailserver	2019-08-15
90	Picking the FB50 smart lock (CVE-2019-13143)	https://icyphox.sh/blog/fb50	2019-08-05
91	Return Oriented Programming on ARM (32-bit)	https://icyphox.sh/blog/rop-on-arm	2019-06-06
92	My setup	https://icyphox.sh/blog/my-setup	2019-05-13
93	Python for Reverse Engineering	https://icyphox.sh/blog/python-for-re-1	2019-02-08
129	Rösti	https://inqlab.net/rösti.html	2021-02-04
130	Sky	https://inqlab.net/sky.html	2020-09-09
131	GeoPub: ActivityPub for content curation	https://inqlab.net/geopub-activitypub-for-content-curation.html	2020-04-06
132	Allegra openEngiadina!	https://inqlab.net/allegra-openengiadina.html	2020-03-21
133	Use Tor	https://inqlab.net/use-tor.html	2020-03-20
134	A Primer on the Semantic Web and Linked Data	https://inqlab.net/a-primer-on-the-semantic-web-and-linked-data.html	2019-11-19
135	Lord of the Flies	https://inqlab.net/lord-of-the-flies.html	2019-10-22
95	Choosing comments for this blog	https://crlf.site/log/notes/200624-comments/	2020-06-24
136	Der Hase und der Igel	https://inqlab.net/der-hase-und-der-igel.html	2019-09-14
137	Large Underground Temple	https://inqlab.net/large-underground-temple.html	2016-03-14
138	Hong Kong to Kunming	https://inqlab.net/hong-kong-to-kunming.html	2015-03-02
98	Fountain pen ink properties	https://crlf.site/log/notes/200430-inks/	2020-04-30
99	Moving	https://ix5.org/thoughts/2020/moving/	2020-03-02
139	Karawane	https://inqlab.net/karawane.html	1916-02-05
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
117	Changhua county	https://ix5.org/thoughts/2014/changhua-county/	2017-02-24
118	Easy going on Little Liuciu Island	https://ix5.org/thoughts/2014/easy-going-on-little-liuciu-island/	2017-02-24
119	Rounding Errors	https://nor.the-rn.info/2021/03/20/rounding-errors/	2021-03-20
121	The EOY Info Sessions	https://nor.the-rn.info/2020/12/29/the-eoy-info-sessions/	2020-12-29
122	That Which is Unique, Breaks	https://nor.the-rn.info/2020/12/25/that-which-is-unique-breaks/	2020-12-25
123	Music Hackspace	https://nor.the-rn.info/2020/10/16/music-hackspace/	2020-10-16
125	Towards the Polymyth	https://nor.the-rn.info/2020/09/15/towards-the-polymyth/	2020-09-15
126	The Software Blues	https://nor.the-rn.info/2020/09/11/the-software-blues/	2020-09-11
127	arcologies Covered by CDM	https://nor.the-rn.info/2020/09/01/arcologies-covered-by-cdm/	2020-09-01
140	Find and Remove Autocompletes in Sublime Text 3	http://milofultz.com/2021/03/06/sublime-keymap	2021-03-06
141	🐍 SNAKEHACK - snake with constantly changing controls	http://milofultz.com/2021/01/28/snake-js	2021-01-28
142	Apps, Software, and More That I Use Everyday	http://milofultz.com/2021/01/08/software	2021-01-08
144	📕 Algorithms To Live By - Book Notes	http://milofultz.com/2020/12/27/atlb-notes	2020-12-27
145	Solution to Advent of Code 13 - LCM with Offsets	http://milofultz.com/2020/12/13/aoc-day-13	2020-12-13
128	arcologies	https://nor.the-rn.info/2020/08/30/arcologies/	2020-08-30
146	🧩 Advent Of Code 2020 - Solutions	http://milofultz.com/2020/12/01/advent-of-code	2020-12-01
17906	motore immoto 1	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	2020-07-09
82	Hacky scripts	https://icyphox.sh/blog/hacky-scripts	2019-10-24
83	Status update	https://icyphox.sh/blog/2019-10-16	2019-10-16
77	Instagram OPSEC	https://icyphox.sh/blog/ig-opsec	2019-12-02
78	Save .ORG!	https://icyphox.sh/blog/save-org	2019-11-23
79	Status update	https://icyphox.sh/blog/2019-11-16	2019-11-16
96	How to improve your handwriting	https://crlf.site/log/notes/200616-links/	2020-06-16
151	💻 HIITimer - Exercise Timer w/Routines and TTS (Python)	http://milofultz.com/2020/10/25/hiitimer	2020-10-25
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
209	House Maintenance	https://tendigits.space/notes/house/	2021-01-06
210	Inktober	https://tendigits.space/notes/inktober/	2020-10-01
211	Post Receive Hook	https://tendigits.space/notes/post-receive-hook/	2020-09-27
212	Bagels	https://tendigits.space/notes/bagels/	2020-09-26
213	Updating SSL Certs	https://tendigits.space/notes/updating-ssh/	2020-08-25
214	New Linux for an old iMac	https://tendigits.space/notes/imac-with-linux/	2020-06-17
215	AE Modular	https://tendigits.space/notes/ae-modular/	2020-05-31
185	A Breath of Fresh Air	https://irimi.one/collage-poems/breath-of-fresh-air/	2021-02-21
186	Hello, Lieu!	https://irimi.one/posts/lieu/	2021-02-14
187	My Taskwarrior Setup	https://irimi.one/uses/software-setups/taskwarrior/	2021-02-14
17909	motore immoto 1	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	2020-07-09
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
17908	motore immoto 1	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	2020-07-09
153	💻 Tod - Plan and Manage Daily Tasks In The CLI (Python)	http://milofultz.com/2020/10/17/tod-python	2020-10-17
152	HTML / CSS / JS Resources	http://milofultz.com/2020/10/21/html-css-js	2020-10-21
155	💻 Track - Daily Journal and Log (Python)	http://milofultz.com/2020/10/12/track-python	2020-10-12
156	🎧 Sleep Realms (Paulstretch)	http://milofultz.com/2020/10/12/sleep-realms	2020-10-12
154	Friends don't let friends look at pageviews	http://milofultz.com/2020/10/16/friends-dont	2020-10-16
150	📊 Tablatal Parser - Plaintext Database to JSON (Python)	http://milofultz.com/2020/10/31/tablatal-parser	2020-10-31
6692	Snacks and the Weather	https://longest.voyage/log/snacks-and-such/	2020-09-14
81	The intelligence conundrum	https://icyphox.sh/blog/intel-conundrum	2019-10-28
104	Article 6: Marriage, Family and Children	https://ix5.org/thoughts/2017/grundgesetz-article-6/	2017-04-03
120	Why I’m Streaming the Making of My Next Album	https://nor.the-rn.info/2021/03/06/why-im-streaming-the-writing-of-my-next-album/	2021-03-06
194	Lone Electrone	https://irimi.one/music/lone-electrone/	2020-11-07
201	Death Grips - Lord of the Game (Ursula's Cartridges DnB Remix)	https://irimi.one/music/ursulas-cartrigdes-lord-of-the-game/	2020-10-19
217	Bird Posters	https://tendigits.space/notes/bird-posters/	2020-05-20
6738	Yearly Review 2019	https://phse.net/2019/	2019-12-30
1	Ruby squares	https://bismuth.garden/2020/11/ruby-squares	2020-11-11
8	Tests unitaires de fonctions impures	https://xvw.github.io/longs/introduction_algebraic_effects.html	2020-03-10
6695	Life in the Shoebox	https://longest.voyage/log/life-in-the-shoebox/	2020-04-26
6696	The Burger Search	https://longest.voyage/log/the-burger-search/	2020-04-11
6697	One at a Time	https://longest.voyage/log/one-at-a-time/	2020-03-14
6698	First Month	https://longest.voyage/log/first-month/	2020-02-08
6699	Lag	https://longest.voyage/log/lag/	2020-01-20
6700	Arrival	https://longest.voyage/log/arrival/	2020-01-09
6701	Replay	https://longest.voyage/log/replay/	2019-12-02
6702	Week 4: Random Thoughts	https://longest.voyage/log/week4/	2018-11-18
6703	Countdown	https://longest.voyage/log/countdown/	2018-09-25
6704	Pandoc notes	https://kokorobot.ca/site/pandoc.html	2021-04-01
6705	Wunderland Rabbits	https://kokorobot.ca/site/wunderrabbits.html	2021-03-18
6707	Uxn mascot	https://kokorobot.ca/site/illustration.html	2021-02-01
6708	2020 yearend review	https://kokorobot.ca/site/2020dec31.html	2021-01-11
6712	(雨山) 2020: The Year in Review	https://ameyama.com/blog/2020-the-year-in-review	2020-12-30
6713	(雨山) Sleep With Me: A Testimonial	https://ameyama.com/blog/sleep-with-me-a-testimonial	2020-10-07
6714	(雨山) Vercel	https://ameyama.com/blog/vercel	2020-09-28
6715	(雨山) Focus on the Inputs	https://ameyama.com/blog/focus-on-the-inputs	2020-07-10
6716	(雨山) Reply None	https://ameyama.com/blog/reply-none	2020-05-30
6717	(雨山) Grief	https://ameyama.com/blog/grief	2020-04-28
6718	(雨山) Passgen	https://ameyama.com/blog/passgen	2020-04-27
6719	(雨山) Bookshelf	https://ameyama.com/blog/bookshelf	2020-04-16
6720	(雨山) Public Domain Tapes	https://ameyama.com/blog/public-domain-tapes	2020-04-02
6709	Rope mats	https://kokorobot.ca/site/rug.html	2020-12-07
6710	Conversion charts	https://kokorobot.ca/site/conversion.html	2020-12-14
6721	(雨山) Public Domain Resources	https://ameyama.com/blog/public-domain-resources	2020-03-29
6730	No Off Switch	https://phse.net/no-off-switch/	2021-02-26
6731	Authoring a Gemini Capsule with Hugo	https://phse.net/authoring-a-gemini-capsule-with-hugo/	2021-02-14
6732	The Perfect To-Do List	https://phse.net/the-perfect-todo-list/	2021-01-31
6733	Utility Classes I Have Known and Loved	https://phse.net/utility-classes-i-have-known-and-loved/	2021-01-16
6734	Yearly Review 2020	https://phse.net/2020/	2021-01-03
6735	Respecting Motion Preferences	https://phse.net/respecting-motion-preferences/	2020-08-15
6737	Three Layer Goal-Setting	https://phse.net/three-layer-goal-setting/	2020-01-10
6739	Why is Tetris such a good analogy?	https://phse.net/tetris-analogy/	2019-10-25
6740	A New Minimalism	https://phse.net/a-new-minimalism/	2019-09-28
6741	August Update	https://phse.net/august-update/	2019-08-20
6742	Naive Sudoku	https://phse.net/naive-sudoku/	2019-07-27
6743	How I organize project notes	https://phse.net/notes-template/	2019-06-08
6744	Choose people, not projects	https://phse.net/choose-people/	2019-06-05
6693	Waiting	https://longest.voyage/log/waiting/	2020-07-24
6745	Curiosity & Focus	https://phse.net/curiosity/	2019-03-30
6746	A Commonplace Repository	https://phse.net/commonplace/	2019-03-23
69	COVID-19 disinformation	https://icyphox.sh/blog/covid19-disinfo	2020-03-15
75	2019 in review	https://icyphox.sh/blog/2019-in-review	2020-01-02
143	🌌 Reverse Horoscope - Find Out Your Real Birthday (JS)	http://milofultz.com/2021/01/06/reverse-horoscope	2021-01-06
147	Bytebeat - Overview and How To Make/Record on OSX	http://milofultz.com/2020/11/10/bytebeat	2020-11-10
159	💻 Maximize Evernote Storage Using Web Clipper (JS)	http://milofultz.com/2020/09/30/evernote-images	2020-09-30
6691	Apolitical	https://longest.voyage/log/apolitical/	2020-10-09
175	Inexpensive and Minimal Equipment Games To Play	http://milofultz.com/2020/06/25/inexpensive-games	2020-06-25
6694	Growth	https://longest.voyage/log/growth/	2020-05-20
216	This website's setup with 11ty	https://tendigits.space/notes/site-11ty-setup/	2020-05-30
218	Setting up this website	https://tendigits.space/notes/hello/	2020-05-20
6690	A New Anxiety	https://longest.voyage/log/a-new-anxiety/	2020-11-08
30	2020W46 :: Tiredness and absurdity	https://now.lectronice.com/then/2020-11w46/	2020-11-08
6778	2015 July Journal	https://teknari.com/blogpost/1595548974481/2015+July+Journal	2020-07-24
6766	AudioScrub	/en/audioscrub	2014-08-08
6752	Small Web App Ring	https://ring.0data.app	2021-03-29
6788	2018 Journal	https://teknari.com/blogpost/1594314179451/2018+Journal	2020-07-09
6767	Books	https://teknari.com/blogpost/1595783382418/Books	2020-07-26
6780	2015 May Journal	https://teknari.com/blogpost/1595536068883/2015+May+Journal	2020-07-23
6770	Dreams of Itself	https://teknari.com/blogpost/1595697208582/Dreams+of+Itself	2020-07-25
6753	Emoji Log	https://emojilog.rosano.ca	2021-03-25
6781	Apple I	https://teknari.com/blogpost/1595502848493/Apple+I	2020-07-23
6789	2014 Journal	https://teknari.com/blogpost/1594235757539/2014+Journal	2020-07-08
6751	On Minimalism	https://phse.net/minimalism/	2018-12-31
6771	Eraser	https://teknari.com/blogpost/1595696509825/Eraser	2020-07-25
6782	2015 April Journal	https://teknari.com/blogpost/1594587027196/2015+April+Journal	2020-07-12
6790	2013 Journal	https://teknari.com/blogpost/1594234205140/2013+Journal	2020-07-08
6772	Chickenfruit	https://teknari.com/blogpost/1595694736717/Chickenfruit	2020-07-25
6750	Yearly Review 2018	https://phse.net/2018/	2019-01-01
6783	2015 March Journal	https://teknari.com/blogpost/1594567446819/2015+March+Journal	2020-07-12
6791	\N	https://teknari.com/blogpost/1594233551325/	2020-07-08
6754	Personal wiki	https://rosano.hmm.garden	2021-01-03
6773	2015 December Journal 	https://teknari.com/blogpost/1595684574574/2015+December+Journal+	2020-07-25
6784	2015 February Journal	https://teknari.com/blogpost/1594562577891/2015+February+Journal	2020-07-12
76	Disinfo war&#58; RU vs GB	https://icyphox.sh/blog/ru-vs-gb	2019-12-12
6774	2015 November Journal 	https://teknari.com/blogpost/1595683646064/2015+November+Journal+	2020-07-25
6785	2015 January Journal	https://teknari.com/blogpost/1594344859804/2015+January+Journal	2020-07-10
6755	Zero Data App	https://0data.app	2020-12-08
6786	2017 Journal	https://teknari.com/blogpost/1594318116313/2017+Journal	2020-07-09
6775	2015 October Journal 	https://teknari.com/blogpost/1595683324704/2015+October+Journal+	2020-07-25
6756	Kommit	https://kommit.rosano.ca	2020-06-24
6787	2016 Journal	https://teknari.com/blogpost/1594317403488/2016+Journal	2020-07-09
6757	Aural	/en/aural	2019-12-17
6776	2015 September Journal 	https://teknari.com/blogpost/1595682675547/2015+September+Journal+	2020-07-25
6758	MassageTXT	https://massagetxt.rosano.ca	2019-11-26
6777	2015 August Journal	https://teknari.com/blogpost/1595681107423/2015+August+Journal	2020-07-25
6759	Launchlet	https://launchlet.dev	2019-11-19
6760	Idiomatic	https://idiomatic.rosano.ca	2019-01-24
6761	sonogrid	/en/sonogrid	2018-09-06
6762	Carrot Price	/en/carrot-price	2018-07-04
6764	Ticker	/en/ticker	2015-02-25
6765	Quick Record	/en/quick-record	2015-01-16
6749	Always Carry a Sketchbook	https://phse.net/sketchbook/	2019-02-09
11248	https://resevoir.net//manifestations	https://resevoir.net//manifestations	2019-08-11
7030	Ken Thompson and Dennis Ritchie	https://royniang.com/programming.html	2020-08-27
11239	https://resevoir.net//fraktur	https://resevoir.net//fraktur	2018-12-20
11235	https://resevoir.net//documenting	https://resevoir.net//documenting	2020-06-17
11241	https://resevoir.net//historiography	https://resevoir.net//historiography	2018-11-08
7028	RAMA M10-C	https://royniang.com/keyboards.html	2020-03-17
11246	https://resevoir.net//library	https://resevoir.net//library	2019-09-01
11238	https://resevoir.net//foraging	https://resevoir.net//foraging	2020-10-09
116	2014 Taiwan bike tour travel report	https://ix5.org/thoughts/2014/2014-taiwan-bike-tour-travel-report/	2018-01-27
11240	https://resevoir.net//git-for-filmmakers	https://resevoir.net//git-for-filmmakers	2019-08-29
11242	https://resevoir.net//index	https://resevoir.net//index	2020-06-17
11233	https://resevoir.net//daerim-dong	https://resevoir.net//daerim-dong	2018-01-28
7011	Patience (Daniel Clowes, 2016)	https://royniang.com/patience.html	2020-11-01
11247	https://resevoir.net//lifestyle	https://resevoir.net//lifestyle	2020-06-10
11251	https://resevoir.net//org-mode	https://resevoir.net//org-mode	2019-09-22
11253	https://resevoir.net//portable-printing	https://resevoir.net//portable-printing	2019-04-12
11255	https://resevoir.net//practice	https://resevoir.net//practice	2020-06-17
11257	https://resevoir.net//research	https://resevoir.net//research	2020-06-17
7013	Almost done with the lowercase alphabet	https://royniang.com/sf_guro.html	2020-10-31
7039	ガロ	https://royniang.com/japanese.html	2020-03-31
11254	https://resevoir.net//portable-typewriter	https://resevoir.net//portable-typewriter	2018-12-20
7033	Busy 9front session	https://royniang.com/rio.html	2020-07-19
11256	https://resevoir.net//quotes	https://resevoir.net//quotes	2019-07-28
7017	Began working on the uppercase	https://royniang.com/practice.html	2020-10-01
11258	https://resevoir.net//resevoir	https://resevoir.net//resevoir	2020-06-17
7040	ほんやら洞のべんさん	https://royniang.com/library.html	2020-03-27
7026	Mémoires	https://royniang.com/kiroku.html	2020-09-17
7024	Hario V60	https://royniang.com/cooking_tools.html	2020-09-23
7027	Design and communication	https://royniang.com/language.html	2020-09-16
7016	New Qt home	https://royniang.com/miminaga.html	2020-10-10
7054	Joined Merveilles	https://royniang.com/communities.html	2019-09-25
7025	絞死刑 (大島 渚, 1968)	https://royniang.com/watching.html	2020-09-19
7041	Bombed shell	https://royniang.com/computers.html	2020-03-24
7059	Minous, stretching	https://royniang.com/identity.html	2019-02-01
7046	Out of focus	https://royniang.com/roy_niang.html	2020-03-11
7042	Busted Moleskine	https://royniang.com/edc.html	2020-03-21
7060	Minous, the stray cat	https://royniang.com/identity.html	2019-02-01
7023	Alto getting used to his new home	https://royniang.com/diary.html	2019-08-01
7029	Stacking	https://royniang.com/9front.html	2020-09-02
7055	Riverside at La Réole	https://royniang.com/nature.html	2019-08-02
7035	INTRFC.com is live	https://royniang.com/intrfc.html	2020-05-13
7031	Navigation	https://royniang.com/sam.html	2020-08-07
7047	Octopus	https://royniang.com/street.html	2019-10-03
11236	https://resevoir.net//eoy-2019	https://resevoir.net//eoy-2019	2020-01-04
11252	https://resevoir.net//pointers	https://resevoir.net//pointers	2020-03-08
7037	HyperCard portrait	https://royniang.com/illustration.html	2020-05-04
11234	https://resevoir.net//deep-work	https://resevoir.net//deep-work	2019-05-02
7032	Selfportrait	https://royniang.com/photography.html	2020-07-30
11250	https://resevoir.net//midi-plotter	https://resevoir.net//midi-plotter	2020-08-06
7043	Lockdown cleaning	https://royniang.com/reading.html	2020-03-19
7045	Leica M5	https://royniang.com/cameras.html	2020-03-12
11230	https://resevoir.net//color-in-film	https://resevoir.net//color-in-film	2019-03-16
7014	Testing microblogging with gemini	https://royniang.com/gemini.html	2020-10-28
11244	https://resevoir.net//jonathan	https://resevoir.net//jonathan	2019-11-12
11245	https://resevoir.net//kiron	https://resevoir.net//kiron	2018-08-02
11249	https://resevoir.net//mediums	https://resevoir.net//mediums	2020-06-17
7048	Goldfishes	https://royniang.com/street.html	2019-10-03
7056	Hidden house at La Réole	https://royniang.com/nature.html	2019-08-02
11266	https://resevoir.net//studies	https://resevoir.net//studies	2019-05-28
11267	https://resevoir.net//tactile	https://resevoir.net//tactile	2020-06-16
11264	https://resevoir.net//slitscan-video	https://resevoir.net//slitscan-video	2018-01-08
11269	https://resevoir.net//text	https://resevoir.net//text	2019-08-05
11270	https://resevoir.net//time-based	https://resevoir.net//time-based	2020-06-17
11271	https://resevoir.net//tools	https://resevoir.net//tools	2020-06-17
11272	https://resevoir.net//trails	https://resevoir.net//trails	2019-05-02
11273	https://resevoir.net//urgency	https://resevoir.net//urgency	2019-08-02
11274	https://resevoir.net//visiweave	https://resevoir.net//visiweave	2020-04-16
11275	https://resevoir.net//webring	https://resevoir.net//webring	2019-08-20
11276	https://resevoir.net//writing-drawings	https://resevoir.net//writing-drawings	2019-11-08
11277	https://resevoir.net//year-in-books-2019	https://resevoir.net//year-in-books-2019	2020-01-04
11278	Q1 2021	https://szymonkaliski.com/newsletter/2021-03-29-q1-2021/	2021-03-29
11279	No title	https://szymonkaliski.com/projects/haze/	2021-02-17
11268	https://resevoir.net//targets	https://resevoir.net//targets	2019-04-13
11280	End of 2020	https://szymonkaliski.com/newsletter/2020-12-28-end-of-2020/	2020-12-28
11281	No title	https://szymonkaliski.com/projects/fabfungus/	2020-11-12
11282	No title	https://szymonkaliski.com/projects/liveboard/	2020-07-23
11283	No title	https://szymonkaliski.com/projects/protoboard/	2020-07-14
11284	No title	https://szymonkaliski.com/projects/hhann/	2020-06-30
11285	Memex Dreams	https://szymonkaliski.com/writing/2020-04-19-memex-dreams/	2020-04-19
11286	No title	https://szymonkaliski.com/projects/archivist/	2020-01-01
11287	No title	https://szymonkaliski.com/projects/nott/	2019-07-01
11288	No title	https://szymonkaliski.com/projects/volume-brush/	2019-06-25
11289	No title	https://szymonkaliski.com/projects/modeler/	2019-04-19
11291	Building Dacein	https://szymonkaliski.com/writing/2019-03-01-building-dacein/	2019-03-01
11292	No title	https://szymonkaliski.com/projects/dacein/	2019-03-01
11293	Laboratory Residency	https://szymonkaliski.com/writing/2018-11-27-laboratory-residency/	2018-11-27
11294	No title	https://szymonkaliski.com/projects/hiccup-sdf/	2018-11-25
11295	No title	https://szymonkaliski.com/projects/hhtwm/	2018-11-03
11296	No title	https://szymonkaliski.com/projects/sketchbook-cli/	2018-08-29
11297	No title	https://szymonkaliski.com/projects/editable-cli/	2018-08-19
11298	No title	https://szymonkaliski.com/projects/hot-visualize-change/	2018-05-16
11299	No title	https://szymonkaliski.com/projects/crln/	2018-04-07
11300	No title	https://szymonkaliski.com/projects/mntn/	2018-03-10
11301	DIY Monome	https://szymonkaliski.com/writing/2018-01-28-diy-monome/	2018-01-28
11302	No title	https://szymonkaliski.com/projects/diy-monome/	2018-01-28
11303	FLSUN i3 3D Printer	https://szymonkaliski.com/writing/2017-12-04-flsun-i3-3d-printer/	2017-12-04
11305	Learning Haskell	https://szymonkaliski.com/writing/2017-10-02-learning-haskell/	2017-10-02
11306	Building DAS-UI	https://szymonkaliski.com/writing/2017-09-08-building-das-ui/	2017-09-08
11307	No title	https://szymonkaliski.com/projects/das-ui/	2017-09-08
11309	Building Neutron	https://szymonkaliski.com/writing/2017-07-07-building-neutron/	2017-07-07
11310	No title	https://szymonkaliski.com/projects/neutron/	2017-07-07
11311	Exploring ReasonML	https://szymonkaliski.com/writing/2017-05-31-exploring-reasonml/	2017-05-31
11312	Timav	https://szymonkaliski.com/writing/2017-04-30-time-tracking/	2017-04-30
11313	No title	https://szymonkaliski.com/projects/timav/	2017-04-30
11314	Building Parametrium	https://szymonkaliski.com/writing/2017-03-31-parametrium/	2017-03-31
11315	No title	https://szymonkaliski.com/projects/parametrium/	2017-03-31
11316	Building Wallgen	https://szymonkaliski.com/writing/2017-02-28-building-wallgen/	2017-02-28
11317	No title	https://szymonkaliski.com/projects/wallgen/	2017-02-25
11318	Building SDF-UI	https://szymonkaliski.com/writing/2017-01-31-building-sdf-ui/	2017-01-31
11319	No title	https://szymonkaliski.com/projects/sdf-ui/	2017-01-29
11321	Teaching Creative Coding in Shanghai	https://szymonkaliski.com/writing/2016-12-29-ofcourse-io/	2016-12-29
6736	Managing Specificity with CSS Variables	https://phse.net/managing-specificity-with-css-variables/	2020-02-29
7004	arthur_resource	https://sixey.es/imagery/arthur/	2019-09-07
5579	Orca Box	https://tendigits.space/projects/orca-box/	2021-03-31
7005	Fastmail and 9front	https://royniang.com/fastmail_and_9front.html	2021-01-15
7006	Scrawl 01Y06	https://royniang.com/scrawl_01y06.html	2020-12-08
7007	Scrawl 01Y02	https://royniang.com/scrawl_01y02.html	2020-12-04
5580	Birdhouse Webcam	https://tendigits.space/projects/birdhouse-cam/	2021-03-24
5581	Bird Posters	https://tendigits.space/projects/bird-posters/	2021-03-24
7010	Easy computing	https://royniang.com/haiku_os.html	2020-12-08
7008	Learning hinting	https://royniang.com/type_design.html	2020-10-22
7009	XOK9 Laptop	https://royniang.com/xok9.html	2021-02-11
11265	https://resevoir.net//space	https://resevoir.net//space	2019-09-27
11260	https://resevoir.net//sailing	https://resevoir.net//sailing	2020-10-09
11262	https://resevoir.net//service-design	https://resevoir.net//service-design	2018-08-08
11263	https://resevoir.net//slitscan-experiments	https://resevoir.net//slitscan-experiments	2018-11-02
11328	No title	https://szymonkaliski.com/projects/kinect2osc/	2015-09-20
11331	No title	https://szymonkaliski.com/projects/eeg2osc/	2014-10-10
11332	No title	https://szymonkaliski.com/projects/sonic-explorer/	2014-10-08
11333	No title	https://szymonkaliski.com/projects/institut-des-mutations/	2014-03-28
11324	No title	https://szymonkaliski.com/projects/glsl-auto-ui/	2016-04-20
11334	No title	https://szymonkaliski.com/projects/nodation/	2014-02-19
11329	No title	https://szymonkaliski.com/projects/loop-pi/	2014-10-19
7106	 2020 In Review	http://q.pfiffer.org/posts/2021-01-03-2020_in_review.html	2021-01-03
7109	 MulletCache	http://q.pfiffer.org/posts/2020-04-03-MulletCache.html	2020-04-03
7114	 The Great MR2 FireSale	http://q.pfiffer.org/posts/2020-02-13-MR2_FireSale.html	2020-02-13
7115	 Local Bad Times Ideas	http://q.pfiffer.org/posts/2020-01-28-Local_Bad_Times_Ideas.html	2020-01-28
7116	 2019 In Review	http://q.pfiffer.org/posts/2020-01-03-2019_in_review.html	2020-01-03
7118	 Camping + Others Megamix	http://q.pfiffer.org/posts/2019-08-29-Camping_plus_others_megamix.html	2019-08-29
7119	 Oregon Emerald Outback 2019	http://q.pfiffer.org/posts/2019-05-12-Emerald_Outback_2019.html	2019-05-12
7120	 Moab 2019	http://q.pfiffer.org/posts/2019-04-07-Moab_2019.html	2019-04-07
7121	 SE Asia Dubai, Nepal	http://q.pfiffer.org/posts/2019-03-26-SE_Asia_Retrospect_2.html	2019-03-26
7122	 SE Asia Guangzhou and Pakistan	http://q.pfiffer.org/posts/2019-03-25-SE_Asia_Retrospect.html	2019-03-25
7123	 2018 In Review	http://q.pfiffer.org/posts/2019-03-24-2018_in_review.html	2019-03-24
7124	 Oregon Outback 2018	http://q.pfiffer.org/posts/2018-08-15-Outback_2018.html	2018-08-15
7125	 Cycling Goals 2018	http://q.pfiffer.org/posts/2018-03-28-Track_goals_2018.html	2018-03-28
7126	 2017 In Review	http://q.pfiffer.org/posts/2018-01-05-2017_in_review.html	2018-01-05
7127	 Augment vs. Rewrite	http://q.pfiffer.org/posts/2017-12-05-Augment_vs_Rewrite.html	2017-12-05
7128	 Notes from Two Weeks of Haskell	http://q.pfiffer.org/posts/2017-10-21-Notes_from_two_weeks_of_haskell.html	2017-10-21
7129	 Lets Talk About a Bug	http://q.pfiffer.org/posts/2017-09-30-Bug_Story_1.html	2017-09-30
7130	 2016 In Review	http://q.pfiffer.org/posts/2016-12-31-2016_in_review.html	2016-12-31
7131	 Camping Checklist	http://q.pfiffer.org/posts/2016-04-25-Camping_checklist.html	2016-04-25
7132	 2015 In Review	http://q.pfiffer.org/posts/2015-12-30-2015_in_review.html	2015-12-30
7133	 Simple image and audio wth FFMPEG	http://q.pfiffer.org/posts/2015-07-18-Simple_image_and_audio.html	2015-07-18
7134	 256 Colors in weechat-curses	http://q.pfiffer.org/posts/2015-06-04-256_Colors_weechat.html	2015-06-04
7135	 2014 In Review	http://q.pfiffer.org/posts/2015-01-01-2014_in_review.html	2015-01-01
7136	 Fun with Graphs part 1 Getting Started	http://q.pfiffer.org/posts/2014-09-28-graphs_pt1.html	2014-09-28
7137	 Last Day	http://q.pfiffer.org/posts/2014-09-17-Last_Day.html	2014-09-17
7138	 Seven Star Mountain	http://q.pfiffer.org/posts/2014-09-10-Seven_Star_Mountain.html	2014-09-10
7139	 Street Fightin	http://q.pfiffer.org/posts/2014-09-06-Street_Fightin.html	2014-09-06
7140	 Bikes	http://q.pfiffer.org/posts/2014-09-05-Bikes.html	2014-09-05
7141	 Blood	http://q.pfiffer.org/posts/2014-09-03-Blood.html	2014-09-03
7142	 Wander	http://q.pfiffer.org/posts/2014-09-01-Wander.html	2014-09-01
7144	 Panic Measures	http://q.pfiffer.org/posts/2014-08-29-Panic_Measures.html	2014-08-29
7145	 Escape Sling	http://q.pfiffer.org/posts/2014-08-26-Escape_Sling.html	2014-08-26
7146	 Erlang port driver pitfalls	http://q.pfiffer.org/posts/2014-02-10-Erlang_port_drivers.html	2014-02-10
7147	 2013 In Review	http://q.pfiffer.org/posts/2014-01-01-2013_in_review.html	2014-01-01
7148	 Sane dnsmasq setup	http://q.pfiffer.org/posts/2013-12-16-DNSMasq_setup.html	2013-12-16
7149	 Bcache and LVM non-destructive setup	http://q.pfiffer.org/posts/2013-12-09-Bcache_and_LVM.html	2013-12-09
7150	 Listserve Post-mortem	http://q.pfiffer.org/posts/2013-11-16-Listserve_Postmortem.html	2013-11-16
7151	 KVM, CoreOS and LVM	http://q.pfiffer.org/posts/2013-11-06-2013_kvm_coreos.html	2013-11-06
7152	 Hong Kong Day 6	http://q.pfiffer.org/posts/2013-10-28-Hong_Kong_Day_6.html	2013-10-28
7153	 Hong Kong Day 5	http://q.pfiffer.org/posts/2013-10-27-Hong_Kong_Day_5.html	2013-10-27
7154	 Hong Kong Day 4	http://q.pfiffer.org/posts/2013-10-26-Hong_Kong_Day_4.html	2013-10-26
7155	 Hong Kong Day 3	http://q.pfiffer.org/posts/2013-10-25-Hong_Kong_Day_3.html	2013-10-25
7157	 Hong Kong Day 1	http://q.pfiffer.org/posts/2013-10-23-Hong_Kong_Day_1.html	2013-10-23
7158	 Hong Kong Day 0	http://q.pfiffer.org/posts/2013-10-21-Hong_Kong_Day_0.html	2013-10-21
7159	 Initial Post	http://q.pfiffer.org/posts/2013-10-19-first.html	2013-10-19
7110	 Setjmp/Longjmp Exception Handling in C	http://q.pfiffer.org/posts/2020-03-25-Setjmp_Primer.html	2020-03-25
11326	No title	https://szymonkaliski.com/projects/google-io-android-diversity/	2015-11-28
11327	No title	https://szymonkaliski.com/projects/fonomapa/	2015-10-08
11330	No title	https://szymonkaliski.com/projects/sensorium/	2014-10-10
7111	 A Random Python Timezone Bug	http://q.pfiffer.org/posts/2020-03-12-A_Random_Python_Timezone_Bug.html	2020-03-12
7112	 Decoupling your game loop	http://q.pfiffer.org/posts/2020-03-02-Decoupling_your_game_loop.html	2020-03-02
7113	 Django Aggregates Over JSONB	http://q.pfiffer.org/posts/2020-02-27-JSON_Aggregates.html	2020-02-27
7224	instagram archive	https://travisshears.com/blog/instagram-archive/	2020-10-01
11325	No title	https://szymonkaliski.com/projects/gla-london-2050/	2016-02-01
11323	No title	https://szymonkaliski.com/projects/ballantines-heartbeats/	2016-07-18
7170	General Updates - March 2nd 2021	https://materialfuture.net/posts/blog/2021-3-02-general-updates/	2021-03-02
7171	CentOS - RHEL Talk	https://materialfuture.net/posts/servers/centos-rehl-talk/	2021-02-04
7172	Update: Music 2021	https://materialfuture.net/posts/blog/music-update/	2021-01-26
7164	Study Tip: Quiz yourself in Vim	https://www.edwinwenink.xyz/posts/50-quiz_yourself_in_vim/	2020-06-16
7173	Online Purge - Meaningful Interaction	https://materialfuture.net/posts/blog/activitypub-migration/	2021-01-12
7174	2020 Year-End Retrospective	https://materialfuture.net/posts/blog/2020-year-end-retrospective/	2021-01-07
7175	2020 - Books Completed + Retrospective	https://materialfuture.net/posts/books/books-completed-2020/	2020-12-29
7176	2020 - Games Completed + Retrospective	https://materialfuture.net/posts/games/games-completed-retrospective/	2020-12-29
7177	Sin - Album	https://materialfuture.net/posts/music/sin-album/	2020-12-21
7178	New Music Page	https://materialfuture.net/posts/blog/music-page/	2020-12-16
7179	Services and Site Update - December 2020	https://materialfuture.net/posts/blog/services-update/	2020-12-16
7180	Experimental Videos - Mandelbrot Set 4K	https://materialfuture.net/posts/videos/experimental-videos-mandelbrot/	2020-12-16
7181	Streaming Services and Listening To Music	https://materialfuture.net/posts/music/streaming-services/	2020-11-27
7182	Space Album Video - Video Schedules	https://materialfuture.net/posts/music/space-album-video/	2020-11-07
7183	Network Monitoring Via NetData	https://materialfuture.net/posts/servers/2020-11-6-learn-netdata/	2020-11-06
7184	My YouTube Channel	https://materialfuture.net/posts/blog/2020-11-5-youtube-videos/	2020-11-05
7185	GameBoy Sprite Sheets and Assets	https://materialfuture.net/posts/games/gameboy-sprite-sheet-assets-itch/	2020-10-21
7186	Setting Up A Resume With LaTeX	https://materialfuture.net/posts/blog/2020-10-2-resumes/	2020-10-01
7187	What IS RSS?	https://materialfuture.net/posts/blog/rss/	2020-09-22
7189	September 2020 Update	https://materialfuture.net/posts/blog/updates/	2020-09-09
7190	My Version Of An Ideal Phone	https://materialfuture.net/posts/blog/ideal-phone/	2020-08-23
7191	Emacs - IRC and Other Stuff	https://materialfuture.net/posts/blog/2020-8-18-emacs-irc/	2020-08-18
7192	Time to Step Back and Reflect	https://materialfuture.net/posts/blog/time-to-step-back/	2020-08-16
7193	What Is Org-Mode?	https://materialfuture.net/posts/blog/2020-07-org-mode/	2020-07-22
7194	Tools and Workflows I Use	https://materialfuture.net/posts/blog/2020-06-tools-workflows/	2020-06-27
7195	Current Projects And Current Roadmap	https://materialfuture.net/posts/blog/2020-06-current/	2020-06-16
7196	IPFS For An Easy P2P Network	https://materialfuture.net/posts/blog/2020-06-ipfs/	2020-06-16
7197	Practical C Programming - Retrospective	https://materialfuture.net/posts/books/practical-c-programming/	2020-06-04
7198	Self-Hosting Git Client for a Decentralized Future	https://materialfuture.net/posts/blog/2020-05-git-revamp/	2020-05-25
7200	Why I Use Emacs, And Why It Matters	https://materialfuture.net/posts/blog/2020-03-emacs/	2020-03-28
7201	Current Goals - What I'm Working On	https://materialfuture.net/posts/blog/2020-03-current-goals/	2020-03-12
7202	Links for February 2020	https://materialfuture.net/posts/links/2020-02-links/	2020-02-19
7203	2020 Roadmap and 2019 Retrospective	https://materialfuture.net/posts/blog/2020-roadmap-and-restrospective/	2020-02-05
7204	Redesigning My Site + Minimalism On The Web	https://materialfuture.net/posts/blog/2020-01-site-redesign/	2020-01-29
7205	Links for January 2020	https://materialfuture.net/posts/links/2020-01-links/	2020-01-15
7206	Links for December 2019	https://materialfuture.net/posts/links/2019-12-links/	2019-12-18
7207	Links for November 2019	https://materialfuture.net/posts/links/2019-11-links/	2019-11-15
7208	Org-Roam capture templates	https://travisshears.com/snippets/org_roam_capture_templates/	2021-04-06
7209	delete all my duolingo friends	https://travisshears.com/blog/delete_all_my_friends/	2021-03-22
7210	Restart Nginx	https://travisshears.com/snippets/restart-nginx/	2021-02-07
7211	Run Changed Tests	https://travisshears.com/snippets/run-changed-tests/	2021-02-01
7212	getting started with reefing	https://travisshears.com/blog/reef-plan-and-first-day/	2021-01-30
7213	my start in the aquarium hobby	https://travisshears.com/blog/first-tank/	2021-01-28
7214	scheinbertspitze tour	https://travisshears.com/blog/scheinbertspitze-tour/	2021-01-17
7215	schönalmjoch tour	https://travisshears.com/blog/schoenalmjoch-tour/	2021-01-14
7216	unteres lichteck ridge tour	https://travisshears.com/blog/unteres-lichteck-ridge-tour/	2021-01-13
7217	schachentorkopf ridge tour	https://travisshears.com/blog/schachentorkopf-ridge-tour/	2021-01-09
7218	Strip Audio From Video File	https://travisshears.com/snippets/strip-audio-from-video-file/	2021-01-09
7219	garmisch piste tour	https://travisshears.com/blog/garmisch-piste-tour/	2021-01-09
7220	winter hikes	https://travisshears.com/blog/winter-hikes/	2021-01-07
7221	weibel kante	https://travisshears.com/blog/weibel_kante/	2020-12-25
7222	slovenia trip	https://travisshears.com/blog/slovenia_trip/	2020-12-25
7223	gzipping an existing tar	https://travisshears.com/snippets/gzip-existing-tar/	2020-10-14
7167	Setting up your own tilde club (UNIX)	https://www.edwinwenink.xyz/posts/47-tilde_server/	2020-04-11
7233	Using short server names	https://travisshears.com/snippets/short_server_names/	2020-08-12
7235	holland	https://travisshears.com/blog/holland/	2020-08-10
7234	Disable User	https://travisshears.com/snippets/disable_user/	2020-08-11
7230	npm i vs npm ci	https://travisshears.com/snippets/npm-i-vs-npm-ci/	2020-08-17
7236	2019/2020 ski gear	https://travisshears.com/blog/ski-gear-2019-2020/	2020-08-07
7237	year-progress demo	https://travisshears.com/blog/year-progress/	2020-07-26
7239	camping in mayrhofen	https://travisshears.com/blog/camping-in-mayrhofen/	2020-07-21
7240	peertube instance launch	https://travisshears.com/blog/peertube-instance-launch/	2020-07-20
7241	Basic VPS Setup	https://travisshears.com/tutorials/basic-vps-setup/	2020-07-20
7242	Automatic tmux session names	https://travisshears.com/snippets/automatic_tmux_session_names/	2020-07-13
7243	weekend in frankenjura	https://travisshears.com/blog/weekend-in-frankenjura/	2020-07-05
7244	File Search Plus Size	https://travisshears.com/snippets/file-search-plus-size/	2020-07-02
7245	Convert .mkv to .mp4	https://travisshears.com/snippets/mass-mkv-to-mp4-ffmpeg/	2020-06-30
7246	Wipe a Mongo Collection	https://travisshears.com/snippets/wipe-mongo-collection/	2020-06-29
7247	Extending GPG Keys	https://travisshears.com/snippets/extending-gpg-key/	2020-06-22
7248	Moving GPG Keys	https://travisshears.com/snippets/moving-gpg-keys/	2020-06-20
7250	Force push with --lease for safety	https://travisshears.com/snippets/git-force-push-with-lease/	2020-06-10
7251	Adding Documentation to an API	https://travisshears.com/tutorials/adding-api-docs/	2020-06-08
7252	Open Notion Links	https://travisshears.com/snippets/open-notion-links/	2020-06-07
7253	personal site walk through	https://travisshears.com/blog/personal-site-walk-through/	2020-06-01
7254	Twtxt Config Alias	https://travisshears.com/snippets/twtxt-config/	2020-05-30
7255	JSX Comments	https://travisshears.com/snippets/jsx-comments/	2020-05-26
7256	first svelte app	https://travisshears.com/blog/first-svelte-app/	2020-05-02
7257	teaching javascript	https://travisshears.com/blog/start-teaching/	2020-05-01
7258	HTML + JavaScript VS Code Setup	https://travisshears.com/tutorials/html-js-vs-code-setup/	2020-05-01
7259	Pull Request Homework Workflow	https://travisshears.com/tutorials/pull-request-homework-workflok/	2020-05-01
7260	Format HTML & JavaScript with VS Code	https://travisshears.com/tutorials/fromat-html-js-with-vs-code/	2020-05-01
7261	Protected Github Branches	https://travisshears.com/tutorials/protected-github-branches/	2020-05-01
7262	project sunrise	https://travisshears.com/blog/sunrise/	2020-04-30
7263	Creating K8s registry secrets	https://travisshears.com/snippets/k8s-reg-secret/	2020-03-29
7264	galtenberg ski tour	https://travisshears.com/blog/galtenberg-ski-tour/	2020-03-17
7265	first climb kochel	https://travisshears.com/blog/kochel-first-climb/	2020-03-16
7267	Sending Files Locally	https://travisshears.com/snippets/sending-files-locally/	2020-03-05
7268	Vim Spelling	https://travisshears.com/snippets/vim-spelling/	2020-03-05
7269	cross-country skiing	https://travisshears.com/blog/bayrischzell-cross-country/	2020-03-02
7270	Git Repo Backup	https://travisshears.com/snippets/git-repo-backup/	2020-02-23
7271	rofanspitze ski tour	https://travisshears.com/blog/rofanspitze-ski-tour/	2020-02-19
7272	lenggries avalanche course	https://travisshears.com/blog/lenggries-avalanche-course/	2020-02-07
7273	mountain safety reminder	https://travisshears.com/blog/mountain-safety-reminder/	2020-02-06
7274	scuol hütte	https://travisshears.com/blog/scuol-2020/	2020-02-03
7275	Vim FZF Plugin	https://travisshears.com/snippets/vim-fzf-plugin/	2020-01-30
7276	JQ JSON processor	https://travisshears.com/snippets/jq-command-line-json-processor/	2020-01-30
7277	Emoji Commit Messages	https://travisshears.com/snippets/emoji-commit-messages/	2020-01-28
7278	Watch Command	https://travisshears.com/snippets/watch-command/	2020-01-27
7279	Move File Range	https://travisshears.com/snippets/move-file-range/	2020-01-27
7280	ZSH git plugin	https://travisshears.com/snippets/git-zsh-plugin/	2020-01-27
7281	start of ski season	https://travisshears.com/blog/start-of-ski-season/	2020-01-12
7282	For loops in bash / zsh shells	https://travisshears.com/snippets/shell-for-loops/	2020-01-12
7283	Custom placeholders solution	https://travisshears.com/snippets/vim-placeholders/	2020-01-12
7284	Super powers of the arg list	https://travisshears.com/snippets/vim-arglist/	2020-01-11
7285	Custom ripgrep	https://travisshears.com/snippets/vim-ripgrep-custom/	2020-01-11
7287	Replae <s> with spell and nohl	https://travisshears.com/snippets/vim-substitute/	2020-01-11
7288	Resizing vim windows with arrow keys	https://travisshears.com/snippets/vim-window-resize/	2020-01-11
7289	Uploadable FFMPEG screen casts	https://travisshears.com/snippets/ffmpeg-screen-casts/	2020-01-11
7290	Vim dictionary lookup command	https://travisshears.com/snippets/vim-dictionary/	2020-01-11
7291	the return of snippets	https://travisshears.com/blog/return-of-snippets/	2020-01-11
7292	Configure more gitlab runners	https://travisshears.com/snippets/gitlab-runners-config/	2020-01-11
7293	Who last edited a file	https://travisshears.com/snippets/git-who-last/	2020-01-11
7294	Search git logs with grep	https://travisshears.com/snippets/git-log-grep/	2020-01-11
7497	Alphabet Flags	https://wiki.xxiivv.com/site/nautical.html	2020-06-07
7231	Prevent Vim Auto New Lines	https://travisshears.com/snippets/prevent-vim-auto-new-line/	2020-08-13
7232	Auto Find SSH Keys	https://travisshears.com/snippets/auto-find-ssh-keys/	2020-08-12
7310	AWS CloudFront invalidation Sync	https://travisshears.com/snippets/aws-cloud-front-inval/	2020-01-11
7299	Move Branch	https://travisshears.com/snippets/git-move-branch/	2020-01-11
7321	scanning for meaning	https://travisshears.com/blog/scanning-for-meaning/	2019-07-14
7311	Pretty print JSON	https://travisshears.com/snippets/pretty-print-json/	2020-01-11
7331	\N	https://travisshears.com/version/	0001-01-01
7312	Who Is Using that damn port? (Mac)	https://travisshears.com/snippets/who-is-using-that-port/	2020-01-11
7300	Soft merge	https://travisshears.com/snippets/git-nocommit-merge/	2020-01-11
7322	canada	https://travisshears.com/blog/canada-2019/	2019-07-12
7301	Mutliplex all the shells	https://travisshears.com/snippets/tmux-new/	2020-01-11
7313	climbing grade converter tool	https://travisshears.com/blog/climbing-grade-converter-tool/	2019-10-19
7332	GPG	https://travisshears.com/gpg/	0001-01-01
7303	Oops I take that back 	https://travisshears.com/snippets/git-revert/	2020-01-11
7323	switzerland + liechtenstein	https://travisshears.com/blog/switzerland-liechtenstein-2019/	2019-07-05
7314	arco	https://travisshears.com/blog/arco/	2019-10-09
7305	Search Pass from password	https://travisshears.com/snippets/pass-search/	2020-01-11
7306	Bulk import into Pass	https://travisshears.com/snippets/pass-bulk-import/	2020-01-11
7308	See previous commit changes	https://travisshears.com/snippets/git-prev-commit-changes/	2020-01-11
7315	lofoten	https://travisshears.com/blog/lofoten/	2019-09-29
7324	army cook bot	https://travisshears.com/blog/armycookbot/	2019-07-01
7333	Micro Blog	https://travisshears.com/micro-blog/	0001-01-01
7309	Aws S3 Sync	https://travisshears.com/snippets/aws-s3-sync/	2020-01-11
7316	laberdolomiten	https://travisshears.com/blog/laberdolomiten/	2019-09-24
7318	iceland	https://travisshears.com/blog/iceland-2019/	2019-09-02
7325	klettergarten bad heilbrunn	https://travisshears.com/blog/klettergarten-bad-heilbrunn/	2019-05-19
7319	frauenwasserl	https://travisshears.com/blog/frauenwasserl/	2019-08-19
7298	Better Git Add	https://travisshears.com/snippets/git-better-git-add/	2020-01-11
7320	karwendelspitze	https://travisshears.com/blog/karwendelspitze-2019/	2019-07-21
7326	reviving dotfiles	https://travisshears.com/blog/reviving-dotfiles/	2019-04-29
7327	git hosted npm packages	https://travisshears.com/blog/gitlab-npm-package-setup/	2019-04-17
7328	corsica	https://travisshears.com/blog/corsica-2019/	2019-04-10
7329	try pijul with docker	https://travisshears.com/blog/local-pijul-with-docker/	2019-04-01
7330	\N	https://travisshears.com/corona_cal/	0001-01-01
11337	No title	https://szymonkaliski.com/projects/hello-poznan/	2013-04-19
11345	motore immoto 1	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	2020-07-09
7104	in the mundane	https://simply.personal.jenett.org/in-the-mundane/	2021-03-13
11351	Entrepreneurship	https://oddworlds.org/wiki/entrepreneurship.html	2021-02-10
11362	2020-07	https://oddworlds.org/gallery/2020-07.html	2020-06-22
11370	Getting started with complexity science	https://chad.is/getting-started-complexity-science/	2019-11-02
11346	motore immoto 1	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	2020-07-09
11363	The Last $THING You'll Ever Buy	https://oddworlds.org/thoughts/thelast.html	2020-06-11
11352	Ethics	https://oddworlds.org/wiki/ethics.html	2021-02-10
11371	Technologies of the Self: A Short Introduction	https://chad.is/technologies-of-the-self/	2019-09-23
11364	Pizza	https://oddworlds.org/cooking/pizza.html	2020-05-23
7163	Secondary sorting in Python	https://www.edwinwenink.xyz/posts/51-python_secondary_sorting/	2020-07-29
11372	Managing Oneself	https://chad.is/managing-oneself/	2019-09-18
7169	The Raven Paradox of Inductive Reasoning	https://www.edwinwenink.xyz/posts/45-raven_paradox_inductive_inference/	2020-02-11
11354	Repair	https://oddworlds.org/wiki/repair.html	2021-02-08
7307	Copy password from Pass to the keyboard	https://travisshears.com/snippets/pass-copy/	2020-01-11
11347	2021 Photo Gallery	https://oddworlds.org/gallery/gallery-2021.html	2021-03-22
11365	2020-06	https://oddworlds.org/gallery/2020-06.html	2020-05-22
11373	Copenhagen versus the universe	https://chad.is/copenhagen/	2019-09-14
11366	Focaccia Genovese	https://oddworlds.org/cooking/focaccia-genovese.html	2020-05-18
11374	Reductionism can explain neither carrots nor consciousness	https://chad.is/reductionism/	2019-09-11
11356	2021-01	https://oddworlds.org/gallery/2021-01.html	2021-01-22
11367	Endless forms most beautiful	https://chad.is/endless-forms-most-beautiful/	2021-01-23
11348	Coffee with a "moka" machine	https://oddworlds.org/cooking/moka.html	2021-03-21
11357	2020-11	https://oddworlds.org/gallery/2020-11.html	2020-08-22
11375	Hereditary	https://chad.is/hereditary/	2019-09-07
11369	Self as Process	https://chad.is/self-as-process/	2019-11-06
11358	Memoria	https://oddworlds.org/thoughts/memoria.html	2020-08-16
7382	5fd07d52411b7550146a0c66	https://metasyn.pw/seedling.html	2020-12-09
11376	Confronting the burden of consciousness	https://chad.is/burden-of-consciousness/	2018-11-29
11359	2020-08	https://oddworlds.org/gallery/2020-08.html	2020-07-22
7383	6069181991aae3107ec3d119	https://metasyn.pw/raiu.html	2021-04-04
11349	Pita	https://oddworlds.org/cooking/pita.html	2021-03-15
7044	The Pebbles keyboard	https://royniang.com/keyboards.html	2020-03-17
11360	2020-09	https://oddworlds.org/gallery/2020-09.html	2020-07-22
11350	Radio	https://oddworlds.org/wiki/radio.html	2021-03-09
11377	What happened to ebook innovation?	https://chad.is/ebook-innovation/	2018-08-26
7379	5f90c23e68d81f624bd57bc9	https://metasyn.pw/memex.html	2020-10-21
11361	2020-10	https://oddworlds.org/gallery/2020-10.html	2020-07-22
7380	5f97ccf1290b0a0a7ff5a95e	https://metasyn.pw/collections.html	2020-10-27
7381	5fb82d8526519b1134a64b54	https://metasyn.pw/hangul.html	2020-11-20
11342	pages added	http://nonmateria.com/posts/2020_10_30__pages_added.html	2020-10-30
11344	infected clock	http://nonmateria.com/posts/2020_07_12__infected_clock.html	2020-07-12
7492	Plan9 Draw	https://wiki.xxiivv.com/site/plan9_c.html	2020-08-01
7456	About	https://natehn.com/about/	2020-08-14
7480	Reform Oled	https://wiki.xxiivv.com/site/reform.html	2020-10-19
7463	Zynthian's Sequencer - ZynSeq	https://www.gr0k.net/blog/zynthians-sequencer-zynseq.html	2021-01-29
7457	Logging My Journey	https://www.gr0k.net/blog/logging-my-journey.html	2021-02-26
7472	Exed Desktop Release	https://wiki.xxiivv.com/site/exed.html	2021-01-22
7450	Music Studio (Nov. 2020)	https://natehn.com/posts/music-studio-nov-2020/	2020-11-14
11381	Beautiful code does not make a beautiful product	https://chad.is/beautiful-code/	2013-03-27
7466	Uxambly drawing routines	https://wiki.xxiivv.com/site/left.html	2017-08-07
7459	Zynthian Workflow	https://www.gr0k.net/blog/zynthian-workflow.html	2021-02-17
7451	Leaving Facebook	https://natehn.com/posts/leaving-facebook/	2020-11-09
7445	Notes on Digital Security	https://natehn.com/posts/digital-security/	2021-03-15
7464	Zynthian v4.1 Kit - First Impressions	https://www.gr0k.net/blog/zynthian-first-impressions.html	2021-01-28
7494	Customizing Rio	https://wiki.xxiivv.com/site/rio.html	2020-07-30
7473	Dito Desktop Release	https://wiki.xxiivv.com/site/dito.html	2021-01-20
7460	The Monocled Frown	https://www.gr0k.net/blog/the-monocled-frown.html	2021-02-05
7468	We are now in the osdev business	https://wiki.xxiivv.com/site/roms.html	2021-02-22
7496	Spent 7 weeks at sea	https://wiki.xxiivv.com/site/travel.html	2020-07-21
7481	Tent City of Renate	https://wiki.xxiivv.com/site/wiktopher.html	2017-11-06
11382	What to know before joining a startup	https://chad.is/startup-offers/	2013-03-18
7469	Baofeng UV-9R+	https://wiki.xxiivv.com/site/radio.html	2021-02-14
7488	Pitch Yaw Roll	https://wiki.xxiivv.com/site/moogle.html	2020-07-28
7483	Made In Moogle	https://wiki.xxiivv.com/site/identity.html	2010-02-16
7485	Spacetime 6502	https://wiki.xxiivv.com/site/spacetime_6502.html	2020-08-26
7452	On Memes	https://natehn.com/posts/on-memes/	2020-10-30
7482	Ayatori Notebook	https://wiki.xxiivv.com/site/ayatori.html	2020-10-04
7479	Noton Release	https://wiki.xxiivv.com/site/noton.html	2020-11-19
7465	Noodle in Uxn	https://wiki.xxiivv.com/site/noodle.html	2021-03-17
7484	Brass Faucet	https://wiki.xxiivv.com/site/longtermism.html	2020-09-19
7447	Library	https://natehn.com/library/	2021-02-28
7489	Nasu on Plan 9	https://wiki.xxiivv.com/site/chr_format.html	2020-08-07
11383	The advantages of design in the 21st century	https://chad.is/cautious-prometheus/	2013-02-14
11384	Guns as technology, guns as culture	https://chad.is/guns-technology-culture/	2012-12-18
7475	Gyro 6	https://wiki.xxiivv.com/site/origami.html	2020-12-04
7446	Activist iPhone Security Guide	https://natehn.com/posts/iphone-security/	2021-03-13
7461	Zynthian Tips and Tricks	https://www.gr0k.net/blog/zynthin-tips-and-tricks.html	2021-02-03
7471	Uxn Sticker	https://wiki.xxiivv.com/site/uxn.html	2021-02-03
7470	The Logbook Book	https://wiki.xxiivv.com/site/busy_doing_nothing.html	2021-02-08
7490	Postscript on Plan9	https://wiki.xxiivv.com/site/postscript.html	2020-08-04
7467	Nasu on Uxn	https://wiki.xxiivv.com/site/nasu.html	2020-02-02
11385	Design & Hacking	https://chad.is/design-hacking/	2012-11-22
7448	Reflecting on 2020	https://natehn.com/posts/2020/	2021-01-17
7453	Feed	https://natehn.com/feed/	2020-10-09
7449	Connect	https://natehn.com/connect/	2021-01-10
7486	Nesdev on Plan9	https://wiki.xxiivv.com/site/usagi.html	2020-08-25
7487	Color Picker	https://wiki.xxiivv.com/site/plan9_color.html	2020-08-14
7493	Custom Acme	https://wiki.xxiivv.com/site/acme.html	2020-07-31
7455	This Website, and How To Build Your Own	https://natehn.com/posts/this-website/	2020-09-01
11380	Creative work cannot be managed	https://chad.is/creativity-management/	2013-05-29
11379	Nothing lasts, nothing is finished, and nothing is perfect	https://chad.is/wabi-sabi/	2013-11-03
7574	Rack Monome	https://wiki.xxiivv.com/site/monome.html	2019-06-29
7523	Aboard Pino	https://wiki.xxiivv.com/site/oquonie.html	2014-02-03
7533	Saarafores Station	https://wiki.xxiivv.com/site/vetetrandes.html	2019-10-01
7509	Spiral Pattern	https://wiki.xxiivv.com/site/pascal.html	2020-04-12
6687	Nice And Soft	https://longest.voyage/log/nice-and-soft/	2021-02-20
7576	Catclock	https://wiki.xxiivv.com/site/plan9.html	2019-07-05
7562	Sanwu Audio Player	https://wiki.xxiivv.com/site/hardware.html	2019-09-25
7525	Tools Sticker Sheets	https://wiki.xxiivv.com/site/tools.html	2019-05-23
7498	Shimoda Station	https://wiki.xxiivv.com/site/shimoda.html	2020-05-28
7535	Aldeth	https://wiki.xxiivv.com/site/risan_aldeth.html	2019-10-07
7571	Caterpillar	https://wiki.xxiivv.com/site/macro.html	2010-08-21
7567	Andes	https://wiki.xxiivv.com/site/andes.html	2019-08-29
7504	The NesPaint Interface	https://wiki.xxiivv.com/site/nespaint.html	2020-05-21
7570	Ronin Spiral	https://wiki.xxiivv.com/site/ronin.html	2019-07-07
7568	Travel to Vancouver, Canada	https://wiki.xxiivv.com/site/canada.html	2010-07-08
7527	Morse Alphabet Chart	https://wiki.xxiivv.com/site/morse.html	2019-11-04
7573	Ronin Recursion	https://wiki.xxiivv.com/site/ronin.html	2019-07-07
7505	Disused Hotel in Shimoda	https://wiki.xxiivv.com/site/personal.html	2010-02-28
7531	Meeting Andes	https://wiki.xxiivv.com/site/vertale.html	2019-10-18
7543	Compression Tunnels	https://wiki.xxiivv.com/site/risan_aldeth.html	2019-10-07
7528	Neauismetica on Macintosh	https://wiki.xxiivv.com/site/macintosh.html	2019-11-01
7522	Famicom Keyboard	https://wiki.xxiivv.com/site/famicom.html	2019-10-29
7564	Microbrute Synth	https://wiki.xxiivv.com/site/studio.html	2019-04-23
7579	Linn Monome	https://wiki.xxiivv.com/site/monome.html	2019-06-29
7529	OLKB Hi-pro mod Planck 6	https://wiki.xxiivv.com/site/keyboard.html	2016-01-02
7506	Andes Castel In Construction	https://wiki.xxiivv.com/site/graf3dscene.html	2020-05-15
7565	Talk at XOXO, Portland	https://wiki.xxiivv.com/site/talk.html	2015-04-21
7563	The Playground Express	https://wiki.xxiivv.com/site/playground.html	2019-09-24
7532	Slip Gate	https://wiki.xxiivv.com/site/duomo.html	2017-12-23
7524	Paper Computer	https://wiki.xxiivv.com/site/technology.html	2019-12-03
7536	Paradichlorisse	https://wiki.xxiivv.com/site/kirleane.html	2019-09-30
7555	Early Years	https://wiki.xxiivv.com/site/neonev.html	2019-10-02
7566	Kelp	https://wiki.xxiivv.com/site/hundred_rabbits.html	2015-11-09
7534	Depot	https://wiki.xxiivv.com/site/vertale.html	2019-10-18
7561	Study D	https://wiki.xxiivv.com/site/lard_shader.html	2015-03-10
7544	Escal	https://wiki.xxiivv.com/site/vetetrandes.html	2019-10-01
7526	Castel Entrance	https://wiki.xxiivv.com/site/andes_castel.html	2013-08-23
7540	Drains	https://wiki.xxiivv.com/site/duomo.html	2017-12-23
7537	Offline Station	https://wiki.xxiivv.com/site/whiinders.html	2019-10-15
7548	Reflector	https://wiki.xxiivv.com/site/aitasla.html	2019-10-09
7545	Eaurizon Hangars	https://wiki.xxiivv.com/site/dilitriel.html	2019-09-29
7560	The view from Laeisth	https://wiki.xxiivv.com/site/andes_castel.html	2013-08-23
7542	Signalter	https://wiki.xxiivv.com/site/whiinders.html	2019-10-15
7551	Flighter Transit	https://wiki.xxiivv.com/site/dilitriel.html	2019-09-29
7546	Es Plains	https://wiki.xxiivv.com/site/laeisth.html	2019-10-11
7577	Monochrome Rio	https://wiki.xxiivv.com/site/plan9.html	2019-07-05
7578	Glenda	https://wiki.xxiivv.com/site/plan9.html	2019-07-05
7557	Soies Compressor	https://wiki.xxiivv.com/site/kirleane.html	2019-09-30
7541	Basin	https://wiki.xxiivv.com/site/duomo.html	2017-12-23
7575	Ronin Splash	https://wiki.xxiivv.com/site/ronin.html	2019-07-07
7552	Flighter	https://wiki.xxiivv.com/site/dilitriel.html	2019-09-29
11387	Going from Zero to One	https://chad.is/zero-to-one/	2012-11-01
11388	The Design of Design	https://chad.is/design-of-design/	2012-10-09
7643	Riven Map	https://wiki.xxiivv.com/site/riven.html	2018-02-27
7656	Static	https://wiki.xxiivv.com/site/unix.html	2018-10-06
7580	Minami Ise beach	https://wiki.xxiivv.com/site/skate.html	2019-05-27
7589	Azolla Release	https://wiki.xxiivv.com/site/azolla.html	2019-05-14
7626	Futami Beach	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
7652	XXIIVV	https://wiki.xxiivv.com/site/about.html	2018-08-28
7612	Orca x Pilot	https://wiki.xxiivv.com/site/pilot.html	2019-04-03
7613	The Pilot Synthetiser	https://wiki.xxiivv.com/site/pilot.html	2019-04-03
7646	Neighbor Pino	https://wiki.xxiivv.com/site/hundred_rabbits.html	2015-11-09
7633	Anchored in Ogasawara	https://wiki.xxiivv.com/site/lifestyle.html	2019-02-20
7620	Rekka on Pino in Shizuoka	https://wiki.xxiivv.com/site/goals.html	2019-03-18
7621	Pino docked in Shizuoka	https://wiki.xxiivv.com/site/goals.html	2019-03-18
7607	Polivoks	https://wiki.xxiivv.com/site/alicef.html	2019-04-22
7592	BBC Microbit	https://wiki.xxiivv.com/site/microbit.html	2019-05-24
7597	Light Painting for the Microbit	https://wiki.xxiivv.com/site/microbit.html	2019-05-24
7582	Tutorials	https://wiki.xxiivv.com/site/norns.html	2019-06-10
7649	田園に死す	https://wiki.xxiivv.com/site/directory.html	2017-01-02
7598	Orca Station	https://wiki.xxiivv.com/site/tools.html	2019-05-23
7644	Deep Greens	https://wiki.xxiivv.com/site/nutrition.html	2017-07-19
7658	Maude	https://wiki.xxiivv.com/site/discourse.html	2018-09-23
7641	Orca x Dotgrid	https://wiki.xxiivv.com/site/orca.html	2013-09-05
7617	Holding the Chorded Keyboard	https://wiki.xxiivv.com/site/juni.html	2019-03-26
7647	Maru	https://wiki.xxiivv.com/site/merveilles.html	2018-12-12
7601	Rock Castle in Osaka	https://wiki.xxiivv.com/site/osaka.html	2010-02-19
7640	Majuro Anchorage	https://wiki.xxiivv.com/site/the_sublime.html	2017-03-26
7653	Sunrise in the Marshall Islands	https://wiki.xxiivv.com/site/the_sublime.html	2017-03-26
7618	The Chorded Keyboard	https://wiki.xxiivv.com/site/juni.html	2019-03-26
7631	Alrök Fur Säldota	https://wiki.xxiivv.com/site/lietal.html	2007-03-20
7602	Rock Garden in Osaka	https://wiki.xxiivv.com/site/osaka.html	2010-02-19
7625	Working remotely	https://wiki.xxiivv.com/site/illustration.html	2019-03-04
7642	A young okra plant at the hospital	https://wiki.xxiivv.com/site/marshall_islands.html	2018-10-20
7659	ParadiseOS	https://wiki.xxiivv.com/site/paradise.html	2012-03-03
7614	Tea Fields	https://wiki.xxiivv.com/site/shizuoka.html	2019-03-07
7648	Mastodon Instance Inauguration	https://wiki.xxiivv.com/site/merveilles.html	2018-12-12
7604	Ad blocker with display	https://wiki.xxiivv.com/site/raspberry.html	2019-05-05
7627	Futami Sailors	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
7624	Coralinev Bike	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
7660	Sol Robeson	https://wiki.xxiivv.com/site/wisdom.html	2018-09-17
7638	In Ogasawara	https://wiki.xxiivv.com/site/rekka.html	2006-07-07
7622	In front of Mt. Fuji	https://wiki.xxiivv.com/site/bike.html	2018-09-26
7657	Trek District S, in Fiji	https://wiki.xxiivv.com/site/bike.html	2018-09-26
7615	Tea House	https://wiki.xxiivv.com/site/shizuoka.html	2019-03-07
7650	Orca Type	https://wiki.xxiivv.com/site/orca.html	2013-09-05
7655	The Portals Combination	https://wiki.xxiivv.com/site/riven.html	2018-02-27
7628	Futami Arbor	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
7645	Thai Basil	https://wiki.xxiivv.com/site/marshall_islands.html	2018-10-20
7684	No, seriously.	https://wiki.xxiivv.com/site/webring.html	2018-05-15
7713	Dominion	https://wiki.xxiivv.com/site/death.html	2006-11-14
7740	Tempeh Carrot Soba	https://wiki.xxiivv.com/site/nutrition.html	2017-07-19
7679	Rekka At work	https://wiki.xxiivv.com/site/hundred_rabbits.html	2015-11-09
7668	A Toy Piano for Rainy Days	https://wiki.xxiivv.com/site/framboisedorf.html	2018-04-05
7661	Lami Bay II, Fiji	https://wiki.xxiivv.com/site/fiji.html	2018-08-10
7718	The Webring Logo	https://wiki.xxiivv.com/site/rotonde.html	2017-10-12
7680	Elodie Vast	https://wiki.xxiivv.com/site/physical.html	2018-06-06
7665	Ambigram	https://wiki.xxiivv.com/site/about.html	2018-08-28
7681	Soies Injection	https://wiki.xxiivv.com/site/neon_hermetism.html	2018-05-25
7707	Of Fallen Pilgrims	https://wiki.xxiivv.com/site/neausea.html	2018-01-24
7711	The Districts	https://wiki.xxiivv.com/site/duomo.html	2017-12-23
7720	Analogies	https://wiki.xxiivv.com/site/documentation.html	2017-11-24
7705	From Skógr Studios	https://wiki.xxiivv.com/site/vambits.html	2010-03-11
7666	Apartment in Koenji	https://wiki.xxiivv.com/site/routine.html	2018-08-21
7689	The Inspector Cat	https://wiki.xxiivv.com/site/paradise.html	2012-03-03
7693	Lost in Niue	https://wiki.xxiivv.com/site/black.html	2015-04-24
7670	Difficulty levels	https://wiki.xxiivv.com/site/donsol.html	2015-03-05
7682	The Millioneth Clock	https://wiki.xxiivv.com/site/brane.html	2014-09-18
7737	Album cover	https://wiki.xxiivv.com/site/getapan_728k.html	2017-08-24
7664	The Land Sailor	https://wiki.xxiivv.com/site/ethics.html	2018-08-29
7706	Orbit	https://wiki.xxiivv.com/site/ehrivevnv.html	2018-01-28
7667	Shimokitazawa	https://wiki.xxiivv.com/site/japan.html	2018-08-19
7672	Durable and simple tools	https://wiki.xxiivv.com/site/essentials.html	2018-07-22
7685	ÅA	https://wiki.xxiivv.com/site/photography.html	2018-05-12
7719	Arrived in New Zealand	https://wiki.xxiivv.com/site/new_zealand.html	2017-10-29
7687	Improved the look and feel	https://wiki.xxiivv.com/site/dotgrid.html	2017-11-03
7678	Drifting toward Fiji	https://wiki.xxiivv.com/site/the_sublime.html	2017-03-26
7701	The Black Toothpaste Recipe	https://wiki.xxiivv.com/site/grimgrains.html	2016-11-07
7671	Encounter with the floating eye	https://wiki.xxiivv.com/site/sketchbook.html	2011-08-30
7700	At sea, everything rusts	https://wiki.xxiivv.com/site/everyday.html	2018-03-19
7688	Halftone	https://wiki.xxiivv.com/site/habitants_du_soleil.html	2018-04-16
7708	Supermoon	https://wiki.xxiivv.com/site/yajnev.html	2011-07-16
7724	And Jöns	https://wiki.xxiivv.com/site/morals.html	2017-11-17
7695	The Beldam Point Of View	https://wiki.xxiivv.com/site/visual.html	2010-06-19
7692	Pimoroni Board	https://wiki.xxiivv.com/site/radio_station.html	2018-04-18
7704	Aitasla	https://wiki.xxiivv.com/site/hiversaires.html	2013-02-11
7710	Working away from snow	https://wiki.xxiivv.com/site/dotgrid.html	2017-11-03
7683	The Storm Transit	https://wiki.xxiivv.com/site/sketchbook.html	2011-08-30
7698	Looking out for storms	https://wiki.xxiivv.com/site/weather_station.html	2018-03-21
7675	MoonQuest OST Release	https://wiki.xxiivv.com/site/noon_guest.html	2018-07-14
7673	Nakano Sakaue II	https://wiki.xxiivv.com/site/faqs.html	2018-06-28
7712	Fresh Vambit Cuts	https://wiki.xxiivv.com/site/vambits.html	2010-03-11
7727	Rotonde Interface	https://wiki.xxiivv.com/site/rotonde.html	2017-10-12
7674	Markl Dojo	https://wiki.xxiivv.com/site/markl.html	2017-11-09
7709	Weeklybeats Tracking	https://wiki.xxiivv.com/site/marabu.html	2017-08-11
7677	Nakano Sakaue I	https://wiki.xxiivv.com/site/faqs.html	2018-06-28
7691	In Bloom	https://wiki.xxiivv.com/site/computer.html	2018-04-22
7690	Super Meteor Exhibition	https://wiki.xxiivv.com/site/habitants_du_soleil.html	2018-04-16
7730	Sail to Whangarei, New Zealand	https://wiki.xxiivv.com/site/new_zealand.html	2017-10-29
7726	Wood Stage	https://wiki.xxiivv.com/site/markl.html	2017-11-09
7731	Marabu Tracker	https://wiki.xxiivv.com/site/marabu.html	2017-08-11
7734	Rotonde Layout	https://wiki.xxiivv.com/site/rotonde.html	2017-10-12
7822	Hexagore	https://wiki.xxiivv.com/site/polygore.html	2016-04-12
7817	At 1H1D in Osaka	https://wiki.xxiivv.com/site/lives.html	2016-05-31
7809	Reading about sailing	https://wiki.xxiivv.com/site/rekka.html	2006-07-07
7820	Verreciel OST Release	https://wiki.xxiivv.com/site/verreciel_soundtrack.html	2016-05-09
7749	Neralie	https://wiki.xxiivv.com/site/arvelie.html	2017-07-16
7801	Sail to San Francisco	https://wiki.xxiivv.com/site/america.html	2008-06-26
7810	Learn Film Photo	https://wiki.xxiivv.com/site/camera.html	2016-07-14
17910	motore immoto 1	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	2020-07-09
7773	Bird	https://wiki.xxiivv.com/site/extended_sleep.html	2015-04-29
7796	Shinji	https://wiki.xxiivv.com/site/wallpapers.html	2010-04-11
7793	A Digest	https://wiki.xxiivv.com/site/aesthetics.html	2016-10-27
7606	Polivoks Mini A	https://wiki.xxiivv.com/site/studio.html	2019-04-23
7762	Drifting	https://wiki.xxiivv.com/site/the_sublime.html	2017-03-26
7755	Waterproof	https://wiki.xxiivv.com/site/instrument.html	2017-05-14
7756	Monitor View	https://wiki.xxiivv.com/site/instrument.html	2017-05-14
7783	春野美子「茶の味」	https://wiki.xxiivv.com/site/directory.html	2017-01-02
7781	Donsol Desktop Release	https://wiki.xxiivv.com/site/donsol.html	2015-03-05
7776	Guests in La Paz	https://wiki.xxiivv.com/site/mexico.html	2017-02-03
7797	Study C	https://wiki.xxiivv.com/site/lard_shader.html	2015-03-10
7635	An Old Bunker	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
7794	Woulg	https://wiki.xxiivv.com/site/nervous.html	2016-03-27
7753	Collected works Release	https://wiki.xxiivv.com/site/collected_works.html	2017-05-29
7760	Raspberry Pi Computer	https://wiki.xxiivv.com/site/research.html	2014-12-10
7772	Lost in Ensenada	https://wiki.xxiivv.com/site/nomad.html	2017-01-18
7775	Rekka in Los Angeles	https://wiki.xxiivv.com/site/black.html	2015-04-24
7787	Сердце получает нож	https://wiki.xxiivv.com/site/russian.html	2016-12-05
7757	Immortal Birds	https://wiki.xxiivv.com/site/language.html	2016-07-07
7750	Sidonia	https://wiki.xxiivv.com/site/japanese.html	2017-07-12
7813	Pearl	https://wiki.xxiivv.com/site/pearls.html	2016-07-04
7742	Chasms and Canyons	https://wiki.xxiivv.com/site/niue.html	2017-07-28
7751	Nakano	https://wiki.xxiivv.com/site/japanese.html	2017-07-12
7743	The Coastline	https://wiki.xxiivv.com/site/niue.html	2017-07-28
7814	Cell	https://wiki.xxiivv.com/site/pearls.html	2016-07-04
7748	Papaya Bruschetta	https://wiki.xxiivv.com/site/nutrition.html	2017-07-19
7752	Algea Crisp	https://wiki.xxiivv.com/site/grimgrains.html	2016-11-07
7761	Colorful Sight	https://wiki.xxiivv.com/site/marquesas.html	2017-03-02
7754	Immortal Bird	https://wiki.xxiivv.com/site/children_of_bramble.html	2017-05-28
7763	Recording Superworker	https://wiki.xxiivv.com/site/superworker.html	2017-04-02
7815	Death	https://wiki.xxiivv.com/site/advent_v.html	2014-08-04
7758	Cat has a visitor.	https://wiki.xxiivv.com/site/thousand_rooms.html	2017-04-29
7767	Known Magye Release	https://wiki.xxiivv.com/site/known_magye.html	2014-03-16
7766	Heavy Rain	https://wiki.xxiivv.com/site/marquesas.html	2017-03-02
7764	Pocket Operator	https://wiki.xxiivv.com/site/superworker.html	2017-04-02
7823	Pentagore	https://wiki.xxiivv.com/site/polygore.html	2016-04-12
7812	The Voynich	https://wiki.xxiivv.com/site/language.html	2016-07-07
7780	Fulcanelli	https://wiki.xxiivv.com/site/nomad.html	2017-01-18
7816	The Tavern	https://wiki.xxiivv.com/site/advent_v.html	2014-08-04
7778	La Paz	https://wiki.xxiivv.com/site/mexico.html	2017-02-03
7791	Bamboo Charcoal	https://wiki.xxiivv.com/site/grimgrains.html	2016-11-07
7850	Opal inquisitors Release	https://wiki.xxiivv.com/site/opal_inquisitors.html	2015-09-15
7874	Vocavularist Release	https://wiki.xxiivv.com/site/vocavularist.html	2013-08-07
7872	Everyday Carry	https://wiki.xxiivv.com/site/inventory.html	2015-07-13
7843	1.4	https://wiki.xxiivv.com/site/keyboard_468.html	2014-12-27
7842	Rabbits	https://wiki.xxiivv.com/site/hundred_rabbits.html	2015-11-09
7851	Heading Out	https://wiki.xxiivv.com/site/austria.html	2015-08-30
7899	Study B	https://wiki.xxiivv.com/site/lard_shader.html	2015-03-10
7852	Streets Like Amadeus	https://wiki.xxiivv.com/site/austria.html	2015-08-30
7894	Torazine	https://wiki.xxiivv.com/site/flactals.html	2014-01-29
7857	Talk at Ars Electronica, Vienna	https://wiki.xxiivv.com/site/talk.html	2015-04-21
7869	Habitat 67	https://wiki.xxiivv.com/site/infrared.html	2012-08-07
7838	Setup	https://wiki.xxiivv.com/site/keyboard.html	2016-01-02
7829	Portalion Cover	https://wiki.xxiivv.com/site/portalion.html	2016-03-02
7840	Orca Glyphs	https://wiki.xxiivv.com/site/orca.html	2013-09-05
7888	Vertaline	https://wiki.xxiivv.com/site/time_alloy.html	2015-05-03
7848	Old Android UI	https://wiki.xxiivv.com/site/mobile.html	2012-01-14
7908	2.1	https://wiki.xxiivv.com/site/ledoliel.html	2014-05-31
7907	3.0	https://wiki.xxiivv.com/site/alphavetist.html	2014-06-22
7833	Pandischopic	https://wiki.xxiivv.com/site/hypervoid.html	2010-07-29
7839	Dieter	https://wiki.xxiivv.com/site/knowledge.html	2015-12-29
7893	Ensenada Hills	https://wiki.xxiivv.com/site/black.html	2015-04-24
7882	Lines B	https://wiki.xxiivv.com/site/astratas.html	2015-04-30
7837	Bifurcan Die	https://wiki.xxiivv.com/site/bifurcan.html	2014-06-18
7832	Blindfolks	https://wiki.xxiivv.com/site/blindfolk.html	2016-01-31
7827	Eminence	https://wiki.xxiivv.com/site/verreciel.html	2015-09-27
7877	Tevelision	https://wiki.xxiivv.com/site/eschatolor.html	2015-05-19
7825	Exhibit B	https://wiki.xxiivv.com/site/nervous.html	2016-03-27
7892	Extended Sleep Release	https://wiki.xxiivv.com/site/extended_sleep.html	2015-04-29
7909	Nephtaline wandering	https://wiki.xxiivv.com/site/oquonie.html	2014-02-03
7898	Mobile Interface Update	https://wiki.xxiivv.com/site/donsol.html	2015-03-05
7831	The Lietal Flag	https://wiki.xxiivv.com/site/lietal.html	2007-03-20
7867	Chrestasebeia	https://wiki.xxiivv.com/site/kaleidoscope.html	2014-04-03
7847	Diarism	https://wiki.xxiivv.com/site/dictionarism.html	2015-10-31
7876	Twitter Bot Birth	https://wiki.xxiivv.com/site/the_will_the_wisp.html	2015-06-10
7862	Looking Glace Release	https://wiki.xxiivv.com/site/looking_glace.html	2015-08-28
7871	Trapezoid	https://wiki.xxiivv.com/site/supervisitor.html	2014-12-06
7878	Amsterdam	https://wiki.xxiivv.com/site/netherlands.html	2015-05-12
7845	Cure Dents	https://wiki.xxiivv.com/site/macro.html	2010-08-21
7844	A Hundred Knobs	https://wiki.xxiivv.com/site/rabbits_soundtrack.html	2015-11-29
7868	Breakout Prototype	https://wiki.xxiivv.com/site/mobile.html	2012-01-14
7826	Exhibit A	https://wiki.xxiivv.com/site/nervous.html	2016-03-27
7879	Utrecht	https://wiki.xxiivv.com/site/netherlands.html	2015-05-12
7834	02	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
7881	Travel to Utrecht	https://wiki.xxiivv.com/site/netherlands.html	2015-05-12
7841	Further	https://wiki.xxiivv.com/site/verreciel.html	2015-09-27
7835	01	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
7870	Graveyard	https://wiki.xxiivv.com/site/infrared.html	2012-08-07
7905	Dischromatic	https://wiki.xxiivv.com/site/hypervoid.html	2010-07-29
7883	Lines A	https://wiki.xxiivv.com/site/astratas.html	2015-04-30
7875	Glass	https://wiki.xxiivv.com/site/macro.html	2010-08-21
7884	Pattern IIII	https://wiki.xxiivv.com/site/ar_moire.html	2015-05-06
7885	Pattern III	https://wiki.xxiivv.com/site/ar_moire.html	2015-05-06
7886	Pattern II	https://wiki.xxiivv.com/site/ar_moire.html	2015-05-06
7896	Nestorine	https://wiki.xxiivv.com/site/flactals.html	2014-01-29
7889	Opaline	https://wiki.xxiivv.com/site/time_alloy.html	2015-05-03
7890	Slyverline	https://wiki.xxiivv.com/site/time_alloy.html	2015-05-03
7891	Lines C	https://wiki.xxiivv.com/site/astratas.html	2015-04-30
7897	Coraline	https://wiki.xxiivv.com/site/flactals.html	2014-01-29
7952	Neralie Mobile	https://wiki.xxiivv.com/site/neralie.html	2014-08-22
7987	Vast Release	https://wiki.xxiivv.com/site/vast.html	2014-03-28
7910	Ramiel Release	https://wiki.xxiivv.com/site/ramiel.html	2015-01-14
7954	2.0	https://wiki.xxiivv.com/site/ledoliel.html	2014-05-31
7984	20x	https://wiki.xxiivv.com/site/methascope.html	2014-04-09
7953	1.2	https://wiki.xxiivv.com/site/bifurcan.html	2014-06-18
7993	Soundman	https://wiki.xxiivv.com/site/oquonie_soundtrack.html	2014-02-10
7966	Cover	https://wiki.xxiivv.com/site/virtual_machines.html	2014-06-24
7955	Ode, The Perfect Bei	https://wiki.xxiivv.com/site/kaleidoscope.html	2014-04-03
7936	05	https://wiki.xxiivv.com/site/modernista.html	2014-10-07
7967	Katakana Practice	https://wiki.xxiivv.com/site/alphavetist.html	2014-06-22
7922	Flyer	https://wiki.xxiivv.com/site/dodecae.html	2014-12-04
7951	Damoiseau et Canalx Release	https://wiki.xxiivv.com/site/damoiseau_canalx.html	2014-08-27
7985	200x	https://wiki.xxiivv.com/site/methascope.html	2014-04-09
7990	PowPow, San Francisco	https://wiki.xxiivv.com/site/known_magye.html	2014-03-16
7974	Autumn Leaves	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	2014-05-19
7968	2.0	https://wiki.xxiivv.com/site/vocavularist.html	2013-08-07
7930	A voice in the night	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
7913	Prototype	https://wiki.xxiivv.com/site/keyboard_468.html	2014-12-27
7792	Ensenada Water Walk	https://wiki.xxiivv.com/site/black.html	2015-04-24
7935	Leap Motion Demo, Tokyo	https://wiki.xxiivv.com/site/telekinesis.html	2013-09-12
7976	Spring	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	2014-05-19
7980	The Habitat	https://wiki.xxiivv.com/site/nereid.html	2014-04-22
7917	The sartre Ultravoid	https://wiki.xxiivv.com/site/research.html	2014-12-10
7956	Lineggen	https://wiki.xxiivv.com/site/kaleidoscope.html	2014-04-03
7981	The Stems	https://wiki.xxiivv.com/site/nereid.html	2014-04-22
7914	Antipigment	https://wiki.xxiivv.com/site/hypervoid.html	2010-07-29
7982	The South	https://wiki.xxiivv.com/site/nereid.html	2014-04-22
7911	Reine - Miniscopie	https://wiki.xxiivv.com/site/miniscopie.html	2015-01-09
7964	1.1	https://wiki.xxiivv.com/site/noirca.html	2014-06-25
7944	Ten Axitecture	https://wiki.xxiivv.com/site/ten_axitecture.html	2014-09-07
7918	Dodecae	https://wiki.xxiivv.com/site/supervisitor.html	2014-12-06
7937	04	https://wiki.xxiivv.com/site/modernista.html	2014-10-07
7959	The Advent V Release	https://wiki.xxiivv.com/site/advent_v.html	2014-08-04
7965	Go Board	https://wiki.xxiivv.com/site/noirca.html	2014-06-25
7927	Ultravoid	https://wiki.xxiivv.com/site/the_sartre_mechanism.html	2014-11-20
7923	II	https://wiki.xxiivv.com/site/defraction_optics.html	2014-11-19
7912	Founded Beldam	https://wiki.xxiivv.com/site/beldam_records.html	2014-12-29
7925	Waveform	https://wiki.xxiivv.com/site/defraction_optics.html	2014-11-19
7916	Glyph Art	https://wiki.xxiivv.com/site/rafinograde.html	2014-12-13
7938	02	https://wiki.xxiivv.com/site/modernista.html	2014-10-07
7975	The Autumn	https://wiki.xxiivv.com/site/purgateus.html	2014-05-16
7915	Dew Interface	https://wiki.xxiivv.com/site/dew.html	2014-08-06
7943	Jenen	https://wiki.xxiivv.com/site/serventines.html	2014-05-25
7989	Preview	https://wiki.xxiivv.com/site/vast.html	2014-03-28
7986	2000x	https://wiki.xxiivv.com/site/methascope.html	2014-04-09
7977	Purgateus Release	https://wiki.xxiivv.com/site/purgateus.html	2014-05-16
7940	IIIII	https://wiki.xxiivv.com/site/brane.html	2014-09-18
7919	Aliceffekt Live	https://wiki.xxiivv.com/site/supervisitor.html	2014-12-06
7978	Night Time	https://wiki.xxiivv.com/site/purgateus.html	2014-05-16
7926	Circleform	https://wiki.xxiivv.com/site/defraction_optics.html	2014-11-19
7960	1.2	https://wiki.xxiivv.com/site/ledoliel.html	2014-05-31
7958	Prototype	https://wiki.xxiivv.com/site/dew.html	2014-08-06
7971	Space friends	https://wiki.xxiivv.com/site/ledoliel.html	2014-05-31
7945	Untenest	https://wiki.xxiivv.com/site/serventines.html	2014-05-25
7946	Qaro	https://wiki.xxiivv.com/site/serventines.html	2014-05-25
7997	Qraxia	https://wiki.xxiivv.com/site/flactals.html	2014-01-29
8042	Pico Battle Release	https://wiki.xxiivv.com/site/pico_battle.html	2012-06-27
8013	Soldat	https://wiki.xxiivv.com/site/infrared.html	2012-08-07
8069	Volkenessen Release	https://wiki.xxiivv.com/site/volkenessen.html	2012-01-29
7779	Sail to Ensenada, Mexico	https://wiki.xxiivv.com/site/black.html	2015-04-24
8073	Merveilles	https://wiki.xxiivv.com/site/unreleased.html	2009-12-08
8071	Character Builder	https://wiki.xxiivv.com/site/mobile.html	2012-01-14
8019	Space Marine Colour	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
8074	From Saharaphorest Release	https://wiki.xxiivv.com/site/from_saharaphorest.html	2011-11-28
8007	Climb Crew	https://wiki.xxiivv.com/site/fuji.html	2013-07-12
8066	La Nuit Blanche, Montreal	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	2012-02-11
8048	Toronto Game Jam 201	https://wiki.xxiivv.com/site/collegiennes.html	2010-08-06
8017	Macro DIY iPhone	https://wiki.xxiivv.com/site/macro.html	2010-08-21
8072	The Pillars	https://wiki.xxiivv.com/site/oscean.html	2012-01-13
8040	Vetetrandes Lettres Release	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	2012-03-23
8004	Mirai Seu	https://wiki.xxiivv.com/site/typography.html	2009-07-13
8006	Hiversaires Release	https://wiki.xxiivv.com/site/hiversaires.html	2013-02-11
7999	iOS7 Patch	https://wiki.xxiivv.com/site/lietal.html	2007-03-20
8001	Orca Machine	https://wiki.xxiivv.com/site/orca.html	2013-09-05
8076	From Saharaphorest	https://wiki.xxiivv.com/site/from_saharaphorest.html	2011-11-28
8059	Ring of scales	https://wiki.xxiivv.com/site/ring_of_scales.html	2012-03-13
8063	Spagettini Scale	https://wiki.xxiivv.com/site/spagettini_scale.html	2012-03-05
8002	Entrance	https://wiki.xxiivv.com/site/andes_castel.html	2013-08-23
8047	Coal	https://wiki.xxiivv.com/site/occulter.html	2012-05-02
8000	Pure Data Controller	https://wiki.xxiivv.com/site/telekinesis.html	2013-09-12
8055	Travel to Berlin	https://wiki.xxiivv.com/site/germany.html	2012-03-24
8003	1.0	https://wiki.xxiivv.com/site/vocavularist.html	2013-08-07
7998	Motto	https://wiki.xxiivv.com/site/wallpapers.html	2010-04-11
8030	Lost Osaka Tempers	https://wiki.xxiivv.com/site/devine_lu_linvega.html	2009-01-01
8014	Dei Dain Release	https://wiki.xxiivv.com/site/dei_dain.html	2013-06-17
8064	Lost in Paradise	https://wiki.xxiivv.com/site/paradise.html	2012-03-03
8062	PP3DP 1kg Spool Holder	https://wiki.xxiivv.com/site/prototyping.html	2012-03-07
8008	Torchlights	https://wiki.xxiivv.com/site/fuji.html	2013-07-12
8044	Logo	https://wiki.xxiivv.com/site/diluvium.html	2012-05-20
8016	Mega Ran Tour, Tokyo	https://wiki.xxiivv.com/site/dei_dain.html	2013-06-17
8068	Es gulf sunflowers Release	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	2012-02-11
8053	Punch on the table	https://wiki.xxiivv.com/site/victorian_punch.html	2012-04-02
8026	SquareSound, Melbourne	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	2012-10-20
8054	Banned	https://wiki.xxiivv.com/site/victorian_punch.html	2012-04-02
8049	Binchotan	https://wiki.xxiivv.com/site/occulter.html	2012-05-02
8036	Mar	https://wiki.xxiivv.com/site/waiting_for_horus.html	2012-02-21
8045	Diluvium	https://wiki.xxiivv.com/site/diluvium.html	2012-05-20
8041	iVardensphere Tour, Montreal	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	2012-03-23
8057	Some bridge some place	https://wiki.xxiivv.com/site/france.html	2012-03-19
8031	Cheapbeats - Tokyo	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	2012-10-20
8058	Travel to Paris	https://wiki.xxiivv.com/site/france.html	2012-03-19
8060	First Hex Hive Prototype	https://wiki.xxiivv.com/site/hex_hive_necklace.html	2012-03-09
8038	Tokyo Tempers	https://wiki.xxiivv.com/site/devine_lu_linvega.html	2009-01-01
8061	Hex Hive Necklace	https://wiki.xxiivv.com/site/hex_hive_necklace.html	2012-03-09
8005	Milavregarian	https://wiki.xxiivv.com/site/typography.html	2009-07-13
8015	Infrared Set 2	https://wiki.xxiivv.com/site/infrared.html	2012-08-07
8065	Waiting for Horus	https://wiki.xxiivv.com/site/waiting_for_horus.html	2012-02-21
8067	Rah	https://wiki.xxiivv.com/site/waiting_for_horus.html	2012-02-21
8050	Occulter	https://wiki.xxiivv.com/site/occulter.html	2012-05-02
8087	The Rlionn Oasis	https://wiki.xxiivv.com/site/rlionn.html	2011-08-13
8113	Milk	https://wiki.xxiivv.com/site/death.html	2006-11-14
8158	1H1D vs Shikanokoa, Osaka	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	2010-02-26
8145	China Town	https://wiki.xxiivv.com/site/yokohama.html	2010-03-02
8130	Cenote	https://wiki.xxiivv.com/site/cenote.html	2010-07-20
8094	Vermillionth Release	https://wiki.xxiivv.com/site/vermillionth.html	2011-03-20
8112	8Static - Philadelphia	https://wiki.xxiivv.com/site/to_the_aeons_hell.html	2011-01-07
8093	Echorridoors	https://wiki.xxiivv.com/site/wallpapers.html	2010-04-11
8110	Yajnev	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
8124	Raspberry Close Up	https://wiki.xxiivv.com/site/macro.html	2010-08-21
8084	Andes Necklace	https://wiki.xxiivv.com/site/sketchbook.html	2011-08-30
8114	Vambits, Last Gen	https://wiki.xxiivv.com/site/vambits.html	2010-03-11
8109	Siseon	https://wiki.xxiivv.com/site/siseon.html	2011-02-05
8090	Yajnev Thoughts	https://wiki.xxiivv.com/site/yajnev.html	2011-07-16
8082	Boucherville	https://wiki.xxiivv.com/site/rekka.html	2006-07-07
8118	Merure Release	https://wiki.xxiivv.com/site/merure.html	2009-01-08
8134	Nataniev Portrait	https://wiki.xxiivv.com/site/nataniev.html	2010-07-01
8083	True Form	https://wiki.xxiivv.com/site/aliceffekt.html	2011-08-24
8131	Jaques Cartier	https://wiki.xxiivv.com/site/canada.html	2010-07-08
8088	Blam Release	https://wiki.xxiivv.com/site/blam.html	2011-08-04
8143	In Bloom	https://wiki.xxiivv.com/site/tokyo.html	2010-02-24
8138	Zjeveni	https://wiki.xxiivv.com/site/zjeveni.html	2010-06-17
8127	Noirescent	https://wiki.xxiivv.com/site/hypervoid.html	2010-07-29
8086	Yletaodeta Lith	https://wiki.xxiivv.com/site/typography.html	2009-07-13
8081	Sixth Season Release	https://wiki.xxiivv.com/site/the_sixth_season.html	2011-05-21
8137	Nataniev Fork	https://wiki.xxiivv.com/site/visual.html	2010-06-19
8159	Netlabel Party - Tokyo	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	2010-02-26
8133	Loft	https://wiki.xxiivv.com/site/audio.html	2010-07-06
8085	Aliceffekt Shirt I	https://wiki.xxiivv.com/site/aliceffekt.html	2011-08-24
8108	Merveilles Portable	https://wiki.xxiivv.com/site/unreleased.html	2009-12-08
8080	Swing near Oigura	https://wiki.xxiivv.com/site/notebook.html	2007-12-18
8097	Artifical Mountain Top 2	https://wiki.xxiivv.com/site/czech.html	2011-02-28
8135	Our Studio	https://wiki.xxiivv.com/site/drownspire.html	2010-06-21
8089	The Trial of the Tide	https://wiki.xxiivv.com/site/notebook.html	2007-12-18
8098	Joe	https://wiki.xxiivv.com/site/czech.html	2011-02-28
8095	Kinetik Festival, Montreal	https://wiki.xxiivv.com/site/the_sixth_season.html	2011-05-21
8107	Yletaodeta Neau	https://wiki.xxiivv.com/site/typography.html	2009-07-13
7717	Auckland	https://wiki.xxiivv.com/site/film.html	2016-08-10
8146	Floppy	https://wiki.xxiivv.com/site/tokyo.html	2010-02-24
8136	Founded Drownspire	https://wiki.xxiivv.com/site/drownspire.html	2010-06-21
8140	Idyllic Miners Release	https://wiki.xxiivv.com/site/idyllic_miners.html	2010-05-12
8079	Prince of the Arcade	https://wiki.xxiivv.com/site/collegiennes.html	2010-08-06
8141	Kinetik Festival, Montreal	https://wiki.xxiivv.com/site/idyllic_miners.html	2010-05-12
8099	Nearby Liberec	https://wiki.xxiivv.com/site/czech.html	2011-02-28
8117	Pico3 Release	https://wiki.xxiivv.com/site/pico3.html	2010-10-17
8096	Live in Paris	https://wiki.xxiivv.com/site/vermillionth.html	2011-03-20
8128	Infraviolet	https://wiki.xxiivv.com/site/hypervoid.html	2010-07-29
8126	Cloud is a Lie	https://wiki.xxiivv.com/site/collegiennes.html	2010-08-06
8154	Dragon	https://wiki.xxiivv.com/site/yokohama.html	2010-03-02
8139	Erri Launch	https://wiki.xxiivv.com/site/merure.html	2009-01-08
8148	Hanami Train	https://wiki.xxiivv.com/site/tokyo.html	2010-02-24
7165	Russell on AI in technocracy and surveillance	https://www.edwinwenink.xyz/posts/49-russell_ai_technocracy_surveillance/	2020-05-08
7015	The specimen of Akzidenz Grotesque	https://royniang.com/type_design.html	2020-10-22
7103	The Mascot	https://simone.computer/#/blog	2021-01-29
8205	Metropolis	https://wiki.xxiivv.com/site/death.html	2006-11-14
7156	 Hong Kong Day 2	http://q.pfiffer.org/posts/2013-10-24-Hong_Kong_Day_2.html	2013-10-24
7160	Two perspectives on a plain-text writing convention	https://www.edwinwenink.xyz/posts/54-a_plain_text_writing_convention/	2021-03-12
7107	 A Canyonlands Figure-8	http://q.pfiffer.org/posts/2020-10-22-Canyonlands.html	2020-10-22
7019	Fixed weight issues; some new glyphs	https://royniang.com/practice.html	2020-10-01
8186	Malice Release	https://wiki.xxiivv.com/site/malice.html	2008-06-27
6779	2015 Journal June	https://teknari.com/blogpost/1595537557776/2015+Journal+June	2020-07-23
7117	 Python 2 Threading Primitives, Locks and Events	http://q.pfiffer.org/posts/2019-12-03-Python_Threading_Locks.html	2019-12-03
8209	New Challenger	https://wiki.xxiivv.com/site/rekka.html	2006-07-07
8173	Cyanosis Fever	https://wiki.xxiivv.com/site/cyanosis_fever.html	2009-11-11
6747	Recently	https://phse.net/recently/	2019-03-21
8174	Run	https://wiki.xxiivv.com/site/valentinel_hopes.html	2009-11-03
8172	Merure 2 Launch	https://wiki.xxiivv.com/site/merure.html	2009-01-08
8189	Toy Company, Montreal	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	2009-01-06
8182	Pedestrian Paradise Reissue	https://wiki.xxiivv.com/site/pedestrian_paradise.html	2009-09-07
7721	Auckland Beach	https://wiki.xxiivv.com/site/film.html	2016-08-10
8166	Pcellar II	https://wiki.xxiivv.com/site/maeve.html	2009-10-15
6748	A List of the Tools I'm Using	https://phse.net/tools/	2019-02-12
7143	 Market Forces	http://q.pfiffer.org/posts/2014-08-29-Market_Forces.html	2014-08-29
6763	Belonging	https://rosano.tumblr.com/tagged/Opus-7/chrono	2016-10-06
8161	Lanterns	https://wiki.xxiivv.com/site/osaka.html	2010-02-19
7012	Added public gmi files to koikoi’s build	https://royniang.com/patience.html	2020-11-01
7053	Bicycle kids	https://royniang.com/street.html	2019-10-03
8193	Toy Company, Montreal	https://wiki.xxiivv.com/site/downtemperature.html	2007-03-03
8170	The Library Of Sand	https://wiki.xxiivv.com/site/neauismetica.html	2009-08-28
7722	Whangarei Bridge	https://wiki.xxiivv.com/site/film.html	2016-08-10
8192	Nakano Tempers	https://wiki.xxiivv.com/site/devine_lu_linvega.html	2009-01-01
8171	Neoneve at the docks	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
8206	Telepaths	https://wiki.xxiivv.com/site/quotes.html	2006-07-28
8168	Map	https://wiki.xxiivv.com/site/dinaisth.html	2010-02-13
8185	Yletaodeta Recit	https://wiki.xxiivv.com/site/typography.html	2009-07-13
8203	Composing Words	https://wiki.xxiivv.com/site/lietal.html	2007-03-20
8183	Pedestrian Paradise Release	https://wiki.xxiivv.com/site/pedestrian_paradise.html	2009-09-07
8169	Neonev Raft	https://wiki.xxiivv.com/site/unreleased.html	2009-12-08
8187	Howl Virgil System	https://wiki.xxiivv.com/site/nether_esper_inserts.html	2009-05-17
8177	Self Portrait	https://wiki.xxiivv.com/site/notebook.html	2007-12-18
8207	01	https://wiki.xxiivv.com/site/old_cities.html	2006-07-14
8184	Our forgotten Alphabet	https://wiki.xxiivv.com/site/neauismetica.html	2009-08-28
8191	Otoroutes Miniatures	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	2009-01-06
8167	Pcellar	https://wiki.xxiivv.com/site/maeve.html	2009-10-15
8188	Heist	https://wiki.xxiivv.com/site/notebook.html	2007-12-18
8180	Drypoint Release	https://wiki.xxiivv.com/site/drypoint.html	2009-09-12
8190	Merure I Cover	https://wiki.xxiivv.com/site/merure.html	2009-01-08
8181	Drypoint Landing Zone	https://wiki.xxiivv.com/site/drypoint.html	2009-09-12
8197	Gone Plains	https://wiki.xxiivv.com/site/downtemperature.html	2007-03-03
8195	Pulsewave, New York	https://wiki.xxiivv.com/site/malice.html	2008-06-27
7454	Land Acknowledgment	https://natehn.com/posts/land-acknowledgment/	2020-09-22
7462	Creating SoundFonts in Polyphone	https://www.gr0k.net/blog/creating-soundfonts-in-polyphone.html	2021-01-31
7500	Robusta Mit Pino	https://wiki.xxiivv.com/site/shimoda.html	2020-05-28
7226	small images + folderpics demo	https://travisshears.com/blog/why_small_images_plus_folderpics_demo/	2020-09-14
7501	下田温泉富士屋ホテル	https://wiki.xxiivv.com/site/shimoda.html	2020-05-28
7521	XXIIVV in NesPaint	https://wiki.xxiivv.com/site/identity.html	2010-02-16
8052	Bored in France	https://wiki.xxiivv.com/site/personal.html	2010-02-28
7771	Sail to Nuku Hiva, Marquesas	https://wiki.xxiivv.com/site/marquesas.html	2017-03-02
7474	Working on Oscean with Left	https://wiki.xxiivv.com/site/left.html	2017-08-07
7904	Desert Snow Covered Moutains	https://wiki.xxiivv.com/site/america.html	2008-06-26
7266	Vim Open File Under Cursor	https://travisshears.com/snippets/vim-open-file-under-cursor/	2020-03-06
8077	Shiro	https://wiki.xxiivv.com/site/personal.html	2010-02-28
7520	Nasu Web Release	https://wiki.xxiivv.com/site/nasu.html	2020-02-02
8165	72DEC2 Converses	https://wiki.xxiivv.com/site/identity.html	2010-02-16
7286	Remapping ability to jump	https://travisshears.com/snippets/vim-jumps-fix/	2020-01-11
7295	Revert an entire feature branch	https://travisshears.com/snippets/git-revert-branch/	2020-01-11
7477	Sonobe 3	https://wiki.xxiivv.com/site/origami.html	2020-12-04
7478	Sonobe 12	https://wiki.xxiivv.com/site/origami.html	2020-12-04
7302	Rewrite history git history	https://travisshears.com/snippets/git-rebase/	2020-01-11
7808	Before the evening	https://wiki.xxiivv.com/site/film.html	2016-08-10
7804	Evening near Vancouver Island	https://wiki.xxiivv.com/site/film.html	2016-08-10
7317	hacking health in zurich	https://travisshears.com/blog/hacking-health/	2019-09-23
8078	Chez Liette	https://wiki.xxiivv.com/site/personal.html	2010-02-28
7225	Map	https://travisshears.com/map/	2020-09-28
7188	New Games Category	https://materialfuture.net/posts/games/new-games-category/	2020-09-10
7238	archiving corona cal	https://travisshears.com/blog/archiving-corona-cal/	2020-07-23
7228	Setting a Static IP on Pi	https://travisshears.com/tutorials/pi-static-ip/	2020-08-19
7725	General improvements	https://wiki.xxiivv.com/site/dotgrid.html	2017-11-03
7789	Ensenada Trash Hill	https://wiki.xxiivv.com/site/black.html	2015-04-24
7739	Version 2	https://wiki.xxiivv.com/site/marabu.html	2017-08-11
8101	Visualscream Studio	https://wiki.xxiivv.com/site/czech.html	2011-02-28
7900	Study A	https://wiki.xxiivv.com/site/lard_shader.html	2015-03-10
8147	Vambits in Japan	https://wiki.xxiivv.com/site/vambits.html	2010-03-11
7948	Milreaf	https://wiki.xxiivv.com/site/serventines.html	2014-05-25
7988	Gorgeous Leon	https://wiki.xxiivv.com/site/kaleidoscope.html	2014-04-03
7663	Cousteau	https://wiki.xxiivv.com/site/fiji.html	2018-08-10
7556	Autoconstructors	https://wiki.xxiivv.com/site/vetetrandes.html	2019-10-01
7669	Savusavu, Fiji	https://wiki.xxiivv.com/site/fiji.html	2018-08-10
7559	Septechoes	https://wiki.xxiivv.com/site/duomo.html	2017-12-23
7821	Sailing trip in Quebec	https://wiki.xxiivv.com/site/rekka.html	2006-07-07
7636	Omura Entrance	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
7558	Valentinel Bridge	https://wiki.xxiivv.com/site/dilitriel.html	2019-09-29
8070	Veins of brambles	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
7864	Genoviral	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
8163	Ornate	https://wiki.xxiivv.com/site/osaka.html	2010-02-19
8022	Devlog 20	https://wiki.xxiivv.com/site/hiversaires.html	2013-02-11
8023	Devlog 15	https://wiki.xxiivv.com/site/hiversaires.html	2013-02-11
7906	Nulloid	https://wiki.xxiivv.com/site/hypervoid.html	2010-07-29
7921	Bit Bazaar	https://wiki.xxiivv.com/site/oquonie.html	2014-02-03
7729	Dotless Dotgrid Interface	https://wiki.xxiivv.com/site/dotgrid.html	2017-11-03
7895	Talk at Amaze, Berlin	https://wiki.xxiivv.com/site/talk.html	2015-04-21
7229	tmux plus screen	https://travisshears.com/snippets/tmux-plus-screen/	2020-08-17
8029	Building a telescope	https://wiki.xxiivv.com/site/macro.html	2010-08-21
7928	Cover Page	https://wiki.xxiivv.com/site/defraction_optics.html	2014-11-19
7637	Mixed Architecture	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
7249	K8s deployment.yaml env vscode snippet	https://travisshears.com/snippets/deployment-env-yaml-snippet/	2020-06-20
8051	Fibers	https://wiki.xxiivv.com/site/macro.html	2010-08-21
8164	Travel to Tokyo, Japan	https://wiki.xxiivv.com/site/osaka.html	2010-02-19
7924	Walkthrough	https://wiki.xxiivv.com/site/oquonie.html	2014-02-03
8202	Neoneve Afloat	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
7949	Qovledon	https://wiki.xxiivv.com/site/serventines.html	2014-05-25
8024	Devlog 12	https://wiki.xxiivv.com/site/hiversaires.html	2013-02-11
7856	Ars Electronica	https://wiki.xxiivv.com/site/austria.html	2015-08-30
7858	Linz Food	https://wiki.xxiivv.com/site/austria.html	2015-08-30
7859	Linz	https://wiki.xxiivv.com/site/austria.html	2015-08-30
7860	Wolfinger Hotel	https://wiki.xxiivv.com/site/austria.html	2015-08-30
7950	Gaspse	https://wiki.xxiivv.com/site/serventines.html	2014-05-25
7865	Vatoxoinal	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
7866	Hydreviral	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
7963	Mount Duomo	https://wiki.xxiivv.com/site/serventines.html	2014-05-25
8160	Kabukicho	https://wiki.xxiivv.com/site/tokyo.html	2010-02-24
8204	Downtemperature Release	https://wiki.xxiivv.com/site/downtemperature.html	2007-03-03
8200	Time Stands Still	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
8102	Tree of Pan	https://wiki.xxiivv.com/site/czech.html	2011-02-28
22148	I've Created A Odysee Channel	https://materialfuture.net/posts/blog/2021-4-14-odysee-lbry/	2021-04-14
16270	What's making me happy 2019-04-20	https://writing.natwelch.com/post/694	2019-04-21
6768	St Petersburg Handmade Prints Book	https://teknari.com/blogpost/1595774170477/St+Petersburg+Handmade+Prints+Book	2020-07-26
7105	 Knowing A Place	http://q.pfiffer.org/posts/2021-02-18-To_Know_A_Place.html	2021-02-18
45	Two new projects: dissertation and Returnees 海归	https://gueorgui.net/blog/2020/new-projects-dissertation-returnees/	2020-03-22
8150	Lea	https://wiki.xxiivv.com/site/personal.html	2010-02-28
22373	2-bit tiles in nasu	https://wiki.xxiivv.com/site/nasu.html	2020-02-02
7676	A Bed Of Dust	https://wiki.xxiivv.com/site/wiktopher.html	2017-11-06
7723	Original Writing Layout	https://wiki.xxiivv.com/site/left.html	2017-08-07
17911	la cauzione	http://nonmateria.com/posts/2020_04_10__la_cauzione.html	2020-04-10
11308	Teaching Creative Coding in Taipei	https://szymonkaliski.com/writing/2017-08-20-skyrock-projects/	2017-08-20
7199	Creating A Personal Email Server With Postfix + Dovecot	https://materialfuture.net/posts/blog/2020-04-email-server/	2020-04-17
11228	https://resevoir.net//bricolage	https://resevoir.net//bricolage	2020-06-26
17904	motore immoto 1	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	2020-07-09
11355	Meta: Starting and maintaining Sourdough	https://oddworlds.org/cooking/0-sourdough.html	2021-02-04
11229	https://resevoir.net//chasmic	https://resevoir.net//chasmic	2019-09-22
17905	motore immoto 1	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	2020-07-09
11237	https://resevoir.net//fermentation	https://resevoir.net//fermentation	2020-04-04
7297	Find that lost folder	https://travisshears.com/snippets/find-folder/	2020-01-11
16227	systemd user services	https://notes.neeasade.net/systemd-user-services.html	2021-01-02
11339	la retta	http://nonmateria.com/posts/2021_03_19__la_retta.html	2021-03-19
7458	More Zynthian Workflow Updates	https://www.gr0k.net/blog/more-zynthian-workflow-updates.html	2021-02-21
6689	Autumn Abroad	https://longest.voyage/log/autumn-abroad/	2020-11-15
11304	Learning Haskell part 2	https://szymonkaliski.com/writing/2017-11-10-exploring-tidal-and-diagrams/	2017-11-10
11340	url changed	http://nonmateria.com/posts/2021_03_15__url_changed.html	2021-03-15
17907	motore immoto 1	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	2020-07-09
11343	infected clock II	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	2020-10-27
6706	Busy Doing Nothing e-book release	https://kokorobot.ca/site/busydoingnothing.html	2021-02-19
7168	Tech giants will battle over your health data	https://www.edwinwenink.xyz/posts/46-ai_and_healthcare/	2020-03-17
7508	Luna moth in Minamiise	https://wiki.xxiivv.com/site/identity.html	2010-02-16
7569	The Family	https://wiki.xxiivv.com/site/tools.html	2019-05-23
7591	JSNation, Amsterdam	https://wiki.xxiivv.com/site/azolla.html	2019-05-14
7550	Ehrivevnv Gate	https://wiki.xxiivv.com/site/risan_aldeth.html	2019-10-07
7616	Cherry Trees over Tea Fields	https://wiki.xxiivv.com/site/shizuoka.html	2019-03-07
94	Comments powered by Remark42	https://crlf.site/log/notes/200720-comments/	2020-07-20
97	Notebooks and paper reviews	https://crlf.site/log/notes/200530-links/	2020-05-30
8020	Rami Ismail Rant	https://wiki.xxiivv.com/site/wallpapers.html	2010-04-11
7920	Brut Cover	https://wiki.xxiivv.com/site/supervisitor.html	2014-12-06
8162	Temple	https://wiki.xxiivv.com/site/osaka.html	2010-02-19
7934	Nevocytic	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
7547	Shutting Ramp	https://wiki.xxiivv.com/site/vetetrandes.html	2019-10-01
7530	OPN2 Cartridge	https://wiki.xxiivv.com/site/famicom.html	2019-10-29
7703	Portal combination is in my journal	https://wiki.xxiivv.com/site/riven.html	2018-02-27
7699	Listening to the weather	https://wiki.xxiivv.com/site/weather_station.html	2018-03-21
7996	From Thailand	https://wiki.xxiivv.com/site/oquonie.html	2014-02-03
8144	Devilsse	https://wiki.xxiivv.com/site/wallpapers.html	2010-04-11
7873	Rekka and Sunglasses	https://wiki.xxiivv.com/site/infrared.html	2012-08-07
7929	Techgnostic Order	https://wiki.xxiivv.com/site/paradise.html	2012-03-03
7824	Trigore	https://wiki.xxiivv.com/site/polygore.html	2016-04-12
7777	Pino in Ensenada	https://wiki.xxiivv.com/site/black.html	2015-04-24
7961	Screensaver	https://wiki.xxiivv.com/site/bifurcan.html	2014-06-18
11320	Kinect 2 on macOS with Skeleton Tracking	https://szymonkaliski.com/writing/2017-01-18-kinect-2-osx/	2017-01-18
5	‘Did you find it?’ ‘I did’	https://bismuth.garden/2020/09/did-you-find-it-i-did	2020-09-11
5382	W12 :: Darkness my old friend	https://now.lectronice.com/then/2021-03w12/	2021-03-21
7018	Better ascenders and descenders	https://royniang.com/practice.html	2020-10-01
11322	No title	https://szymonkaliski.com/projects/bareconductive-picap/	2016-09-09
7108	 Building a Personal Gentoo Overlay	http://q.pfiffer.org/posts/2020-04-23-Personal_Gentoo_Overlay.html	2020-04-23
8018	Post Mortem	https://wiki.xxiivv.com/site/hiversaires.html	2013-02-11
11335	No title	https://szymonkaliski.com/projects/zamek-interactive-movie/	2013-12-20
7502	Shimoda Waterway	https://wiki.xxiivv.com/site/shimoda.html	2020-05-28
6688	January Rambling	https://longest.voyage/log/2021-01/	2021-01-17
7161	Extracting Kobo EPUB Annotations	https://www.edwinwenink.xyz/posts/53-update_kobo_annotation/	2021-01-08
8025	Devlog 10	https://wiki.xxiivv.com/site/hiversaires.html	2013-02-11
11224	https://resevoir.net//annotation	https://resevoir.net//annotation	2019-09-15
6769	St Petersburg	https://teknari.com/blogpost/1595699426843/St+Petersburg	2020-07-25
11336	No title	https://szymonkaliski.com/projects/beatbattle-visuals/	2013-12-14
7227	micro blog plugin demo	https://travisshears.com/blog/micro-blog-plugin-demo/	2020-08-23
8179	First Ludivine	https://wiki.xxiivv.com/site/maeve.html	2009-10-15
11225	https://resevoir.net//auto-rickshaw	https://resevoir.net//auto-rickshaw	2018-08-25
11338	No title	https://szymonkaliski.com/projects/sensorium-book-covers/	2012-05-18
7003	+ images in mspaint	https://sixey.es/imagery/mspaint/	2019-09-10
7590	Pong on Norns	https://wiki.xxiivv.com/site/norns.html	2019-06-10
11227	https://resevoir.net//biking	https://resevoir.net//biking	2019-09-19
7983	The Highways	https://wiki.xxiivv.com/site/nereid.html	2014-04-22
7491	Not into babyblue	https://wiki.xxiivv.com/site/plan9_clock.html	2020-08-02
7651	Eggplant Twirl	https://wiki.xxiivv.com/site/marshall_islands.html	2018-10-20
11353	Meta: Fermenting	https://oddworlds.org/cooking/0-fermenting.html	2021-02-09
11231	https://resevoir.net//community-network-project	https://resevoir.net//community-network-project	2019-07-23
7782	Donsol Desktop Interface	https://wiki.xxiivv.com/site/donsol.html	2015-03-05
11243	https://resevoir.net//intermediate-representations	https://resevoir.net//intermediate-representations	2020-03-08
7036	End of the lockdown	https://royniang.com/diary.html	2019-08-01
11378	Designing self-sustaining systems	https://chad.is/design-systems/	2015-12-14
11259	https://resevoir.net//sailboat-as-gaze	https://resevoir.net//sailboat-as-gaze	2020-09-17
7697	A Small Pocket Synth	https://wiki.xxiivv.com/site/framboisedorf.html	2018-04-05
11386	Don’t Make Me Wait	https://chad.is/asynchronous/	2012-11-08
11290	End-User Programming	https://szymonkaliski.com/writing/2019-03-31-end-user-programming/	2019-03-31
8034	Ehrivevnv Studies Release	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	2012-10-20
7639	Sail to Chichijima, Japan	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
2	Links: Beyond sustainable	https://bismuth.garden/2020/09/beyond-sustainable	2020-09-21
4	Oddments	https://bismuth.garden/2020/09/oddments	2020-09-14
8111	Dilitriel	https://wiki.xxiivv.com/site/notebook.html	2007-12-18
7603	Travel to Osaka, Japan	https://wiki.xxiivv.com/site/osaka.html	2010-02-19
8116	Prince Of The Arcade	https://wiki.xxiivv.com/site/collegiennes.html	2010-08-06
8009	From Kawaguchiko	https://wiki.xxiivv.com/site/fuji.html	2013-07-12
124	Pandemic Day 203 / Floyd Protests Day 127	https://nor.the-rn.info/2020/09/29/pandemic-day-203-floyd-protests-day-127/	2020-09-29
148	The point of diminishing returns is already here	http://milofultz.com/2020/11/09/the-point-of-diminis	2020-11-09
8149	Wishes	https://wiki.xxiivv.com/site/tokyo.html	2010-02-24
7768	Pampel	https://wiki.xxiivv.com/site/marquesas.html	2017-03-02
8151	Blaze Blue	https://wiki.xxiivv.com/site/tokyo.html	2010-02-24
16234	tickling bash, the quest for the perfect menu	https://notes.neeasade.net/tickling-bash-a-rofi-adventure.html	2020-05-10
11341	infected clock III	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	2020-11-16
8119	Vambits, Gen II	https://wiki.xxiivv.com/site/vambits.html	2010-03-11
7728	Book Prototype	https://wiki.xxiivv.com/site/wiktopher.html	2017-11-06
7931	Plasmytic	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
7476	Sonobe 30	https://wiki.xxiivv.com/site/origami.html	2020-12-04
7947	Anopass	https://wiki.xxiivv.com/site/serventines.html	2014-05-25
7735	Almost Stability	https://wiki.xxiivv.com/site/marabu.html	2017-08-11
7973	Snailden	https://wiki.xxiivv.com/site/serventines.html	2014-05-25
7736	Left Screencapture	https://wiki.xxiivv.com/site/left.html	2017-08-07
7957	Diagolite I	https://wiki.xxiivv.com/site/kaleidoscope.html	2014-04-03
7499	Sunset Maru	https://wiki.xxiivv.com/site/shimoda.html	2020-05-28
7853	Vienna	https://wiki.xxiivv.com/site/austria.html	2015-08-30
8091	Alex Shoes	https://wiki.xxiivv.com/site/personal.html	2010-02-28
16240	adhoc executable patching on nixos	https://notes.neeasade.net/adhoc-executable-patching-on-nix.html	2020-03-14
16242	2020	https://aless.co/2020/	2020-12-11
16244	Building a Gatsby Plugin with Wasm	https://aless.co/gatsby-wasm-plugin/	2020-01-06
16248	Working at the Edge	https://aless.co/working-at-the-edge/	2019-02-18
16229	reasoning about colors	https://notes.neeasade.net/color-spaces.html	2020-11-24
16235	Automata tiling backgrounds	https://notes.neeasade.net/Automata-tiling-backgrounds.html	2020-05-08
7510	Entaloneralie System 7	https://wiki.xxiivv.com/site/pascal.html	2020-04-12
16250	From Bitmaker to Breather	https://aless.co/from-bitmaker-to-breather/	2015-03-04
16243	Typed Web Workers	https://aless.co/typed-web-workers/	2020-04-30
7554	Support Conduits	https://wiki.xxiivv.com/site/dilitriel.html	2019-09-29
7846	The Whole Band	https://wiki.xxiivv.com/site/hundred_rabbits.html	2015-11-09
7605	Polivoks Mini B	https://wiki.xxiivv.com/site/studio.html	2019-04-23
7623	Sail to Shizuoka, Japan	https://wiki.xxiivv.com/site/shizuoka.html	2019-03-07
16237	May Days	https://notes.neeasade.net/blog-meta.html	2020-05-02
16249	Teach a Girl to Program	https://aless.co/teach-a-girl-to-program/	2016-06-28
16253	Bugs Fixed on Vacation	https://writing.natwelch.com/post/713	2020-11-05
16231	Automata tiling backgrounds 2	https://notes.neeasade.net/Automata-tiling-backgrounds-2.html	2020-08-14
7970	Nastazie	https://wiki.xxiivv.com/site/oquonie.html	2014-02-03
7632	Omura Weather Station	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
7634	Epave	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
7539	Fork Passage	https://wiki.xxiivv.com/site/vertale.html	2019-10-18
8039	Neoneve Afloat Revis	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
16255	2019: Year in Review	https://writing.natwelch.com/post/710	2020-01-02
8043	Hydro74 Remix	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
8132	Longueuil	https://wiki.xxiivv.com/site/canada.html	2010-07-08
16252	2020: Year in Review	https://writing.natwelch.com/post/714	2021-01-02
16247	How to Build a Keyboard, Pt.1	https://aless.co/how-to-build-a-keyboard/	2019-05-27
7818	Cooking	https://wiki.xxiivv.com/site/black.html	2015-04-24
16245	2019	https://aless.co/2019/	2019-12-01
16254	Tales from Isolation: Coding	https://writing.natwelch.com/post/711	2020-04-05
16230	my shell prompt	https://notes.neeasade.net/my-shell-prompt.html	2020-11-09
7784	Progress on Donsol	https://wiki.xxiivv.com/site/donsol.html	2015-03-05
16241	On Emacs	https://notes.neeasade.net/On-Emacs.html	2019-12-06
16256	Nat Welch Manifesto	https://writing.natwelch.com/post/703	2019-12-01
16258	Exercise of Grandmasters	https://writing.natwelch.com/post/708	2019-10-12
16236	checking for toots	https://notes.neeasade.net/checking-for-toots.html	2020-05-03
16260	Zany hijinks while eating the food from Zelda	https://writing.natwelch.com/post/706	2019-09-23
16262	The Nat Index 2019-09-14	https://writing.natwelch.com/post/704	2019-09-14
16239	xero's irc ref	https://notes.neeasade.net/xeros-irc-ref.html	2020-04-04
16257	Inspiration	https://writing.natwelch.com/post/709	2019-11-10
7819	Last days in Montreal	https://wiki.xxiivv.com/site/rekka.html	2006-07-07
7595	Joy in picture	https://wiki.xxiivv.com/site/skate.html	2019-05-27
16259	reportd: Self hosted CSP reporting	https://writing.natwelch.com/post/707	2019-10-05
16264	DIY Cron & Continuous Delivery on GKE	https://writing.natwelch.com/post/699	2019-05-20
16266	Japan 2019 Travel Log Day 4	https://writing.natwelch.com/post/698	2019-05-18
16268	Japan 2019 Travel Log Day 2	https://writing.natwelch.com/post/696	2019-05-15
16261	Hack a satellite	https://writing.natwelch.com/post/705	2019-09-22
16263	Japan 2019 Travel Log Day 6, 7 & 8	https://writing.natwelch.com/post/701	2019-05-22
16233	Pinebook Pro	https://notes.neeasade.net/Pinebook-Pro.html	2020-06-09
8153	Hanami Orange	https://wiki.xxiivv.com/site/rekka.html	2006-07-07
16251	Coding != Computer Science	https://aless.co/coding-is-not-cs/	2014-07-07
16265	Japan 2019 Travel Log Day 5	https://writing.natwelch.com/post/700	2019-05-19
7942	III	https://wiki.xxiivv.com/site/brane.html	2014-09-18
16267	Japan 2019 Travel Log Day 3	https://writing.natwelch.com/post/697	2019-05-16
16269	Japan 2019 Travel Log Day 1	https://writing.natwelch.com/post/695	2019-05-14
16228	search term playlists	https://notes.neeasade.net/search-term-playlists.html	2020-12-13
7694	Nepturne 7757	https://wiki.xxiivv.com/site/habitants_du_soleil.html	2018-04-16
16238	reverse ssh tunnels	https://notes.neeasade.net/reverse-ssh-tunnels.html	2020-04-10
16232	8 Months Adrift	https://notes.neeasade.net/Aug-2020.html	2020-08-04
7738	Removed everything	https://wiki.xxiivv.com/site/marabu.html	2017-08-11
8125	Vambits, Gen I	https://wiki.xxiivv.com/site/vambits.html	2010-03-11
16246	Resume as Code	https://aless.co/resume-as-code/	2019-10-08
16271	New book night	https://writing.natwelch.com/post/693	2019-04-16
11223	https://resevoir.net//about	https://resevoir.net//about	2018-12-17
7166	Creating and linking Zettelkasten notes in Vim	https://www.edwinwenink.xyz/posts/48-vim_fast_creating_and_linking_notes/	2020-04-15
7629	Marus	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
8033	Tokyo Infrared	https://wiki.xxiivv.com/site/infrared.html	2012-08-07
7516	Nakatsuhamaura	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
11226	https://resevoir.net//bicycles	https://resevoir.net//bicycles	2020-10-09
8037	Wereda	https://wiki.xxiivv.com/site/infrared.html	2012-08-07
7765	Scare In Rarotonga	https://wiki.xxiivv.com/site/the_sublime.html	2017-03-26
7992	A Lost Neomine	https://wiki.xxiivv.com/site/oquonie.html	2014-02-03
11232	https://resevoir.net//craft	https://resevoir.net//craft	2020-06-17
7553	Hanging Road	https://wiki.xxiivv.com/site/dilitriel.html	2019-09-29
7714	Vambits on a Camera	https://wiki.xxiivv.com/site/vambits.html	2010-03-11
11261	https://resevoir.net//selfcare-checklist	https://resevoir.net//selfcare-checklist	0001-01-01
7849	Prototype	https://wiki.xxiivv.com/site/verreciel.html	2015-09-27
6	Sowing seeds	https://bismuth.garden/2020/09/sowing-seeds	2020-09-10
12	Un cas d'école à l'utilisation des GADTs	https://xvw.github.io/longs/introduction_gadt.html	2017-10-16
5383	W11 :: Tokiponing	https://now.lectronice.com/then/2021-03w11/	2021-03-14
7599	Algomech Festival, Sheffield	https://wiki.xxiivv.com/site/azolla.html	2019-05-14
7662	Lami Bay, Fiji	https://wiki.xxiivv.com/site/fiji.html	2018-08-10
7807	Pino Docked	https://wiki.xxiivv.com/site/film.html	2016-08-10
7795	Near La Paz	https://wiki.xxiivv.com/site/black.html	2015-04-24
6711	Ocean plait mat tutorial	https://kokorobot.ca/site/rug.html	2020-12-07
84	PyCon India 2019 wrap-up	https://icyphox.sh/blog/pycon-wrap-up	2019-10-15
8104	Spaceship Church	https://wiki.xxiivv.com/site/czech.html	2011-02-28
7538	Outside Passage	https://wiki.xxiivv.com/site/vertale.html	2019-10-18
7596	Infinite Polivoks	https://wiki.xxiivv.com/site/studio.html	2019-04-23
7800	Ensenada Trash Hill Top	https://wiki.xxiivv.com/site/black.html	2015-04-24
8105	Czech Ramen	https://wiki.xxiivv.com/site/czech.html	2011-02-28
8106	Travel to Czech	https://wiki.xxiivv.com/site/czech.html	2011-02-28
7049	Summertime umbrella	https://royniang.com/street.html	2019-10-03
8199	When	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
7050	Girl playing with her dog	https://royniang.com/street.html	2019-10-03
7863	Mytresial	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
7933	Leiomytic	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
8201	Best Rave Evar	https://wiki.xxiivv.com/site/notebook.html	2007-12-18
7162	On Bayesian likelihood	https://www.edwinwenink.xyz/posts/52-bayesian_terminology/	2020-09-01
7861	Travel to Vienna	https://wiki.xxiivv.com/site/austria.html	2015-08-30
7057	Abandoned building at La Réole	https://royniang.com/nature.html	2019-08-02
7511	The Gokashou Coast	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7503	Pino in Shimoda	https://wiki.xxiivv.com/site/shimoda.html	2020-05-28
7296	I need a file off my server but I don't want to set up FTP	https://travisshears.com/snippets/scp/	2020-01-11
7587	Kirihara	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7304	Silver Searcher, it's like grep but faster and easier	https://travisshears.com/snippets/silver-searcher/	2020-01-11
7034	Maurane preparing her next movie	https://royniang.com/diary.html	2019-08-01
7038	Annoying Alto during lockdown	https://royniang.com/diary.html	2019-08-01
7058	Petting Canelle at La Réole	https://royniang.com/diary.html	2019-08-01
7969	Update	https://wiki.xxiivv.com/site/bifurcan.html	2014-06-18
149	Rules for Hanafuda game "Koi-Koi"	http://milofultz.com/2020/11/01/koi-koi-rules	2020-11-01
7020	Drafted m, n, t; some fixes	https://royniang.com/practice.html	2020-10-01
7021	Drafted l, a, d and b	https://royniang.com/practice.html	2020-10-01
8122	District 9 Costume II	https://wiki.xxiivv.com/site/personal.html	2010-02-28
8129	Dilesion	https://wiki.xxiivv.com/site/hypervoid.html	2010-07-29
8123	District 9 Costume I	https://wiki.xxiivv.com/site/personal.html	2010-02-28
7022	First glyphs	https://royniang.com/practice.html	2020-10-01
8156	Kabukicho	https://wiki.xxiivv.com/site/personal.html	2010-02-28
7741	Tooling	https://wiki.xxiivv.com/site/left.html	2017-08-07
8046	Kinetik Festival, Montreal	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	2012-03-23
8100	Country Side	https://wiki.xxiivv.com/site/czech.html	2011-02-28
8103	Classic	https://wiki.xxiivv.com/site/czech.html	2011-02-28
8155	Void Garden	https://wiki.xxiivv.com/site/tokyo.html	2010-02-24
7995	And so began testing	https://wiki.xxiivv.com/site/oquonie.html	2014-02-03
7836	03	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
7887	Pattern I	https://wiki.xxiivv.com/site/ar_moire.html	2015-05-06
7051	iPad sunshade	https://royniang.com/street.html	2019-10-03
7052	Kid and grandpa on a scooter	https://royniang.com/street.html	2019-10-03
7769	Pampel?	https://wiki.xxiivv.com/site/marquesas.html	2017-03-02
7770	Nuku-Hiva	https://wiki.xxiivv.com/site/marquesas.html	2017-03-02
8075	Yletaodeta Mini	https://wiki.xxiivv.com/site/typography.html	2009-07-13
7744	Limu Pools	https://wiki.xxiivv.com/site/niue.html	2017-07-28
7939	01	https://wiki.xxiivv.com/site/modernista.html	2014-10-07
16417	The work of the listener	https://chad.is/the-work-of-the-listener/	2020-06-06
7495	Moogle Spheroid	https://wiki.xxiivv.com/site/moogle.html	2020-07-28
7994	Goodies	https://wiki.xxiivv.com/site/oquonie.html	2014-02-03
7733	At sea, near The Marquesas	https://wiki.xxiivv.com/site/the_sublime.html	2017-03-26
7581	Minami Ise beach 2	https://wiki.xxiivv.com/site/skate.html	2019-05-27
7594	Getting back into it	https://wiki.xxiivv.com/site/skate.html	2019-05-27
7811	Workstation Aboard Pino	https://wiki.xxiivv.com/site/pino.html	2016-02-27
7828	From Inside	https://wiki.xxiivv.com/site/pino.html	2016-02-27
8120	Vambits, DIY	https://wiki.xxiivv.com/site/vambits.html	2010-03-11
7600	Yajnev	https://wiki.xxiivv.com/site/azolla.html	2019-05-14
8121	Vambits, Gen Hallowe	https://wiki.xxiivv.com/site/vambits.html	2010-03-11
7549	Refineries	https://wiki.xxiivv.com/site/duomo.html	2017-12-23
7696	Beach In Rarotonga	https://wiki.xxiivv.com/site/black.html	2015-04-24
7790	The V Berth	https://wiki.xxiivv.com/site/black.html	2015-04-24
7630	Terraforming done right	https://wiki.xxiivv.com/site/ogasawara.html	2019-01-24
8092	Jerome	https://wiki.xxiivv.com/site/personal.html	2010-02-28
7901	Mobile Prototype	https://wiki.xxiivv.com/site/donsol.html	2015-03-05
7514	Neauismetica Stack I	https://wiki.xxiivv.com/site/hypertalk.html	2020-03-31
7608	Shannon Entropy	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
8115	Tools to creative	https://wiki.xxiivv.com/site/artwork.html	2007-11-23
8021	Devlog 24	https://wiki.xxiivv.com/site/hiversaires.html	2013-02-11
7991	Live at DNA Lougne	https://wiki.xxiivv.com/site/known_magye.html	2014-03-16
7745	Descent Way	https://wiki.xxiivv.com/site/niue.html	2017-07-28
7746	Niue Coastline	https://wiki.xxiivv.com/site/niue.html	2017-07-28
7747	Sail to Alofi, Niue	https://wiki.xxiivv.com/site/niue.html	2017-07-28
7798	Off The Coast Of Mexico	https://wiki.xxiivv.com/site/black.html	2015-04-24
7902	Nebraska	https://wiki.xxiivv.com/site/america.html	2008-06-26
8194	New York	https://wiki.xxiivv.com/site/america.html	2008-06-26
8196	Travel to New York	https://wiki.xxiivv.com/site/america.html	2008-06-26
7903	Desert	https://wiki.xxiivv.com/site/america.html	2008-06-26
7512	Neauismetica Stack III	https://wiki.xxiivv.com/site/hypertalk.html	2020-03-31
7513	Neauismetica Stack II	https://wiki.xxiivv.com/site/hypertalk.html	2020-03-31
7583	Up that hill	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7584	Shore Ghostly	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7585	Coastal Ghostly	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7586	Gokasho	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7572	After the Rain	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7609	Our Neighbor	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7515	Donsol Famicom Release	https://wiki.xxiivv.com/site/donsol_famicom.html	2020-03-12
7610	Shima Yacht Arbor	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7611	Sail to Minamiise, Japan	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7588	In a ghost town near you	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7686	A new sail for Pino	https://wiki.xxiivv.com/site/pino.html	2016-02-27
7830	Slice	https://wiki.xxiivv.com/site/pino.html	2016-02-27
7759	Repairing the main sail	https://wiki.xxiivv.com/site/pino.html	2016-02-27
7774	Becalmed	https://wiki.xxiivv.com/site/pino.html	2016-02-27
7519	In Minamiise	https://wiki.xxiivv.com/site/pino.html	2016-02-27
7517	Acorn BBC Micro Logo on Famicom	https://wiki.xxiivv.com/site/programming.html	2020-03-16
7518	Famicom AV to C1084 Monitor	https://wiki.xxiivv.com/site/donsol_famicom.html	2020-03-12
7507	Nozoe at 5am	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
7593	Tennis Court Skate Park	https://wiki.xxiivv.com/site/minamiise.html	2019-04-14
8056	Noise Complex, Paris	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	2012-03-23
7972	Strange Diplomacy	https://wiki.xxiivv.com/site/ledoliel.html	2014-05-31
7619	Moored downtown Shizuoka	https://wiki.xxiivv.com/site/shizuoka.html	2019-03-07
8027	Devlog 9	https://wiki.xxiivv.com/site/hiversaires.html	2013-02-11
8028	Devlog 8	https://wiki.xxiivv.com/site/hiversaires.html	2013-02-11
7854	Suddenly, Half-Life	https://wiki.xxiivv.com/site/austria.html	2015-08-30
7715	Wandering in the North Island	https://wiki.xxiivv.com/site/film.html	2016-08-10
7716	Guerilla Gardening	https://wiki.xxiivv.com/site/film.html	2016-08-10
7805	Old Camera Gear	https://wiki.xxiivv.com/site/film.html	2016-08-10
8012	The Säldota	https://wiki.xxiivv.com/site/lietal.html	2007-03-20
8157	Rekka in Osaka	https://wiki.xxiivv.com/site/rekka.html	2006-07-07
8142	Leaving	https://wiki.xxiivv.com/site/rekka.html	2006-07-07
7732	Rekka In The Dinghy	https://wiki.xxiivv.com/site/black.html	2015-04-24
8035	Blip Festival, Tokyo	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	2012-10-20
8032	Tokyo Infrared II	https://wiki.xxiivv.com/site/infrared.html	2012-08-07
7654	Sail to Majuro, Marshall Islands	https://wiki.xxiivv.com/site/marshall_islands.html	2018-10-20
7941	IIII	https://wiki.xxiivv.com/site/brane.html	2014-09-18
7702	Hiding from the rain	https://wiki.xxiivv.com/site/film.html	2016-08-10
7785	San Francisco Street	https://wiki.xxiivv.com/site/film.html	2016-08-10
7786	San Francisco Stairs	https://wiki.xxiivv.com/site/film.html	2016-08-10
7788	The Helm	https://wiki.xxiivv.com/site/film.html	2016-08-10
7806	Meeting With Alaska Friends	https://wiki.xxiivv.com/site/film.html	2016-08-10
8152	Lea	https://wiki.xxiivv.com/site/tokyo.html	2010-02-24
7932	Benignytic	https://wiki.xxiivv.com/site/beauty.html	2014-10-22
8178	Valentinel Hopes	https://wiki.xxiivv.com/site/valentinel_hopes.html	2009-11-03
7979	Dusk	https://wiki.xxiivv.com/site/purgateus.html	2014-05-16
7799	My Father At The Helm	https://wiki.xxiivv.com/site/film.html	2016-08-10
7802	Early Sailing Days	https://wiki.xxiivv.com/site/film.html	2016-08-10
8010	Mt. Fuji Summit	https://wiki.xxiivv.com/site/fuji.html	2013-07-12
8011	Dusk	https://wiki.xxiivv.com/site/fuji.html	2013-07-12
3	Oddments II	https://bismuth.garden/2020/09/oddments-2	2020-09-20
9	Un article sur les monades en 2018	https://xvw.github.io/longs/introduction_aux_monades.html	2018-08-22
5381	W13 :: Bulking	https://now.lectronice.com/then/2021-03w13/	2021-03-28
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 24739, true);


--
-- PostgreSQL database dump complete
--

