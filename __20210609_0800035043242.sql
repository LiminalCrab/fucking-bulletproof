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
1566	https://wiki.xxiivv.com/site/beauty.html	Nevocytic	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1067	https://natehn.com/connect/	Connect	'\\n     \\n\\n\\nOpen Invitation\\nCold email me! I’d love to hear what you have to say. Here are some 	https://natehn.com	https://natehn.com/images/favicon.ico	2021-01-10
1068	https://natehn.com/posts/music-studio-nov-2020/	Music Studio (Nov. 2020)	'My music studio (i.e., a little corner of our little office) is ever-changing. Instruments and gea	https://natehn.com	https://natehn.com/images/favicon.ico	2020-11-14
1071	https://natehn.com/feed/	Feed	'RSS\\nThe quickest way to get an update when I post new writings is to follow the RSS feed.1\\nI rec	https://natehn.com	https://natehn.com/images/favicon.ico	2020-10-09
150	https://szymonkaliski.com/writing/2017-05-31-exploring-reasonml/	Exploring ReasonML	'ReasonML is new syntax and toolchain for working with Ocaml, supported by Facebook.\\nIt promises t	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-05-31
151	https://szymonkaliski.com/writing/2017-04-30-time-tracking/	Timav	'Timav ("chronology" in Volapük) is a tool for analysing time tracking data collected in Google Cal	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-04-30
1072	https://natehn.com/posts/land-acknowledgment/	Land Acknowledgment	'The Land\\nOne of the things I have been thinking about over the last few years is the politics of 	https://natehn.com	https://natehn.com/images/favicon.ico	2020-09-22
1073	https://natehn.com/posts/this-website/	This Website, and How To Build Your Own	'Origins\\nThis website is just a bunch of little files living on a tiny computer that sits on my li	https://natehn.com	https://natehn.com/images/favicon.ico	2020-09-01
725	https://royniang.com/communities.html	Joined Merveilles	"\\n\\nCommunities — Portals to knowledge\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-09-25
729	https://royniang.com/diary.html	Petting Canelle at La Réole	"\\n\\nThe Diary — Personal memories\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
154	https://szymonkaliski.com/projects/parametrium/	No title	'Parametrium  Parametrium is a parameter space explorer for P5.js sketches. It allows users to inte	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-03-31
155	https://szymonkaliski.com/writing/2017-02-28-building-wallgen/	Building Wallgen	'Wallgen is an evolutionary wallpaper generator using genetic algorithm to create never ending list	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-02-28
707	https://royniang.com/diary.html	End of the lockdown	"\\n\\nThe Diary — Personal memories\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
709	https://royniang.com/diary.html	Annoying Alto during lockdown	"\\n\\nThe Diary — Personal memories\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
1355	https://wiki.xxiivv.com/site/left.html	Original Writing Layout	"\\n\\nLeft is a text editor.left\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
32	https://aless.co/2020/	2020	'2020 was a year of three weddings (including my own, to  Carla  - congrats Dana & Jon and Lauren &	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2020-12-11
33	https://aless.co/typed-web-workers/	Typed Web Workers	"This post is about something that's ultimately pretty simple but still took a bit of fiddling for 	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2020-04-30
1351	https://wiki.xxiivv.com/site/new_zealand.html	Arrived in New Zealand	"\\n\\nThat time we lived in New Zealand.new zealand\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-29
1398	https://wiki.xxiivv.com/site/marquesas.html	Heavy Rain	"\\n\\nTravel pictures from our crossing of the South Pacific Ocean, from Mexico to the Marquesas.mar	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1627	https://wiki.xxiivv.com/site/oquonie.html	And so began testing	"\\n\\nOquonie is a textless isometric puzzle game.oquonie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1481	https://wiki.xxiivv.com/site/verreciel.html	Prototype	"\\n\\nVerreciel is a space exploration game.verreciel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-27
1724	https://wiki.xxiivv.com/site/personal.html	Jerome	"\\n\\nThe Personal album contain various memories.personal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
687	https://royniang.com/miminaga.html	New Qt home	"\\n\\nMiminaga (retired) — The text station\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-10
691	https://royniang.com/practice.html	Drafted m, n, t; some fixes	"\\n\\nPractice — A font naively designed\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
693	https://royniang.com/practice.html	First glyphs	"\\n\\nPractice — A font naively designed\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
695	https://royniang.com/cooking_tools.html	Hario V60	"\\n\\nCooking Tools — Practical tools in a kitchen\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-23
117	https://szymonkaliski.com/newsletter/2021-03-29-q1-2021/	Q1 2021	"Hi everyone! I'm surprised by how much can happen in just three months; below is an update of what	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2021-03-29
118	https://szymonkaliski.com/projects/haze/	No title	'Haze Haze is a four track live granular looper for Norns, optimised for Midi Fighter Twister, but 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2021-02-17
1823	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	Otoroutes Miniatures	"\\n\\nOtoroutes Miniatures was created especially for the first large Toy Company festival.otoroutes	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-06
1217	https://wiki.xxiivv.com/site/minamiise.html	Coastal Ghostly	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
119	https://szymonkaliski.com/newsletter/2020-12-28-end-of-2020/	End of 2020	'Hi everyone! End of 2020 seems as good time as any to refresh this newsletter, and start sharing m	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-12-28
120	https://szymonkaliski.com/projects/fabfungus/	No title	'FabFungus FabFungus is a physical installation inspired by questions of digital life and cellular 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-11-12
156	https://szymonkaliski.com/projects/wallgen/	No title	'Wallgen  Wallgen is an evolutionary wallpaper generator, using genetic algorithm to create never e	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-02-25
318	https://longest.voyage/log/waiting/	Waiting	'Like everyone else, I am just waiting for this literal and metaphorical rainy season to end. No bi	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-07-24
319	https://longest.voyage/log/growth/	Growth	'I have a handful of pictures to share still, but it’s hard to write more blog posts about life abr	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-05-20
1242	https://wiki.xxiivv.com/site/minamiise.html	Shima Yacht Arbor	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1243	https://wiki.xxiivv.com/site/minamiise.html	Sail to Minamiise, Japan	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
762	https://materialfuture.net/posts/blog/2020-11-5-youtube-videos/	My YouTube Channel	'Edits\\nUpdate March 6th - This schedule is no longer the case, the focus currently is to finish th	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-05
763	https://materialfuture.net/posts/games/gameboy-sprite-sheet-assets-itch/	GameBoy Sprite Sheets and Assets	'\\n   \\nIf you\\'ve been following me for a while you probably know that I\\'m a fan of older game sy	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-10-21
764	https://materialfuture.net/posts/blog/2020-10-2-resumes/	Setting Up A Resume With LaTeX	'Intro\\nThis post assumes you either know LaTeX or can watch a video getting you up to speed on LaT	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-10-01
765	https://materialfuture.net/posts/blog/rss/	What IS RSS?	'Intro\\nSo you\\'re probably wondering what RSS is and you\\'ve probably heard about it or perhaps cl	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-09-22
769	https://materialfuture.net/posts/blog/2020-8-18-emacs-irc/	Emacs - IRC and Other Stuff	'Intro\\nFirst off, this post is aimed at people interested in Emacs and people maybe wanting to lea	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-08-18
696	https://royniang.com/watching.html	絞死刑 (大島 渚, 1968)	"\\n\\nUncurated Watching List — Good and bad movies I watched\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-19
724	https://royniang.com/street.html	Bicycle kids	"\\n\\nStreet Photography — Capture the odds\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
680	https://royniang.com/xok9.html	XOK9 Laptop	"\\n\\nXOK9 — A computing phantom\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2021-02-11
159	https://szymonkaliski.com/writing/2017-01-18-kinect-2-osx/	Kinect 2 on macOS with Skeleton Tracking	'This tutorial describes how to get Kinect 2 working on macOS with NiTE skeleton tracking.\\nTested 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-01-18
162	https://szymonkaliski.com/projects/ballantines-heartbeats/	No title	'Heartbeats flow/control created unique hardware and custom software which let Piotr Bejnar play co	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-07-18
163	https://szymonkaliski.com/projects/glsl-auto-ui/	No title	"glsl-auto-ui glsl-auto-ui is an experiment in automatically generating UI components for DAT.GUI u	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-04-20
164	https://szymonkaliski.com/projects/gla-london-2050/	No title	'GLA London 2050  flow/control collaborated with variable studio and Squint Opera to build online i	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-02-01
125	https://szymonkaliski.com/projects/archivist/	No title	'Archivist Archivist is a set of tools for archiving and exploring. I spend a lot of time gathering	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-01-01
133	https://szymonkaliski.com/projects/hiccup-sdf/	No title	"hiccup-sdf  hiccup-sdf is set of open source tools made for creating, displaying and exporting 3d 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-11-25
134	https://szymonkaliski.com/projects/hhtwm/	No title	"HHTWM I've built my own window manager for macOS that gives me layout-based automatic tiling. Not 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-11-03
1244	https://wiki.xxiivv.com/site/pilot.html	Orca x Pilot	"\\n\\nPilot is a mini synthesiser.pilot\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-03
800	https://travisshears.com/blog/slovenia_trip/	slovenia trip	'The new year is almost upon us so I’m wrapping up some unpublished content. We managed to do two m	https://travisshears.com	https://travisshears.com/favicon.ico	2020-12-25
801	https://travisshears.com/snippets/gzip-existing-tar/	gzipping an existing tar	'Part of my work process is taking lots of screenshot, ~5 per day. Then I back them up in AWS S3 Gl	https://travisshears.com	https://travisshears.com/favicon.ico	2020-10-14
771	https://materialfuture.net/posts/blog/2020-07-org-mode/	What Is Org-Mode?	'What Is It?\\nOrg Mode or org-mode is an Emacs mode that allows one to not only write notes but cre	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-07-22
772	https://materialfuture.net/posts/blog/2020-06-tools-workflows/	Tools and Workflows I Use	'Intro\\nIn this blog post I\\'ll be going over some of the tools I use to get things done as well as	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-27
836	https://travisshears.com/tutorials/html-js-vs-code-setup/	HTML + JavaScript VS Code Setup	'My favorite code editor outside vim is vs code. I was pumped when the other teachers and I agreed 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
837	https://travisshears.com/tutorials/pull-request-homework-workflok/	Pull Request Homework Workflow	'Full version control pull request homework work flow, what could go wrong? I made this video to sh	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
774	https://materialfuture.net/posts/blog/2020-06-ipfs/	IPFS For An Easy P2P Network	'Intro\\nRecently I\\'ve been working on some software for myself that I\\'ve just got around to relea	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-16
775	https://materialfuture.net/posts/books/practical-c-programming/	Practical C Programming - Retrospective	'Intro/Preface\\nI\\'d like to start this off by saying this is not a review of this book but rather 	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-04
776	https://materialfuture.net/posts/blog/2020-05-git-revamp/	Self-Hosting Git Client for a Decentralized Future	'Intro\\nRecently there has been a exodus of sorts from the platform in regards to GitHub and what M	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-05-25
777	https://materialfuture.net/posts/blog/2020-04-email-server/	Creating A Personal Email Server With Postfix + Dovecot	'Intro\\nA problem I\\'ve faced lately was finding proper documentation for setting up a simple one d	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-04-17
778	https://materialfuture.net/posts/blog/2020-03-emacs/	Why I Use Emacs, And Why It Matters	'As of the new year I\\'ve made a concious effort to work out all the proprietary\\nsoftware form my 	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-03-28
1742	https://wiki.xxiivv.com/site/artwork.html	Yajnev	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
160	https://szymonkaliski.com/writing/2016-12-29-ofcourse-io/	Teaching Creative Coding in Shanghai	"I've spent last two months of 2016 teaching intensive eight week creative coding course at OFCours	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-12-29
161	https://szymonkaliski.com/projects/bareconductive-picap/	No title	'Pi Cap  flow/control collaborated with Bare Conductive in building software for Pi Cap which bring	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2016-09-09
176	https://szymonkaliski.com/projects/hello-poznan/	No title	"Hello Poznań  Hello Poznań! is an inteactive map showing events happening in Poznań. It's a living	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2013-04-19
177	https://szymonkaliski.com/projects/sensorium-book-covers/	No title	'Sensorium  "Sensorium" is a collection of essays by Agnieszka Jelewska, studying relations between	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2012-05-18
17	https://notes.neeasade.net/systemd-user-services.html	systemd user services	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2021-01-02
770	https://materialfuture.net/posts/blog/time-to-step-back/	Time to Step Back and Reflect	'Intro\\nIn this post I want to cover a bit of what I\\'ve been working on and share my thoughts on w	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-08-16
749	https://materialfuture.net/posts/servers/centos-rehl-talk/	CentOS - RHEL Talk	'Intro\\nI\\'ve recently been keeping up with the news regarding CentOS and CentOS Stream and while b	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-02-04
750	https://materialfuture.net/posts/blog/music-update/	Update: Music 2021	'Intro\\nI haven\\'t announced anywhere yet so I figured I\\'d write a quick post regarding the subjec	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-01-26
1651	https://wiki.xxiivv.com/site/artwork.html	Space Marine Colour	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1671	https://wiki.xxiivv.com/site/artwork.html	Neoneve Afloat Revis	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1747	https://wiki.xxiivv.com/site/artwork.html	Tools to creative	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1834	https://wiki.xxiivv.com/site/artwork.html	Neoneve Afloat	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
849	https://travisshears.com/blog/rofanspitze-ski-tour/	rofanspitze ski tour	'Get out of the car, take the skis off the roof, beacon partner check, and head up the gondola. A d	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-19
873	https://travisshears.com/snippets/git-revert-branch/	Revert an entire feature branch	'$ git revert -m 1 59e36575c691a05d33d34f403f5a831891df61b2 Yeah that whole feature was just a bad 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
874	https://travisshears.com/snippets/scp/	I need a file off my server but I don't want to set up FTP	'$ scp -i ~/.ssh/privkey travis@199.199.19.199:/home/travis/example.txt ./ Yeah sometimes you just 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
18	https://notes.neeasade.net/search-term-playlists.html	search term playlists	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-12-13
19	https://notes.neeasade.net/color-spaces.html	reasoning about colors	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-11-24
1831	https://wiki.xxiivv.com/site/artwork.html	When	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1803	https://wiki.xxiivv.com/site/artwork.html	Neoneve at the docks	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1437	https://wiki.xxiivv.com/site/film.html	Old Camera Gear	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1074	https://natehn.com/about/	About	'Hello!\\nI am an ambient/improvising musician, erstwhile radio deejay, nonprofit worker, occasional	https://natehn.com	https://natehn.com/images/favicon.ico	2020-08-14
904	https://travisshears.com/blog/reviving-dotfiles/	reviving dotfiles	'Dotfiles, sharing your Unix environment preferences since the dawn of personal computing. This wee	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-29
905	https://travisshears.com/blog/gitlab-npm-package-setup/	git hosted npm packages	'How to install npm packages directly from a gitlab, (or any other git host) The problem With so ma	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-17
906	https://travisshears.com/blog/corsica-2019/	corsica	'With winter thawing, vacation days soon expiring, and few months of no travel I threw together a p	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-10
754	https://materialfuture.net/posts/games/games-completed-retrospective/	2020 - Games Completed + Retrospective	'Intro\\nSince 2017 I\\'ve kept comprehensive lists of "things" I\\'ve completed, one of those list be	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-29
760	https://materialfuture.net/posts/music/space-album-video/	Space Album Video - Video Schedules	'Today is the start of the weekly schedule of videos regarding my music the first of which being my	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-07
761	https://materialfuture.net/posts/servers/2020-11-6-learn-netdata/	Network Monitoring Via NetData	'Intro\\nSo as of late I\\'ve been looking into ways to update my knowledge on general networking, co	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-06
751	https://materialfuture.net/posts/blog/activitypub-migration/	Online Purge - Meaningful Interaction	'Intro\\nI\\'m moving away from all things social media, this means Mastodon as well. While I haven\\'	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-01-12
752	https://materialfuture.net/posts/blog/2020-year-end-retrospective/	2020 Year-End Retrospective	'Intro\\nThis past year has been a wild one to say the least but I can say that this was a definitel	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-01-07
783	https://materialfuture.net/posts/links/2020-01-links/	Links for January 2020	'This past month has had it\\'s ups and downs, but I think in the next couple weeks things in my lif	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-01-15
1271	https://wiki.xxiivv.com/site/ogasawara.html	Sail to Chichijima, Japan	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1266	https://wiki.xxiivv.com/site/ogasawara.html	Epave	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1495	https://wiki.xxiivv.com/site/beauty.html	Mytresial	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
753	https://materialfuture.net/posts/books/books-completed-2020/	2020 - Books Read + Retrospective	'Intro\\nSince 2017 I\\'ve kept comprehensive lists of "things" I\\'ve completed, one of those list be	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-29
785	https://materialfuture.net/posts/links/2019-11-links/	Links for November 2019	'These are links that I\\'ve found while working and doing research throughout the month. Youtube Li	https://materialfuture.net	https://materialfuture.net/favicon.ico	2019-11-15
1832	https://wiki.xxiivv.com/site/artwork.html	Time Stands Still	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1139	https://wiki.xxiivv.com/site/minamiise.html	Nozoe at 5am	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1143	https://wiki.xxiivv.com/site/minamiise.html	The Gokashou Coast	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1204	https://wiki.xxiivv.com/site/minamiise.html	After the Rain	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1240	https://wiki.xxiivv.com/site/minamiise.html	Shannon Entropy	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1225	https://wiki.xxiivv.com/site/minamiise.html	Tennis Court Skate Park	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1241	https://wiki.xxiivv.com/site/minamiise.html	Our Neighbor	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
879	https://travisshears.com/snippets/tmux-new/	Mutliplex all the shells	'$ tmux new -s 'example_session_name' Creates a new tmux session with the name ‘example_session_nam	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
790	https://travisshears.com/blog/reef-plan-and-first-day/	getting started with reefing	'One day last year I discovered my partner and I share an interest in aquariums. 👌🐠. Ever since the	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-30
931	https://ix5.org/thoughts/2014/easy-going-on-little-liuciu-island/	Easy going on Little Liuciu Island		https://ix5.org	https://ix5.org/favicon.png	2017-02-24
917	https://ix5.org/thoughts/2017/grundgesetz-article-6/	Article 6: Marriage, Family and Children		https://ix5.org	https://ix5.org/favicon.png	2017-04-03
918	https://ix5.org/thoughts/2017/grundgesetz-article-5/	Article 5: Freedom of expression		https://ix5.org	https://ix5.org/favicon.png	2017-07-20
919	https://ix5.org/thoughts/2017/grundgesetz-article-4/	Article 4: Freedom of Belief		https://ix5.org	https://ix5.org/favicon.png	2017-07-20
920	https://ix5.org/thoughts/2017/grundgesetz-article-3/	Article 3: Equality		https://ix5.org	https://ix5.org/favicon.png	2017-04-03
1263	https://wiki.xxiivv.com/site/lietal.html	Alrök Fur Säldota	"\\n\\nLietal is an experimental synthetic language.lietal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1463	https://wiki.xxiivv.com/site/lietal.html	The Lietal Flag	"\\n\\nLietal is an experimental synthetic language.lietal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1631	https://wiki.xxiivv.com/site/lietal.html	iOS7 Patch	"\\n\\nLietal is an experimental synthetic language.lietal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1644	https://wiki.xxiivv.com/site/lietal.html	The Säldota	"\\n\\nLietal is an experimental synthetic language.lietal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1218	https://wiki.xxiivv.com/site/minamiise.html	Gokasho	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1148	https://wiki.xxiivv.com/site/minamiise.html	Nakatsuhamaura	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1215	https://wiki.xxiivv.com/site/minamiise.html	Up that hill	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1216	https://wiki.xxiivv.com/site/minamiise.html	Shore Ghostly	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1219	https://wiki.xxiivv.com/site/minamiise.html	Kirihara	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
1220	https://wiki.xxiivv.com/site/minamiise.html	In a ghost town near you	"\\n\\nWe sailed to Minamiise in the spring of 2019, from Shizuoka.minamiise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-14
921	https://ix5.org/thoughts/2017/grundgesetz-article-2/	Article 2: Personal Freedoms		https://ix5.org	https://ix5.org/favicon.png	2017-04-03
940	https://nor.the-rn.info/2020/09/15/towards-the-polymyth/	Towards the Polymyth		https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-09-15
875	https://travisshears.com/snippets/find-folder/	Find that lost folder	'$ find . -name php-e\\\\* Where the hell did that /php-extras folder go that I donloaded for my emac	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
876	https://travisshears.com/snippets/git-better-git-add/	Better Git Add	'$ git add -p I tend to use magit in emacs to stange and unstage files/hunks but in a pinch -p or g	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
877	https://travisshears.com/snippets/git-move-branch/	Move Branch	'$ git rebase source-commit --onto target-branch Sometimes you need to start a new feature branch b	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
878	https://travisshears.com/snippets/git-nocommit-merge/	Soft merge	'$ git merge feature/tickets/NUTS-1231 --no-commit --no-ff Sometimes you need to merge but only par	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
1662	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Lost Osaka Tempers	"\\n\\nDevine Lu Linvega is a generalist.devine lu linvega\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-01
1670	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Tokyo Tempers	"\\n\\nDevine Lu Linvega is a generalist.devine lu linvega\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-01
328	https://longest.voyage/log/countdown/	Countdown	'So, I submitted my notice this week.\\n\\n\\n\\nYamadera\\n\\n\\nI stood up. Attempting to read the room.	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2018-09-25
1824	https://wiki.xxiivv.com/site/devine_lu_linvega.html	Nakano Tempers	"\\n\\nDevine Lu Linvega is a generalist.devine lu linvega\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-01
1841	https://wiki.xxiivv.com/site/rekka.html	New Challenger	"\\n\\nRekka Bellum, is an illustrator and writer.rekka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
351	https://phse.net/utility-classes-i-have-known-and-loved/	Utility Classes I Have Known and Loved	'I have yet to jump head-long into the hypetrain of utility-first CSS frameworks, but I’ve been enj	https://phse.net	https://phse.net/favicon-32.png	2021-01-16
352	https://phse.net/2020/	Yearly Review 2020	'I just finished installing two new light fixtures. This is an appropriate home improvement task to	https://phse.net	https://phse.net/favicon-32.png	2021-01-03
353	https://phse.net/respecting-motion-preferences/	Respecting Motion Preferences	'Animations and transitions can bring richness to web experiences. They can provide continuity and 	https://phse.net	https://phse.net/favicon-32.png	2020-08-15
1191	https://wiki.xxiivv.com/site/duomo.html	Septechoes	"\\n\\nDuomo covers most of the northern hemisphere of Dinaisth.duomo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
890	https://travisshears.com/snippets/who-is-using-that-port/	Who Is Using that damn port? (Mac)	'$ sudo lsof -i:3000 Launching a process and it’s complaining about port being in use? With 100 she	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
891	https://travisshears.com/blog/climbing-grade-converter-tool/	climbing grade converter tool	'Project: Climbing Grade Conversion Tool\\nSite: climbinggrades.xyz\\nRepo: github\\nPics:\\ndesktop sc	https://travisshears.com	https://travisshears.com/favicon.ico	2019-10-19
893	https://travisshears.com/blog/lofoten/	lofoten	'The Lofoten archipelago, a Norwegian chain of islands in the arctic circle and the destination of 	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-29
158	https://szymonkaliski.com/projects/sdf-ui/	No title	'SDF-UI  SDF-UI is a node-based DSL for generating complex shapes using SDF, GLSL and WebGL. SDF st	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-01-29
171	https://szymonkaliski.com/projects/sonic-explorer/	No title	'Sonic Explorer Szymon Kaliski (from flow/control) collaborated with talented Marek Straszak on int	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-08
174	https://szymonkaliski.com/projects/zamek-interactive-movie/	No title	"Zamek flow/control collaborated with Movlab studio to create the first Polish interactive movie. I	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2013-12-20
46	https://writing.natwelch.com/post/703	Nat Welch Manifesto	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-12-01
88	https://resevoir.net//mediums	https://resevoir.net//mediums	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
70	https://resevoir.net//community-network-project	https://resevoir.net//community-network-project	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-07-23
71	https://resevoir.net//craft	https://resevoir.net//craft	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
67	https://resevoir.net//bricolage	https://resevoir.net//bricolage	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-26
68	https://resevoir.net//chasmic	https://resevoir.net//chasmic	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-22
216	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 03/04  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
7	http://nonmateria.com/posts/2020_07_12__infected_clock.html	infected clock	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tinfected clock I \\n\\t\\t\\t \\n\\t\\t\\t( code ) \\	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-12
207	http://nonmateria.com/posts/2020_07_12__infected_clock.html	infected clock	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tinfected clock I \\n\\t\\t\\t \\n\\t\\t\\t( code ) \\	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-12
1783	https://wiki.xxiivv.com/site/tokyo.html	Blaze Blue	"\\n\\nUnforgettable time riding our bikes in Tokyo.tokyo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1787	https://wiki.xxiivv.com/site/tokyo.html	Void Garden	"\\n\\nUnforgettable time riding our bikes in Tokyo.tokyo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1792	https://wiki.xxiivv.com/site/tokyo.html	Kabukicho	"\\n\\nUnforgettable time riding our bikes in Tokyo.tokyo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1183	https://wiki.xxiivv.com/site/dilitriel.html	Flighter Transit	"\\n\\nDilitriel is the central region of Dinaisth.dilitriel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1185	https://wiki.xxiivv.com/site/dilitriel.html	Hanging Road	"\\n\\nDilitriel is the central region of Dinaisth.dilitriel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1186	https://wiki.xxiivv.com/site/dilitriel.html	Support Conduits	"\\n\\nDilitriel is the central region of Dinaisth.dilitriel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
857	https://travisshears.com/snippets/move-file-range/	Move File Range	'Recently had to move a range of files and some zsh expansions came in handy.\\n$ for x in {1..6}; d	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-27
858	https://travisshears.com/snippets/git-zsh-plugin/	ZSH git plugin	'I use git exclusive from the command line and while it’s interface is very clear since I spend so 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-27
210	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 15/16  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
212	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 11/12  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
13	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 09/10  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
213	http://nonmateria.com/posts/2020_07_09d_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 09/10  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
14	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 07/08  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
214	http://nonmateria.com/posts/2020_07_09c_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 07/08  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
15	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 05/06  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
215	http://nonmateria.com/posts/2020_07_09b_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 05/06  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
16	http://nonmateria.com/posts/2020_07_09a_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 03/04  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
1076	https://www.gr0k.net/blog/more-zynthian-workflow-updates.html	More Zynthian Workflow Updates	'\\n                More Zynthian Workflow Updates\\nComing from and MPC background means that I\\'m u	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-21
1077	https://www.gr0k.net/blog/zynthian-workflow.html	Zynthian Workflow	"\\n                Zynthian Workflow\\nIt's been a productive couple of weeks getting to know the Zy	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-17
1078	https://www.gr0k.net/blog/the-monocled-frown.html	The Monocled Frown	'\\n                The Monocled Frown\\nIf you\\'ve spent any time on the Zynthian forum, you will ha	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-05
27	https://notes.neeasade.net/blog-meta.html	May Days	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-02
773	https://materialfuture.net/posts/blog/2020-06-current/	Current Projects And Current Roadmap	'Intro\\nThis post is more of a means to share what I\\'ve been working on, what I plan to work on, a	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-06-16
1152	https://wiki.xxiivv.com/site/nasu.html	Nasu Web Release	"\\n\\nNasu is a spritesheet editor.nasu\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-02-02
1156	https://wiki.xxiivv.com/site/technology.html	Paper Computer	"\\n\\nIn which forests are turned into paper to make newspapers that call for the forests to be save	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-12-03
1175	https://wiki.xxiivv.com/site/risan_aldeth.html	Compression Tunnels	"\\n\\nRisan Aldeth is the coastal region around Yajnev.risan aldeth\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-07
1069	https://natehn.com/posts/leaving-facebook/	Leaving Facebook	'\\n     \\n            A photo of me at a bowling alley.\\n        \\n\\n\\nWhy\\nAlthough there have bee	https://natehn.com	https://natehn.com/images/favicon.ico	2020-11-09
1070	https://natehn.com/posts/on-memes/	On Memes	'This meme repository is presented by…\\n\\n\\n  \\n\\n\\nA meme is an idea. A trend. A “unit of cultural	https://natehn.com	https://natehn.com/images/favicon.ico	2020-10-30
8	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 19/20  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
208	http://nonmateria.com/posts/2020_07_09i_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 19/20  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
9	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 17/18  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
1442	https://wiki.xxiivv.com/site/camera.html	Learn Film Photo	"\\n\\nThe Camera specs.camera\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-14
1083	https://tendigits.space/projects/orca-box/	Orca Box	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-31
1084	https://tendigits.space/projects/birdhouse-cam/	Birdhouse Webcam	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-24
1085	https://tendigits.space/projects/bird-posters/	Bird Posters	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-24
1086	https://tendigits.space/notes/new-projects/	New Projects	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-03-17
1087	https://tendigits.space/notes/house/	House Maintenance	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2021-01-06
1088	https://tendigits.space/notes/inktober/	Inktober	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-10-01
1164	https://wiki.xxiivv.com/site/duomo.html	Slip Gate	"\\n\\nDuomo covers most of the northern hemisphere of Dinaisth.duomo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1505	https://wiki.xxiivv.com/site/infrared.html	Rekka and Sunglasses	"\\n\\nThe Infrared photographs were taken with a modified Nikon camera.infrared\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
258	https://chad.is/zero-to-one/	Going from Zero to One	'Zero to one is the process of creating new things while 1 to n is ‘copying things that work.’'	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-11-01
240	https://chad.is/self-as-process/	Self as Process	'Evan Thompson’s response to “neuro-nihilism”.'	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-11-06
241	https://chad.is/getting-started-complexity-science/	Getting started with complexity science	'A handful of online courses, books and other resources to start learning about the field of comple	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-11-02
250	https://chad.is/wabi-sabi/	Nothing lasts, nothing is finished, and nothing is perfect	'A meditation on the concept of wabi-sabi and it’s connection to questions of mortality and meaning	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-11-03
209	http://nonmateria.com/posts/2020_07_09h_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 17/18  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
10	http://nonmateria.com/posts/2020_07_09g_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 15/16  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
1701	https://wiki.xxiivv.com/site/volkenessen.html	Volkenessen Release	"\\n\\nVolkenessen is a multiplayer physics-based fighting game.volkenessen\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-29
784	https://materialfuture.net/posts/links/2019-12-links/	Links for December 2019	'I haven\\'t had too much time to compile as many links, I\\'ve been working on some crystal project 	https://materialfuture.net	https://materialfuture.net/favicon.ico	2019-12-18
303	https://now.lectronice.com/then/2020-09w38/	2020W38 :: Toki Pona and slow burn out		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-13
304	https://now.lectronice.com/then/2020-09w37/	2020W37 :: toki pona li pona		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-06
305	https://now.lectronice.com/then/2020-08w36/	2020W36 :: Keyboards and lack of sleep		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-30
334	https://kokorobot.ca/site/2020dec31.html	2020 yearend review	"\\n    Rekka awakens, having forgotten to write a year-end review for the past 6 years. They feel g	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-01-11
336	https://kokorobot.ca/site/conversion.html	Conversion charts	"\\nMetrication in Canada began in 1970, but today, there is still use of non-metric units in everyd	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2020-12-14
335	https://kokorobot.ca/site/rug.html	Rope mats	'\\n One of the best ways to make use of old rope is to work up a set of rope mats. I made this mat 	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2020-12-07
25	https://notes.neeasade.net/Automata-tiling-backgrounds.html	Automata tiling backgrounds	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-08
337	https://kokorobot.ca/site/rug.html	Ocean plait mat tutorial	'\\n One of the best ways to make use of old rope is to work up a set of rope mats. I made this mat 	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2020-12-07
1816	https://wiki.xxiivv.com/site/neauismetica.html	Our forgotten Alphabet	"\\n\\nThe Neauismetica is a series of notes on the fiction of Dinaisth.neauismetica\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-08-28
1802	https://wiki.xxiivv.com/site/neauismetica.html	The Library Of Sand	"\\n\\nThe Neauismetica is a series of notes on the fiction of Dinaisth.neauismetica\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-08-28
344	https://ameyama.com/blog/grief	(雨山) Grief	"Addie\\nA while back, we adopted a sweet dog named Addie. She was the goodest girl.\\nBut due to a s	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-28
345	https://ameyama.com/blog/passgen	(雨山) Passgen	'Intro\\nHey! I noticed today as I was updating my projects page that I hadn\\'t written about Passge	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-27
346	https://ameyama.com/blog/bookshelf	(雨山) Bookshelf	'Hey! I made a bookshelf to record the books I\\'ve been reading lately! Enjoy!\\n'	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-16
1729	https://wiki.xxiivv.com/site/czech.html	Artifical Mountain Top 2	"\\n\\nTrip to Czech Republic in 2011.czech\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1731	https://wiki.xxiivv.com/site/czech.html	Nearby Liberec	"\\n\\nTrip to Czech Republic in 2011.czech\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1343	https://wiki.xxiivv.com/site/duomo.html	The Districts	"\\n\\nDuomo covers most of the northern hemisphere of Dinaisth.duomo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1350	https://wiki.xxiivv.com/site/rotonde.html	The Webring Logo	"\\n\\nRotonde was a decentralized social network.rotonde\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-12
1779	https://wiki.xxiivv.com/site/vambits.html	Vambits in Japan	"\\n\\nVambits are small DIY desktoys designed to be laser cut in acrylic.vambits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
347	https://ameyama.com/blog/public-domain-tapes	(雨山) Public Domain Tapes	'I launched a podcast today! (Because, of course, that\\'s what you do when you have too much time o	https://ameyama.com	https://ameyama.com/favicon.ico	2020-04-02
392	https://teknari.com/blogpost/1595684574574/2015+December+Journal+	2015 December Journal 	'\\n\\nPages 2239 - 2361\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n 	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
394	https://teknari.com/blogpost/1595683324704/2015+October+Journal+	2015 October Journal 	'\\n\\nPages 2000 - 2127\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
395	https://teknari.com/blogpost/1595682675547/2015+September+Journal+	2015 September Journal 	'\\n\\nPages 1870 - 1999\\n\\n\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
1337	https://wiki.xxiivv.com/site/vambits.html	From Skógr Studios	"\\n\\nVambits are small DIY desktoys designed to be laser cut in acrylic.vambits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1346	https://wiki.xxiivv.com/site/vambits.html	Vambits on a Camera	"\\n\\nVambits are small DIY desktoys designed to be laser cut in acrylic.vambits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
354	https://phse.net/managing-specificity-with-css-variables/	Managing Specificity with CSS Variables	'Here’s a quick idea for keeping rule specificity low when writing CSS. Let’s say we have a table:\\	https://phse.net	https://phse.net/favicon-32.png	2020-02-29
1344	https://wiki.xxiivv.com/site/vambits.html	Fresh Vambit Cuts	"\\n\\nVambits are small DIY desktoys designed to be laser cut in acrylic.vambits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
396	https://teknari.com/blogpost/1595681107423/2015+August+Journal	2015 August Journal	'\\n\\nPages 1621 - 1740\\n\\n\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
397	https://teknari.com/blogpost/1595548974481/2015+July+Journal	2015 July Journal	'\\n\\nPages 1620 - 1740\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-24
398	https://teknari.com/blogpost/1595537557776/2015+Journal+June	2015 Journal June	'\\n\\nPages 1502 - 1619\\n\\n\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-23
399	https://teknari.com/blogpost/1595536068883/2015+May+Journal	2015 May Journal	'\\n\\nPages 1367 - 1501\\n\\n\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-23
400	https://teknari.com/blogpost/1595502848493/Apple+I	Apple I	'\\n\\nThere is an Apple I currently for sale on Ebay.\\n\\n$1,500,000\\n\\n\\n\\n  \\n'	https://teknari.com	https://teknari.com/favicon.ico	2020-07-23
649	https://icyphox.sh/blog/kiss-zen	The Zen of KISS Linux		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-04-03
650	https://icyphox.sh/blog/mael	Introducing mael		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-03-29
651	https://icyphox.sh/blog/covid19-disinfo	COVID-19 disinformation		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-03-15
652	https://icyphox.sh/blog/nullcon-2020	Nullcon 2020		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-03-09
665	https://icyphox.sh/blog/2019-10-16	Status update		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-16
666	https://icyphox.sh/blog/pycon-wrap-up	PyCon India 2019 wrap-up		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-15
634	https://icyphox.sh/blog/workman	The Workman keyboard layout		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-10-24
635	https://icyphox.sh/blog/r2wars-2020	My submissions for r2wars 2020		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-09-13
636	https://icyphox.sh/blog/mastodon-to-pleroma	Migrating from Mastodon to Pleroma		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-09-04
637	https://icyphox.sh/blog/ducky-one-2	The Ducky One 2 SF		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-08-22
659	https://icyphox.sh/blog/ig-opsec	Instagram OPSEC		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-12-02
660	https://icyphox.sh/blog/save-org	Save .ORG!		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-11-23
661	https://icyphox.sh/blog/2019-11-16	Status update		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-11-16
662	https://icyphox.sh/blog/irc-for-dms	IRC for DMs		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-11-03
663	https://icyphox.sh/blog/intel-conundrum	The intelligence conundrum		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-28
664	https://icyphox.sh/blog/hacky-scripts	Hacky scripts		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-24
799	https://travisshears.com/blog/weibel_kante/	weibel kante	'The Corona Pandemic made climbing hard this season. Without the reps in the gym my partner and I m	https://travisshears.com	https://travisshears.com/favicon.ico	2020-12-25
1415	https://wiki.xxiivv.com/site/directory.html	春野美子「茶の味」	"\\n\\nThe Directory is a curated list of timeless art.directory\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-02
1471	https://wiki.xxiivv.com/site/knowledge.html	Dieter	"\\n\\nA collection of notes on general Knowledge.knowledge\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-12-29
1475	https://wiki.xxiivv.com/site/keyboard_468.html	1.4	"\\n\\nKeyboard 468 was a 18-keys keyboard.keyboard 468\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-27
1479	https://wiki.xxiivv.com/site/dictionarism.html	Diarism	"\\n\\nDictionarism is a simple twitter bot that generates -isms.dictionarism\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-10-31
1494	https://wiki.xxiivv.com/site/looking_glace.html	Looking Glace Release	"\\n\\nLooking Glace is a Beldam Records release, by Reine.looking glace\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-28
1501	https://wiki.xxiivv.com/site/infrared.html	Habitat 67	"\\n\\nThe Infrared photographs were taken with a modified Nikon camera.infrared\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1613	https://wiki.xxiivv.com/site/nereid.html	The Stems	"\\n\\nNereid is a dull grey moon.nereid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1628	https://wiki.xxiivv.com/site/oquonie.html	From Thailand	"\\n\\nOquonie is a textless isometric puzzle game.oquonie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1629	https://wiki.xxiivv.com/site/flactals.html	Qraxia	"\\n\\nFlactals is a series of abstract six-sided flowers drawn using an early version of Ronin.flact	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
1564	https://wiki.xxiivv.com/site/beauty.html	Benignytic	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1565	https://wiki.xxiivv.com/site/beauty.html	Leiomytic	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
684	https://royniang.com/sf_guro.html	Almost done with the lowercase alphabet	"\\n\\nSF Guro — Grotesque\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-31
685	https://royniang.com/gemini.html	Testing microblogging with gemini	"\\n\\nGemini — A modern hypertext protocol\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-28
686	https://royniang.com/type_design.html	The specimen of Akzidenz Grotesque	"\\n\\nType Design — Typography main tool\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-22
679	https://royniang.com/type_design.html	Learning hinting	"\\n\\nType Design — Typography main tool\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-22
26	https://notes.neeasade.net/checking-for-toots.html	checking for toots	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-03
1633	https://wiki.xxiivv.com/site/orca.html	Orca Machine	"\\n\\nOrca is a livecoding playground.orca\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1600	https://wiki.xxiivv.com/site/vocavularist.html	2.0	"\\n\\nVocavularist, is a vocabulary learning tool.vocavularist\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-07
1580	https://wiki.xxiivv.com/site/serventines.html	Milreaf	"\\n\\nServentines is a travel diary from travels across Nereid.serventines\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1581	https://wiki.xxiivv.com/site/serventines.html	Qovledon	"\\n\\nServentines is a travel diary from travels across Nereid.serventines\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1582	https://wiki.xxiivv.com/site/serventines.html	Gaspse	"\\n\\nServentines is a travel diary from travels across Nereid.serventines\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1595	https://wiki.xxiivv.com/site/serventines.html	Mount Duomo	"\\n\\nServentines is a travel diary from travels across Nereid.serventines\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1712	https://wiki.xxiivv.com/site/notebook.html	Swing near Oigura	"\\n\\nFrom the Notebook.notebook\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1781	https://wiki.xxiivv.com/site/tokyo.html	Wishes	"\\n\\nUnforgettable time riding our bikes in Tokyo.tokyo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1194	https://wiki.xxiivv.com/site/hardware.html	Sanwu Audio Player	"\\n\\nA handful of experimental projects on small Hardware.hardware\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-25
1157	https://wiki.xxiivv.com/site/tools.html	Tools Sticker Sheets	"\\n\\nThe tools ecosystem is a series of lightweight software to create audio-visual works.tools\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-23
674	https://icyphox.sh/blog/my-setup	My setup		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-05-13
642	https://icyphox.sh/blog/pi	Migrating to the RPi		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-06-04
1763	https://wiki.xxiivv.com/site/canada.html	Jaques Cartier	"\\n\\nDespite being from there, Canada has become a travel destination to me.canada\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-08
1806	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	"\\n\\nValentinel Hopes is a platformer inspired from parkour and trance music.valentinel hopes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1140	https://wiki.xxiivv.com/site/identity.html	Luna moth in Minamiise	"\\n\\nVarious notes on the visual choices made for the Nataniev projects.identity\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1290	https://wiki.xxiivv.com/site/discourse.html	Maude	"\\n\\nA cheatsheet on Discourse.discourse\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-23
1292	https://wiki.xxiivv.com/site/wisdom.html	Sol Robeson	"\\n\\nA collection of notes on Wisdom.wisdom\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-17
1295	https://wiki.xxiivv.com/site/fiji.html	Cousteau	"\\n\\nWe sailed to Fiji from New Zealand, aboard Pino.fiji\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1769	https://wiki.xxiivv.com/site/visual.html	Nataniev Fork	"\\n\\nThe Visual hosts design and interaction projects.visual\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-19
1182	https://wiki.xxiivv.com/site/risan_aldeth.html	Ehrivevnv Gate	"\\n\\nRisan Aldeth is the coastal region around Yajnev.risan aldeth\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-07
1362	https://wiki.xxiivv.com/site/new_zealand.html	Sail to Whangarei, New Zealand	"\\n\\nThat time we lived in New Zealand.new zealand\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-29
1401	https://wiki.xxiivv.com/site/marquesas.html	Pampel?	"\\n\\nTravel pictures from our crossing of the South Pacific Ocean, from Mexico to the Marquesas.mar	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1594	https://wiki.xxiivv.com/site/kaleidoscope.html	Diagolite I	"\\n\\nThe Kaleidoscope records the intersection of overlapping structures.kaleidoscope\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1770	https://wiki.xxiivv.com/site/zjeveni.html	Zjeveni	"\\n\\nZjeveni is a third person exploration game about climbing to the high points of the structure.	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-17
30	https://notes.neeasade.net/adhoc-executable-patching-on-nix.html	adhoc executable patching on nixos	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-03-14
53	https://writing.natwelch.com/post/701	Japan 2019 Travel Log Day 6, 7 & 8	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-22
69	https://resevoir.net//color-in-film	https://resevoir.net//color-in-film	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-03-16
37	https://aless.co/how-to-build-a-keyboard/	How to Build a Keyboard, Pt.1	'A few years ago, a friend and coworker came in to work one day with a mechanical keyboard under hi	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-05-27
1562	https://wiki.xxiivv.com/site/beauty.html	A voice in the night	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1577	https://wiki.xxiivv.com/site/serventines.html	Untenest	"\\n\\nServentines is a travel diary from travels across Nereid.serventines\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1578	https://wiki.xxiivv.com/site/serventines.html	Qaro	"\\n\\nServentines is a travel diary from travels across Nereid.serventines\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1579	https://wiki.xxiivv.com/site/serventines.html	Anopass	"\\n\\nServentines is a travel diary from travels across Nereid.serventines\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1092	https://tendigits.space/notes/imac-with-linux/	New Linux for an old iMac	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-06-17
1814	https://wiki.xxiivv.com/site/pedestrian_paradise.html	Pedestrian Paradise Reissue	"\\n\\nPedestrian Paradise is an album made from various bits and pieces of unreleased material.pedes	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-07
28	https://notes.neeasade.net/reverse-ssh-tunnels.html	reverse ssh tunnels	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-04-10
29	https://notes.neeasade.net/xeros-irc-ref.html	xero's irc ref	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-04-04
31	https://notes.neeasade.net/On-Emacs.html	On Emacs	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2019-12-06
1201	https://wiki.xxiivv.com/site/tools.html	The Family	"\\n\\nThe tools ecosystem is a series of lightweight software to create audio-visual works.tools\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-23
1368	https://wiki.xxiivv.com/site/left.html	Left Screencapture	"\\n\\nLeft is a text editor.left\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
39	https://aless.co/teach-a-girl-to-program/	Teach a Girl to Program	'It started with a Slack message. A colleague of mine, Christine, had heard about an organization c	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2016-06-28
40	https://aless.co/from-bitmaker-to-breather/	From Bitmaker to Breather	'It was a little more than a year ago that I made what was, in retrospect, a rather large, life-alt	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2015-03-04
41	https://aless.co/coding-is-not-cs/	Coding != Computer Science	'Listening to David Heinemeier Hansson deliver the  2014 RailsConf keynote  a little over two month	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2014-07-07
51	https://writing.natwelch.com/post/705	Hack a satellite	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-09-22
52	https://writing.natwelch.com/post/704	The Nat Index 2019-09-14	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-09-14
54	https://writing.natwelch.com/post/699	DIY Cron & Continuous Delivery on GKE	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-20
55	https://writing.natwelch.com/post/700	Japan 2019 Travel Log Day 5	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-19
1190	https://wiki.xxiivv.com/site/dilitriel.html	Valentinel Bridge	"\\n\\nDilitriel is the central region of Dinaisth.dilitriel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
58	https://writing.natwelch.com/post/696	Japan 2019 Travel Log Day 2	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-15
59	https://writing.natwelch.com/post/695	Japan 2019 Travel Log Day 1	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-14
60	https://writing.natwelch.com/post/694	What's making me happy 2019-04-20	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-04-21
61	https://writing.natwelch.com/post/693	New book night	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-04-16
74	https://resevoir.net//documenting	https://resevoir.net//documenting	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
75	https://resevoir.net//eoy-2019	https://resevoir.net//eoy-2019	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-01-04
76	https://resevoir.net//fermentation	https://resevoir.net//fermentation	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-04-04
78	https://resevoir.net//fraktur	https://resevoir.net//fraktur	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-12-20
79	https://resevoir.net//git-for-filmmakers	https://resevoir.net//git-for-filmmakers	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-29
72	https://resevoir.net//daerim-dong	https://resevoir.net//daerim-dong	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-01-28
73	https://resevoir.net//deep-work	https://resevoir.net//deep-work	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-05-02
83	https://resevoir.net//jonathan	https://resevoir.net//jonathan	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-11-12
85	https://resevoir.net//library	https://resevoir.net//library	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-01
86	https://resevoir.net//lifestyle	https://resevoir.net//lifestyle	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-10
87	https://resevoir.net//manifestations	https://resevoir.net//manifestations	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-11
1239	https://wiki.xxiivv.com/site/alicef.html	Polivoks	"\\n\\nAlicef, is an livecoding audio and visual project built around Orca.alicef\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-22
1498	https://wiki.xxiivv.com/site/beauty.html	Hydreviral	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1528	https://wiki.xxiivv.com/site/flactals.html	Nestorine	"\\n\\nFlactals is a series of abstract six-sided flowers drawn using an early version of Ronin.flact	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
1529	https://wiki.xxiivv.com/site/flactals.html	Coraline	"\\n\\nFlactals is a series of abstract six-sided flowers drawn using an early version of Ronin.flact	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
92	https://resevoir.net//portable-printing	https://resevoir.net//portable-printing	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-04-12
93	https://resevoir.net//portable-typewriter	https://resevoir.net//portable-typewriter	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-12-20
95	https://resevoir.net//quotes	https://resevoir.net//quotes	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-07-28
96	https://resevoir.net//research	https://resevoir.net//research	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
97	https://resevoir.net//resevoir	https://resevoir.net//resevoir	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
99	https://resevoir.net//sailing	https://resevoir.net//sailing	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-10-09
141	https://szymonkaliski.com/projects/diy-monome/	No title	"DIY Monome  I've built two DIY Monome clones as last project of my 2017 one-project-a-month challe	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-01-28
142	https://szymonkaliski.com/writing/2017-12-04-flsun-i3-3d-printer/	FLSUN i3 3D Printer	'I’ve been debating getting a 3D printer for quite some time, I thought that I might not use it tha	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-12-04
1755	https://wiki.xxiivv.com/site/personal.html	District 9 Costume I	"\\n\\nThe Personal album contain various memories.personal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1788	https://wiki.xxiivv.com/site/personal.html	Kabukicho	"\\n\\nThe Personal album contain various memories.personal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1754	https://wiki.xxiivv.com/site/personal.html	District 9 Costume II	"\\n\\nThe Personal album contain various memories.personal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1723	https://wiki.xxiivv.com/site/personal.html	Alex Shoes	"\\n\\nThe Personal album contain various memories.personal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1234	https://wiki.xxiivv.com/site/osaka.html	Rock Garden in Osaka	"\\n\\nWe traveled to Osaka in 2010 to attend the 1H1D music festival, and returned in 2019.osaka\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
98	https://resevoir.net//sailboat-as-gaze	https://resevoir.net//sailboat-as-gaze	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-09-17
115	https://resevoir.net//writing-drawings	https://resevoir.net//writing-drawings	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-11-08
116	https://resevoir.net//year-in-books-2019	https://resevoir.net//year-in-books-2019	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-01-04
140	https://szymonkaliski.com/writing/2018-01-28-diy-monome/	DIY Monome	'Building my own Monome has been the last of my monthly projects in 2017.\\nIt was also the only pro	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-01-28
152	https://szymonkaliski.com/projects/timav/	No title	'Timav  Timav ("chronology" in Volapük) is a tool for analysing time tracking data collected in Goo	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-04-30
153	https://szymonkaliski.com/writing/2017-03-31-parametrium/	Building Parametrium	'Parametrium is a parameter space explorer for P5.js sketches.\\nIt analyses abstract syntax tree to	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-03-31
1264	https://wiki.xxiivv.com/site/ogasawara.html	Omura Weather Station	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1267	https://wiki.xxiivv.com/site/ogasawara.html	An Old Bunker	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1268	https://wiki.xxiivv.com/site/ogasawara.html	Omura Entrance	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
701	https://royniang.com/programming.html	Ken Thompson and Dennis Ritchie	"\\n\\nProgramming — Eval/Apply\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-08-27
172	https://szymonkaliski.com/projects/institut-des-mutations/	No title	'Institut Des Mutations flow/control created a generative logo, working in close collaboration with	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-03-28
173	https://szymonkaliski.com/projects/nodation/	No title	'Nodation  Nodation is an experimental take on creating music using graphs. It was created during m	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-02-19
175	https://szymonkaliski.com/projects/beatbattle-visuals/	No title	"BeatBattle  I collaborated with .wju VJs collective to create live audioreactive visualizations fo	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2013-12-14
1365	https://wiki.xxiivv.com/site/the_sublime.html	At sea, near The Marquesas	"\\n\\nThe Sublime, are various pictures taken at sea aboard Pino.the sublime\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1394	https://wiki.xxiivv.com/site/the_sublime.html	Drifting	"\\n\\nThe Sublime, are various pictures taken at sea aboard Pino.the sublime\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1571	https://wiki.xxiivv.com/site/modernista.html	01	"\\n\\nModernista is a series of 4 prints inspired from American Modernism.modernista\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1797	https://wiki.xxiivv.com/site/identity.html	72DEC2 Converses	"\\n\\nVarious notes on the visual choices made for the Nataniev projects.identity\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1524	https://wiki.xxiivv.com/site/extended_sleep.html	Extended Sleep Release	"\\n\\nExtended Sleep is the sequel album to Known Magye, a deeper exploration of its stories.extende	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-29
1405	https://wiki.xxiivv.com/site/extended_sleep.html	Bird	"\\n\\nExtended Sleep is the sequel album to Known Magye, a deeper exploration of its stories.extende	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-29
1650	https://wiki.xxiivv.com/site/hiversaires.html	Post Mortem	"\\n\\nHiversaires is a textless point-n-click game.hiversaires\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
147	https://szymonkaliski.com/writing/2017-08-20-skyrock-projects/	Teaching Creative Coding in Taipei	'I spent July 2017 teaching three weeks of different creative technology workshops during summer pr	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-08-20
157	https://szymonkaliski.com/writing/2017-01-31-building-sdf-ui/	Building SDF-UI	"SDF-UI is a node-based DSL for generating complex shapes using SDF, GLSL and WebGL, that I've buil	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-01-31
190	gemini://xj-ix.luxe/posts/2020-06-02-hyperlocal-roadmap.gmi	hyperlocal		gemini://xj-ix.luxe	/favicon.ico	2020-06-02
191	gemini://xj-ix.luxe/posts/2020-04-30-honey-ginger-sauce.gmi	honey ginger sauce		gemini://xj-ix.luxe	/favicon.ico	2020-04-30
192	gemini://xj-ix.luxe/posts/2020-04-20-why-permanent-global-identity.gmi	why permanent global identity?		gemini://xj-ix.luxe	/favicon.ico	2020-04-20
193	gemini://xj-ix.luxe/posts/2020-03-13-platanos-fritos.es.gmi	platanos fritos		gemini://xj-ix.luxe	/favicon.ico	2020-03-13
242	https://chad.is/technologies-of-the-self/	Technologies of the Self: A Short Introduction	'One of Michel Foucault’s late interests provides a rich framework for understanding self-transform	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-23
235	https://oddworlds.org/gallery/2020-06.html	2020-06	'Trento, Italy\\nMay 2020\\n'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-05-22
236	https://oddworlds.org/cooking/focaccia-genovese.html	Focaccia Genovese	'A classic Focaccia from Liguria. Thin, very soft and salty!'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-05-18
1821	https://wiki.xxiivv.com/site/otoroutes_miniatures.html	Toy Company, Montreal	"\\n\\nOtoroutes Miniatures was created especially for the first large Toy Company festival.otoroutes	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-06
1768	https://wiki.xxiivv.com/site/drownspire.html	Founded Drownspire	"\\n\\nDrownspire was the name of an online store founded with Rekka Bellum, back in 2009.drownspire\\	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-21
194	gemini://xj-ix.luxe/posts/2020-03-10-discussions-on-network-topology.gmi	p2p network topology, why even bother?		gemini://xj-ix.luxe	/favicon.ico	2020-03-10
195	gemini://xj-ix.luxe/posts/2020-01-27-universal-basic-internet.gmi	universal basic internet		gemini://xj-ix.luxe	/favicon.ico	2020-01-27
196	gemini://xj-ix.luxe/posts/2020-01-20-null-media-next.gmi	null.media@next		gemini://xj-ix.luxe	/favicon.ico	2020-01-20
197	gemini://xj-ix.luxe/posts/2020-01-09-native-frp.gmi	native functional reactive programming		gemini://xj-ix.luxe	/favicon.ico	2020-01-09
198	gemini://xj-ix.luxe/posts/2019-thaumaturgy.gmi	thaumaturgy		gemini://xj-ix.luxe	/favicon.ico	2019-01-01
199	gemini://xj-ix.luxe/posts/2019-stop-and-think.gmi	stop and think		gemini://xj-ix.luxe	/favicon.ico	2019-01-01
200	gemini://xj-ix.luxe/posts/2019-quickly-export-gitlab-projects.gmi	quickly export corpogit projects		gemini://xj-ix.luxe	/favicon.ico	2019-01-01
1327	https://wiki.xxiivv.com/site/visual.html	The Beldam Point Of View	"\\n\\nThe Visual hosts design and interaction projects.visual\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-19
806	https://travisshears.com/tutorials/pi-static-ip/	Setting a Static IP on Pi	'This week I’ve been setting up a home Raspberry PI 4b server. I struggled to get the static ip for	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-19
869	https://travisshears.com/blog/return-of-snippets/	the return of snippets	'When I first started a personal site years ago I maintained a blog post full of little snippets / 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
870	https://travisshears.com/snippets/gitlab-runners-config/	Configure more gitlab runners	'$ docker run --rm -t -i -v /home/travis/runner:/etc/gitlab-runner --name gitlab-runner-hypert-web 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
1262	https://wiki.xxiivv.com/site/ogasawara.html	Terraforming done right	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1098	https://wiki.xxiivv.com/site/left.html	Uxambly drawing routines	"\\n\\nLeft is a text editor.left\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
247	https://chad.is/burden-of-consciousness/	Confronting the burden of consciousness	'In response to Zapffe’s famous essay, ‘The Last Messiah’, I offer two perspectives which confront 	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2018-11-29
1106	https://wiki.xxiivv.com/site/left.html	Working on Oscean with Left	"\\n\\nLeft is a text editor.left\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
248	https://chad.is/ebook-innovation/	What happened to ebook innovation?	'Due to pervasive DRM and closed ecosystems dominated by Amazon and Apple, the possibilities of ebo	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2018-08-26
249	https://chad.is/design-systems/	Designing self-sustaining systems	'Technology and design both share a concern for creating solutions to problems. What causes them to	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2015-12-14
1526	https://wiki.xxiivv.com/site/flactals.html	Torazine	"\\n\\nFlactals is a series of abstract six-sided flowers drawn using an early version of Ronin.flact	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-01-29
252	https://chad.is/beautiful-code/	Beautiful code does not make a beautiful product	'If the purity of a codebase would suffer from a change that enhances the experience of users, then	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-03-27
253	https://chad.is/startup-offers/	What to know before joining a startup	'Your stock options are unlikely to make you rich, so make sure you enjoy the work enough to make i	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-03-18
259	https://chad.is/design-of-design/	The Design of Design	'An overview of several main ideas from Fred Brooks’ book The Design of Design.'	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-10-09
271	https://xvw.github.io/longs/introduction_gadt.html	Un cas d'école à l'utilisation des GADTs		https://xvw.github.io	https://xvw.github.io/favicon.ico	2017-10-16
281	https://now.lectronice.com/then/2021-02w07/	W7 :: Struggling with Godot		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-14
282	https://now.lectronice.com/then/2021-02w06/	2021W6 :: Sweating profusely		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-07
283	https://now.lectronice.com/then/2021-02w05/	2021W5 :: Exploring vast spaces		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-31
284	https://now.lectronice.com/then/2021-01w04/	2021W4 :: Headbanging		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-24
285	https://now.lectronice.com/then/2021-01w03/	2021W3 :: Floating		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-17
279	https://now.lectronice.com/then/2021-03w09/	W9 :: Sitting in front of the sun		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-28
280	https://now.lectronice.com/then/2021-02w08/	W8 :: Watching the world burn		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-02-21
293	https://now.lectronice.com/then/2020-11w48/	2020W48 :: Slacking		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-22
294	https://now.lectronice.com/then/2020-11w47/	2020W47 :: Meandering		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-15
295	https://now.lectronice.com/then/2020-11w46/	2020W46 :: Tiredness and absurdity		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-08
296	https://now.lectronice.com/then/2020-11w45/	2020W45 :: Crunching/procrastinating		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-01
297	https://now.lectronice.com/then/2020-10w44/	2020W44 :: Music again		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-25
1815	https://wiki.xxiivv.com/site/pedestrian_paradise.html	Pedestrian Paradise Release	"\\n\\nPedestrian Paradise is an album made from various bits and pieces of unreleased material.pedes	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-07
1655	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 15	"\\n\\nHiversaires is a textless point-n-click game.hiversaires\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1757	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen I	"\\n\\nVambits are small DIY desktoys designed to be laser cut in acrylic.vambits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1709	https://wiki.xxiivv.com/site/personal.html	Shiro	"\\n\\nThe Personal album contain various memories.personal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1289	https://wiki.xxiivv.com/site/bike.html	Trek District S, in Fiji	"\\n\\nThe Bike specs.bike\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-26
1739	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Neau	"\\n\\nTypography work created for Nataniev and Lietal projects.typography\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1800	https://wiki.xxiivv.com/site/dinaisth.html	Map	"\\n\\nDinaisth is the name of the Satellite onto which unfolds the events of the Neauismetica.dinais	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-13
291	https://now.lectronice.com/then/2020-12w50/	2020W50 :: Music and sore muscles		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-06
292	https://now.lectronice.com/then/2020-11w49/	2020W49 :: Songs?		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-11-29
298	https://now.lectronice.com/then/2020-10w43/	2020W43 :: Teenage Artiphon Engineering		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-18
299	https://now.lectronice.com/then/2020-10w42/	2020W42 :: Beats		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-11
300	https://now.lectronice.com/then/2020-10w41/	2020W41 :: Global confusion		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-10-04
38	https://aless.co/working-at-the-edge/	Working at the Edge	'At the beginning of January, I found out that I\\'ll be attending the Recurse Center in April for a	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-02-18
224	https://oddworlds.org/wiki/repair.html	Repair	"Repairing the things we own is an essential part to combating consumeristic culture and reducing t	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-08
225	https://oddworlds.org/cooking/0-sourdough.html	Meta: Starting and maintaining Sourdough	'Simple, to the point, no frills.'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-04
226	https://oddworlds.org/gallery/2021-01.html	2021-01	'Venice, Italy\\nJanuary 2020\\n'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-01-22
227	https://oddworlds.org/gallery/2020-11.html	2020-11	'Povo (TN), Italy\\nAugust 2020\\n'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-08-22
1620	https://wiki.xxiivv.com/site/kaleidoscope.html	Gorgeous Leon	"\\n\\nThe Kaleidoscope records the intersection of overlapping structures.kaleidoscope\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1589	https://wiki.xxiivv.com/site/kaleidoscope.html	Diagolite I	"\\n\\nThe Kaleidoscope records the intersection of overlapping structures.kaleidoscope\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1502	https://wiki.xxiivv.com/site/infrared.html	Graveyard	"\\n\\nThe Infrared photographs were taken with a modified Nikon camera.infrared\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
229	https://oddworlds.org/gallery/2020-08.html	2020-08	'Venice, Italy\\nJuly 2020\\n'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-07-22
1173	https://wiki.xxiivv.com/site/duomo.html	Basin	"\\n\\nDuomo covers most of the northern hemisphere of Dinaisth.duomo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
138	https://szymonkaliski.com/projects/crln/	No title	'CRLN  CRLN is an experiment in bending curl noise on the GPU (desktop Chrome only). Particle movem	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-04-07
230	https://oddworlds.org/gallery/2020-09.html	2020-09	'Venice, Italy\\nJuly 2020\\n'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-07-22
231	https://oddworlds.org/gallery/2020-10.html	2020-10	'Venice, Italy\\nJuly 2020\\n'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-07-22
287	https://now.lectronice.com/then/2021-01w01/	2021W1 :: Hello new year		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-03
288	https://now.lectronice.com/then/2020-12w53/	2020W53 :: Back to game development		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-27
114	https://resevoir.net//webring	https://resevoir.net//webring	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-20
77	https://resevoir.net//foraging	https://resevoir.net//foraging	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-10-09
47	https://writing.natwelch.com/post/709	Inspiration	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-11-10
1055	https://irimi.one/posts/buying-music/	Buying Music Again		https://irimi.one	https://irimi.one/favicon.png	2020-10-21
1056	https://irimi.one/music/keep-running/	V//Tomo - ♥K e e p Running♥		https://irimi.one	https://irimi.one/favicon.png	2020-10-20
1057	https://irimi.one/music/ursulas-cartrigdes-lord-of-the-game/	Death Grips - Lord of the Game (Ursula's Cartridges DnB Remix)		https://irimi.one	https://irimi.one/favicon.png	2020-10-19
254	https://chad.is/cautious-prometheus/	The advantages of design in the 21st century	'A summary of the paper ‘A Cautious Prometheus? A Few Steps Toward a Philosophy of Design’ by Bruno	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-02-14
255	https://chad.is/guns-technology-culture/	Guns as technology, guns as culture	'Debates about gun rights must acknowledge that guns are not only technology, they are culture and 	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-12-18
257	https://chad.is/asynchronous/	Don’t Make Me Wait	'Web-based apps that match the speed and responsiveness of native apps are better for users, but th	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-11-08
805	https://travisshears.com/blog/micro-blog-plugin-demo/	micro blog plugin demo	'Fediverse > Twitter Over the last few months I’ve transitioned from using twitter to my own self h	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-23
811	https://travisshears.com/snippets/short_server_names/	Using short server names	'It use to be when I was trying to ssh into one of my servers I would just:  in the shell to get my	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-12
861	https://travisshears.com/snippets/vim-placeholders/	Custom placeholders solution	'This little bit of magic I believe I picked up from watching a Luke Smith video. The point is to l	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-12
232	https://oddworlds.org/gallery/2020-07.html	2020-07	'Rovereto, Italy\\nJune 2020\\n'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-06-22
233	https://oddworlds.org/thoughts/thelast.html	The Last $THING You'll Ever Buy	'Sustainable, "open source" products of all kinds.'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-06-11
244	https://chad.is/copenhagen/	Copenhagen versus the universe	'The trouble with the Copenhagen interpretation of quantum physics.'	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-14
245	https://chad.is/reductionism/	Reductionism can explain neither carrots nor consciousness	'Trying to understand a whole as simply a sum of its parts hasn’t worked out well in nutrition or m	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-11
882	https://travisshears.com/snippets/silver-searcher/	Silver Searcher, it's like grep but faster and easier	'$ ag -G .php 'the meaning of the universe' Life on the command line means grepping for things on a	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
883	https://travisshears.com/snippets/pass-search/	Search Pass from password	'$ pass list | ag aws Being a CLI interface the UX of Pass fits amazingly into the rest of the shel	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
887	https://travisshears.com/snippets/aws-s3-sync/	Aws S3 Sync	'$ aws s3 sync --acl public-read --sse AES256 build/ s3://travisshears.com Having the ability to se	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
888	https://travisshears.com/snippets/aws-cloud-front-inval/	AWS CloudFront invalidation Sync	'$ aws cloudfront create-invalidation --distribution-id E29OAXKYAP0NP8 --paths /work/ Pairing well 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
889	https://travisshears.com/snippets/pretty-print-json/	Pretty print JSON	'$ curl -X GET https://some.json.endpoint.com | python -m json.tool Need to check a API request but	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
842	https://travisshears.com/blog/galtenberg-ski-tour/	galtenberg ski tour	'Last ski tour of the season. Last last weekend before the Germany coronavirus border closure.\\nRou	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-17
843	https://travisshears.com/blog/kochel-first-climb/	first climb kochel	'Last weekend I was ski touring in the Kitzbühel range and this weekend sport climbing in Kochel. C	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-16
845	https://travisshears.com/snippets/sending-files-locally/	Sending Files Locally	'For a long time I used pushbullet to quickly send pictures to my android phone from my mac.\\nEx: T	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-05
846	https://travisshears.com/snippets/vim-spelling/	Vim Spelling	'Exampled by the errors in my blog posts, spelling is not my strength. Never was. Always felt focus	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-05
812	https://travisshears.com/snippets/disable_user/	Disable User	'In this case disabling the user named ubuntu from logging in. This includes logging in via ssh.\\n$	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-11
814	https://travisshears.com/blog/ski-gear-2019-2020/	2019/2020 ski gear	'Ski season 2019/2020! It had its ups: getting into ski touring with my girlfriend and conquering m	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-07
815	https://travisshears.com/blog/year-progress/	year-progress demo	'Today I’d like to demo a fun little Rust cli app I wrote. It’s a little app to print a progress ba	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-26
817	https://travisshears.com/blog/camping-in-mayrhofen/	camping in mayrhofen	'Spent last weekend trying to stay dry while exploring the end Zillertal valley. Hiking thought the	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-21
923	https://ix5.org/thoughts/2017/grundgesetz-beginning/	The Beginning		https://ix5.org	https://ix5.org/favicon.png	2017-03-05
909	https://travisshears.com/version/	\N	'Changelog All notable changes to this project will be documented in this file.\\nThe format is base	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
818	https://travisshears.com/blog/peertube-instance-launch/	peertube instance launch	'🎉 video.travisshears.xyz launch! 🎉 Today I’m happy to announce the launch of my new PeerTube insta	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-20
819	https://travisshears.com/tutorials/basic-vps-setup/	Basic VPS Setup	'Overview  What is a VPS - Virtual Private Server Why we need one  More tutorials to come   Creatin	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-20
941	https://nor.the-rn.info/2020/09/11/the-software-blues/	The Software Blues	\N	https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-09-11
798	https://travisshears.com/blog/winter-hikes/	winter hikes	'Winter has come to Bavaria. Since it is too cold to climb and there is not enough snow to ski tour	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-07
820	https://travisshears.com/snippets/automatic_tmux_session_names/	Automatic tmux session names	'This month I ditched XQuartz and am back to using Tmux. One part I found tedious was manually nami	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-13
251	https://chad.is/creativity-management/	Creative work cannot be managed	'Traditional management strategies are useless for problems that require creative thinking.'	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2013-05-29
246	https://chad.is/hereditary/	Hereditary	'The true horror of Ari Aster’s Hereditary.'	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-07
256	https://chad.is/design-hacking/	Design & Hacking	'In order to meaningfully shape the future, design must challenge and overturn entrenched systems, 	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2012-11-22
972	http://milofultz.com/2020/10/17/tod-python	💻 Tod - Plan and Manage Daily Tasks In The CLI (Python)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-17
973	http://milofultz.com/2020/10/16/friends-dont	Friends don't let friends look at pageviews		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-16
974	http://milofultz.com/2020/10/12/track-python	💻 Track - Daily Journal and Log (Python)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-12
976	http://milofultz.com/2020/10/04/two-minute-rule	The Two-Minute Rule		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-04
977	http://milofultz.com/2020/10/04/doing	Trying to become reacquainted with being bored		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-04
978	http://milofultz.com/2020/09/30/evernote-images	💻 Maximize Evernote Storage Using Web Clipper (JS)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-09-30
289	https://now.lectronice.com/then/2020-12w52/	2020W52 :: Chilling		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-20
278	https://now.lectronice.com/then/2021-03w10/	W10 :: Stacking up voxels		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-07
286	https://now.lectronice.com/then/2021-01w02/	2021W2 :: Soreness		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-01-10
290	https://now.lectronice.com/then/2020-12w51/	2020W51 :: kalama musi ike nanpa wan		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-12-13
301	https://now.lectronice.com/then/2020-09w40/	2020W40 :: Drawing again		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-27
302	https://now.lectronice.com/then/2020-09w39/	2020W39 :: Questions and fear of the future		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-09-20
306	https://now.lectronice.com/then/2020-08w35/	2020W35 :: Opuscule on acid with a plaid		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-23
243	https://chad.is/managing-oneself/	Managing Oneself	'An outline of Peter Drucker’s “Managing Oneself”, a short but essential book for navigating your p	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2019-09-18
994	http://milofultz.com/2020/06/25/inexpensive-games	Inexpensive and Minimal Equipment Games To Play		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-06-25
995	http://milofultz.com/2020/06/21/quantity-quality	Quality and quantity's relevance to critical feeling		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-06-21
996	http://milofultz.com/2020/06/10/critical-feeling	Critical feeling is as important as critical thinking		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-06-10
997	http://milofultz.com/2020/05/25/exercise-routine	Simple + Minimal Exercise Routine		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-25
1058	https://irimi.one/collage-poems/forgotten/	He had forgotten all		https://irimi.one	https://irimi.one/favicon.png	2020-10-13
1059	https://irimi.one/collage-poems/sameasyou/	Same as you		https://irimi.one	https://irimi.one/favicon.png	2020-10-13
1060	https://irimi.one/stickers/proprietary-bullshit/	Proprietary Bullshit		https://irimi.one	https://irimi.one/favicon.png	2020-09-18
1044	https://irimi.one/music/aliceffekt/	Aliceffekt		https://irimi.one	https://irimi.one/favicon.png	2021-02-06
1045	https://irimi.one/music/illeapolis-radio/	Mr. Roboto - Illeapolis Radio, Vol. 1		https://irimi.one	https://irimi.one/favicon.png	2021-01-15
1046	https://irimi.one/music/professor-kliq/	Professor Kliq		https://irimi.one	https://irimi.one/favicon.png	2021-01-04
1047	https://irimi.one/posts/motherplant/	motherplant		https://irimi.one	https://irimi.one/favicon.png	2020-12-30
892	https://travisshears.com/blog/arco/	arco	'Drinking red wine and enjoying the warm breeze overlooking the lights reflecting off Lake Garda, w	https://travisshears.com	https://travisshears.com/favicon.ico	2019-10-09
807	https://travisshears.com/snippets/tmux-plus-screen/	tmux plus screen	'Recently I was sshed into my home pi server trying to sftp some big files from a remote server. So	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-17
838	https://travisshears.com/tutorials/fromat-html-js-with-vs-code/	Format HTML & JavaScript with VS Code	'Surprising how many HTML and JavaScript errors can be found by auto formatting. When the document 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
880	https://travisshears.com/snippets/git-rebase/	Rewrite history git history	'$ git rebase -i HEAD~3 Using this command you can rewrite a series of commits via dropping, fixing	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
1048	https://irimi.one/music/sun23/	Zadig The Jasp - Sun 23		https://irimi.one	https://irimi.one/favicon.png	2020-11-29
1051	https://irimi.one/collage-poems/jewelbox/	Like a Jewelbox in the Forest		https://irimi.one	https://irimi.one/favicon.png	2020-10-31
881	https://travisshears.com/snippets/git-revert/	Oops I take that back 	'$ git revert sfjes_examplehash_f32f32h Some times you only need to undo a spific commit, often whe	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
821	https://travisshears.com/blog/weekend-in-frankenjura/	weekend in frankenjura	'Finally we escaped the Munich area! Corona lockdown have not been easy and weekend in Frankenjura 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-05
1052	https://irimi.one/collage-poems/onethatlikestoread/	One That Likes to Read		https://irimi.one	https://irimi.one/favicon.png	2020-10-31
998	http://milofultz.com/2020/05/23/day-planner	🗺 Day planner based on location		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-23
999	http://milofultz.com/2020/05/22/zettelkasten	I just found out about Zettelkasten		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-22
1000	http://milofultz.com/2020/05/22/keyboard-remapping	Keyboard Remapping on OSX - Adding the Insert Key		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-22
307	https://now.lectronice.com/then/2020-08w34/	2020W34 :: HTML, Pi 4, acid and game design		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-16
308	https://now.lectronice.com/then/2020-08w33/	2020W33 :: Starting a now page		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-09
309	https://now.lectronice.com/then/2020-08w32/	2020W32 :: Testing my template		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2020-08-02
839	https://travisshears.com/tutorials/protected-github-branches/	Protected Github Branches	'The pull request work flow is something I took for granted. Until I had to teach a group of beginn	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
840	https://travisshears.com/blog/sunrise/	project sunrise	'Project Name: Sunrise\\nGoal: Provide a sunrise via synchronised iot lights\\nWhat we achieved: Cont	https://travisshears.com	https://travisshears.com/favicon.ico	2020-04-30
841	https://travisshears.com/snippets/k8s-reg-secret/	Creating K8s registry secrets	'Hosting side projects in kubernetes and using gitlab container registry? This is the command I run	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-29
844	https://travisshears.com/snippets/vim-open-file-under-cursor/	Vim Open File Under Cursor	'Half my time in the editor I’m not coding, I’m just browsing the file system trying to understand 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-06
901	https://travisshears.com/blog/switzerland-liechtenstein-2019/	switzerland + liechtenstein	'Trip overview This being the start of my first full German summer it was time for a road trip to s	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-05
902	https://travisshears.com/blog/armycookbot/	army cook bot	'Educational twitter bot that tweets about WWII era military cooking.\\nTwitter account: @ArmyCookBo	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-01
903	https://travisshears.com/blog/klettergarten-bad-heilbrunn/	klettergarten bad heilbrunn	'From over a grassy hill, a group appears. A party of adventures trecking through farmland in searc	https://travisshears.com	https://travisshears.com/favicon.ico	2019-05-19
907	https://travisshears.com/blog/local-pijul-with-docker/	try pijul with docker	'Apparently pijul is the nerd’s nerd version control so natrally I had to try it out. I was attract	https://travisshears.com	https://travisshears.com/favicon.ico	2019-04-01
1103	https://wiki.xxiivv.com/site/uxn.html	Uxn Sticker	"\\n\\nUxn is a 8-bit virtual stack machine.uxn\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-03
1104	https://wiki.xxiivv.com/site/exed.html	Exed Desktop Release	"\\n\\nExed is a hex editor.exed\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-01-22
1089	https://tendigits.space/notes/post-receive-hook/	Post Receive Hook	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-09-27
1053	https://irimi.one/music/alpha-centauri/	Alicequests - Alpha Centauri		https://irimi.one	https://irimi.one/favicon.png	2020-10-25
1090	https://tendigits.space/notes/bagels/	Bagels	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-09-26
1091	https://tendigits.space/notes/updating-ssh/	Updating SSL Certs	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-08-25
1093	https://tendigits.space/notes/ae-modular/	AE Modular	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-05-31
1094	https://tendigits.space/notes/site-11ty-setup/	This website's setup with 11ty	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-05-30
822	https://travisshears.com/snippets/file-search-plus-size/	File Search Plus Size	'How big are the fonts in this project? Not sure where they are even. This command finds the files 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-02
1054	https://irimi.one/music/50-tracks/	Netsh - 50 tracks to enhance your robotic implants		https://irimi.one	https://irimi.one/favicon.png	2020-10-23
1079	https://www.gr0k.net/blog/zynthin-tips-and-tricks.html	Zynthian Tips and Tricks	'\\n                Zynthian Tips and Tricks\\nIt\\'s been less than a week since I received the hardw	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-03
1080	https://www.gr0k.net/blog/creating-soundfonts-in-polyphone.html	Creating SoundFonts in Polyphone	'\\n                Creating SoundFonts in Polyphone\\nComing from MPC land, one of the limitations I	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-01-31
1081	https://www.gr0k.net/blog/zynthians-sequencer-zynseq.html	Zynthian's Sequencer - ZynSeq	'\\n                Zynthian\\'s Sequencer - ZynSeq\\nA large part of the appeal of the Zynthian is be	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-01-29
894	https://travisshears.com/blog/laberdolomiten/	laberdolomiten	'Update 09-24-19 Excited to proclaim success! Last weekend I summited on the route I had attempted 	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-24
895	https://travisshears.com/blog/hacking-health/	hacking health in zurich	'“Hacking health” in Zurich, this weekend I attended a health” in Zurich. I attended a hackathon fo	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-23
896	https://travisshears.com/blog/iceland-2019/	iceland	'Originally wrote this post in German in an interview form. So here is the translation back to Engl	https://travisshears.com	https://travisshears.com/favicon.ico	2019-09-02
833	https://travisshears.com/snippets/jsx-comments/	JSX Comments	'The other day at work we have an html comment in jsx slip on to stage. Made me relize I didn’t kno	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-26
795	https://travisshears.com/blog/schachentorkopf-ridge-tour/	schachentorkopf ridge tour	'Route\\nFor our second tour of the season we searched for something off piste. We knew it had to be	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-09
796	https://travisshears.com/snippets/strip-audio-from-video-file/	Strip Audio From Video File	'Easy way to remove audio from a video file using ffmpeg\\nffmpeg -i $input_file -c copy -an $output	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-09
797	https://travisshears.com/blog/garmisch-piste-tour/	garmisch piste tour	"Route\\nFirst ski tour of the season! Lifts were closed so no warming up on groomers this year but 	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-09
823	https://travisshears.com/snippets/mass-mkv-to-mp4-ffmpeg/	Convert .mkv to .mp4	'Before I updated my OBS settings to record to .mp4 files I manually converted .mkv files to .mp4. 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-30
824	https://travisshears.com/snippets/wipe-mongo-collection/	Wipe a Mongo Collection	'Currently I run a shared mongo instance in my k8s cluster used by a bunch of my side projects. Eve	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-29
825	https://travisshears.com/snippets/extending-gpg-key/	Extending GPG Keys	'Don’t let those keys expire. 🚨\\nTime to edit some keys:\\ngpg --edit-key t@travisshears.com Secret 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-22
847	https://travisshears.com/blog/bayrischzell-cross-country/	cross-country skiing	'Location: Bayrischzell, Deutschland\\nSki poles, the worthy opponent. They struck first but not las	https://travisshears.com	https://travisshears.com/favicon.ico	2020-03-02
864	https://travisshears.com/snippets/vim-jumps-fix/	Remapping ability to jump	'Moving efficiently in vim is a massive topic but recently I just wanted to take advantage of the j	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
848	https://travisshears.com/snippets/git-repo-backup/	Git Repo Backup	'Backup a git repo without thats not hosted on remote repo with:\\n$ git bundle create /tmp/pass_"$(	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-23
968	http://milofultz.com/2020/11/01/koi-koi-rules	Rules for Hanafuda game "Koi-Koi"		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-11-01
969	http://milofultz.com/2020/10/31/tablatal-parser	📊 Tablatal Parser - Plaintext Database to JSON (Python)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-31
970	http://milofultz.com/2020/10/25/hiitimer	💻 HIITimer - Exercise Timer w/Routines and TTS (Python)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-25
971	http://milofultz.com/2020/10/21/html-css-js	HTML / CSS / JS Resources		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-21
975	http://milofultz.com/2020/10/12/sleep-realms	🎧 Sleep Realms (Paulstretch)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-10-12
1082	https://www.gr0k.net/blog/zynthian-first-impressions.html	Zynthian v4.1 Kit - First Impressions	"\\n                Zynthian v4.1 Kit - First Impressions\\nI'm fairly new to Zynthian, having played	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-01-28
1095	https://tendigits.space/notes/hello/	Setting up this website	\N	https://tendigits.space	https://tendigits.space/favicon.ico	2020-05-20
1605	https://wiki.xxiivv.com/site/serventines.html	Snailden	"\\n\\nServentines is a travel diary from travels across Nereid.serventines\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1473	https://wiki.xxiivv.com/site/verreciel.html	Further	"\\n\\nVerreciel is a space exploration game.verreciel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-27
1482	https://wiki.xxiivv.com/site/opal_inquisitors.html	Opal inquisitors Release	"\\n\\nThe Opal Inquisitors is the first Duomic album.opal inquisitors\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-15
984	http://milofultz.com/2020/08/19/soulja-realms	🎧 Soulja Realms		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-08-19
985	http://milofultz.com/2020/08/04/piu-piu-ringtone	🎧 Piu Piu ringtone but it's only Avgustina's laugh		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-08-04
986	http://milofultz.com/2020/07/23/awfulizer	💻 Awfulizer - Make Surfing The Web Awful (Firefox)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-23
987	http://milofultz.com/2020/07/22/make-python-apps	Make Python 'Apps' and Shortcuts To Run Them on OSX		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-22
988	http://milofultz.com/2020/07/18/programming-outline	Create a better program faster with an outline V2		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-18
989	http://milofultz.com/2020/07/08/star-maker	💻 star_maker - a lo-fi ambient visual (Python)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-08
990	http://milofultz.com/2020/07/07/spacelove	🎧 spacelove.xm - Made using an old E-MAX sample		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-07
991	http://milofultz.com/2020/07/03/wordsmash	💻 Wordsmash Explosion - Mastermind With Words (Python)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-03
1153	https://wiki.xxiivv.com/site/identity.html	XXIIVV in NesPaint	"\\n\\nVarious notes on the visual choices made for the Nataniev projects.identity\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1653	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 24	"\\n\\nHiversaires is a textless point-n-click game.hiversaires\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1654	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 20	"\\n\\nHiversaires is a textless point-n-click game.hiversaires\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1301	https://wiki.xxiivv.com/site/fiji.html	Savusavu, Fiji	"\\n\\nWe sailed to Fiji from New Zealand, aboard Pino.fiji\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1817	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Recit	"\\n\\nTypography work created for Nataniev and Lietal projects.typography\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1099	https://wiki.xxiivv.com/site/nasu.html	Nasu on Uxn	"\\n\\nNasu is a spritesheet editor.nasu\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-02-02
1812	https://wiki.xxiivv.com/site/drypoint.html	Drypoint Release	"\\n\\nDrypoint is a very hard platformer game for keyboard cowboys.drypoint\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-12
1732	https://wiki.xxiivv.com/site/czech.html	Country Side	"\\n\\nTrip to Czech Republic in 2011.czech\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1784	https://wiki.xxiivv.com/site/tokyo.html	Lea	"\\n\\nUnforgettable time riding our bikes in Tokyo.tokyo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1775	https://wiki.xxiivv.com/site/tokyo.html	In Bloom	"\\n\\nUnforgettable time riding our bikes in Tokyo.tokyo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1780	https://wiki.xxiivv.com/site/tokyo.html	Hanami Train	"\\n\\nUnforgettable time riding our bikes in Tokyo.tokyo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1269	https://wiki.xxiivv.com/site/ogasawara.html	Mixed Architecture	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1102	https://wiki.xxiivv.com/site/busy_doing_nothing.html	The Logbook Book	"\\n\\nThe logbook of our Pacific Ocean crossing from Japan to Canada.busy doing nothing\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-08
1105	https://wiki.xxiivv.com/site/dito.html	Dito Desktop Release	"\\n\\nDito is an image dithering editor.dito\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-01-20
1819	https://wiki.xxiivv.com/site/nether_esper_inserts.html	Howl Virgil System	"\\n\\nNether Esper Inserts was originally released as two albums, Nether Esper Inserts and Howls Vir	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-05-17
1272	https://wiki.xxiivv.com/site/the_sublime.html	Majuro Anchorage	"\\n\\nThe Sublime, are various pictures taken at sea aboard Pino.the sublime\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1659	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 9	"\\n\\nHiversaires is a textless point-n-click game.hiversaires\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1660	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 8	"\\n\\nHiversaires is a textless point-n-click game.hiversaires\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1172	https://wiki.xxiivv.com/site/duomo.html	Drains	"\\n\\nDuomo covers most of the northern hemisphere of Dinaisth.duomo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1180	https://wiki.xxiivv.com/site/aitasla.html	Reflector	"\\n\\nAitasla is a satellite orbiting orbiting the Ehrivevnv.aitasla\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-09
1667	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Blip Festival, Tokyo	"\\n\\nThe Ehrivevnv Studies is an album exploring the Dinaisth region surrounding the offices of And	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1753	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen Hallowe	"\\n\\nVambits are small DIY desktoys designed to be laser cut in acrylic.vambits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1624	https://wiki.xxiivv.com/site/oquonie.html	A Lost Neomine	"\\n\\nOquonie is a textless isometric puzzle game.oquonie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1397	https://wiki.xxiivv.com/site/the_sublime.html	Scare In Rarotonga	"\\n\\nThe Sublime, are various pictures taken at sea aboard Pino.the sublime\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1115	https://wiki.xxiivv.com/site/identity.html	Made In Moogle	"\\n\\nVarious notes on the visual choices made for the Nataniev projects.identity\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-16
1698	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	La Nuit Blanche, Montreal	"\\n\\nEs Gulf Sunflowers is a Neauismetic album.es gulf sunflowers\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-11
1310	https://wiki.xxiivv.com/site/the_sublime.html	Drifting toward Fiji	"\\n\\nThe Sublime, are various pictures taken at sea aboard Pino.the sublime\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1707	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Mini	"\\n\\nTypography work created for Nataniev and Lietal projects.typography\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1683	https://wiki.xxiivv.com/site/macro.html	Fibers	"\\n\\nThe Macro album contains various shots from up close.macro\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1121	https://wiki.xxiivv.com/site/chr_format.html	Nasu on Plan 9	"\\n\\nCharacter Memory format of Famicom roms spritesheets.chr format\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-07
1122	https://wiki.xxiivv.com/site/postscript.html	Postscript on Plan9	"\\n\\nPostscript is a programming language that was designed to specify the layout of the printed pa	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-04
1123	https://wiki.xxiivv.com/site/plan9_clock.html	Not into babyblue	"\\n\\nUpdated the look of the Plan9 clock.plan9 clock\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-02
1124	https://wiki.xxiivv.com/site/plan9_c.html	Plan9 Draw	"\\n\\nNotes on customizing and developing on the Plan 9 operating system.plan9 c\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-01
1125	https://wiki.xxiivv.com/site/acme.html	Custom Acme	"\\n\\nNotes on the Plan9 ACME development toolkit.acme\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-31
1477	https://wiki.xxiivv.com/site/macro.html	Cure Dents	"\\n\\nThe Macro album contains various shots from up close.macro\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1203	https://wiki.xxiivv.com/site/macro.html	Caterpillar	"\\n\\nThe Macro album contains various shots from up close.macro\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1507	https://wiki.xxiivv.com/site/macro.html	Glass	"\\n\\nThe Macro album contains various shots from up close.macro\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1661	https://wiki.xxiivv.com/site/macro.html	Building a telescope	"\\n\\nThe Macro album contains various shots from up close.macro\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1534	https://wiki.xxiivv.com/site/america.html	Nebraska	"\\n\\nVarious landscapes taken around America.america\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1141	https://wiki.xxiivv.com/site/pascal.html	Spiral Pattern	"\\n\\nPascal is an imperative and procedural programming language designed for teaching students str	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-04-12
1142	https://wiki.xxiivv.com/site/pascal.html	Entaloneralie System 7	"\\n\\nPascal is an imperative and procedural programming language designed for teaching students str	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-04-12
1765	https://wiki.xxiivv.com/site/audio.html	Loft	"\\n\\nThe Audio portal hosts various soundtrack, records and live projects.audio\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-06
1766	https://wiki.xxiivv.com/site/nataniev.html	Nataniev Portrait	"\\n\\nThe Nataniev ecosystem is a collection of exocortex tools.nataniev\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-01
1767	https://wiki.xxiivv.com/site/drownspire.html	Our Studio	"\\n\\nDrownspire was the name of an online store founded with Rekka Bellum, back in 2009.drownspire\\	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-06-21
1772	https://wiki.xxiivv.com/site/idyllic_miners.html	Idyllic Miners Release	"\\n\\nIdyllic Miners was created for the Kinetik Festival.idyllic miners\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-05-12
1773	https://wiki.xxiivv.com/site/idyllic_miners.html	Kinetik Festival, Montreal	"\\n\\nIdyllic Miners was created for the Kinetik Festival.idyllic miners\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-05-12
1428	https://wiki.xxiivv.com/site/wallpapers.html	Shinji	"\\n\\nCollection of Wallpapers related to Nataniev and Horaire.wallpapers\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1652	https://wiki.xxiivv.com/site/wallpapers.html	Rami Ismail Rant	"\\n\\nCollection of Wallpapers related to Nataniev and Horaire.wallpapers\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1725	https://wiki.xxiivv.com/site/wallpapers.html	Echorridoors	"\\n\\nCollection of Wallpapers related to Nataniev and Horaire.wallpapers\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1630	https://wiki.xxiivv.com/site/wallpapers.html	Motto	"\\n\\nCollection of Wallpapers related to Nataniev and Horaire.wallpapers\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1776	https://wiki.xxiivv.com/site/wallpapers.html	Devilsse	"\\n\\nCollection of Wallpapers related to Nataniev and Horaire.wallpapers\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-04-11
1154	https://wiki.xxiivv.com/site/famicom.html	Famicom Keyboard	"\\n\\nThe famicom is an 8bit video game console by Nintendo.famicom\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-29
1162	https://wiki.xxiivv.com/site/famicom.html	OPN2 Cartridge	"\\n\\nThe famicom is an 8bit video game console by Nintendo.famicom\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-29
1177	https://wiki.xxiivv.com/site/dilitriel.html	Eaurizon Hangars	"\\n\\nDilitriel is the central region of Dinaisth.dilitriel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1445	https://wiki.xxiivv.com/site/pearls.html	Pearl	"\\n\\nThe Pearls are polygonoscopies of Nereid.pearls\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-04
1793	https://wiki.xxiivv.com/site/osaka.html	Lanterns	"\\n\\nWe traveled to Osaka in 2010 to attend the 1H1D music festival, and returned in 2019.osaka\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1235	https://wiki.xxiivv.com/site/osaka.html	Travel to Osaka, Japan	"\\n\\nWe traveled to Osaka in 2010 to attend the 1H1D music festival, and returned in 2019.osaka\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1796	https://wiki.xxiivv.com/site/osaka.html	Travel to Tokyo, Japan	"\\n\\nWe traveled to Osaka in 2010 to attend the 1H1D music festival, and returned in 2019.osaka\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1169	https://wiki.xxiivv.com/site/whiinders.html	Offline Station	"\\n\\nWhiiners is part of the greater Dilitriel region.whiinders\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-15
1174	https://wiki.xxiivv.com/site/whiinders.html	Signalter	"\\n\\nWhiiners is part of the greater Dilitriel region.whiinders\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-15
1144	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack III	"\\n\\nHypertalk is the programming language used in the mac software Hypercard.hypertalk\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-31
1643	https://wiki.xxiivv.com/site/fuji.html	Dusk	"\\n\\nOur trip up Mount Fuji, Japan.fuji\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1189	https://wiki.xxiivv.com/site/kirleane.html	Soies Compressor	"\\n\\nKirleane is a shard of land by the Kanikule ocean.kirleane\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-30
1184	https://wiki.xxiivv.com/site/dilitriel.html	Flighter	"\\n\\nDilitriel is the central region of Dinaisth.dilitriel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-29
1705	https://wiki.xxiivv.com/site/unreleased.html	Merveilles	"\\n\\nA list of Unreleased projects.unreleased\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-12-08
1740	https://wiki.xxiivv.com/site/unreleased.html	Merveilles Portable	"\\n\\nA list of Unreleased projects.unreleased\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-12-08
1801	https://wiki.xxiivv.com/site/unreleased.html	Neonev Raft	"\\n\\nA list of Unreleased projects.unreleased\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-12-08
1807	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	"\\n\\nValentinel Hopes is a platformer inspired from parkour and trance music.valentinel hopes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1808	https://wiki.xxiivv.com/site/valentinel_hopes.html	Run	"\\n\\nValentinel Hopes is a platformer inspired from parkour and trance music.valentinel hopes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1810	https://wiki.xxiivv.com/site/valentinel_hopes.html	Valentinel Hopes	"\\n\\nValentinel Hopes is a platformer inspired from parkour and trance music.valentinel hopes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-03
1167	https://wiki.xxiivv.com/site/risan_aldeth.html	Aldeth	"\\n\\nRisan Aldeth is the coastal region around Yajnev.risan aldeth\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-07
1798	https://wiki.xxiivv.com/site/maeve.html	Pcellar II	"\\n\\nMaeve is an automated Paradise vesselmaeve\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-10-15
1799	https://wiki.xxiivv.com/site/maeve.html	Pcellar	"\\n\\nMaeve is an automated Paradise vesselmaeve\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-10-15
1811	https://wiki.xxiivv.com/site/maeve.html	First Ludivine	"\\n\\nMaeve is an automated Paradise vesselmaeve\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-10-15
1813	https://wiki.xxiivv.com/site/drypoint.html	Drypoint Landing Zone	"\\n\\nDrypoint is a very hard platformer game for keyboard cowboys.drypoint\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-09-12
1178	https://wiki.xxiivv.com/site/laeisth.html	Es Plains	"\\n\\nLaeisth is a desert on Dinaisth.laeisth\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-11
1168	https://wiki.xxiivv.com/site/kirleane.html	Paradichlorisse	"\\n\\nKirleane is a shard of land by the Kanikule ocean.kirleane\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-30
1195	https://wiki.xxiivv.com/site/playground.html	The Playground Express	"\\n\\nThe Playground is a flexible experimental micro-controller from Adafruit.playground\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-09-24
1733	https://wiki.xxiivv.com/site/czech.html	Visualscream Studio	"\\n\\nTrip to Czech Republic in 2011.czech\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1734	https://wiki.xxiivv.com/site/czech.html	Tree of Pan	"\\n\\nTrip to Czech Republic in 2011.czech\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1735	https://wiki.xxiivv.com/site/czech.html	Classic	"\\n\\nTrip to Czech Republic in 2011.czech\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1736	https://wiki.xxiivv.com/site/czech.html	Spaceship Church	"\\n\\nTrip to Czech Republic in 2011.czech\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1737	https://wiki.xxiivv.com/site/czech.html	Czech Ramen	"\\n\\nTrip to Czech Republic in 2011.czech\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1738	https://wiki.xxiivv.com/site/czech.html	Travel to Czech	"\\n\\nTrip to Czech Republic in 2011.czech\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1730	https://wiki.xxiivv.com/site/czech.html	Joe	"\\n\\nTrip to Czech Republic in 2011.czech\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-28
1288	https://wiki.xxiivv.com/site/unix.html	Static	"\\n\\nUnix is a family of computer operating systems that derive from the original Unix from Bell La	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-06
1254	https://wiki.xxiivv.com/site/bike.html	In front of Mt. Fuji	"\\n\\nThe Bike specs.bike\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-09-26
1741	https://wiki.xxiivv.com/site/siseon.html	Siseon	"\\n\\nSiseon is an exploration game set within a life-infested megastructure.siseon\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-02-05
1636	https://wiki.xxiivv.com/site/typography.html	Mirai Seu	"\\n\\nTypography work created for Nataniev and Lietal projects.typography\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1718	https://wiki.xxiivv.com/site/typography.html	Yletaodeta Lith	"\\n\\nTypography work created for Nataniev and Lietal projects.typography\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1637	https://wiki.xxiivv.com/site/typography.html	Milavregarian	"\\n\\nTypography work created for Nataniev and Lietal projects.typography\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-07-13
1818	https://wiki.xxiivv.com/site/malice.html	Malice Release	"\\n\\nMalice tells the earlier tales of Neonev as she crossed the Kanikule ocean.malice\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-27
1827	https://wiki.xxiivv.com/site/malice.html	Pulsewave, New York	"\\n\\nMalice tells the earlier tales of Neonev as she crossed the Kanikule ocean.malice\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-27
1535	https://wiki.xxiivv.com/site/america.html	Desert	"\\n\\nVarious landscapes taken around America.america\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1248	https://wiki.xxiivv.com/site/shizuoka.html	Cherry Trees over Tea Fields	"\\n\\nWe sailed to Shizuoka in the late winter of 2019, from Ogasawara.shizuoka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1372	https://wiki.xxiivv.com/site/nutrition.html	Tempeh Carrot Soba	"\\n\\nThe Nutrition diaries.nutrition\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-19
1380	https://wiki.xxiivv.com/site/nutrition.html	Papaya Bruschetta	"\\n\\nThe Nutrition diaries.nutrition\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-19
1777	https://wiki.xxiivv.com/site/yokohama.html	China Town	"\\n\\nWe cycled to Yokohama, from Tokyo.yokohama\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-02
1389	https://wiki.xxiivv.com/site/notebook.html	Immortal Birds	"\\n\\nFrom the Notebook.notebook\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1809	https://wiki.xxiivv.com/site/notebook.html	Self Portrait	"\\n\\nFrom the Notebook.notebook\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1721	https://wiki.xxiivv.com/site/notebook.html	The Trial of the Tide	"\\n\\nFrom the Notebook.notebook\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1743	https://wiki.xxiivv.com/site/notebook.html	Dilitriel	"\\n\\nFrom the Notebook.notebook\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1833	https://wiki.xxiivv.com/site/notebook.html	Best Rave Evar	"\\n\\nFrom the Notebook.notebook\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1820	https://wiki.xxiivv.com/site/notebook.html	Heist	"\\n\\nFrom the Notebook.notebook\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-12-18
1256	https://wiki.xxiivv.com/site/artwork.html	Coralinev Bike	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1702	https://wiki.xxiivv.com/site/artwork.html	Veins of brambles	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1675	https://wiki.xxiivv.com/site/artwork.html	Hydro74 Remix	"\\n\\nArtwork collection of unrelated concepts and characters.artwork\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-11-23
1286	https://wiki.xxiivv.com/site/marshall_islands.html	Sail to Majuro, Marshall Islands	"\\n\\nWe sailed to the Marshall Islands from Fiji, aboard Pino.marshall islands\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1300	https://wiki.xxiivv.com/site/framboisedorf.html	A Toy Piano for Rainy Days	"\\n\\nOverview of the Framboisedorf toy piano.framboisedorf\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-05
1319	https://wiki.xxiivv.com/site/dotgrid.html	Improved the look and feel	"\\n\\nDotgrid is a vector editor.dotgrid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1317	https://wiki.xxiivv.com/site/photography.html	ÅA	"\\n\\nThe Photography Portal collects various albums over multiple mediums.photography\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-05-12
1323	https://wiki.xxiivv.com/site/computer.html	In Bloom	"\\n\\nTechnical details on my computer setups.computer\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-22
1329	https://wiki.xxiivv.com/site/framboisedorf.html	A Small Pocket Synth	"\\n\\nOverview of the Framboisedorf toy piano.framboisedorf\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-05
1384	https://wiki.xxiivv.com/site/grimgrains.html	Algea Crisp	"\\n\\nGrimgrains is the Hundred Rabbits food and cooking resources site.grimgrains\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-11-07
1314	https://wiki.xxiivv.com/site/brane.html	The Millioneth Clock	"\\n\\nBrane are digital fabrics.brane\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1574	https://wiki.xxiivv.com/site/brane.html	III	"\\n\\nBrane are digital fabrics.brane\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1446	https://wiki.xxiivv.com/site/pearls.html	Cell	"\\n\\nThe Pearls are polygonoscopies of Nereid.pearls\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-04
1786	https://wiki.xxiivv.com/site/yokohama.html	Dragon	"\\n\\nWe cycled to Yokohama, from Tokyo.yokohama\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-02
1320	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Halftone	"\\n\\nLes Habitants Du Soleil is a single track Duomic album.habitants du soleil\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-16
1330	https://wiki.xxiivv.com/site/weather_station.html	Looking out for storms	"\\n\\nThe documentation for the Weather Station aboard Pino.weather station\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-03-21
1791	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	Netlabel Party - Tokyo	"\\n\\nShikanokoa Vs 1h1d is an album of improvisational tracks.shikanokoa vs 1h1d\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-26
1790	https://wiki.xxiivv.com/site/shikanokoa_vs_1h1d.html	1H1D vs Shikanokoa, Osaka	"\\n\\nShikanokoa Vs 1h1d is an album of improvisational tracks.shikanokoa vs 1h1d\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-26
1778	https://wiki.xxiivv.com/site/tokyo.html	Floppy	"\\n\\nUnforgettable time riding our bikes in Tokyo.tokyo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-24
1744	https://wiki.xxiivv.com/site/to_the_aeons_hell.html	8Static - Philadelphia	"\\n\\nTo The Aeons Hell was created in the spirit of Nor let the fools, being a mixture of unrelease	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-01-07
42	https://writing.natwelch.com/post/714	2020: Year in Review	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2021-01-02
43	https://writing.natwelch.com/post/713	Bugs Fixed on Vacation	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2020-11-05
44	https://writing.natwelch.com/post/711	Tales from Isolation: Coding	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2020-04-05
45	https://writing.natwelch.com/post/710	2019: Year in Review	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2020-01-02
34	https://aless.co/gatsby-wasm-plugin/	Building a Gatsby Plugin with Wasm	'Law of the Instrument : "I suppose it is tempting, if the only tool you have is a hammer, to treat	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2020-01-06
35	https://aless.co/2019/	2019	'2019 was a year of 4 weddings (the fourth and final thanks to an elopement we unwittingly crashed,	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-12-01
36	https://aless.co/resume-as-code/	Resume as Code	'I avoid brand new tech until I have an itch to scratch: a small, self-contained problem that seems	https://aless.co	https://aless.co/favicon-32x32.png?v=17a47fe33159c67c197fb5fffef7c3d2	2019-10-08
20	https://notes.neeasade.net/my-shell-prompt.html	my shell prompt	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-11-09
21	https://notes.neeasade.net/Automata-tiling-backgrounds-2.html	Automata tiling backgrounds 2	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-08-14
22	https://notes.neeasade.net/Aug-2020.html	8 Months Adrift	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-08-04
23	https://notes.neeasade.net/Pinebook-Pro.html	Pinebook Pro	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-06-09
24	https://notes.neeasade.net/tickling-bash-a-rofi-adventure.html	tickling bash, the quest for the perfect menu	''	https://notes.neeasade.net	https://notes.neeasade.net/favicon.ico	2020-05-10
48	https://writing.natwelch.com/post/708	Exercise of Grandmasters	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-10-12
49	https://writing.natwelch.com/post/707	reportd: Self hosted CSP reporting	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-10-05
50	https://writing.natwelch.com/post/706	Zany hijinks while eating the food from Zelda	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-09-23
56	https://writing.natwelch.com/post/698	Japan 2019 Travel Log Day 4	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-18
57	https://writing.natwelch.com/post/697	Japan 2019 Travel Log Day 3	None	https://writing.natwelch.com	https://writing.natwelch.com/favicon.ico	2019-05-16
62	https://resevoir.net//about	https://resevoir.net//about	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-12-17
63	https://resevoir.net//annotation	https://resevoir.net//annotation	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-15
64	https://resevoir.net//auto-rickshaw	https://resevoir.net//auto-rickshaw	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-08-25
65	https://resevoir.net//bicycles	https://resevoir.net//bicycles	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-10-09
66	https://resevoir.net//biking	https://resevoir.net//biking	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-19
80	https://resevoir.net//historiography	https://resevoir.net//historiography	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-11-08
81	https://resevoir.net//index	https://resevoir.net//index	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
82	https://resevoir.net//intermediate-representations	https://resevoir.net//intermediate-representations	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-03-08
84	https://resevoir.net//kiron	https://resevoir.net//kiron	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-08-02
89	https://resevoir.net//midi-plotter	https://resevoir.net//midi-plotter	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-08-06
90	https://resevoir.net//org-mode	https://resevoir.net//org-mode	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-22
91	https://resevoir.net//pointers	https://resevoir.net//pointers	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-03-08
94	https://resevoir.net//practice	https://resevoir.net//practice	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
100	https://resevoir.net//selfcare-checklist	https://resevoir.net//selfcare-checklist	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	0001-01-01
101	https://resevoir.net//service-design	https://resevoir.net//service-design	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-08-08
102	https://resevoir.net//slitscan-experiments	https://resevoir.net//slitscan-experiments	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-11-02
103	https://resevoir.net//slitscan-video	https://resevoir.net//slitscan-video	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2018-01-08
104	https://resevoir.net//space	https://resevoir.net//space	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-09-27
121	https://szymonkaliski.com/projects/liveboard/	No title	'Liveboard Liveboard is a library built on top of Protoboard, providing a set of high-level functio	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-07-23
122	https://szymonkaliski.com/projects/protoboard/	No title	'Protoboard  This project was inspired by breadboards: they are used for both learning, and experim	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-07-14
123	https://szymonkaliski.com/projects/hhann/	No title	'HHANN HHANN was created to fill a basic need of being able to draw on top of the screen.\\nAllowing	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-06-30
124	https://szymonkaliski.com/writing/2020-04-19-memex-dreams/	Memex Dreams	'Memex has become a kind of holy grail for information workers, never-built tool which inspired the	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2020-04-19
105	https://resevoir.net//studies	https://resevoir.net//studies	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-05-28
106	https://resevoir.net//tactile	https://resevoir.net//tactile	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-16
107	https://resevoir.net//targets	https://resevoir.net//targets	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-04-13
108	https://resevoir.net//text	https://resevoir.net//text	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-05
109	https://resevoir.net//time-based	https://resevoir.net//time-based	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
110	https://resevoir.net//tools	https://resevoir.net//tools	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-06-17
111	https://resevoir.net//trails	https://resevoir.net//trails	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-05-02
112	https://resevoir.net//urgency	https://resevoir.net//urgency	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2019-08-02
113	https://resevoir.net//visiweave	https://resevoir.net//visiweave	None	https://resevoir.net	https://resevoir.net/favicon/favicon-32x32.png	2020-04-16
126	https://szymonkaliski.com/projects/nott/	No title	'Nótt  Nótt contains six independent loops, up to 8 seconds long, including speed control, subloopi	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-07-01
127	https://szymonkaliski.com/projects/volume-brush/	No title	"volume-brush  volume-brush is a volumetric brush implementation, inspired and adapted from toxicli	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-06-25
128	https://szymonkaliski.com/projects/modeler/	No title	'Modeler  modeler is a CSG modeling library for React, and a cli helper tool. It is built from two 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-04-19
129	https://szymonkaliski.com/writing/2019-03-31-end-user-programming/	End-User Programming	None	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-03-31
130	https://szymonkaliski.com/writing/2019-03-01-building-dacein/	Building Dacein	"Dacein is an experimental creative coding IDE combining a few different ideas that I've been think	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-03-01
131	https://szymonkaliski.com/projects/dacein/	No title	'Dacein  Dacein is an experimental creative coding IDE combining few different ideas together: func	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2019-03-01
132	https://szymonkaliski.com/writing/2018-11-27-laboratory-residency/	Laboratory Residency	'I was quite tired after last year, where I worked on monthly projects and pushed hard to publish s	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-11-27
135	https://szymonkaliski.com/projects/sketchbook-cli/	No title	'Sketchbook sketchbook-cli is a tool for organising, editing and displaying code-based sketches in 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-08-29
136	https://szymonkaliski.com/projects/editable-cli/	No title	'Editable editable-cli is a command line tool piggybacking on observable internals which provides f	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-08-19
137	https://szymonkaliski.com/projects/hot-visualize-change/	No title	'HOT Visualize Change  flow/control collaborated with Humanitarian OpenStreetMap to design and buil	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-05-16
139	https://szymonkaliski.com/projects/mntn/	No title	'MNTN  MNTN is a small experiment in creating procedural mountains. Mountain generation begins with	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2018-03-10
143	https://szymonkaliski.com/writing/2017-11-10-exploring-tidal-and-diagrams/	Learning Haskell part 2	"Learning Haskell was one of my one-project-a-month projects in 2017.\\nI can't say I'm anywhere nea	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-11-10
144	https://szymonkaliski.com/writing/2017-10-02-learning-haskell/	Learning Haskell	'Haskell has been on my to-learn list for a long time, I was interested in a different approach to 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-10-02
145	https://szymonkaliski.com/writing/2017-09-08-building-das-ui/	Building DAS-UI	"DAS-UI is another node-based experiment (after SDF-UI) that I've built during my one-project-a-mon	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-09-08
146	https://szymonkaliski.com/projects/das-ui/	No title	'DAS-UI  DAS-UI is an experimental domain-agnostic keyboard-based visual programming language with 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-09-08
148	https://szymonkaliski.com/writing/2017-07-07-building-neutron/	Building Neutron	'Neutron is a self-contained node & npm application made for quick prototyping and teaching. It bor	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-07-07
149	https://szymonkaliski.com/projects/neutron/	No title	'Neutron Neutron is self-contained node & npm application made for quick prototyping and teaching. 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2017-07-07
165	https://szymonkaliski.com/projects/google-io-android-diversity/	No title	'Google I/O flow/control collaborated with\\xa0variable studio to create visualisation showing all A	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2015-11-28
166	https://szymonkaliski.com/projects/fonomapa/	No title	'Fonomapa flow/control built interactive installation for 20th Kids Art Biennale in Poznań in 2015.	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2015-10-08
167	https://szymonkaliski.com/projects/kinect2osc/	No title	'Kinect2OSC  Kinect2OSC is a small application for receiving and transmitting data from Kinect 360 	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2015-09-20
168	https://szymonkaliski.com/projects/loop-pi/	No title	'LoopPI LoopPI is a standalone four track audio looper made with Raspberry PI, ChucK and Node.js. E	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-19
169	https://szymonkaliski.com/projects/sensorium/	No title	'Sensorium flow/control collaborated with talented Rafał Zapała on his "Sensorium" installation, ba	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-10
170	https://szymonkaliski.com/projects/eeg2osc/	No title	"EEG2OSC  EEG2OSC was created for Rafał Zapała's Sensorium project. It was used to pass data from E	https://szymonkaliski.com	https://szymonkaliski.com/favicon.ico	2014-10-10
180	gemini://xj-ix.luxe/posts/2020-11-17-nyu-tokyo-roadmap.gmi	nyu.tokyo (ᴎoT THɘ wiᴙɘb) roadmap		gemini://xj-ix.luxe	/favicon.ico	2020-11-17
181	gemini://xj-ix.luxe/posts/2020-11-17-go-build-your-own-eco-village.gmi	re: a miscommunication		gemini://xj-ix.luxe	/favicon.ico	2020-11-17
182	gemini://xj-ix.luxe/posts/2020-10-07-entering-the-dark-forest.gmi	entering the dark forest		gemini://xj-ix.luxe	/favicon.ico	2020-10-07
178	gemini://xj-ix.luxe/posts/2021-01-14-parasitic-hypervisor.gmi	parasitic hypervisor		gemini://xj-ix.luxe	/favicon.ico	2021-01-14
179	gemini://xj-ix.luxe/posts/2020-12-22-i-made-it.en.gmi	i made it		gemini://xj-ix.luxe	/favicon.ico	2020-12-22
183	gemini://xj-ix.luxe/posts/2020-09-12-grid-grid.gmi	grid-grid, intimations on building decentralized computer systems		gemini://xj-ix.luxe	/favicon.ico	2020-09-12
201	http://nonmateria.com/posts/2021_04_24__naresh_ran_-_kutna_hora.html	naresh ran - kutna hora	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t     \\n\\t\\t\\t    Your browser does not support the video tag. 	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-04-24
1	http://nonmateria.com/posts/2021_04_24__naresh_ran_-_kutna_hora.html	naresh ran - kutna hora	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t     \\n\\t\\t\\t    Your browser does not support the video tag. 	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-04-24
2	http://nonmateria.com/posts/2021_03_19__la_retta.html	la retta	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t     \\n\\t\\t\\t    Your browser does not support the video tag. 	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-19
202	http://nonmateria.com/posts/2021_03_19__la_retta.html	la retta	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t     \\n\\t\\t\\t    Your browser does not support the video tag. 	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-19
3	http://nonmateria.com/posts/2021_03_15__url_changed.html	url changed	' \\n\\t\\t\\t \\n\\t\\t\\tHello readers! \\n\\t\\t\\t \\n\\t\\t\\tFrom now on, the canonical url for this feed won	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-15
203	http://nonmateria.com/posts/2021_03_15__url_changed.html	url changed	' \\n\\t\\t\\t \\n\\t\\t\\tHello readers! \\n\\t\\t\\t \\n\\t\\t\\tFrom now on, the canonical url for this feed won	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2021-03-15
184	gemini://xj-ix.luxe/posts/2020-08-20-inverting-the-technolopy.gmi	inverting the technopoly		gemini://xj-ix.luxe	/favicon.ico	2020-08-20
185	gemini://xj-ix.luxe/posts/2020-08-16-hyperlocal-concept-quandries.gmi	hyperlocal concept, quandaries		gemini://xj-ix.luxe	/favicon.ico	2020-08-16
186	gemini://xj-ix.luxe/posts/2020-08-11-memex-dev-updates.gmi	memex dev updates		gemini://xj-ix.luxe	/favicon.ico	2020-08-11
187	gemini://xj-ix.luxe/posts/2020-08-07-social-admin.gmi	social.ssg admin		gemini://xj-ix.luxe	/favicon.ico	2020-08-07
188	gemini://xj-ix.luxe/posts/2020-07-14-ethical-marketing-hyperlocal.gmi	ethical marketing at hyperlocal		gemini://xj-ix.luxe	/favicon.ico	2020-07-14
189	gemini://xj-ix.luxe/posts/2020-06-18-rlog.gmi	rlog		gemini://xj-ix.luxe	/favicon.ico	2020-06-18
204	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	infected clock III	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tinfected clock III \\n\\t\\t\\t \\n\\t\\t\\t( code )	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-11-16
4	http://nonmateria.com/posts/2020_11_16__infected_clock_III.html	infected clock III	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tinfected clock III \\n\\t\\t\\t \\n\\t\\t\\t( code )	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-11-16
5	http://nonmateria.com/posts/2020_10_30__pages_added.html	pages added	' \\n\\t\\t\\t \\n\\t\\t\\tPages added to the website: \\n\\t\\t\\t\\t \\n\\t\\t\\t\\t\\tOn my relationship with objec	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-30
205	http://nonmateria.com/posts/2020_10_30__pages_added.html	pages added	' \\n\\t\\t\\t \\n\\t\\t\\tPages added to the website: \\n\\t\\t\\t\\t \\n\\t\\t\\t\\t\\tOn my relationship with objec	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-30
6	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	infected clock II	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tinfected clock II \\n\\t\\t\\t \\n\\t\\t\\t( code ) 	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-27
206	http://nonmateria.com/posts/2020_10_27__infected_clock_II.html	infected clock II	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tinfected clock II \\n\\t\\t\\t \\n\\t\\t\\t( code ) 	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-10-27
217	https://oddworlds.org/gallery/gallery-2021.html	2021 Photo Gallery	"Will this be a year of rebuilding? Moved to Portugal for a few months.\\nPlaces I've been to:\\n\\nVe	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-22
211	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 13/14  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
11	http://nonmateria.com/posts/2020_07_09f_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 13/14  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
12	http://nonmateria.com/posts/2020_07_09e_motore_immoto_1.html	motore immoto 1	' \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\t \\n\\t\\t\\tmotore immoto #1 \\n\\t\\t\\tp. 11/12  	http://nonmateria.com	http://nonmateria.com/data/favicon.png	2020-07-09
218	https://oddworlds.org/cooking/moka.html	Coffee with a "moka" machine	"A different perspective. (It's apparently subtler than I thought.)"	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-21
219	https://oddworlds.org/cooking/pita.html	Pita	'For when you want bread, without all the complication.'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-15
220	https://oddworlds.org/wiki/radio.html	Radio	'Some notes on operating and making sense of radios.'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-03-09
221	https://oddworlds.org/wiki/entrepreneurship.html	Entrepreneurship	'Many (including myself!) find it quite paradoxical that I teach a course about entrepreneurship. A	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-10
222	https://oddworlds.org/wiki/ethics.html	Ethics	'Ethics is the collective process that defines what is "right" and what is "wrong" at a given time.	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-10
223	https://oddworlds.org/cooking/0-fermenting.html	Meta: Fermenting	'Simple, to the point, no frills.'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2021-02-09
228	https://oddworlds.org/thoughts/memoria.html	Memoria	'Così funziona.'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-08-16
237	https://chad.is/dick-jokes/	Dick jokes	'What to do when you realize things aren’t the way they ought to be.'	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2021-04-17
238	https://chad.is/endless-forms-most-beautiful/	Endless forms most beautiful	'A meditation on my place in the universe'	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2021-01-23
239	https://chad.is/the-work-of-the-listener/	The work of the listener	'Reflections on the art of paying attention.'	https://chad.is	https://chad.is/favicon-32x32.png?v=4f5cbd4af3a75c16b66eb002e09761ca	2020-06-06
234	https://oddworlds.org/cooking/pizza.html	Pizza	'As simple as it can get.'	https://oddworlds.org	https://oddworlds.org/favicon.ico	2020-05-23
260	https://bismuth.garden/2020/11/ruby-squares	Ruby squares		https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-11-11
272	https://now.lectronice.com/then/2021-04w16/	W16 :: Cutting		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-04-18
273	https://now.lectronice.com/then/2021-04w15/	W15 :: Sleeping		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-04-11
266	https://xvw.github.io/longs/kotlin_extensions.html	Kotlin, extensions et génériques		https://xvw.github.io	https://xvw.github.io/favicon.ico	2020-04-29
267	https://xvw.github.io/longs/introduction_algebraic_effects.html	Tests unitaires de fonctions impures		https://xvw.github.io	https://xvw.github.io/favicon.ico	2020-03-10
268	https://xvw.github.io/longs/introduction_aux_monades.html	Un article sur les monades en 2018		https://xvw.github.io	https://xvw.github.io/favicon.ico	2018-08-22
269	https://xvw.github.io/longs/konbini_tac_au_tac_manben.html	Konbini, Tac au tac et Manben		https://xvw.github.io	https://xvw.github.io/favicon.ico	2018-08-19
270	https://xvw.github.io/longs/zipper_history.html	Voyager dans le temps avec un Zipper		https://xvw.github.io	https://xvw.github.io/favicon.ico	2017-11-20
261	https://bismuth.garden/2020/09/beyond-sustainable	Links: Beyond sustainable		https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-21
262	https://bismuth.garden/2020/09/oddments-2	Oddments II		https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-20
263	https://bismuth.garden/2020/09/oddments	Oddments		https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-14
264	https://bismuth.garden/2020/09/did-you-find-it-i-did	‘Did you find it?’ ‘I did’		https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-11
265	https://bismuth.garden/2020/09/sowing-seeds	Sowing seeds		https://bismuth.garden	https://bismuth.garden/favicon.ico	2020-09-10
274	https://now.lectronice.com/then/2021-04w14/	W14 :: Fixing old things		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-04-04
275	https://now.lectronice.com/then/2021-03w13/	W13 :: Bulking		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-28
276	https://now.lectronice.com/then/2021-03w12/	W12 :: Darkness my old friend		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-21
277	https://now.lectronice.com/then/2021-03w11/	W11 :: Tokiponing		https://now.lectronice.com	https://now.lectronice.com/lectrologo.svg	2021-03-14
310	https://longest.voyage/log/just-an-earthquake/	Just an Earthquake	'There was an earthquake on the night before Valentine’s day. One of the biggest in Japan since the	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-02-21
311	https://longest.voyage/log/writing-notes/	Writing Notes	'I’ve had this tiny The Hobbit themed Moleskine notebook for years. It’s “pocket sized” in that if 	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-02-20
312	https://longest.voyage/log/nice-and-soft/	Nice And Soft	'\\n\\n\\n\\nSunrise near the share house I used to live\\n\\n\\nI really enjoy soft things. Soft socks. F	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-02-20
313	https://longest.voyage/log/2021-01/	January Rambling	'I don’t have much in particular to say. This is just some rambling.\\nWe finished off last year wit	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2021-01-17
314	https://longest.voyage/log/autumn-abroad/	Autumn Abroad	'The leaves have started to change. Mornings have been chilly around the lower fifties, and the aft	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-11-15
315	https://longest.voyage/log/a-new-anxiety/	A New Anxiety	'This morning I woke up early. My body continuing it’s habit to wake me up early regularly regardle	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-11-08
316	https://longest.voyage/log/apolitical/	Apolitical	'Personal Political Opinion Warning\\nI am a white middle class American male. Growing up I had the 	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-10-09
317	https://longest.voyage/log/snacks-and-such/	Snacks and the Weather	'Life in the shoebox continues for the moment. Have plans to move into a proper apartment soon. Whi	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-09-14
320	https://longest.voyage/log/life-in-the-shoebox/	Life in the Shoebox	'I am probably not the only one who feels like days have started to blend together. I have been wor	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-04-26
321	https://longest.voyage/log/the-burger-search/	The Burger Search	'I apologize now as I started this post before the most of the shutdown stuff really kicked off. Ta	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-04-11
322	https://longest.voyage/log/one-at-a-time/	One at a Time	'I refer to myself as a serial hobbyist. There are so many things that I am interested in. Too many	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-03-14
323	https://longest.voyage/log/first-month/	First Month	'A month ago I arrived in Tokyo. Adjustments have been incremental. I usually take the weekends to 	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-02-08
324	https://longest.voyage/log/lag/	Lag	'You’d think after more than a week and being able to sleep a whole night through, jet lag would be	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-01-20
325	https://longest.voyage/log/arrival/	Arrival	'I arrived at Haneda yesterday afternoon. I don’t know if it’s because of winter or if the sun sets	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2020-01-09
326	https://longest.voyage/log/replay/	Replay	'I’ve loved the idea of living in Japan for a year or two since high school. I traveled there with 	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2019-12-02
327	https://longest.voyage/log/week4/	Week 4: Random Thoughts	'I’m bad at sticking to hobbies. I consider myself a serial hobbiest. I have to force myself to kee	https://longest.voyage	https://longest.voyage/favicon-32x32.png	2018-11-18
329	https://kokorobot.ca/site/sketchbook.html	Sketchbook	'\\n    Added a sketchbook page, with random works that aren\\'t on the main illustration page.Contin	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-04-19
330	https://kokorobot.ca/site/pandoc.html	Pandoc notes	'\\n    I updated my notes on using pandoc to publish e-books to include exports to Epubs and Mobi.C	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-04-01
331	https://kokorobot.ca/site/wunderrabbits.html	Wunderland Rabbits	'\\n    A photo project of the rabbits Rek and Dev touring Vancouver Island with their good friends,	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-03-18
332	https://kokorobot.ca/site/busydoingnothing.html	Busy Doing Nothing e-book release	'\\n    Added a page for the released of Busy Doing Nothing, 217-page e-book chronicling daily happe	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-02-19
333	https://kokorobot.ca/site/illustration.html	Uxn mascot	'\\n    Made a mascot for Uxn, a little VM project by Hundredrabbits. Paired the illustration with G	https://kokorobot.ca	https://kokorobot.ca/media/services/favicon.ico	2021-02-01
338	https://ameyama.com/blog/debouncing-vue-component-methods	(雨山) Debouncing Vue Component Methods	'Hey! In this post, I\\'m going to jot down a solution I found to a little web development problem I	https://ameyama.com	https://ameyama.com/favicon.ico	2021-04-20
339	https://ameyama.com/blog/2020-the-year-in-review	(雨山) 2020: The Year in Review	'Obviously, this year has been hard for everyone because of COVID, so I\\'ll skip over all of that. 	https://ameyama.com	https://ameyama.com/favicon.ico	2020-12-30
340	https://ameyama.com/blog/sleep-with-me-a-testimonial	(雨山) Sleep With Me: A Testimonial	'I used to listen to a podcast called Half Hour Intern. In each episode — which usually lasted more	https://ameyama.com	https://ameyama.com/favicon.ico	2020-10-07
341	https://ameyama.com/blog/vercel	(雨山) Vercel	'Hey! Just a quick note: I\\'m moving to Vercel, so some pages may not work while I\\'m getting stuff	https://ameyama.com	https://ameyama.com/favicon.ico	2020-09-28
342	https://ameyama.com/blog/focus-on-the-inputs	(雨山) Focus on the Inputs	'So, I\\'m about 40 pounds overweight right now, and I\\'m not happy about it. I\\'ve been trying to l	https://ameyama.com	https://ameyama.com/favicon.ico	2020-07-10
343	https://ameyama.com/blog/reply-none	(雨山) Reply None	"\\nContent Warning: Vagueblogging\\n\\nTo whom it may concern:\\nI wish I had the right words for a re	https://ameyama.com	https://ameyama.com/favicon.ico	2020-05-30
348	https://phse.net/no-off-switch/	No Off Switch	'I’ve invented a new type of computer. A computer with no off switch. It cannot be stopped by smash	https://phse.net	https://phse.net/favicon-32.png	2021-02-26
349	https://phse.net/authoring-a-gemini-capsule-with-hugo/	Authoring a Gemini Capsule with Hugo	'I’ve been exploring Gemini recently and I love the simplicity. Ideally one can author a Gemini “ca	https://phse.net	https://phse.net/favicon-32.png	2021-02-14
350	https://phse.net/the-perfect-todo-list/	The Perfect To-Do List	'The to-do list is an indispensable part of my productivity cycle. Mostly it helps me build momentu	https://phse.net	https://phse.net/favicon-32.png	2021-01-31
355	https://phse.net/three-layer-goal-setting/	Three Layer Goal-Setting	'There’s a lot of wisdom out there about setting and achieving goals. Like most of the conventional	https://phse.net	https://phse.net/favicon-32.png	2020-01-10
356	https://phse.net/2019/	Yearly Review 2019	'Time for another year-end review post. 2019 had its share of ups and downs. First let’s see how I 	https://phse.net	https://phse.net/favicon-32.png	2019-12-30
357	https://phse.net/tetris-analogy/	Why is Tetris such a good analogy?	'What do the activities packing your car, designing software, and managing your social calendar all	https://phse.net	https://phse.net/favicon-32.png	2019-10-25
358	https://phse.net/a-new-minimalism/	A New Minimalism	'I stumbled on the blog ribbonfarm recently, and it’s a rather entertaining read. If you don’t alre	https://phse.net	https://phse.net/favicon-32.png	2019-09-28
359	https://phse.net/august-update/	August Update	'Here’s an update about what’s been going on with me the past couples months:\\nI traveled to Costa 	https://phse.net	https://phse.net/favicon-32.png	2019-08-20
360	https://phse.net/naive-sudoku/	Naive Sudoku	'Recently I helped my brother rewrite a sudoku solver he had been hacking on. His original implemen	https://phse.net	https://phse.net/favicon-32.png	2019-07-27
361	https://phse.net/notes-template/	How I organize project notes	'Either I’ve been distracted by a particularly resonant book or article, or I’ve had too much coffe	https://phse.net	https://phse.net/favicon-32.png	2019-06-08
362	https://phse.net/choose-people/	Choose people, not projects	'It’s normal for people to want to be fulfilled by the activities which they spend the most time do	https://phse.net	https://phse.net/favicon-32.png	2019-06-05
363	https://phse.net/curiosity/	Curiosity & Focus	'There are two sentiments I come across frequently when talking with creative people:\\n “I should r	https://phse.net	https://phse.net/favicon-32.png	2019-03-30
364	https://phse.net/commonplace/	A Commonplace Repository	'I keep a repository of various things I have learned but can’t possibly remember in totality (or r	https://phse.net	https://phse.net/favicon-32.png	2019-03-23
365	https://phse.net/recently/	Recently	'Currently, I’m:\\n Practicing photography and drawing Working at thoughtbot Singing to my 2 cats Ob	https://phse.net	https://phse.net/favicon-32.png	2019-03-21
366	https://phse.net/tools/	A List of the Tools I'm Using	'Here’s a list of the gear I use:\\nDrawing  Tombow Fudenosuke Brush Pen (Soft type) Caran D’Ache Gr	https://phse.net	https://phse.net/favicon-32.png	2019-02-12
367	https://phse.net/sketchbook/	Always Carry a Sketchbook	'I like to keep a sketchbook with me wherever I go. Pocket-sized sketchbooks are highly portable, a	https://phse.net	https://phse.net/favicon-32.png	2019-02-09
368	https://phse.net/2018/	Yearly Review 2018	'2018 was an exciting year. I started a new job, traveled to Hawaii, and learned the basics of call	https://phse.net	https://phse.net/favicon-32.png	2019-01-01
369	https://phse.net/minimalism/	On Minimalism	'I find myself discussing minimalism more often recently. When the topic comes up, the conversation	https://phse.net	https://phse.net/favicon-32.png	2018-12-31
370	https://joybox.rosano.ca	Joybox	'A pinboard for media.'	https://joybox.rosano.ca	https://joybox.rosano.ca/application_icon_x512.png	2021-04-20
371	https://ring.0data.app	Small Web App Ring	'A webring for web apps.'	https://ring.0data.app	https://ring.0data.app/favicon.ico	2021-03-29
372	https://emojilog.rosano.ca	Emoji Log	'Measure Your Progress.'	https://emojilog.rosano.ca	https://emojilog.rosano.ca/application_icon_x512.png	2021-03-25
373	https://rosano.hmm.garden	Personal wiki	'A reference of various information.'	https://rosano.hmm.garden	https://rosano.hmm.garden/favicon.ico	2021-01-03
374	https://0data.app	Zero Data App	'Own your data, all of it.'	https://0data.app	https://0data.app/favicon.ico	2020-12-08
375	https://kommit.rosano.ca	Kommit	'Augment your memory'	https://kommit.rosano.ca	https://kommit.rosano.ca/application_icon_x512.png	2020-06-24
376	/en/aural	Aural	'A collection of minute-long ambient audio recordings from personal travels in various locations.'	\N	\N	2019-12-17
377	https://massagetxt.rosano.ca	MassageTXT	'Convert between text and structured data'	https://massagetxt.rosano.ca	https://massagetxt.rosano.ca/application_icon_x512.png	2019-11-26
378	https://launchlet.dev	Launchlet	'Customize the web with JavaScript or CSS'	https://launchlet.dev	https://launchlet.dev/application_icon_x512.png	2019-11-19
379	https://idiomatic.rosano.ca	Idiomatic	'Convert text between Markdown, HTML, and Rich Text.'	https://idiomatic.rosano.ca	https://idiomatic.rosano.ca/application_icon_x512.png	2019-01-24
386	https://teknari.com/blogpost/1595783382418/Books	Books	'\\n\\n\\n\\n  \\n2019 Journal\\n\\n\\n\\n  \\n2018 Journal\\n\\n\\n\\n  \\n2017 Journal\\n\\n\\n\\n\\n\\n\\n  \\n2016 Jou	https://teknari.com	https://teknari.com/favicon.ico	2020-07-26
382	https://rosano.tumblr.com/tagged/Opus-7/chrono	Belonging	'A panel discussion about what keeps us apart and what brings us together, featuring Will Prosper, 	https://rosano.tumblr.com	https://64.media.tumblr.com/avatar_3f94d37e1578_128.pnj	2016-10-06
380	/en/sonogrid	sonogrid	'Drum machine on steroids'	\N	\N	2018-09-06
387	https://teknari.com/blogpost/1595774170477/St+Petersburg+Handmade+Prints+Book	St Petersburg Handmade Prints Book	'April 2014\\nSt Petersburg\\nHandsewn book of handmade prints\\nEdition of 5\\nNaCl, AgNO3, C2H6O, Gel	https://teknari.com	https://teknari.com/favicon.ico	2020-07-26
381	/en/carrot-price	Carrot Price	'Save money on groceries'	\N	\N	2018-07-04
383	/en/ticker	Ticker	'Super precise, super audible metronome with beatmatch and tone generator'	\N	\N	2015-02-25
384	/en/quick-record	Quick Record	'Voice memos audio recorder with iCloud sync'	\N	\N	2015-01-16
385	/en/audioscrub	AudioScrub	'Play music by ear'	\N	\N	2014-08-08
388	https://teknari.com/blogpost/1595699426843/St+Petersburg	St Petersburg	'2014\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n\\n\\n\\n\\nFull Book 	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
389	https://teknari.com/blogpost/1595697208582/Dreams+of+Itself	Dreams of Itself	'December 2013\\nBowery NYC\\nHand sewn book of polaroids\\nEdition of 10\\nModel: Kelly\\n\\n  \\n\\n  \\n\\	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
390	https://teknari.com/blogpost/1595696509825/Eraser	Eraser	'\\nNovember 2013\\nBowery NYC\\nHand sewn book of polaroids\\nEdition of 6\\nModel: Cacia Zoo\\n\\n  \\n\\n	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
391	https://teknari.com/blogpost/1595694736717/Chickenfruit	Chickenfruit	'October 2013\\nBowery NYC\\nHand-sewn book of polaroids\\nEdition of 5\\nModel: Victoria Sans\\n\\n  \\n\\	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
393	https://teknari.com/blogpost/1595683646064/2015+November+Journal+	2015 November Journal 	'\\n\\nPages 2128 - 2238\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-25
401	https://teknari.com/blogpost/1594587027196/2015+April+Journal	2015 April Journal	'\\n\\nPages 1223 - 1366\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-12
402	https://teknari.com/blogpost/1594567446819/2015+March+Journal	2015 March Journal	'\\n\\nPages 1099 - 1222\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-12
403	https://teknari.com/blogpost/1594562577891/2015+February+Journal	2015 February Journal	'Pages 0987 - 1098\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n'	https://teknari.com	https://teknari.com/favicon.ico	2020-07-12
404	https://teknari.com/blogpost/1594344859804/2015+January+Journal	2015 January Journal	'\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-10
405	https://teknari.com/blogpost/1594318116313/2017+Journal	2017 Journal	'Pages 2432-2504\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n'	https://teknari.com	https://teknari.com/favicon.ico	2020-07-09
406	https://teknari.com/blogpost/1594317403488/2016+Journal	2016 Journal	'\\nPages 2362-2431\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n'	https://teknari.com	https://teknari.com/favicon.ico	2020-07-09
407	https://teknari.com/blogpost/1594314179451/2018+Journal	2018 Journal	'\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  '	https://teknari.com	https://teknari.com/favicon.ico	2020-07-09
408	https://teknari.com/blogpost/1594235757539/2014+Journal	2014 Journal	'Pages 0679 - 0860\\n\\n  \\n\\n\\n  \\n\\n  \\n\\n\\n\\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n'	https://teknari.com	https://teknari.com/favicon.ico	2020-07-08
409	https://teknari.com/blogpost/1594234205140/2013+Journal	2013 Journal	'Pages 0250 - 0677 \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n  \\n\\n'	https://teknari.com	https://teknari.com/favicon.ico	2020-07-08
410	https://teknari.com/blogpost/1594233551325/	\N	''	https://teknari.com	https://teknari.com/favicon.ico	2020-07-08
616	https://gueorgui.net/blog/2020/new-projects-dissertation-returnees/	Two new projects: dissertation and Returnees 海归		https://gueorgui.net	https://gueorgui.net/assets/images/favicon.png	2020-03-22
617	https://gueorgui.net/blog/2020/hello-again-world/	Hello again, World!		https://gueorgui.net	https://gueorgui.net/assets/images/favicon.png	2020-02-01
626	https://sixey.es/imagery/mspaint/	+ images in mspaint	'\\n\\t\\t\\t\\tadded 4 images\\n\\t\\t\\t'	https://sixey.es	https://sixey.es/favicon.ico	2019-09-10
627	https://sixey.es/imagery/arthur/	arthur_resource	'\\n\\t\\t\\t\\tarthur is a mac fanboy but not a very good hacker actually...\\n\\t\\t\\t\\tbut he has the po	https://sixey.es	https://sixey.es/favicon.ico	2019-09-07
628	https://icyphox.sh/blog/free-sw-censor	Free software should not censor		https://icyphox.sh	https://icyphox.sh/favicon.png	2021-04-07
629	https://icyphox.sh/blog/nvim-lua	Configuring Neovim using Lua		https://icyphox.sh	https://icyphox.sh/favicon.png	2021-02-07
630	https://icyphox.sh/blog/signal	We can do better than Signal		https://icyphox.sh	https://icyphox.sh/favicon.png	2021-01-17
631	https://icyphox.sh/blog/whatsapp	What's next after WhatsApp?		https://icyphox.sh	https://icyphox.sh/favicon.png	2021-01-08
632	https://icyphox.sh/blog/2020-in-review	2020 in review		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-12-24
633	https://icyphox.sh/blog/music-streaming	My music streaming setup		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-12-13
638	https://icyphox.sh/blog/twitter	Some thoughts on Twitter		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-08-03
639	https://icyphox.sh/blog/2020-07-20	Status update		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-07-20
640	https://icyphox.sh/blog/flask-jwt-login	Flask-JWT-Extended × Flask-Login		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-06-24
641	https://icyphox.sh/blog/dont-news	You don't need news		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-06-21
643	https://icyphox.sh/blog/site-changes	Site changes		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-27
644	https://icyphox.sh/blog/efficacy-deepfakes	The efficacy of deepfakes		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-11
645	https://icyphox.sh/blog/simplicity-security	Simplicity (mostly) guarantees security		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-07
646	https://icyphox.sh/blog/s-nail	The S-nail mail client		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-06
647	https://icyphox.sh/blog/mastodon-social	Stop joining mastodon.social		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-05-05
648	https://icyphox.sh/blog/openbsd-hp-envy	OpenBSD on the HP Envy 13		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-04-17
653	https://icyphox.sh/blog/prosody	Setting up Prosody for XMPP		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-02-18
654	https://icyphox.sh/blog/2020-01-18	Status update		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-18
655	https://icyphox.sh/blog/mnml-browsing	Vimb&#58; my Firefox replacement		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-16
656	https://icyphox.sh/blog/five-days-tty	Five days in a TTY		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-13
657	https://icyphox.sh/blog/2019-in-review	2019 in review		https://icyphox.sh	https://icyphox.sh/favicon.png	2020-01-02
658	https://icyphox.sh/blog/ru-vs-gb	Disinfo war&#58; RU vs GB		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-12-12
676	https://royniang.com/fastmail_and_9front.html	Fastmail and 9front	'\\nMore general guides about 9front can be found by visiting the 9guide host. You might be interest	https://royniang.com	https://royniang.com/media/services/icon.png	2021-01-15
677	https://royniang.com/scrawl_01y06.html	Scrawl 01Y06	'\\nI’ve had enough of being stuck in TTY world for day to day computing. Using a CLI for checking e	https://royniang.com	https://royniang.com/media/services/icon.png	2020-12-08
678	https://royniang.com/scrawl_01y02.html	Scrawl 01Y02	'\\nFew days ago, I lost my day job. I used to work as a bookseller, I did a good job there. But it 	https://royniang.com	https://royniang.com/media/services/icon.png	2020-12-04
667	https://icyphox.sh/blog/digital-minimalism	Thoughts on digital minimalism		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-10-05
668	https://icyphox.sh/blog/2019-09-27	Status update		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-09-27
669	https://icyphox.sh/blog/2019-09-17	Status update		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-09-17
670	https://icyphox.sh/blog/disinfo	Disinformation demystified		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-09-10
671	https://icyphox.sh/blog/mailserver	Setting up my personal mailserver		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-08-15
672	https://icyphox.sh/blog/fb50	Picking the FB50 smart lock (CVE-2019-13143)		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-08-05
673	https://icyphox.sh/blog/rop-on-arm	Return Oriented Programming on ARM (32-bit)		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-06-06
675	https://icyphox.sh/blog/python-for-re-1	Python for Reverse Engineering		https://icyphox.sh	https://icyphox.sh/favicon.png	2019-02-08
681	https://royniang.com/haiku_os.html	Easy computing	"\\n\\nHaiku OS — Notes on a personal computing OS\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-12-08
683	https://royniang.com/patience.html	Added public gmi files to koikoi’s build	"\\n\\nPatience Databases — A plain text playground for data gardening\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-11-01
682	https://royniang.com/patience.html	Patience (Daniel Clowes, 2016)	"\\n\\nPatience Databases — A plain text playground for data gardening\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-11-01
692	https://royniang.com/practice.html	Drafted l, a, d and b	"\\n\\nPractice — A font naively designed\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
690	https://royniang.com/practice.html	Fixed weight issues; some new glyphs	"\\n\\nPractice — A font naively designed\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
688	https://royniang.com/practice.html	Began working on the uppercase	"\\n\\nPractice — A font naively designed\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
689	https://royniang.com/practice.html	Better ascenders and descenders	"\\n\\nPractice — A font naively designed\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-10-01
697	https://royniang.com/kiroku.html	Mémoires	"\\n\\nKiroku — Collection of systems and hardware\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-17
698	https://royniang.com/language.html	Design and communication	"\\n\\nLanguage Learning — Communications systems\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-16
700	https://royniang.com/9front.html	Stacking	"\\n\\n9front — Post UNIX Operating System\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-09-02
702	https://royniang.com/sam.html	Navigation	"\\n\\nsam Editor — Notes and cheatsheet on the sam editor\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-08-07
703	https://royniang.com/photography.html	Selfportrait	"\\n\\nPhotography — GRAIN GRAIN GRAIN\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-07-30
704	https://royniang.com/rio.html	Busy 9front session	"\\n\\n9front’s rio — Notes on Plan 9’s window system\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-07-19
706	https://royniang.com/intrfc.html	INTRFC.com is live	"\\n\\nINTRFC — INTRFC is a community of visual artists\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-05-13
708	https://royniang.com/illustration.html	HyperCard portrait	"\\n\\nIllustration — Creating visual worlds\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-05-04
710	https://royniang.com/japanese.html	ガロ	"\\n\\nJapanese Learning — Study notes on japanese\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-31
711	https://royniang.com/library.html	ほんやら洞のべんさん	"\\n\\nUncurated Library — Images, words, inputs\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-27
712	https://royniang.com/computers.html	Bombed shell	"\\n\\nComputer Workstations — The machines that assist me\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-24
713	https://royniang.com/edc.html	Busted Moleskine	"\\n\\nEveryday Carry — Items that follow me each day\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-21
714	https://royniang.com/reading.html	Lockdown cleaning	"\\n\\nUncurated Reading List — Paper smells better than screens\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-19
699	https://royniang.com/keyboards.html	RAMA M10-C	"\\n\\nMechanical Keyboards — Typing specs\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-17
715	https://royniang.com/keyboards.html	The Pebbles keyboard	"\\n\\nMechanical Keyboards — Typing specs\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-17
716	https://royniang.com/cameras.html	Leica M5	"\\n\\nCameras — Photographic gear\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-12
717	https://royniang.com/roy_niang.html	Out of focus	"\\n\\nAbout the Author — roy niang is a multidisciplinary artist\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2020-03-11
718	https://royniang.com/street.html	Octopus	"\\n\\nStreet Photography — Capture the odds\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
719	https://royniang.com/street.html	Goldfishes	"\\n\\nStreet Photography — Capture the odds\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
720	https://royniang.com/street.html	Summertime umbrella	"\\n\\nStreet Photography — Capture the odds\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
721	https://royniang.com/street.html	Girl playing with her dog	"\\n\\nStreet Photography — Capture the odds\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
722	https://royniang.com/street.html	iPad sunshade	"\\n\\nStreet Photography — Capture the odds\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
723	https://royniang.com/street.html	Kid and grandpa on a scooter	"\\n\\nStreet Photography — Capture the odds\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-10-03
728	https://royniang.com/nature.html	Abandoned building at La Réole	"\\n\\nNature Photography — Quieter places\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-02
726	https://royniang.com/nature.html	Riverside at La Réole	"\\n\\nNature Photography — Quieter places\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-02
727	https://royniang.com/nature.html	Hidden house at La Réole	"\\n\\nNature Photography — Quieter places\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-02
694	https://royniang.com/diary.html	Alto getting used to his new home	"\\n\\nThe Diary — Personal memories\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
705	https://royniang.com/diary.html	Maurane preparing her next movie	"\\n\\nThe Diary — Personal memories\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-08-01
737	https://www.edwinwenink.xyz/posts/55-deepfake_reality/	Deepfake Reality	'In a previous post\\n I discussed deepfakes from a hermeneutic perspective, by exploring how “a dee	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2021-04-28
738	https://www.edwinwenink.xyz/posts/54-a_plain_text_writing_convention/	Two perspectives on a plain-text writing convention	'Many Vim users, if not most, are programmers.\\nMany of the blogs you will find online about Vim ar	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2021-03-12
739	https://www.edwinwenink.xyz/posts/53-update_kobo_annotation/	Extracting Kobo EPUB Annotations	'In a previous post\\n I outlined two methods for extracting annotation files from Kobo e-readers.\\n	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2021-01-08
740	https://www.edwinwenink.xyz/posts/52-bayesian_terminology/	On Bayesian likelihood	'\\n\\n15/10/2020 Extended with an explanation of MAP; minor fixes and changed the title\\nTake Bob. B	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-09-01
741	https://www.edwinwenink.xyz/posts/51-python_secondary_sorting/	Secondary sorting in Python	'Let’s say we want to compute the mode of a series of numbers, meaning that we pick the value that 	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-07-29
742	https://www.edwinwenink.xyz/posts/50-quiz_yourself_in_vim/	Study Tip: Quiz yourself in Vim	'I haven’t written much for this website recently because it’s that time of the year again: exams a	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-06-16
743	https://www.edwinwenink.xyz/posts/49-russell_ai_technocracy_surveillance/	Russell on AI in technocracy and surveillance	'In chapter 4 of his book “Human Compatible”, Stuart Russell discusses various harmful applications	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-05-08
732	https://crlf.link/log/notes/210429-floc/	Opting out of FLoC		https://crlf.link	https://crlf.link/logo/favicon.ico	2021-04-29
733	https://crlf.link/log/notes/210422-1/	Moving the domain and hosting		https://crlf.link	https://crlf.link/logo/favicon.ico	2021-04-22
734	https://crlf.link/log/notes/210320-covid-vs/	Covid vs devils and demons		https://crlf.link	https://crlf.link/logo/favicon.ico	2021-03-20
730	https://royniang.com/identity.html	Minous, stretching	"\\n\\nIdentity — Choices that forged a visual identity\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-02-01
731	https://royniang.com/identity.html	Minous, the stray cat	"\\n\\nIdentity — Choices that forged a visual identity\\n  "	https://royniang.com	https://royniang.com/media/services/icon.png	2019-02-01
735	https://crlf.link/log/notes/210310-1/	Switching to Doom Emacs		https://crlf.link	https://crlf.link/logo/favicon.ico	2021-03-10
736	https://crlf.link/log/notes/210221-emacs/	Switching to Emacs		https://crlf.link	https://crlf.link/logo/favicon.ico	2021-02-21
747	https://materialfuture.net/posts/blog/2021-4-14-odysee-lbry/	I've Created A Odysee Channel	'In the past couple of months I\\'ve been getting a bit sceptical of the content and practices on Yo	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-04-14
748	https://materialfuture.net/posts/blog/2021-3-02-general-updates/	General Updates - March 2nd 2021	'This is just a quick update as I realize I dind\\'t post anything for Febuary as was AFK for most o	https://materialfuture.net	https://materialfuture.net/favicon.ico	2021-03-02
744	https://www.edwinwenink.xyz/posts/48-vim_fast_creating_and_linking_notes/	Creating and linking Zettelkasten notes in Vim	'This is the third post in a series of sorts about note-taking in Vim.\\nI have silently kept playin	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-04-15
745	https://www.edwinwenink.xyz/posts/47-tilde_server/	Setting up your own tilde club (UNIX)	'When I’m busy I am usually very motivated to do side projects, but paradoxically I find it harder 	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-04-11
746	https://www.edwinwenink.xyz/posts/46-ai_and_healthcare/	Tech giants will battle over your health data	'Published in Turning Magazine\\n, AI & Health edition, February.\\n\\nArtificial Intelligence (AI) pr	https://www.edwinwenink.xyz	https://www.edwinwenink.xyz/favicon.ico	2020-03-17
755	https://materialfuture.net/posts/music/sin-album/	Sin - Album	'\\nIntroduction\\nSin is my second album however was the first one that utilized professional equipm	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-21
756	https://materialfuture.net/posts/blog/music-page/	New Music Page	'I\\'ve been having some thoughts about how I want to discuss/present my music such as giving more c	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-16
757	https://materialfuture.net/posts/blog/services-update/	Services and Site Update - December 2020	'General Site/Services Update\\nIn this post I\\'ll be going over updates regarding services I run in	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-16
758	https://materialfuture.net/posts/videos/experimental-videos-mandelbrot/	Experimental Videos - Mandelbrot Set 4K	'I\\'ve been working on new videos and honing my proficiency with a new editor, the first video in a	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-12-16
759	https://materialfuture.net/posts/music/streaming-services/	Streaming Services and Listening To Music	'Online and Streaming\\nSince quite a few people I know tend to only stream their music or listen on	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-11-27
766	https://materialfuture.net/posts/games/new-games-category/	New Games Category	'So this is a new category I\\'m adding to my site tailored for discussions around games. I want thi	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-09-10
767	https://materialfuture.net/posts/blog/updates/	September 2020 Update	'Let me start of this post by stating that I have some plans for the rest of the year, ones that re	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-09-09
768	https://materialfuture.net/posts/blog/ideal-phone/	My Version Of An Ideal Phone	'Lately I\\'ve been debating in my mind what I value in life and more so what I value in the things 	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-08-23
779	https://materialfuture.net/posts/blog/2020-03-current-goals/	Current Goals - What I'm Working On	'Intro\\nSince the time of writing my last post I have had the chance to review all of\\nmy past work	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-03-12
780	https://materialfuture.net/posts/links/2020-02-links/	Links for February 2020	'Intro\\nThis month in February has been slow for me as I left my previous job and have been\\ntaking	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-02-19
781	https://materialfuture.net/posts/blog/2020-roadmap-and-restrospective/	2020 Roadmap and 2019 Retrospective	'Intro\\nLet me preface this post by saying that 2019 was a trying year for me and my family. This p	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-02-05
782	https://materialfuture.net/posts/blog/2020-01-site-redesign/	Redesigning My Site + Minimalism On The Web	'Intro\\nI created this site, and subsequently the Minimal Theme, as a means to create a better repo	https://materialfuture.net	https://materialfuture.net/favicon.ico	2020-01-29
786	https://travisshears.com/snippets/org_roam_capture_templates/	Org-Roam capture templates	'Recently I’ve started using org-roam, so far so good. Utilizing capture buffers I create notes for	https://travisshears.com	https://travisshears.com/favicon.ico	2021-04-06
787	https://travisshears.com/blog/delete_all_my_friends/	delete all my duolingo friends	'Language learning is big part of my life. Currently I’m focused on German and Russian. I’ve done f	https://travisshears.com	https://travisshears.com/favicon.ico	2021-03-22
788	https://travisshears.com/snippets/restart-nginx/	Restart Nginx	'Normally I use\\n$ sudo systemctl restart nginx but recently I had to take more drastic measures.\\n	https://travisshears.com	https://travisshears.com/favicon.ico	2021-02-07
789	https://travisshears.com/snippets/run-changed-tests/	Run Changed Tests	'npm run test – $(git diff master –name-only | rg ‘test.ts’) –coverage=false'	https://travisshears.com	https://travisshears.com/favicon.ico	2021-02-01
791	https://travisshears.com/blog/first-tank/	my start in the aquarium hobby	'First reef tank post! After weeks of research and implementation a small cube of sea is now being 	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-28
792	https://travisshears.com/blog/scheinbertspitze-tour/	scheinbertspitze tour	'Route\\nWhat makes a good ski tour? Tree skiing has always been important to me. Ever since I was l	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-17
793	https://travisshears.com/blog/schoenalmjoch-tour/	schönalmjoch tour	'Route\\nHow can we social distance and still see our friends? Meet outside for sports! The current 	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-14
794	https://travisshears.com/blog/unteres-lichteck-ridge-tour/	unteres lichteck ridge tour	'Route\\nAnother ski tour for you. This time south of Vorderriss down by the border to Austria.\\nsyl	https://travisshears.com	https://travisshears.com/favicon.ico	2021-01-13
802	https://travisshears.com/blog/instagram-archive/	instagram archive	'Instagram the home of my art work and a few personal photos, 2012 - 2020.\\n  Hello Internet I’m ar	https://travisshears.com	https://travisshears.com/favicon.ico	2020-10-01
803	https://travisshears.com/map/	Map	'Travel map Since moving to Europe the rate at which I experience new countries has increased ten f	https://travisshears.com	https://travisshears.com/favicon.ico	2020-09-28
804	https://travisshears.com/blog/why_small_images_plus_folderpics_demo/	small images + folderpics demo	'Why small images? Don’t send a 1.4mb png when a 30kb jpg will do.\\nImage optimisation is nothing n	https://travisshears.com	https://travisshears.com/favicon.ico	2020-09-14
808	https://travisshears.com/snippets/npm-i-vs-npm-ci/	npm i vs npm ci	'Today I discovered npm ci from a colleague. It does a clean install wiping out the node_modules be	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-17
809	https://travisshears.com/snippets/prevent-vim-auto-new-line/	Prevent Vim Auto New Lines	'Sometimes when typing vim will automatically start a newline. This is an expected behavior but at 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-13
810	https://travisshears.com/snippets/auto-find-ssh-keys/	Auto Find SSH Keys	'I use to always pass a key when sshing ex:\\n$ ssh -i ~/.ssh/de2 travis@vxxxxxxxxxxxxxxxxxxx.megasr	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-12
813	https://travisshears.com/blog/holland/	holland	'Welcome to Holland so many wind turbines\\n Just got back from a week on vacation in the Netherland	https://travisshears.com	https://travisshears.com/favicon.ico	2020-08-10
816	https://travisshears.com/blog/archiving-corona-cal/	archiving corona cal	'Time to archive my Corona Calendar project. It was a lot of fun to work on. Learned a lot about Sv	https://travisshears.com	https://travisshears.com/favicon.ico	2020-07-23
826	https://travisshears.com/snippets/moving-gpg-keys/	Moving GPG Keys	'New laptop. Got to move over those GPG keys.\\n$ cd /tmp && mkdir gpg_export $ gpg --output gpg_exp	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-20
827	https://travisshears.com/snippets/deployment-env-yaml-snippet/	K8s deployment.yaml env vscode snippet	'Most of my personal projects are deployed via kubernetes. I write a lot of deployment.yaml files. 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-20
828	https://travisshears.com/snippets/git-force-push-with-lease/	Force push with --lease for safety	'Just found out, via tweet, from the insightful joshdholtz that there is a safer alternative to git	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-10
829	https://travisshears.com/tutorials/adding-api-docs/	Adding Documentation to an API	'First video in my new studio setup!\\nEver tried to use an API with out good documentation? It is t	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-08
830	https://travisshears.com/snippets/open-notion-links/	Open Notion Links	'Recently I’ve started using Notion app for note taking. There came times when I wanted to write ab	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-07
831	https://travisshears.com/blog/personal-site-walk-through/	personal site walk through	'Trying something new here. I’m documenting how I do my personal site via screen cast. Got the work	https://travisshears.com	https://travisshears.com/favicon.ico	2020-06-01
832	https://travisshears.com/snippets/twtxt-config/	Twtxt Config Alias	'Recently I started using twtxt. I installed it with brew then setup it up via the quick setup comm	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-30
834	https://travisshears.com/blog/first-svelte-app/	first svelte app	'Corona Quarantine has been hard on all of us. To fight the boredom I started collecting online eve	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-02
835	https://travisshears.com/blog/start-teaching/	teaching javascript	'This semester I’ve started teaching JavaScript as part of REDI School. What was an in person class	https://travisshears.com	https://travisshears.com/favicon.ico	2020-05-01
850	https://travisshears.com/blog/lenggries-avalanche-course/	lenggries avalanche course	'assessing fresh avalanches\\n Last weekend Masha and I took a crew of eight friends down to Lenggri	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-07
851	https://travisshears.com/blog/mountain-safety-reminder/	mountain safety reminder	'In the last few weeks, I’ve witnessed several close calls in the mountains. Also recently having t	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-06
852	https://travisshears.com/blog/scuol-2020/	scuol hütte	'masha and i\\n Today I’m back after six days of adventuring from mountain hut near Scuol. It was a 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-02-03
853	https://travisshears.com/snippets/vim-fzf-plugin/	Vim FZF Plugin	'I’ve used several fuzzy finder utilities in vim over the years like Command T or CtrlP. They both 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-30
854	https://travisshears.com/snippets/jq-command-line-json-processor/	JQ JSON processor	'One of my oldest snippets is how to Pretty print JSON in the shell. This method works great for si	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-30
855	https://travisshears.com/snippets/emoji-commit-messages/	Emoji Commit Messages	'Something code reviews can be a bit monotonous but I always found emojis spice things up a bit. Un	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-28
856	https://travisshears.com/snippets/watch-command/	Watch Command	'Currently at work we occasionally have to redeploy pods that have the same image tag but different	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-27
859	https://travisshears.com/blog/start-of-ski-season/	start of ski season	'Marked by the start of the ski season winter is officially underway in Munich. The lack of snow in	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-12
860	https://travisshears.com/snippets/shell-for-loops/	For loops in bash / zsh shells	'Looping directly in the shell is something I do at lease once a week and it’s a great time saver. 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-12
862	https://travisshears.com/snippets/vim-arglist/	Super powers of the arg list	'Vim help:\\n The argument list *argument-list* *arglist*\\n  If you give more than one file name whe	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
863	https://travisshears.com/snippets/vim-ripgrep-custom/	Custom ripgrep	'In the past I used full plugin level text searching solutions the likes of :Rg, :Grep, :Ag from th	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
865	https://travisshears.com/snippets/vim-substitute/	Replae <s> with spell and nohl	'When is the last time you used the <s> key in vim? May not know what it even does?\\nThe vim help p	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
866	https://travisshears.com/snippets/vim-window-resize/	Resizing vim windows with arrow keys	'If your comfortable in vim you only use the j,h,k,l movement keys leaving the arrow keys open to d	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
867	https://travisshears.com/snippets/ffmpeg-screen-casts/	Uploadable FFMPEG screen casts	'I prefer tools like https://asciinema.org/ when I want to show terminal tricks and cli tools I bui	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
868	https://travisshears.com/snippets/vim-dictionary/	Vim dictionary lookup command	'As I author all my blog posts, including this text, as markdown documents with vim sometime I come	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
871	https://travisshears.com/snippets/git-who-last/	Who last edited a file	'$ git log -1 -- alice/alice/public/themes/core/views/layouts/src/css/main.scss Sometimes you just 	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
872	https://travisshears.com/snippets/git-log-grep/	Search git logs with grep	'$ git log --grep=NUTS-5288 --since=3.month Have I already made commits for this Jira ticket?\\nsour	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
884	https://travisshears.com/snippets/pass-bulk-import/	Bulk import into Pass	'$ passimport list.csv Switching to Pass was not exactly a straightforward process. It lacks a buil	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
885	https://travisshears.com/snippets/pass-copy/	Copy password from Pass to the keyboard	'$ pass -c github Switching to Pass, a CLI based password manager, was a big time saver for me. I w	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
886	https://travisshears.com/snippets/git-prev-commit-changes/	See previous commit changes	'git log -p -2 or git lg -p -2\\nViewing previous changes was something I relied on a GUI’s for, lik	https://travisshears.com	https://travisshears.com/favicon.ico	2020-01-11
897	https://travisshears.com/blog/frauenwasserl/	frauenwasserl	'Frauenwasserl is a great beginner friendly crag just outside Oberammergau. I’ve been there a few t	https://travisshears.com	https://travisshears.com/favicon.ico	2019-08-19
898	https://travisshears.com/blog/karwendelspitze-2019/	karwendelspitze	'Hiking Mittenwald—Karwendelspitze Route: https://www.komoot.com/tour/63845277?ref=wtd\\nParking: Mi	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-21
899	https://travisshears.com/blog/scanning-for-meaning/	scanning for meaning	'Project: Scanning for Meaning\\nSite: scanning-for-meaning.travisshears.xyz\\nRepo: gitlab\\nPics:\\n 	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-14
900	https://travisshears.com/blog/canada-2019/	canada	'Trip overview Recently my mother was doing a tour up the east coast in her small RV and I made my 	https://travisshears.com	https://travisshears.com/favicon.ico	2019-07-12
908	https://travisshears.com/corona_cal/	\N	''	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
910	https://travisshears.com/gpg/	GPG	'Send me an encrypted message Want to message me and be sure I’m the only one reading it?\\nEmail me	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
911	https://travisshears.com/micro-blog/	Micro Blog	'Welcome to by micro blog. It’s like twitter except open source, self-hosted, and respects my priva	https://travisshears.com	https://travisshears.com/favicon.ico	0001-01-01
912	https://ix5.org/thoughts/2020/moving/	Moving		https://ix5.org	https://ix5.org/favicon.png	2020-03-02
913	https://ix5.org/thoughts/2017/venezuela-presentation/	Venezuela: Un país de múltiples facetas		https://ix5.org	https://ix5.org/favicon.png	2019-01-19
914	https://ix5.org/thoughts/2017/grundgesetz-article-9/	Article 9: Freedom of coalition		https://ix5.org	https://ix5.org/favicon.png	2017-04-03
915	https://ix5.org/thoughts/2017/grundgesetz-article-8/	Article 8: Freedom of association		https://ix5.org	https://ix5.org/favicon.png	2017-04-03
916	https://ix5.org/thoughts/2017/grundgesetz-article-7/	Article 7: School System		https://ix5.org	https://ix5.org/favicon.png	2017-07-20
932	https://nor.the-rn.info/2021/04/23/the-sacred-underwriting-of-your-life/	The Sacred Underwriting of Your Life		https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-04-23
933	https://nor.the-rn.info/2021/04/09/building-norns-community/	Building “norns community”		https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-04-09
934	https://nor.the-rn.info/2021/03/20/rounding-errors/	Rounding Errors		https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-03-20
922	https://ix5.org/thoughts/2017/grundgesetz-article-1/	Article 1: Human Dignity and Rights		https://ix5.org	https://ix5.org/favicon.png	2017-04-03
924	https://ix5.org/thoughts/2017/larry-wilmore-whca-2016/	“Yo Barry, you did it my nigga”		https://ix5.org	https://ix5.org/favicon.png	2017-03-26
925	https://ix5.org/thoughts/2016/minimalism-is-for-suckers/	Minimalism is for suckers		https://ix5.org	https://ix5.org/favicon.png	2017-03-02
926	https://ix5.org/thoughts/2015/donating-blood/	Donating blood		https://ix5.org	https://ix5.org/favicon.png	2017-02-24
927	https://ix5.org/thoughts/2014/a-bit-of-wisdom/	A bit of wisdom		https://ix5.org	https://ix5.org/favicon.png	2017-02-24
928	https://ix5.org/thoughts/2014/back-in-germany/	Back in Germany		https://ix5.org	https://ix5.org/favicon.png	2017-02-24
929	https://ix5.org/thoughts/2014/2014-taiwan-bike-tour-travel-report/	2014 Taiwan bike tour travel report		https://ix5.org	https://ix5.org/favicon.png	2018-01-27
930	https://ix5.org/thoughts/2014/changhua-county/	Changhua county		https://ix5.org	https://ix5.org/favicon.png	2017-02-24
942	https://inqlab.net/rösti.html	Rösti		https://inqlab.net	https://inqlab.net/favicon.ico	2021-02-04
943	https://inqlab.net/sky.html	Sky		https://inqlab.net	https://inqlab.net/favicon.ico	2020-09-09
944	https://inqlab.net/geopub-activitypub-for-content-curation.html	GeoPub: ActivityPub for content curation		https://inqlab.net	https://inqlab.net/favicon.ico	2020-04-06
945	https://inqlab.net/allegra-openengiadina.html	Allegra openEngiadina!		https://inqlab.net	https://inqlab.net/favicon.ico	2020-03-21
946	https://inqlab.net/use-tor.html	Use Tor		https://inqlab.net	https://inqlab.net/favicon.ico	2020-03-20
935	https://nor.the-rn.info/2021/03/06/why-im-streaming-the-writing-of-my-next-album/	Why I’m Streaming the Making of My Next Album		https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2021-03-06
936	https://nor.the-rn.info/2020/12/29/the-eoy-info-sessions/	The EOY Info Sessions		https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-12-29
937	https://nor.the-rn.info/2020/12/25/that-which-is-unique-breaks/	That Which is Unique, Breaks		https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-12-25
938	https://nor.the-rn.info/2020/10/16/music-hackspace/	Music Hackspace		https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-10-16
939	https://nor.the-rn.info/2020/09/29/pandemic-day-203-floyd-protests-day-127/	Pandemic Day 203 / Floyd Protests Day 127		https://nor.the-rn.info	https://nor.the-rn.info/favicon-32x32.png	2020-09-29
947	https://inqlab.net/a-primer-on-the-semantic-web-and-linked-data.html	A Primer on the Semantic Web and Linked Data		https://inqlab.net	https://inqlab.net/favicon.ico	2019-11-19
948	https://inqlab.net/lord-of-the-flies.html	Lord of the Flies		https://inqlab.net	https://inqlab.net/favicon.ico	2019-10-22
949	https://inqlab.net/der-hase-und-der-igel.html	Der Hase und der Igel		https://inqlab.net	https://inqlab.net/favicon.ico	2019-09-14
950	https://inqlab.net/large-underground-temple.html	Large Underground Temple		https://inqlab.net	https://inqlab.net/favicon.ico	2016-03-14
951	https://inqlab.net/hong-kong-to-kunming.html	Hong Kong to Kunming		https://inqlab.net	https://inqlab.net/favicon.ico	2015-03-02
952	https://inqlab.net/karawane.html	Karawane		https://inqlab.net	https://inqlab.net/favicon.ico	1916-02-05
953	https://metasyn.pw/memex.html	5f90c23e68d81f624bd57bc9	'learning and writing about the history of the practice'	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-10-21
954	https://metasyn.pw/collections.html	5f97ccf1290b0a0a7ff5a95e	'i wrote down a handful of my favorite books, shows, and films'	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-10-27
955	https://metasyn.pw/hangul.html	5fb82d8526519b1134a64b54	"i decided recently that i want to learn how to read and write the korean alphabet. i've added my n	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-11-20
956	https://metasyn.pw/seedling.html	5fd07d52411b7550146a0c66	"today i recorded a new song. check it out! "	https://metasyn.pw	https://metasyn.pw/favicon.ico	2020-12-09
957	https://metasyn.pw/raiu.html	6069181991aae3107ec3d119	'a song i recorded for my dogbotic class'	https://metasyn.pw	https://metasyn.pw/favicon.ico	2021-04-04
958	http://milofultz.com/2021/04/11/tiny-font-3-by-3	📕 Make A Tiny 3x3 Font		http://milofultz.com	https://metasyn.pw/favicon.ico	2021-04-11
959	http://milofultz.com/2021/03/06/sublime-keymap	Find and Remove Autocompletes in Sublime Text 3		http://milofultz.com	https://metasyn.pw/favicon.ico	2021-03-06
960	http://milofultz.com/2021/01/28/snake-js	🐍 SNAKEHACK - snake with constantly changing controls		http://milofultz.com	https://metasyn.pw/favicon.ico	2021-01-28
961	http://milofultz.com/2021/01/08/software	Apps, Software, and More That I Use Everyday		http://milofultz.com	https://metasyn.pw/favicon.ico	2021-01-08
962	http://milofultz.com/2021/01/06/reverse-horoscope	🌌 Reverse Horoscope - Find Out Your Real Birthday (JS)		http://milofultz.com	https://metasyn.pw/favicon.ico	2021-01-06
963	http://milofultz.com/2020/12/27/atlb-notes	📕 Algorithms To Live By - Book Notes		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-12-27
964	http://milofultz.com/2020/12/13/aoc-day-13	Solution to Advent of Code 13 - LCM with Offsets		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-12-13
965	http://milofultz.com/2020/12/01/advent-of-code	🧩 Advent Of Code 2020 - Solutions		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-12-01
966	http://milofultz.com/2020/11/10/bytebeat	Bytebeat - Overview and How To Make/Record on OSX		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-11-10
967	http://milofultz.com/2020/11/09/the-point-of-diminis	The point of diminishing returns is already here		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-11-09
979	http://milofultz.com/2020/09/26/zentube	💻 Zentube - Youtube Lite w/Note Taking (HTML/CSS/JS)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-09-26
980	http://milofultz.com/2020/09/23/mastodon	Mastodon		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-09-23
981	http://milofultz.com/2020/09/01/domine	Domine (game from Hundred Rabbits)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-09-01
982	http://milofultz.com/2020/08/26/random-note	💻 Open A Random Note/Lo-Fi Idea Generator (Python)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-08-26
983	http://milofultz.com/2020/08/22/purple-rain-outro	🎼 Purple Rain Outro Transcription		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-08-22
1040	https://irimi.one/music/slikback/	Slikback		https://irimi.one	https://irimi.one/favicon.png	2021-04-18
1041	https://irimi.one/collage-poems/breath-of-fresh-air/	A Breath of Fresh Air		https://irimi.one	https://irimi.one/favicon.png	2021-02-21
1042	https://irimi.one/posts/lieu/	Hello, Lieu!		https://irimi.one	https://irimi.one/favicon.png	2021-02-14
1043	https://irimi.one/uses/software-setups/taskwarrior/	My Taskwarrior Setup		https://irimi.one	https://irimi.one/favicon.png	2021-02-14
1049	https://irimi.one/posts/webring/	I’m on a Webring Now		https://irimi.one	https://irimi.one/favicon.png	2020-11-14
1050	https://irimi.one/music/lone-electrone/	Lone Electrone		https://irimi.one	https://irimi.one/favicon.png	2020-11-07
992	http://milofultz.com/2020/07/02/bmcrawl	💻 Bookmark Crawler - Make Internet More Fun (Python)		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-07-02
993	http://milofultz.com/2020/06/26/nobody-takes-advice	Nobody Takes Advice		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-06-26
1001	http://milofultz.com/2020/05/22/just-in-case	Buying Things "Just In Case" vs. Real Estate		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-22
1002	http://milofultz.com/2020/05/17/adam-savage	The Adam Savage Trial Method		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-17
1003	http://milofultz.com/2020/05/01/old-internet	I Miss The Old Internet		http://milofultz.com	https://metasyn.pw/favicon.ico	2020-05-01
1063	https://natehn.com/posts/digital-security/	Notes on Digital Security	'\\n     \\n            An abstract video still projected onto my kitchen cabinets.\\n        \\n\\n\\nOv	https://natehn.com	https://natehn.com/images/favicon.ico	2021-03-15
1064	https://natehn.com/posts/iphone-security/	Activist iPhone Security Guide	'\\n     \\n            Three protesters hold their phones up above a crowd.\\n        \\n\\n\\n(as of iO	https://natehn.com	https://natehn.com/images/favicon.ico	2021-03-13
1065	https://natehn.com/library/	Library	'Welcome\\nThis is my personal library. You can also think of it as a:\\n\\nblogroll1\\nlink/resource/r	https://natehn.com	https://natehn.com/images/favicon.ico	2021-02-28
1066	https://natehn.com/posts/2020/	Reflecting on 2020	'[Feel free to listen to my most recent mix while reading if you want some background music.]\\nAlth	https://natehn.com	https://natehn.com/images/favicon.ico	2021-01-17
1075	https://www.gr0k.net/blog/logging-my-journey.html	Logging My Journey	'\\n                Logging My Journey\\nIt was more than a decade ago that I sold my MPC2500 to focu	https://www.gr0k.net	https://www.gr0k.net/favicon.ico	2021-02-26
1061	https://irimi.one/stickers/acab/	All Computers Are Broken		https://irimi.one	https://irimi.one/favicon.png	2020-09-06
1062	https://irimi.one/stickers/fab-money/	If money can’t buy happiness then why is it so fabulous?		https://irimi.one	https://irimi.one/favicon.png	2020-09-06
1097	https://wiki.xxiivv.com/site/noodle.html	Noodle in Uxn	"\\n\\nNoodle is a drawing program.noodle\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-03-17
1100	https://wiki.xxiivv.com/site/roms.html	We are now in the osdev business	"\\n\\nThe Uxn roms are assembled applications for the Uxn System.roms\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-22
1101	https://wiki.xxiivv.com/site/radio.html	Baofeng UV-9R+	"\\n\\nCollected notes on the topic of radio communications.radio\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2021-02-14
1107	https://wiki.xxiivv.com/site/origami.html	Gyro 6	"\\n\\nOrigami is the art of paperfolding.origami\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
1108	https://wiki.xxiivv.com/site/origami.html	Sonobe 30	"\\n\\nOrigami is the art of paperfolding.origami\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
1109	https://wiki.xxiivv.com/site/origami.html	Sonobe 3	"\\n\\nOrigami is the art of paperfolding.origami\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
1111	https://wiki.xxiivv.com/site/noton.html	Noton Release	"\\n\\nNoton is a livedrawing playground.noton\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-11-19
1112	https://wiki.xxiivv.com/site/reform.html	Reform Oled	"\\n\\nThe Reform laptop is designed to be as open and transparent as possible.reform\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-10-19
1114	https://wiki.xxiivv.com/site/ayatori.html	Ayatori Notebook	"\\n\\nAyatori is a x250 Thinkpad.ayatori\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-10-04
1116	https://wiki.xxiivv.com/site/longtermism.html	Brass Faucet	"\\n\\nNotes on Longtermism and sustainability.longtermism\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-09-19
1117	https://wiki.xxiivv.com/site/spacetime_6502.html	Spacetime 6502	"\\n\\nSpacetime is a weird function sequencer.spacetime 6502\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-26
1118	https://wiki.xxiivv.com/site/usagi.html	Nesdev on Plan9	"\\n\\nUsagi is a 3B Raspberry Pi.usagi\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-25
1119	https://wiki.xxiivv.com/site/plan9_color.html	Color Picker	"\\n\\nA simple HSV color picker for Plan9.plan9 color\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-08-14
1126	https://wiki.xxiivv.com/site/rio.html	Customizing Rio	"\\n\\nNotes on the Plan9 interface and tools.rio\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-30
1120	https://wiki.xxiivv.com/site/moogle.html	Pitch Yaw Roll	"\\n\\nMoogle is a wireframe editor.moogle\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-28
1127	https://wiki.xxiivv.com/site/moogle.html	Moogle Spheroid	"\\n\\nMoogle is a wireframe editor.moogle\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-28
1128	https://wiki.xxiivv.com/site/travel.html	Spent 7 weeks at sea	"\\n\\nTravel diaries around the world.travel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-07-21
1129	https://wiki.xxiivv.com/site/nautical.html	Alphabet Flags	"\\n\\nAssorted notes on various nautical language systems.nautical\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-06-07
1130	https://wiki.xxiivv.com/site/shimoda.html	Shimoda Station	"\\n\\nWe sailed to Shimoda in the spring of 2020, from Minamiise.shimoda\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1131	https://wiki.xxiivv.com/site/shimoda.html	Sunset Maru	"\\n\\nWe sailed to Shimoda in the spring of 2020, from Minamiise.shimoda\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1134	https://wiki.xxiivv.com/site/shimoda.html	Shimoda Waterway	"\\n\\nWe sailed to Shimoda in the spring of 2020, from Minamiise.shimoda\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1132	https://wiki.xxiivv.com/site/shimoda.html	Robusta Mit Pino	"\\n\\nWe sailed to Shimoda in the spring of 2020, from Minamiise.shimoda\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1133	https://wiki.xxiivv.com/site/shimoda.html	下田温泉富士屋ホテル	"\\n\\nWe sailed to Shimoda in the spring of 2020, from Minamiise.shimoda\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1136	https://wiki.xxiivv.com/site/nespaint.html	The NesPaint Interface	"\\n\\nNesPaint is a drawing program for the Famicom.nespaint\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-21
1138	https://wiki.xxiivv.com/site/graf3dscene.html	Andes Castel In Construction	"\\n\\nGraf3DScene is a 3D wireframe toolkit for Macintosh.graf3dscene\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-15
1145	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack II	"\\n\\nHypertalk is the programming language used in the mac software Hypercard.hypertalk\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-31
1146	https://wiki.xxiivv.com/site/hypertalk.html	Neauismetica Stack I	"\\n\\nHypertalk is the programming language used in the mac software Hypercard.hypertalk\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-31
1149	https://wiki.xxiivv.com/site/programming.html	Acorn BBC Micro Logo on Famicom	"\\n\\nA collection of notes on programming languages.programming\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-16
1147	https://wiki.xxiivv.com/site/donsol_famicom.html	Donsol Famicom Release	"\\n\\nDonsol Famicom is a port of the dungeon-crawler card game for the classic Nintendo.donsol fami	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-12
1150	https://wiki.xxiivv.com/site/donsol_famicom.html	Famicom AV to C1084 Monitor	"\\n\\nDonsol Famicom is a port of the dungeon-crawler card game for the classic Nintendo.donsol fami	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-03-12
1096	https://wiki.xxiivv.com/site/nasu.html	2-bit tiles in nasu	"\\n\\nNasu is a spritesheet editor.nasu\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-02-02
1159	https://wiki.xxiivv.com/site/morse.html	Morse Alphabet Chart	"\\n\\nAssorted notes on the morse language system.morse\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-11-04
1160	https://wiki.xxiivv.com/site/macintosh.html	Neauismetica on Macintosh	"\\n\\nNotes and links related to the Macintosh II computer.macintosh\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-11-01
1163	https://wiki.xxiivv.com/site/vertale.html	Meeting Andes	"\\n\\nVertale is the equatorial region of Dinaisth.vertale\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1166	https://wiki.xxiivv.com/site/vertale.html	Depot	"\\n\\nVertale is the equatorial region of Dinaisth.vertale\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1170	https://wiki.xxiivv.com/site/vertale.html	Outside Passage	"\\n\\nVertale is the equatorial region of Dinaisth.vertale\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1171	https://wiki.xxiivv.com/site/vertale.html	Fork Passage	"\\n\\nVertale is the equatorial region of Dinaisth.vertale\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-18
1187	https://wiki.xxiivv.com/site/neonev.html	Early Years	"\\n\\nNeonev is a daughter of Rlionn.neonev\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-02
1165	https://wiki.xxiivv.com/site/vetetrandes.html	Saarafores Station	"\\n\\nVetetrandes is the remains of a city where Yajnev rests.vetetrandes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1176	https://wiki.xxiivv.com/site/vetetrandes.html	Escal	"\\n\\nVetetrandes is the remains of a city where Yajnev rests.vetetrandes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1179	https://wiki.xxiivv.com/site/vetetrandes.html	Shutting Ramp	"\\n\\nVetetrandes is the remains of a city where Yajnev rests.vetetrandes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1188	https://wiki.xxiivv.com/site/vetetrandes.html	Autoconstructors	"\\n\\nVetetrandes is the remains of a city where Yajnev rests.vetetrandes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-10-01
1199	https://wiki.xxiivv.com/site/andes.html	Andes	"\\n\\nAndes immigrated through a Soies Injection shortly before the first season.andes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-08-29
1202	https://wiki.xxiivv.com/site/ronin.html	Ronin Spiral	"\\n\\nRonin is an procedural graphics tool.ronin\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-07
1205	https://wiki.xxiivv.com/site/ronin.html	Ronin Recursion	"\\n\\nRonin is an procedural graphics tool.ronin\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-07
1207	https://wiki.xxiivv.com/site/ronin.html	Ronin Splash	"\\n\\nRonin is an procedural graphics tool.ronin\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-07
1209	https://wiki.xxiivv.com/site/plan9.html	Monochrome Rio	"\\n\\nPlan 9 is a fully-featured, clean, compact and uniform operating system built as a successor t	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-05
1210	https://wiki.xxiivv.com/site/plan9.html	Glenda	"\\n\\nPlan 9 is a fully-featured, clean, compact and uniform operating system built as a successor t	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-05
1208	https://wiki.xxiivv.com/site/plan9.html	Catclock	"\\n\\nPlan 9 is a fully-featured, clean, compact and uniform operating system built as a successor t	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-07-05
1211	https://wiki.xxiivv.com/site/monome.html	Linn Monome	"\\n\\nThe Monome is an open-source controller, each of its 128 keys can light up between 16 levels o	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-29
1206	https://wiki.xxiivv.com/site/monome.html	Rack Monome	"\\n\\nThe Monome is an open-source controller, each of its 128 keys can light up between 16 levels o	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-29
1214	https://wiki.xxiivv.com/site/norns.html	Tutorials	"\\n\\nThe Norns is an open-source DSP computer, with 3 knobs and 3 keys.norns\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-10
1222	https://wiki.xxiivv.com/site/norns.html	Pong on Norns	"\\n\\nThe Norns is an open-source DSP computer, with 3 knobs and 3 keys.norns\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-06-10
1212	https://wiki.xxiivv.com/site/skate.html	Minami Ise beach	"\\n\\nThe Skate specs.skate\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1213	https://wiki.xxiivv.com/site/skate.html	Minami Ise beach 2	"\\n\\nThe Skate specs.skate\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1226	https://wiki.xxiivv.com/site/skate.html	Getting back into it	"\\n\\nThe Skate specs.skate\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1227	https://wiki.xxiivv.com/site/skate.html	Joy in picture	"\\n\\nThe Skate specs.skate\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-27
1224	https://wiki.xxiivv.com/site/microbit.html	BBC Microbit	"\\n\\nThe Microbit is a small educational micro-controller from BBC.microbit\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-24
1229	https://wiki.xxiivv.com/site/microbit.html	Light Painting for the Microbit	"\\n\\nThe Microbit is a small educational micro-controller from BBC.microbit\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-24
1230	https://wiki.xxiivv.com/site/tools.html	Orca Station	"\\n\\nThe tools ecosystem is a series of lightweight software to create audio-visual works.tools\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-23
1221	https://wiki.xxiivv.com/site/azolla.html	Azolla Release	"\\n\\nAzolla is a Beldam Records release, by Alicef.azolla\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1223	https://wiki.xxiivv.com/site/azolla.html	JSNation, Amsterdam	"\\n\\nAzolla is a Beldam Records release, by Alicef.azolla\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1231	https://wiki.xxiivv.com/site/azolla.html	Algomech Festival, Sheffield	"\\n\\nAzolla is a Beldam Records release, by Alicef.azolla\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1232	https://wiki.xxiivv.com/site/azolla.html	Yajnev	"\\n\\nAzolla is a Beldam Records release, by Alicef.azolla\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-14
1236	https://wiki.xxiivv.com/site/raspberry.html	Ad blocker with display	"\\n\\nThe Raspberry is a small inexpensive single-board computer.raspberry\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-05-05
1237	https://wiki.xxiivv.com/site/studio.html	Polivoks Mini B	"\\n\\nThe Studio equipment.studio\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1238	https://wiki.xxiivv.com/site/studio.html	Polivoks Mini A	"\\n\\nThe Studio equipment.studio\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1196	https://wiki.xxiivv.com/site/studio.html	Microbrute Synth	"\\n\\nThe Studio equipment.studio\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1228	https://wiki.xxiivv.com/site/studio.html	Infinite Polivoks	"\\n\\nThe Studio equipment.studio\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-23
1245	https://wiki.xxiivv.com/site/pilot.html	The Pilot Synthetiser	"\\n\\nPilot is a mini synthesiser.pilot\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-04-03
1249	https://wiki.xxiivv.com/site/juni.html	Holding the Chorded Keyboard	"\\n\\nJuni one-handed chorded keyboard.juni\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-26
1250	https://wiki.xxiivv.com/site/juni.html	The Chorded Keyboard	"\\n\\nJuni one-handed chorded keyboard.juni\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-26
1252	https://wiki.xxiivv.com/site/goals.html	Rekka on Pino in Shizuoka	"\\n\\nGoals must have an explicit state of completion and a specified deadline.goals\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-18
1253	https://wiki.xxiivv.com/site/goals.html	Pino docked in Shizuoka	"\\n\\nGoals must have an explicit state of completion and a specified deadline.goals\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-18
1246	https://wiki.xxiivv.com/site/shizuoka.html	Tea Fields	"\\n\\nWe sailed to Shizuoka in the late winter of 2019, from Ogasawara.shizuoka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1247	https://wiki.xxiivv.com/site/shizuoka.html	Tea House	"\\n\\nWe sailed to Shizuoka in the late winter of 2019, from Ogasawara.shizuoka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1251	https://wiki.xxiivv.com/site/shizuoka.html	Moored downtown Shizuoka	"\\n\\nWe sailed to Shizuoka in the late winter of 2019, from Ogasawara.shizuoka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1255	https://wiki.xxiivv.com/site/shizuoka.html	Sail to Shizuoka, Japan	"\\n\\nWe sailed to Shizuoka in the late winter of 2019, from Ogasawara.shizuoka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-07
1257	https://wiki.xxiivv.com/site/illustration.html	Working remotely	"\\n\\nA collection of Illustration projects.illustration\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-03-04
1265	https://wiki.xxiivv.com/site/lifestyle.html	Anchored in Ogasawara	"\\n\\nThe collection of diary entries on Lifestyle.lifestyle\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-02-20
1260	https://wiki.xxiivv.com/site/ogasawara.html	Futami Arbor	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1261	https://wiki.xxiivv.com/site/ogasawara.html	Marus	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1259	https://wiki.xxiivv.com/site/ogasawara.html	Futami Sailors	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1258	https://wiki.xxiivv.com/site/ogasawara.html	Futami Beach	"\\n\\nWe sailed to Ogasawara in the late winter of 2019, from Fiji.ogasawara\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2019-01-24
1279	https://wiki.xxiivv.com/site/merveilles.html	Maru	"\\n\\nMerveilles is a community of artisan engineers.merveilles\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-12-12
1280	https://wiki.xxiivv.com/site/merveilles.html	Mastodon Instance Inauguration	"\\n\\nMerveilles is a community of artisan engineers.merveilles\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-12-12
1274	https://wiki.xxiivv.com/site/marshall_islands.html	A young okra plant at the hospital	"\\n\\nWe sailed to the Marshall Islands from Fiji, aboard Pino.marshall islands\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1277	https://wiki.xxiivv.com/site/marshall_islands.html	Thai Basil	"\\n\\nWe sailed to the Marshall Islands from Fiji, aboard Pino.marshall islands\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1283	https://wiki.xxiivv.com/site/marshall_islands.html	Eggplant Twirl	"\\n\\nWe sailed to the Marshall Islands from Fiji, aboard Pino.marshall islands\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-10-20
1296	https://wiki.xxiivv.com/site/ethics.html	The Land Sailor	"\\n\\nSolarpunks cherish both nature and progress, the individual and the community.ethics\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-29
1284	https://wiki.xxiivv.com/site/about.html	XXIIVV	"\\n\\nThis wiki is a digital playground and personal logging system.about\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-28
1297	https://wiki.xxiivv.com/site/about.html	Ambigram	"\\n\\nThis wiki is a digital playground and personal logging system.about\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-28
1298	https://wiki.xxiivv.com/site/routine.html	Apartment in Koenji	"\\n\\nNotes on Routine and Habits.routine\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-21
1299	https://wiki.xxiivv.com/site/japan.html	Shimokitazawa	"\\n\\nA variety of diary entries written throughout trips to Japan.japan\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-19
1293	https://wiki.xxiivv.com/site/fiji.html	Lami Bay II, Fiji	"\\n\\nWe sailed to Fiji from New Zealand, aboard Pino.fiji\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1294	https://wiki.xxiivv.com/site/fiji.html	Lami Bay, Fiji	"\\n\\nWe sailed to Fiji from New Zealand, aboard Pino.fiji\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-08-10
1305	https://wiki.xxiivv.com/site/faqs.html	Nakano Sakaue II	"\\n\\nAnswers to the frequently asked questions, Faqs.faqs\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-06-28
1309	https://wiki.xxiivv.com/site/faqs.html	Nakano Sakaue I	"\\n\\nAnswers to the frequently asked questions, Faqs.faqs\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-06-28
1304	https://wiki.xxiivv.com/site/essentials.html	Durable and simple tools	"\\n\\nMost practical cooking and repair tools.essentials\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-07-22
1307	https://wiki.xxiivv.com/site/noon_guest.html	MoonQuest OST Release	"\\n\\nNoon Guest is the official MoonQuest soundtrack.noon guest\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-07-14
1312	https://wiki.xxiivv.com/site/physical.html	Elodie Vast	"\\n\\nThese Physical objects are designed to be 3d printed.physical\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-06-06
1313	https://wiki.xxiivv.com/site/neon_hermetism.html	Soies Injection	"\\n\\nNeon Hermetism is a collection of general Neauismetic concepts.neon hermetism\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-05-25
1316	https://wiki.xxiivv.com/site/webring.html	No, seriously.	"\\n\\nThe Webring, like we are in the 2000s.webring\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-05-15
1324	https://wiki.xxiivv.com/site/radio_station.html	Pimoroni Board	"\\n\\nThe Radio Station aboard Pino.radio station\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-18
1322	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Super Meteor Exhibition	"\\n\\nLes Habitants Du Soleil is a single track Duomic album.habitants du soleil\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-16
1326	https://wiki.xxiivv.com/site/habitants_du_soleil.html	Nepturne 7757	"\\n\\nLes Habitants Du Soleil is a single track Duomic album.habitants du soleil\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-04-16
1331	https://wiki.xxiivv.com/site/weather_station.html	Listening to the weather	"\\n\\nThe documentation for the Weather Station aboard Pino.weather station\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-03-21
1332	https://wiki.xxiivv.com/site/everyday.html	At sea, everything rusts	"\\n\\nEveryday items found in my bag or pockets.everyday\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-03-19
1335	https://wiki.xxiivv.com/site/riven.html	Portal combination is in my journal	"\\n\\nRiven is a flow-based web framework.riven\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-02-27
1275	https://wiki.xxiivv.com/site/riven.html	Riven Map	"\\n\\nRiven is a flow-based web framework.riven\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-02-27
1287	https://wiki.xxiivv.com/site/riven.html	The Portals Combination	"\\n\\nRiven is a flow-based web framework.riven\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-02-27
1338	https://wiki.xxiivv.com/site/ehrivevnv.html	Orbit	"\\n\\nThe Ehrivevnv is a dimensional puzzle.ehrivevnv\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-01-28
1339	https://wiki.xxiivv.com/site/neausea.html	Of Fallen Pilgrims	"\\n\\nThe Neausea is a sickness manifested in beings who knows their Soies position.neausea\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2018-01-24
1181	https://wiki.xxiivv.com/site/duomo.html	Refineries	"\\n\\nDuomo covers most of the northern hemisphere of Dinaisth.duomo\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-12-23
1352	https://wiki.xxiivv.com/site/documentation.html	Analogies	"\\n\\nA cheatsheet on Documentation.documentation\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-24
1356	https://wiki.xxiivv.com/site/morals.html	And Jöns	"\\n\\nA cheatsheet on Morals.morals\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-17
1358	https://wiki.xxiivv.com/site/markl.html	Wood Stage	"\\n\\nMarkl is a TAIBA game. In Development.markl\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-09
1306	https://wiki.xxiivv.com/site/markl.html	Markl Dojo	"\\n\\nMarkl is a TAIBA game. In Development.markl\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-09
1360	https://wiki.xxiivv.com/site/wiktopher.html	Book Prototype	"\\n\\nWiktopher is an upcoming travel novel.wiktopher\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-06
1113	https://wiki.xxiivv.com/site/wiktopher.html	Tent City of Renate	"\\n\\nWiktopher is an upcoming travel novel.wiktopher\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-06
1342	https://wiki.xxiivv.com/site/dotgrid.html	Working away from snow	"\\n\\nDotgrid is a vector editor.dotgrid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1361	https://wiki.xxiivv.com/site/dotgrid.html	Dotless Dotgrid Interface	"\\n\\nDotgrid is a vector editor.dotgrid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1357	https://wiki.xxiivv.com/site/dotgrid.html	General improvements	"\\n\\nDotgrid is a vector editor.dotgrid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-03
1366	https://wiki.xxiivv.com/site/rotonde.html	Rotonde Layout	"\\n\\nRotonde was a decentralized social network.rotonde\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-12
1359	https://wiki.xxiivv.com/site/rotonde.html	Rotonde Interface	"\\n\\nRotonde was a decentralized social network.rotonde\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-10-12
1369	https://wiki.xxiivv.com/site/getapan_728k.html	Album cover	"\\n\\nGetapan 728k is a Beldam Records release.getapan 728k\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-24
1363	https://wiki.xxiivv.com/site/marabu.html	Marabu Tracker	"\\n\\nMarabu is a music tool.marabu\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1367	https://wiki.xxiivv.com/site/marabu.html	Almost Stability	"\\n\\nMarabu is a music tool.marabu\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1370	https://wiki.xxiivv.com/site/marabu.html	Removed everything	"\\n\\nMarabu is a music tool.marabu\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1341	https://wiki.xxiivv.com/site/marabu.html	Weeklybeats Tracking	"\\n\\nMarabu is a music tool.marabu\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1371	https://wiki.xxiivv.com/site/marabu.html	Version 2	"\\n\\nMarabu is a music tool.marabu\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-11
1373	https://wiki.xxiivv.com/site/left.html	Tooling	"\\n\\nLeft is a text editor.left\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-08-07
1376	https://wiki.xxiivv.com/site/niue.html	Limu Pools	"\\n\\nThat time we sailed to the gorgeous coral shores of the country of Niue.niue\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1377	https://wiki.xxiivv.com/site/niue.html	Descent Way	"\\n\\nThat time we sailed to the gorgeous coral shores of the country of Niue.niue\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1378	https://wiki.xxiivv.com/site/niue.html	Niue Coastline	"\\n\\nThat time we sailed to the gorgeous coral shores of the country of Niue.niue\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1374	https://wiki.xxiivv.com/site/niue.html	Chasms and Canyons	"\\n\\nThat time we sailed to the gorgeous coral shores of the country of Niue.niue\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1375	https://wiki.xxiivv.com/site/niue.html	The Coastline	"\\n\\nThat time we sailed to the gorgeous coral shores of the country of Niue.niue\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1379	https://wiki.xxiivv.com/site/niue.html	Sail to Alofi, Niue	"\\n\\nThat time we sailed to the gorgeous coral shores of the country of Niue.niue\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-28
1276	https://wiki.xxiivv.com/site/nutrition.html	Deep Greens	"\\n\\nThe Nutrition diaries.nutrition\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-19
1381	https://wiki.xxiivv.com/site/arvelie.html	Neralie	"\\n\\nArvelie is an alphabetic date format.arvelie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-16
1382	https://wiki.xxiivv.com/site/japanese.html	Sidonia	"\\n\\nThe Japanese page is a collection of Japanese study notes.japanese\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-12
1383	https://wiki.xxiivv.com/site/japanese.html	Nakano	"\\n\\nThe Japanese page is a collection of Japanese study notes.japanese\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-07-12
1385	https://wiki.xxiivv.com/site/collected_works.html	Collected works Release	"\\n\\nCollected Works between 2008 and 2015, written as Malice.collected works\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-29
1386	https://wiki.xxiivv.com/site/children_of_bramble.html	Immortal Bird	"\\n\\nChildren Of Bramble is a Laeisthic album that sings of the Oasis of Rlionn.children of bramble	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-28
1387	https://wiki.xxiivv.com/site/instrument.html	Waterproof	"\\n\\nThe Instrument is the sailing computer inside Pinoinstrument\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-14
1388	https://wiki.xxiivv.com/site/instrument.html	Monitor View	"\\n\\nThe Instrument is the sailing computer inside Pinoinstrument\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-05-14
1390	https://wiki.xxiivv.com/site/thousand_rooms.html	Cat has a visitor.	"\\n\\nThousand Rooms is a visual novel.thousand rooms\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-04-29
1395	https://wiki.xxiivv.com/site/superworker.html	Recording Superworker	"\\n\\nSuperworker is an album created with the PO24.superworker\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-04-02
1396	https://wiki.xxiivv.com/site/superworker.html	Pocket Operator	"\\n\\nSuperworker is an album created with the PO24.superworker\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-04-02
1285	https://wiki.xxiivv.com/site/the_sublime.html	Sunrise in the Marshall Islands	"\\n\\nThe Sublime, are various pictures taken at sea aboard Pino.the sublime\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-26
1393	https://wiki.xxiivv.com/site/marquesas.html	Colorful Sight	"\\n\\nTravel pictures from our crossing of the South Pacific Ocean, from Mexico to the Marquesas.mar	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1400	https://wiki.xxiivv.com/site/marquesas.html	Pampel	"\\n\\nTravel pictures from our crossing of the South Pacific Ocean, from Mexico to the Marquesas.mar	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1402	https://wiki.xxiivv.com/site/marquesas.html	Nuku-Hiva	"\\n\\nTravel pictures from our crossing of the South Pacific Ocean, from Mexico to the Marquesas.mar	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1403	https://wiki.xxiivv.com/site/marquesas.html	Sail to Nuku Hiva, Marquesas	"\\n\\nTravel pictures from our crossing of the South Pacific Ocean, from Mexico to the Marquesas.mar	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-03-02
1408	https://wiki.xxiivv.com/site/mexico.html	Guests in La Paz	"\\n\\nThat time we lived in Mexico.mexico\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-02-03
1410	https://wiki.xxiivv.com/site/mexico.html	La Paz	"\\n\\nThat time we lived in Mexico.mexico\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-02-03
1404	https://wiki.xxiivv.com/site/nomad.html	Lost in Ensenada	"\\n\\nThe Nomad diaries.nomad\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-18
1412	https://wiki.xxiivv.com/site/nomad.html	Fulcanelli	"\\n\\nThe Nomad diaries.nomad\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-18
1281	https://wiki.xxiivv.com/site/directory.html	田園に死す	"\\n\\nThe Directory is a curated list of timeless art.directory\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-01-02
1419	https://wiki.xxiivv.com/site/russian.html	Сердце получает нож	"\\n\\nThe Russian page is a collection of Russian study notes.russian\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-12-05
1333	https://wiki.xxiivv.com/site/grimgrains.html	The Black Toothpaste Recipe	"\\n\\nGrimgrains is the Hundred Rabbits food and cooking resources site.grimgrains\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-11-07
1423	https://wiki.xxiivv.com/site/grimgrains.html	Bamboo Charcoal	"\\n\\nGrimgrains is the Hundred Rabbits food and cooking resources site.grimgrains\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-11-07
1425	https://wiki.xxiivv.com/site/aesthetics.html	A Digest	"\\n\\nThe Aesthetics diaries.aesthetics\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-10-27
1334	https://wiki.xxiivv.com/site/film.html	Hiding from the rain	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1347	https://wiki.xxiivv.com/site/film.html	Wandering in the North Island	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1348	https://wiki.xxiivv.com/site/film.html	Guerilla Gardening	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1349	https://wiki.xxiivv.com/site/film.html	Auckland	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1417	https://wiki.xxiivv.com/site/film.html	San Francisco Street	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1418	https://wiki.xxiivv.com/site/film.html	San Francisco Stairs	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1420	https://wiki.xxiivv.com/site/film.html	The Helm	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1431	https://wiki.xxiivv.com/site/film.html	My Father At The Helm	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1434	https://wiki.xxiivv.com/site/film.html	Early Sailing Days	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1435	https://wiki.xxiivv.com/site/film.html	Early Sailing Days	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1436	https://wiki.xxiivv.com/site/film.html	Evening near Vancouver Island	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1438	https://wiki.xxiivv.com/site/film.html	Meeting With Alaska Friends	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1439	https://wiki.xxiivv.com/site/film.html	Pino Docked	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1440	https://wiki.xxiivv.com/site/film.html	Before the evening	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1353	https://wiki.xxiivv.com/site/film.html	Auckland Beach	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1354	https://wiki.xxiivv.com/site/film.html	Whangarei Bridge	"\\n\\nColor Film photography diary of the life aboard Pino.film\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-08-10
1444	https://wiki.xxiivv.com/site/language.html	The Voynich	"\\n\\nVarious Language notes on natural, synthetic and programming languages.language\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-07-07
1449	https://wiki.xxiivv.com/site/lives.html	At 1H1D in Osaka	"\\n\\nVarious albums recorded as Lives.lives\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-05-31
1452	https://wiki.xxiivv.com/site/verreciel_soundtrack.html	Verreciel OST Release	"\\n\\nThe Verreciel Soundtrack is a Beldam Records release, by Aliceffekt.verreciel soundtrack\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-05-09
1454	https://wiki.xxiivv.com/site/polygore.html	Hexagore	"\\n\\nPolygore are the base elements Nereid.polygore\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-04-12
1455	https://wiki.xxiivv.com/site/polygore.html	Pentagore	"\\n\\nPolygore are the base elements Nereid.polygore\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-04-12
1456	https://wiki.xxiivv.com/site/polygore.html	Trigore	"\\n\\nPolygore are the base elements Nereid.polygore\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-04-12
1426	https://wiki.xxiivv.com/site/nervous.html	Woulg	"\\n\\nNervous are studies of Polygonoscopic Fields.nervous\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-27
1457	https://wiki.xxiivv.com/site/nervous.html	Exhibit B	"\\n\\nNervous are studies of Polygonoscopic Fields.nervous\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-27
1458	https://wiki.xxiivv.com/site/nervous.html	Exhibit A	"\\n\\nNervous are studies of Polygonoscopic Fields.nervous\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-27
1461	https://wiki.xxiivv.com/site/portalion.html	Portalion Cover	"\\n\\nPortalion is an album where Neonev leaves Duomo to explore the shores of Laeisth.portalion\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-03-02
1391	https://wiki.xxiivv.com/site/pino.html	Repairing the main sail	"\\n\\nPino is a Yamaha 33 sailboat built in 1982.pino\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1406	https://wiki.xxiivv.com/site/pino.html	Becalmed	"\\n\\nPino is a Yamaha 33 sailboat built in 1982.pino\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1443	https://wiki.xxiivv.com/site/pino.html	Workstation Aboard Pino	"\\n\\nPino is a Yamaha 33 sailboat built in 1982.pino\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1318	https://wiki.xxiivv.com/site/pino.html	A new sail for Pino	"\\n\\nPino is a Yamaha 33 sailboat built in 1982.pino\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1151	https://wiki.xxiivv.com/site/pino.html	In Minamiise	"\\n\\nPino is a Yamaha 33 sailboat built in 1982.pino\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1460	https://wiki.xxiivv.com/site/pino.html	From Inside	"\\n\\nPino is a Yamaha 33 sailboat built in 1982.pino\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1462	https://wiki.xxiivv.com/site/pino.html	Slice	"\\n\\nPino is a Yamaha 33 sailboat built in 1982.pino\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-02-27
1464	https://wiki.xxiivv.com/site/blindfolk.html	Blindfolks	"\\n\\nBlindfolk was a esoteric multiplayer programming combat game.blindfolk\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-01-31
1161	https://wiki.xxiivv.com/site/keyboard.html	OLKB Hi-pro mod Planck 6	"\\n\\nThe mechanical Keyboard specs.keyboard\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-01-02
1470	https://wiki.xxiivv.com/site/keyboard.html	Setup	"\\n\\nThe mechanical Keyboard specs.keyboard\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2016-01-02
1476	https://wiki.xxiivv.com/site/rabbits_soundtrack.html	A Hundred Knobs	"\\n\\nThe Rabbits Soundtrack is the drone audio tracks of the Hundred Rabbits video diaries.rabbits 	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-29
1278	https://wiki.xxiivv.com/site/hundred_rabbits.html	Neighbor Pino	"\\n\\nHundred Rabbits is a design studio on a sailboat.hundred rabbits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1311	https://wiki.xxiivv.com/site/hundred_rabbits.html	Rekka At work	"\\n\\nHundred Rabbits is a design studio on a sailboat.hundred rabbits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1198	https://wiki.xxiivv.com/site/hundred_rabbits.html	Kelp	"\\n\\nHundred Rabbits is a design studio on a sailboat.hundred rabbits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1474	https://wiki.xxiivv.com/site/hundred_rabbits.html	Rabbits	"\\n\\nHundred Rabbits is a design studio on a sailboat.hundred rabbits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1478	https://wiki.xxiivv.com/site/hundred_rabbits.html	The Whole Band	"\\n\\nHundred Rabbits is a design studio on a sailboat.hundred rabbits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-11-09
1459	https://wiki.xxiivv.com/site/verreciel.html	Eminence	"\\n\\nVerreciel is a space exploration game.verreciel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-09-27
1483	https://wiki.xxiivv.com/site/austria.html	Heading Out	"\\n\\nTrip to Austria, in September of 2015, for Ars Electronica.austria\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1484	https://wiki.xxiivv.com/site/austria.html	Streets Like Amadeus	"\\n\\nTrip to Austria, in September of 2015, for Ars Electronica.austria\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1485	https://wiki.xxiivv.com/site/austria.html	Vienna	"\\n\\nTrip to Austria, in September of 2015, for Ars Electronica.austria\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1486	https://wiki.xxiivv.com/site/austria.html	Suddenly, Half-Life	"\\n\\nTrip to Austria, in September of 2015, for Ars Electronica.austria\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1487	https://wiki.xxiivv.com/site/austria.html	Vienna	"\\n\\nTrip to Austria, in September of 2015, for Ars Electronica.austria\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1490	https://wiki.xxiivv.com/site/austria.html	Linz Food	"\\n\\nTrip to Austria, in September of 2015, for Ars Electronica.austria\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1488	https://wiki.xxiivv.com/site/austria.html	Ars Electronica	"\\n\\nTrip to Austria, in September of 2015, for Ars Electronica.austria\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1491	https://wiki.xxiivv.com/site/austria.html	Linz	"\\n\\nTrip to Austria, in September of 2015, for Ars Electronica.austria\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1493	https://wiki.xxiivv.com/site/austria.html	Travel to Vienna	"\\n\\nTrip to Austria, in September of 2015, for Ars Electronica.austria\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1492	https://wiki.xxiivv.com/site/austria.html	Wolfinger Hotel	"\\n\\nTrip to Austria, in September of 2015, for Ars Electronica.austria\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-08-30
1504	https://wiki.xxiivv.com/site/inventory.html	Everyday Carry	"\\n\\nThe collection of technical details on the Inventory.inventory\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-07-13
1508	https://wiki.xxiivv.com/site/the_will_the_wisp.html	Twitter Bot Birth	"\\n\\nThe Will The Wisp was a twitter bot that generated short rhymes.the will the wisp\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-06-10
1509	https://wiki.xxiivv.com/site/eschatolor.html	Tevelision	"\\n\\nEschatolor is an ambient Beldam Records release that was recorded over the FM airwaves.eschato	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-19
1510	https://wiki.xxiivv.com/site/netherlands.html	Amsterdam	"\\n\\nTrip to Netherlands in 2015 for Indievelopment.netherlands\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1511	https://wiki.xxiivv.com/site/netherlands.html	Utrecht	"\\n\\nTrip to Netherlands in 2015 for Indievelopment.netherlands\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1512	https://wiki.xxiivv.com/site/netherlands.html	Amsterdam	"\\n\\nTrip to Netherlands in 2015 for Indievelopment.netherlands\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1513	https://wiki.xxiivv.com/site/netherlands.html	Travel to Utrecht	"\\n\\nTrip to Netherlands in 2015 for Indievelopment.netherlands\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-12
1516	https://wiki.xxiivv.com/site/ar_moire.html	Pattern IIII	"\\n\\nThe Ar Moire diagrams are Polygonoscopic sounds.ar moire\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1517	https://wiki.xxiivv.com/site/ar_moire.html	Pattern III	"\\n\\nThe Ar Moire diagrams are Polygonoscopic sounds.ar moire\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1518	https://wiki.xxiivv.com/site/ar_moire.html	Pattern II	"\\n\\nThe Ar Moire diagrams are Polygonoscopic sounds.ar moire\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1519	https://wiki.xxiivv.com/site/ar_moire.html	Pattern I	"\\n\\nThe Ar Moire diagrams are Polygonoscopic sounds.ar moire\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-06
1520	https://wiki.xxiivv.com/site/time_alloy.html	Vertaline	"\\n\\nThe Time Alloy is a series of Polygonoscopic samples, created for The sartre mechanism.time al	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-03
1521	https://wiki.xxiivv.com/site/time_alloy.html	Opaline	"\\n\\nThe Time Alloy is a series of Polygonoscopic samples, created for The sartre mechanism.time al	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-03
1522	https://wiki.xxiivv.com/site/time_alloy.html	Slyverline	"\\n\\nThe Time Alloy is a series of Polygonoscopic samples, created for The sartre mechanism.time al	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-05-03
1515	https://wiki.xxiivv.com/site/astratas.html	Lines A	"\\n\\nThe Astratas topology oscillates to Polygonoscopic frequencies.astratas\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-30
1514	https://wiki.xxiivv.com/site/astratas.html	Lines B	"\\n\\nThe Astratas topology oscillates to Polygonoscopic frequencies.astratas\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-30
1523	https://wiki.xxiivv.com/site/astratas.html	Lines C	"\\n\\nThe Astratas topology oscillates to Polygonoscopic frequencies.astratas\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-30
1325	https://wiki.xxiivv.com/site/black.html	Lost in Niue	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1328	https://wiki.xxiivv.com/site/black.html	Beach In Rarotonga	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1364	https://wiki.xxiivv.com/site/black.html	Rekka In The Dinghy	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1409	https://wiki.xxiivv.com/site/black.html	Pino in Ensenada	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1411	https://wiki.xxiivv.com/site/black.html	Sail to Ensenada, Mexico	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1407	https://wiki.xxiivv.com/site/black.html	Rekka in Los Angeles	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1525	https://wiki.xxiivv.com/site/black.html	Ensenada Hills	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1450	https://wiki.xxiivv.com/site/black.html	Cooking	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1427	https://wiki.xxiivv.com/site/black.html	Near La Paz	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1430	https://wiki.xxiivv.com/site/black.html	Off The Coast Of Mexico	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1432	https://wiki.xxiivv.com/site/black.html	Ensenada Trash Hill Top	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1421	https://wiki.xxiivv.com/site/black.html	Ensenada Trash Hill	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1424	https://wiki.xxiivv.com/site/black.html	Ensenada Water Walk	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1422	https://wiki.xxiivv.com/site/black.html	The V Berth	"\\n\\nBlack and White film photography diary of the life aboard Pino.black\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-24
1197	https://wiki.xxiivv.com/site/talk.html	Talk at XOXO, Portland	"\\n\\nFor the few times I give talks.talk\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-21
1527	https://wiki.xxiivv.com/site/talk.html	Talk at Amaze, Berlin	"\\n\\nFor the few times I give talks.talk\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-21
1489	https://wiki.xxiivv.com/site/talk.html	Talk at Ars Electronica, Vienna	"\\n\\nFor the few times I give talks.talk\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-04-21
1193	https://wiki.xxiivv.com/site/lard_shader.html	Study D	"\\n\\nLard Shader is a 3d vertex shader transforming neoclassical figures into their plump selves.la	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1429	https://wiki.xxiivv.com/site/lard_shader.html	Study C	"\\n\\nLard Shader is a 3d vertex shader transforming neoclassical figures into their plump selves.la	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1531	https://wiki.xxiivv.com/site/lard_shader.html	Study B	"\\n\\nLard Shader is a 3d vertex shader transforming neoclassical figures into their plump selves.la	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1532	https://wiki.xxiivv.com/site/lard_shader.html	Study A	"\\n\\nLard Shader is a 3d vertex shader transforming neoclassical figures into their plump selves.la	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-10
1302	https://wiki.xxiivv.com/site/donsol.html	Difficulty levels	"\\n\\nDonsol is a dungeon-crawler card game.donsol\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1413	https://wiki.xxiivv.com/site/donsol.html	Donsol Desktop Release	"\\n\\nDonsol is a dungeon-crawler card game.donsol\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1414	https://wiki.xxiivv.com/site/donsol.html	Donsol Desktop Interface	"\\n\\nDonsol is a dungeon-crawler card game.donsol\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1530	https://wiki.xxiivv.com/site/donsol.html	Mobile Interface Update	"\\n\\nDonsol is a dungeon-crawler card game.donsol\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1416	https://wiki.xxiivv.com/site/donsol.html	Progress on Donsol	"\\n\\nDonsol is a dungeon-crawler card game.donsol\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1533	https://wiki.xxiivv.com/site/donsol.html	Mobile Prototype	"\\n\\nDonsol is a dungeon-crawler card game.donsol\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-03-05
1542	https://wiki.xxiivv.com/site/ramiel.html	Ramiel Release	"\\n\\nRamiel is a Beldam Records release, by Villa Moirai.ramiel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-01-14
1543	https://wiki.xxiivv.com/site/miniscopie.html	Reine - Miniscopie	"\\n\\nMiniscopie is a Beldam Records release, by Reine.miniscopie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2015-01-09
1544	https://wiki.xxiivv.com/site/beldam_records.html	Founded Beldam	"\\n\\nBeldam Records is a netlabel releasing 4 tracks mini-albums.beldam records\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-29
1545	https://wiki.xxiivv.com/site/keyboard_468.html	Prototype	"\\n\\nKeyboard 468 was a 18-keys keyboard.keyboard 468\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-27
1548	https://wiki.xxiivv.com/site/rafinograde.html	Glyph Art	"\\n\\nRafinograde was a drawing tool.rafinograde\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-13
1392	https://wiki.xxiivv.com/site/research.html	Raspberry Pi Computer	"\\n\\nThe Research hosts philosophy and linguistics projects.research\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-10
1549	https://wiki.xxiivv.com/site/research.html	The sartre Ultravoid	"\\n\\nThe Research hosts philosophy and linguistics projects.research\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-10
1503	https://wiki.xxiivv.com/site/supervisitor.html	Trapezoid	"\\n\\nSupervisitor is a concept album created with the Microbrute synthetiser by Arturia.supervisito	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1550	https://wiki.xxiivv.com/site/supervisitor.html	Dodecae	"\\n\\nSupervisitor is a concept album created with the Microbrute synthetiser by Arturia.supervisito	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1551	https://wiki.xxiivv.com/site/supervisitor.html	Aliceffekt Live	"\\n\\nSupervisitor is a concept album created with the Microbrute synthetiser by Arturia.supervisito	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1552	https://wiki.xxiivv.com/site/supervisitor.html	Brut Cover	"\\n\\nSupervisitor is a concept album created with the Microbrute synthetiser by Arturia.supervisito	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-06
1554	https://wiki.xxiivv.com/site/dodecae.html	Flyer	"\\n\\nThe Dodecae was a collaboration with the BentoMiso co-working space.dodecae\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-12-04
1559	https://wiki.xxiivv.com/site/the_sartre_mechanism.html	Ultravoid	"\\n\\nThe Sartre Mechanism short.the sartre mechanism\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-20
1560	https://wiki.xxiivv.com/site/defraction_optics.html	Cover Page	"\\n\\nDefraction Optics is the second book of Elodie Lareine, a manual of procedural imagery, in the	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1555	https://wiki.xxiivv.com/site/defraction_optics.html	II	"\\n\\nDefraction Optics is the second book of Elodie Lareine, a manual of procedural imagery, in the	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1557	https://wiki.xxiivv.com/site/defraction_optics.html	Waveform	"\\n\\nDefraction Optics is the second book of Elodie Lareine, a manual of procedural imagery, in the	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1558	https://wiki.xxiivv.com/site/defraction_optics.html	Circleform	"\\n\\nDefraction Optics is the second book of Elodie Lareine, a manual of procedural imagery, in the	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-11-19
1497	https://wiki.xxiivv.com/site/beauty.html	Vatoxoinal	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1563	https://wiki.xxiivv.com/site/beauty.html	Plasmytic	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1466	https://wiki.xxiivv.com/site/beauty.html	02	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1467	https://wiki.xxiivv.com/site/beauty.html	01	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1468	https://wiki.xxiivv.com/site/beauty.html	03	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1496	https://wiki.xxiivv.com/site/beauty.html	Genoviral	"\\n\\nThe Beauty series is a collection of portraits from the beautiful inhabitants of Nereid.beauty	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-22
1568	https://wiki.xxiivv.com/site/modernista.html	05	"\\n\\nModernista is a series of 4 prints inspired from American Modernism.modernista\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1569	https://wiki.xxiivv.com/site/modernista.html	04	"\\n\\nModernista is a series of 4 prints inspired from American Modernism.modernista\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1570	https://wiki.xxiivv.com/site/modernista.html	02	"\\n\\nModernista is a series of 4 prints inspired from American Modernism.modernista\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-10-07
1572	https://wiki.xxiivv.com/site/brane.html	IIIII	"\\n\\nBrane are digital fabrics.brane\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1573	https://wiki.xxiivv.com/site/brane.html	IIII	"\\n\\nBrane are digital fabrics.brane\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-18
1576	https://wiki.xxiivv.com/site/ten_axitecture.html	Ten Axitecture	"\\n\\nTen Axitecture is a Beldam Records release by Aliceffekt.ten axitecture\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-09-07
1583	https://wiki.xxiivv.com/site/damoiseau_canalx.html	Damoiseau et Canalx Release	"\\n\\nDamoiseau Canalx was created in the spirit of Blam, exploring industrial sounds with 2-step st	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-27
1584	https://wiki.xxiivv.com/site/neralie.html	Neralie Mobile	"\\n\\nNeralie is a decimal time format.neralie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-22
1547	https://wiki.xxiivv.com/site/dew.html	Dew Interface	"\\n\\nDew was an alarm and timer application for iOS.dew\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-06
1590	https://wiki.xxiivv.com/site/dew.html	Prototype	"\\n\\nDew was an alarm and timer application for iOS.dew\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-06
1447	https://wiki.xxiivv.com/site/advent_v.html	Death	"\\n\\nAdvent V was a simple twitter game in the format of the Choose Your Own Adventure.advent v\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-04
1448	https://wiki.xxiivv.com/site/advent_v.html	The Tavern	"\\n\\nAdvent V was a simple twitter game in the format of the Choose Your Own Adventure.advent v\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-04
1591	https://wiki.xxiivv.com/site/advent_v.html	The Advent V Release	"\\n\\nAdvent V was a simple twitter game in the format of the Choose Your Own Adventure.advent v\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-08-04
1596	https://wiki.xxiivv.com/site/noirca.html	1.1	"\\n\\nNoirca is a monochromatic camera tool.noirca\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-25
1597	https://wiki.xxiivv.com/site/noirca.html	Go Board	"\\n\\nNoirca is a monochromatic camera tool.noirca\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-25
1598	https://wiki.xxiivv.com/site/virtual_machines.html	Cover	"\\n\\nA collection of experimental computing systems.virtual machines\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-24
1539	https://wiki.xxiivv.com/site/alphavetist.html	3.0	"\\n\\nAlphavetist is an alphabet learning tool.alphavetist\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-22
1599	https://wiki.xxiivv.com/site/alphavetist.html	Katakana Practice	"\\n\\nAlphavetist is an alphabet learning tool.alphavetist\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-22
1469	https://wiki.xxiivv.com/site/bifurcan.html	Bifurcan Die	"\\n\\nBifurcan is a watchface.bifurcan\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1585	https://wiki.xxiivv.com/site/bifurcan.html	1.2	"\\n\\nBifurcan is a watchface.bifurcan\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1593	https://wiki.xxiivv.com/site/bifurcan.html	Screensaver	"\\n\\nBifurcan is a watchface.bifurcan\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1601	https://wiki.xxiivv.com/site/bifurcan.html	Update	"\\n\\nBifurcan is a watchface.bifurcan\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-06-18
1586	https://wiki.xxiivv.com/site/ledoliel.html	2.0	"\\n\\nLedoliel is a dating-sim game.ledoliel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1540	https://wiki.xxiivv.com/site/ledoliel.html	2.1	"\\n\\nLedoliel is a dating-sim game.ledoliel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1603	https://wiki.xxiivv.com/site/ledoliel.html	Space friends	"\\n\\nLedoliel is a dating-sim game.ledoliel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1604	https://wiki.xxiivv.com/site/ledoliel.html	Strange Diplomacy	"\\n\\nLedoliel is a dating-sim game.ledoliel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1592	https://wiki.xxiivv.com/site/ledoliel.html	1.2	"\\n\\nLedoliel is a dating-sim game.ledoliel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-31
1575	https://wiki.xxiivv.com/site/serventines.html	Jenen	"\\n\\nServentines is a travel diary from travels across Nereid.serventines\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-25
1608	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	Spring	"\\n\\nThe Purgateus Soundtrack is the score for the Purgateus remix of the game Proteus.purgateus so	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-19
1606	https://wiki.xxiivv.com/site/purgateus_soundtrack.html	Autumn Leaves	"\\n\\nThe Purgateus Soundtrack is the score for the Purgateus remix of the game Proteus.purgateus so	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-19
1607	https://wiki.xxiivv.com/site/purgateus.html	The Autumn	"\\n\\nPurgateus is a video game remix of Proteus.purgateus\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1609	https://wiki.xxiivv.com/site/purgateus.html	Purgateus Release	"\\n\\nPurgateus is a video game remix of Proteus.purgateus\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1610	https://wiki.xxiivv.com/site/purgateus.html	Night Time	"\\n\\nPurgateus is a video game remix of Proteus.purgateus\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1611	https://wiki.xxiivv.com/site/purgateus.html	Dusk	"\\n\\nPurgateus is a video game remix of Proteus.purgateus\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-05-16
1612	https://wiki.xxiivv.com/site/nereid.html	The Habitat	"\\n\\nNereid is a dull grey moon.nereid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1616	https://wiki.xxiivv.com/site/methascope.html	20x	"\\n\\nFrozen Methascope drops, similar to snowflakes.methascope\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-09
1617	https://wiki.xxiivv.com/site/methascope.html	200x	"\\n\\nFrozen Methascope drops, similar to snowflakes.methascope\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-09
1618	https://wiki.xxiivv.com/site/methascope.html	2000x	"\\n\\nFrozen Methascope drops, similar to snowflakes.methascope\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-09
1499	https://wiki.xxiivv.com/site/kaleidoscope.html	Chrestasebeia	"\\n\\nThe Kaleidoscope records the intersection of overlapping structures.kaleidoscope\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1587	https://wiki.xxiivv.com/site/kaleidoscope.html	Ode, The Perfect Bei	"\\n\\nThe Kaleidoscope records the intersection of overlapping structures.kaleidoscope\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1588	https://wiki.xxiivv.com/site/kaleidoscope.html	Lineggen	"\\n\\nThe Kaleidoscope records the intersection of overlapping structures.kaleidoscope\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-03
1619	https://wiki.xxiivv.com/site/vast.html	Vast Release	"\\n\\nVast is the first book of Elodie Lareine, a manual of procedural imagery.vast\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-28
1621	https://wiki.xxiivv.com/site/vast.html	Preview	"\\n\\nVast is the first book of Elodie Lareine, a manual of procedural imagery.vast\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-28
1399	https://wiki.xxiivv.com/site/known_magye.html	Known Magye Release	"\\n\\nKnown Magye is a Laeisthic album telling the tales of the industrious times of Dinaisth.known 	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-16
1622	https://wiki.xxiivv.com/site/known_magye.html	PowPow, San Francisco	"\\n\\nKnown Magye is a Laeisthic album telling the tales of the industrious times of Dinaisth.known 	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-16
1623	https://wiki.xxiivv.com/site/known_magye.html	Live at DNA Lougne	"\\n\\nKnown Magye is a Laeisthic album telling the tales of the industrious times of Dinaisth.known 	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-03-16
1625	https://wiki.xxiivv.com/site/oquonie_soundtrack.html	Soundman	"\\n\\nThe Oquonie Soundtrack, Impossible Spaces, is the ambient score of the game Oquonie.oquonie so	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-10
1615	https://wiki.xxiivv.com/site/nereid.html	The Highways	"\\n\\nNereid is a dull grey moon.nereid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1155	https://wiki.xxiivv.com/site/oquonie.html	Aboard Pino	"\\n\\nOquonie is a textless isometric puzzle game.oquonie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1541	https://wiki.xxiivv.com/site/oquonie.html	Nephtaline wandering	"\\n\\nOquonie is a textless isometric puzzle game.oquonie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1556	https://wiki.xxiivv.com/site/oquonie.html	Walkthrough	"\\n\\nOquonie is a textless isometric puzzle game.oquonie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1602	https://wiki.xxiivv.com/site/oquonie.html	Nastazie	"\\n\\nOquonie is a textless isometric puzzle game.oquonie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1626	https://wiki.xxiivv.com/site/oquonie.html	Goodies	"\\n\\nOquonie is a textless isometric puzzle game.oquonie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1567	https://wiki.xxiivv.com/site/telekinesis.html	Leap Motion Demo, Tokyo	"\\n\\nTelekinesis is a Pure Data controller and instrument used for Telekinetic.telekinesis\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-12
1632	https://wiki.xxiivv.com/site/telekinesis.html	Pure Data Controller	"\\n\\nTelekinesis is a Pure Data controller and instrument used for Telekinetic.telekinesis\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-12
1282	https://wiki.xxiivv.com/site/orca.html	Orca Type	"\\n\\nOrca is a livecoding playground.orca\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1273	https://wiki.xxiivv.com/site/orca.html	Orca x Dotgrid	"\\n\\nOrca is a livecoding playground.orca\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1472	https://wiki.xxiivv.com/site/orca.html	Orca Glyphs	"\\n\\nOrca is a livecoding playground.orca\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-09-05
1158	https://wiki.xxiivv.com/site/andes_castel.html	Castel Entrance	"\\n\\nThe Andes Castel is a large unnatural structure found in Laeisth.andes castel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-23
1192	https://wiki.xxiivv.com/site/andes_castel.html	The view from Laeisth	"\\n\\nThe Andes Castel is a large unnatural structure found in Laeisth.andes castel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-23
1634	https://wiki.xxiivv.com/site/andes_castel.html	Entrance	"\\n\\nThe Andes Castel is a large unnatural structure found in Laeisth.andes castel\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-23
1506	https://wiki.xxiivv.com/site/vocavularist.html	Vocavularist Release	"\\n\\nVocavularist, is a vocabulary learning tool.vocavularist\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-07
1635	https://wiki.xxiivv.com/site/vocavularist.html	1.0	"\\n\\nVocavularist, is a vocabulary learning tool.vocavularist\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-08-07
1639	https://wiki.xxiivv.com/site/fuji.html	Climb Crew	"\\n\\nOur trip up Mount Fuji, Japan.fuji\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1640	https://wiki.xxiivv.com/site/fuji.html	Torchlights	"\\n\\nOur trip up Mount Fuji, Japan.fuji\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1641	https://wiki.xxiivv.com/site/fuji.html	From Kawaguchiko	"\\n\\nOur trip up Mount Fuji, Japan.fuji\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1642	https://wiki.xxiivv.com/site/fuji.html	Mt. Fuji Summit	"\\n\\nOur trip up Mount Fuji, Japan.fuji\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-07-12
1646	https://wiki.xxiivv.com/site/dei_dain.html	Dei Dain Release	"\\n\\nDei Dain is the third Duomic album.dei dain\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-06-17
1648	https://wiki.xxiivv.com/site/dei_dain.html	Mega Ran Tour, Tokyo	"\\n\\nDei Dain is the third Duomic album.dei dain\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-06-17
1336	https://wiki.xxiivv.com/site/hiversaires.html	Aitasla	"\\n\\nHiversaires is a textless point-n-click game.hiversaires\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1656	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 12	"\\n\\nHiversaires is a textless point-n-click game.hiversaires\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1657	https://wiki.xxiivv.com/site/hiversaires.html	Devlog 10	"\\n\\nHiversaires is a textless point-n-click game.hiversaires\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1638	https://wiki.xxiivv.com/site/hiversaires.html	Hiversaires Release	"\\n\\nHiversaires is a textless point-n-click game.hiversaires\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2013-02-11
1658	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	SquareSound, Melbourne	"\\n\\nThe Ehrivevnv Studies is an album exploring the Dinaisth region surrounding the offices of And	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1663	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Cheapbeats - Tokyo	"\\n\\nThe Ehrivevnv Studies is an album exploring the Dinaisth region surrounding the offices of And	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1666	https://wiki.xxiivv.com/site/ehrivevnv_studies.html	Ehrivevnv Studies Release	"\\n\\nThe Ehrivevnv Studies is an album exploring the Dinaisth region surrounding the offices of And	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-10-20
1647	https://wiki.xxiivv.com/site/infrared.html	Infrared Set 2	"\\n\\nThe Infrared photographs were taken with a modified Nikon camera.infrared\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1645	https://wiki.xxiivv.com/site/infrared.html	Soldat	"\\n\\nThe Infrared photographs were taken with a modified Nikon camera.infrared\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1664	https://wiki.xxiivv.com/site/infrared.html	Tokyo Infrared II	"\\n\\nThe Infrared photographs were taken with a modified Nikon camera.infrared\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1665	https://wiki.xxiivv.com/site/infrared.html	Tokyo Infrared	"\\n\\nThe Infrared photographs were taken with a modified Nikon camera.infrared\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1669	https://wiki.xxiivv.com/site/infrared.html	Wereda	"\\n\\nThe Infrared photographs were taken with a modified Nikon camera.infrared\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-08-07
1674	https://wiki.xxiivv.com/site/pico_battle.html	Pico Battle Release	"\\n\\nPico Battle is a colour-based multiplayer battle puzzler.pico battle\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-06-27
1677	https://wiki.xxiivv.com/site/diluvium.html	Diluvium	"\\n\\nDiluvium was a multiplayer typing tactics game.diluvium\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-20
1676	https://wiki.xxiivv.com/site/diluvium.html	Logo	"\\n\\nDiluvium was a multiplayer typing tactics game.diluvium\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-20
1614	https://wiki.xxiivv.com/site/nereid.html	The South	"\\n\\nNereid is a dull grey moon.nereid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-04-22
1679	https://wiki.xxiivv.com/site/occulter.html	Coal	"\\n\\nOcculter is a shape inspired by the logo of a boutique I like.occulter\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-02
1681	https://wiki.xxiivv.com/site/occulter.html	Binchotan	"\\n\\nOcculter is a shape inspired by the logo of a boutique I like.occulter\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-02
1682	https://wiki.xxiivv.com/site/occulter.html	Occulter	"\\n\\nOcculter is a shape inspired by the logo of a boutique I like.occulter\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-05-02
1686	https://wiki.xxiivv.com/site/victorian_punch.html	Banned	"\\n\\nThe Victorian Punch is a knuckle weapon.victorian punch\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-04-02
1685	https://wiki.xxiivv.com/site/victorian_punch.html	Punch on the table	"\\n\\nThe Victorian Punch is a knuckle weapon.victorian punch\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-04-02
1687	https://wiki.xxiivv.com/site/germany.html	Travel to Berlin	"\\n\\nThat time I played a show in Berlin, Germany.germany\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-24
1673	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	iVardensphere Tour, Montreal	"\\n\\nVetetrandes Lettres sings of the first age of Dinaisth on the island of Vetetrandes.vetetrande	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1678	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Kinetik Festival, Montreal	"\\n\\nVetetrandes Lettres sings of the first age of Dinaisth on the island of Vetetrandes.vetetrande	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1672	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Vetetrandes Lettres Release	"\\n\\nVetetrandes Lettres sings of the first age of Dinaisth on the island of Vetetrandes.vetetrande	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1688	https://wiki.xxiivv.com/site/vetetrandes_lettres.html	Noise Complex, Paris	"\\n\\nVetetrandes Lettres sings of the first age of Dinaisth on the island of Vetetrandes.vetetrande	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-23
1689	https://wiki.xxiivv.com/site/france.html	Some bridge some place	"\\n\\nThat time I played a show in Paris, France.france\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-19
1690	https://wiki.xxiivv.com/site/france.html	Travel to Paris	"\\n\\nThat time I played a show in Paris, France.france\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-19
1691	https://wiki.xxiivv.com/site/ring_of_scales.html	Ring of scales	"\\n\\nThe Ring Of Scales is a large ring made of 3 scales.ring of scales\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-13
1693	https://wiki.xxiivv.com/site/hex_hive_necklace.html	Hex Hive Necklace	"\\n\\nThe Hex Hive Necklace is small designer necklace.hex hive necklace\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-09
1692	https://wiki.xxiivv.com/site/hex_hive_necklace.html	First Hex Hive Prototype	"\\n\\nThe Hex Hive Necklace is small designer necklace.hex hive necklace\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-09
1694	https://wiki.xxiivv.com/site/prototyping.html	PP3DP 1kg Spool Holder	"\\n\\nCollection of 3d printed models.prototyping\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-07
1695	https://wiki.xxiivv.com/site/spagettini_scale.html	Spagettini Scale	"\\n\\nThis Spagettini Scale was first featured on the Makerbot Blog and should help you always cook 	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-05
1321	https://wiki.xxiivv.com/site/paradise.html	The Inspector Cat	"\\n\\nParadise is an interactive-fiction playground.paradise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1291	https://wiki.xxiivv.com/site/paradise.html	ParadiseOS	"\\n\\nParadise is an interactive-fiction playground.paradise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1561	https://wiki.xxiivv.com/site/paradise.html	Techgnostic Order	"\\n\\nParadise is an interactive-fiction playground.paradise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1696	https://wiki.xxiivv.com/site/paradise.html	Lost in Paradise	"\\n\\nParadise is an interactive-fiction playground.paradise\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-03-03
1697	https://wiki.xxiivv.com/site/waiting_for_horus.html	Waiting for Horus	"\\n\\nWaiting For Horus was a fast paced multiplayer arena type 3rd person shooter.waiting for horus	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-21
1699	https://wiki.xxiivv.com/site/waiting_for_horus.html	Rah	"\\n\\nWaiting For Horus was a fast paced multiplayer arena type 3rd person shooter.waiting for horus	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-21
1668	https://wiki.xxiivv.com/site/waiting_for_horus.html	Mar	"\\n\\nWaiting For Horus was a fast paced multiplayer arena type 3rd person shooter.waiting for horus	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-21
1700	https://wiki.xxiivv.com/site/es_gulf_sunflowers.html	Es gulf sunflowers Release	"\\n\\nEs Gulf Sunflowers is a Neauismetic album.es gulf sunflowers\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-02-11
1500	https://wiki.xxiivv.com/site/mobile.html	Breakout Prototype	"\\n\\nThe Mobile collection is both mobile tools and games.mobile\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-14
1480	https://wiki.xxiivv.com/site/mobile.html	Old Android UI	"\\n\\nThe Mobile collection is both mobile tools and games.mobile\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-14
1703	https://wiki.xxiivv.com/site/mobile.html	Character Builder	"\\n\\nThe Mobile collection is both mobile tools and games.mobile\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-14
1704	https://wiki.xxiivv.com/site/oscean.html	The Pillars	"\\n\\nOscean is a flat-file wiki engine.oscean\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2012-01-13
1706	https://wiki.xxiivv.com/site/from_saharaphorest.html	From Saharaphorest Release	"\\n\\nFrom Saharaphorest is an album telling the tale of a visit at Paradichlorisse.from saharaphore	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-11-28
1708	https://wiki.xxiivv.com/site/from_saharaphorest.html	From Saharaphorest	"\\n\\nFrom Saharaphorest is an album telling the tale of a visit at Paradichlorisse.from saharaphore	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-11-28
1303	https://wiki.xxiivv.com/site/sketchbook.html	Encounter with the floating eye	"\\n\\nVarious rough illustration from the Sketchbook.sketchbook\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-30
1315	https://wiki.xxiivv.com/site/sketchbook.html	The Storm Transit	"\\n\\nVarious rough illustration from the Sketchbook.sketchbook\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-30
1716	https://wiki.xxiivv.com/site/sketchbook.html	Andes Necklace	"\\n\\nVarious rough illustration from the Sketchbook.sketchbook\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-30
1717	https://wiki.xxiivv.com/site/aliceffekt.html	Aliceffekt Shirt I	"\\n\\nAliceffekt, is an audio project following the adventures of Neonev across Dinaisth.aliceffekt\\	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-24
1715	https://wiki.xxiivv.com/site/aliceffekt.html	True Form	"\\n\\nAliceffekt, is an audio project following the adventures of Neonev across Dinaisth.aliceffekt\\	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-24
1719	https://wiki.xxiivv.com/site/rlionn.html	The Rlionn Oasis	"\\n\\nRlionn is a being who periodically manifest itself on Laeisth.rlionn\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-13
1720	https://wiki.xxiivv.com/site/blam.html	Blam Release	"\\n\\nBlam is an improvisational album created as a live performance, that ultimately fell through.b	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-08-04
1340	https://wiki.xxiivv.com/site/yajnev.html	Supermoon	"\\n\\nThe death of Yajnev engulfed Vetetrandes in an opaque impenetrable lock.yajnev\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-07-16
1722	https://wiki.xxiivv.com/site/yajnev.html	Yajnev Thoughts	"\\n\\nThe death of Yajnev engulfed Vetetrandes in an opaque impenetrable lock.yajnev\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-07-16
1110	https://wiki.xxiivv.com/site/origami.html	Sonobe 12	"\\n\\nOrigami is the art of paperfolding.origami\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-12-04
1713	https://wiki.xxiivv.com/site/the_sixth_season.html	Sixth Season Release	"\\n\\nThe Sixth Season sings the Neauismetic tales of the establishment of the Oasis by Rlionn.the s	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-05-21
1727	https://wiki.xxiivv.com/site/the_sixth_season.html	Kinetik Festival, Montreal	"\\n\\nThe Sixth Season sings the Neauismetic tales of the establishment of the Oasis by Rlionn.the s	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-05-21
1726	https://wiki.xxiivv.com/site/vermillionth.html	Vermillionth Release	"\\n\\nVermillionth was the recording of the live performance at the Kinetik Festival, in Montreal.ve	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-03-20
1728	https://wiki.xxiivv.com/site/vermillionth.html	Live in Paris	"\\n\\nVermillionth was the recording of the live performance at the Kinetik Festival, in Montreal.ve	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2011-03-20
1135	https://wiki.xxiivv.com/site/shimoda.html	Pino in Shimoda	"\\n\\nWe sailed to Shimoda in the spring of 2020, from Minamiise.shimoda\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2020-05-28
1308	https://wiki.xxiivv.com/site/wiktopher.html	A Bed Of Dust	"\\n\\nWiktopher is an upcoming travel novel.wiktopher\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2017-11-06
1553	https://wiki.xxiivv.com/site/oquonie.html	Bit Bazaar	"\\n\\nOquonie is a textless isometric puzzle game.oquonie\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2014-02-03
1749	https://wiki.xxiivv.com/site/pico3.html	Pico3 Release	"\\n\\nPico3 is a colour-based 3D puzzler.pico3\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-10-17
1756	https://wiki.xxiivv.com/site/macro.html	Raspberry Close Up	"\\n\\nThe Macro album contains various shots from up close.macro\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1649	https://wiki.xxiivv.com/site/macro.html	Macro DIY iPhone	"\\n\\nThe Macro album contains various shots from up close.macro\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-21
1748	https://wiki.xxiivv.com/site/collegiennes.html	Prince Of The Arcade	"\\n\\nThe Collegiennes collective is a game jam team.collegiennes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1680	https://wiki.xxiivv.com/site/collegiennes.html	Toronto Game Jam 201	"\\n\\nThe Collegiennes collective is a game jam team.collegiennes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1711	https://wiki.xxiivv.com/site/collegiennes.html	Prince of the Arcade	"\\n\\nThe Collegiennes collective is a game jam team.collegiennes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1758	https://wiki.xxiivv.com/site/collegiennes.html	Cloud is a Lie	"\\n\\nThe Collegiennes collective is a game jam team.collegiennes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-08-06
1759	https://wiki.xxiivv.com/site/hypervoid.html	Noirescent	"\\n\\nThe Hypervoid is navigating the nullplane of dichromatic Anti-pigments.hypervoid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1760	https://wiki.xxiivv.com/site/hypervoid.html	Infraviolet	"\\n\\nThe Hypervoid is navigating the nullplane of dichromatic Anti-pigments.hypervoid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1538	https://wiki.xxiivv.com/site/hypervoid.html	Nulloid	"\\n\\nThe Hypervoid is navigating the nullplane of dichromatic Anti-pigments.hypervoid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1546	https://wiki.xxiivv.com/site/hypervoid.html	Antipigment	"\\n\\nThe Hypervoid is navigating the nullplane of dichromatic Anti-pigments.hypervoid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1465	https://wiki.xxiivv.com/site/hypervoid.html	Pandischopic	"\\n\\nThe Hypervoid is navigating the nullplane of dichromatic Anti-pigments.hypervoid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1537	https://wiki.xxiivv.com/site/hypervoid.html	Dischromatic	"\\n\\nThe Hypervoid is navigating the nullplane of dichromatic Anti-pigments.hypervoid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1761	https://wiki.xxiivv.com/site/hypervoid.html	Dilesion	"\\n\\nThe Hypervoid is navigating the nullplane of dichromatic Anti-pigments.hypervoid\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-29
1762	https://wiki.xxiivv.com/site/cenote.html	Cenote	"\\n\\nCenote is an experimental platformer inspired by Underwater Base Jumping.cenote\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-20
1200	https://wiki.xxiivv.com/site/canada.html	Travel to Vancouver, Canada	"\\n\\nDespite being from there, Canada has become a travel destination to me.canada\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-08
1764	https://wiki.xxiivv.com/site/canada.html	Longueuil	"\\n\\nDespite being from there, Canada has become a travel destination to me.canada\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-07-08
1752	https://wiki.xxiivv.com/site/vambits.html	Vambits, DIY	"\\n\\nVambits are small DIY desktoys designed to be laser cut in acrylic.vambits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1746	https://wiki.xxiivv.com/site/vambits.html	Vambits, Last Gen	"\\n\\nVambits are small DIY desktoys designed to be laser cut in acrylic.vambits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1751	https://wiki.xxiivv.com/site/vambits.html	Vambits, Gen II	"\\n\\nVambits are small DIY desktoys designed to be laser cut in acrylic.vambits\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-03-11
1710	https://wiki.xxiivv.com/site/personal.html	Chez Liette	"\\n\\nThe Personal album contain various memories.personal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1782	https://wiki.xxiivv.com/site/personal.html	Lea	"\\n\\nThe Personal album contain various memories.personal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1137	https://wiki.xxiivv.com/site/personal.html	Disused Hotel in Shimoda	"\\n\\nThe Personal album contain various memories.personal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1684	https://wiki.xxiivv.com/site/personal.html	Bored in France	"\\n\\nThe Personal album contain various memories.personal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-28
1794	https://wiki.xxiivv.com/site/osaka.html	Temple	"\\n\\nWe traveled to Osaka in 2010 to attend the 1H1D music festival, and returned in 2019.osaka\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1795	https://wiki.xxiivv.com/site/osaka.html	Ornate	"\\n\\nWe traveled to Osaka in 2010 to attend the 1H1D music festival, and returned in 2019.osaka\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1233	https://wiki.xxiivv.com/site/osaka.html	Rock Castle in Osaka	"\\n\\nWe traveled to Osaka in 2010 to attend the 1H1D music festival, and returned in 2019.osaka\\n  	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2010-02-19
1805	https://wiki.xxiivv.com/site/cyanosis_fever.html	Cyanosis Fever	"\\n\\nCyanosis Fever was an abstract world of static to get lost into.cyanosis fever\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-11-11
1750	https://wiki.xxiivv.com/site/merure.html	Merure Release	"\\n\\nThe Merure books, were a series of comics published with friends.merure\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1771	https://wiki.xxiivv.com/site/merure.html	Erri Launch	"\\n\\nThe Merure books, were a series of comics published with friends.merure\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1804	https://wiki.xxiivv.com/site/merure.html	Merure 2 Launch	"\\n\\nThe Merure books, were a series of comics published with friends.merure\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1822	https://wiki.xxiivv.com/site/merure.html	Merure I Cover	"\\n\\nThe Merure books, were a series of comics published with friends.merure\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2009-01-08
1433	https://wiki.xxiivv.com/site/america.html	Sail to San Francisco	"\\n\\nVarious landscapes taken around America.america\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1536	https://wiki.xxiivv.com/site/america.html	Desert Snow Covered Moutains	"\\n\\nVarious landscapes taken around America.america\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1828	https://wiki.xxiivv.com/site/america.html	Travel to New York	"\\n\\nVarious landscapes taken around America.america\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1826	https://wiki.xxiivv.com/site/america.html	New York	"\\n\\nVarious landscapes taken around America.america\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2008-06-26
1835	https://wiki.xxiivv.com/site/lietal.html	Composing Words	"\\n\\nLietal is an experimental synthetic language.lietal\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-20
1836	https://wiki.xxiivv.com/site/downtemperature.html	Downtemperature Release	"\\n\\nDowntemperature is the first Aliceffekt EP.downtemperature\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1829	https://wiki.xxiivv.com/site/downtemperature.html	Gone Plains	"\\n\\nDowntemperature is the first Aliceffekt EP.downtemperature\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1830	https://wiki.xxiivv.com/site/downtemperature.html	Toy Company, Montreal	"\\n\\nDowntemperature is the first Aliceffekt EP.downtemperature\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1825	https://wiki.xxiivv.com/site/downtemperature.html	Toy Company, Montreal	"\\n\\nDowntemperature is the first Aliceffekt EP.downtemperature\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2007-03-03
1837	https://wiki.xxiivv.com/site/death.html	Metropolis	"\\n\\nThe Death, the death.death\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-11-14
1345	https://wiki.xxiivv.com/site/death.html	Dominion	"\\n\\nThe Death, the death.death\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-11-14
1745	https://wiki.xxiivv.com/site/death.html	Milk	"\\n\\nThe Death, the death.death\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-11-14
1838	https://wiki.xxiivv.com/site/quotes.html	Telepaths	"\\n\\nA collection of Quotes.quotes\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-28
1839	https://wiki.xxiivv.com/site/old_cities.html	01	"\\n\\nThe Old Cities were old drawings created for school.old cities\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-14
1840	https://wiki.xxiivv.com/site/old_cities.html	01	"\\n\\nThe Old Cities were old drawings created for school.old cities\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-14
1714	https://wiki.xxiivv.com/site/rekka.html	Boucherville	"\\n\\nRekka Bellum, is an illustrator and writer.rekka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1270	https://wiki.xxiivv.com/site/rekka.html	In Ogasawara	"\\n\\nRekka Bellum, is an illustrator and writer.rekka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1441	https://wiki.xxiivv.com/site/rekka.html	Reading about sailing	"\\n\\nRekka Bellum, is an illustrator and writer.rekka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1451	https://wiki.xxiivv.com/site/rekka.html	Last days in Montreal	"\\n\\nRekka Bellum, is an illustrator and writer.rekka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1453	https://wiki.xxiivv.com/site/rekka.html	Sailing trip in Quebec	"\\n\\nRekka Bellum, is an illustrator and writer.rekka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1774	https://wiki.xxiivv.com/site/rekka.html	Leaving	"\\n\\nRekka Bellum, is an illustrator and writer.rekka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1785	https://wiki.xxiivv.com/site/rekka.html	Hanami Orange	"\\n\\nRekka Bellum, is an illustrator and writer.rekka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
1789	https://wiki.xxiivv.com/site/rekka.html	Rekka in Osaka	"\\n\\nRekka Bellum, is an illustrator and writer.rekka\\n  "	https://wiki.xxiivv.com	https://wiki.xxiivv.com/media/services/icon.png	2006-07-07
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

SELECT pg_catalog.setval('public.posts_id_seq', 1841, true);


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

