--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.2

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
-- Name: app_users; Type: TABLE; Schema: public; Owner: psxfwnjevvsbfz
--

CREATE TABLE "public"."app_users" (
    "user_id" integer NOT NULL,
    "email" character varying(255) NOT NULL,
    "role" character varying(255) NOT NULL,
    "password" character varying(255) NOT NULL
);


ALTER TABLE public.app_users OWNER TO psxfwnjevvsbfz;

--
-- Name: app_users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: psxfwnjevvsbfz
--

ALTER TABLE "public"."app_users" ALTER COLUMN "user_id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."app_users_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users_sessions; Type: TABLE; Schema: public; Owner: psxfwnjevvsbfz
--

CREATE TABLE "public"."users_sessions" (
    "session_id" character varying(255) NOT NULL,
    "user_id" integer NOT NULL,
    "expires_at" bigint NOT NULL
);


ALTER TABLE public.users_sessions OWNER TO psxfwnjevvsbfz;

--
-- Name: vin_requests; Type: TABLE; Schema: public; Owner: psxfwnjevvsbfz
--

CREATE TABLE "public"."vin_requests" (
    "request_id" integer NOT NULL,
    "user_id" integer NOT NULL,
    "requested_at" bigint NOT NULL,
    "vin" character varying(255) NOT NULL
);


ALTER TABLE public.vin_requests OWNER TO psxfwnjevvsbfz;

--
-- Name: vin_requests_request_id_seq; Type: SEQUENCE; Schema: public; Owner: psxfwnjevvsbfz
--

ALTER TABLE "public"."vin_requests" ALTER COLUMN "request_id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."vin_requests_request_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: app_users; Type: TABLE DATA; Schema: public; Owner: psxfwnjevvsbfz
--

COPY "public"."app_users" ("user_id", "email", "role", "password") FROM stdin;
1	John@gmail.com	USER	dd570f63d729c53bf669bd1d49a5cdd2
2	admin@gmail.com	ADMIN	d93ae3bbc24a59cb7bcaf78ef673b0cd
3	John5@gmail.com	USER	825e618519ad12c1f07e7ec979b8acbf
4	user@gmail.com	USER	57080c7ecfc295f30d8829cbe06ec59b
\.


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: psxfwnjevvsbfz
--

COPY "public"."users_sessions" ("session_id", "user_id", "expires_at") FROM stdin;
260407acf8731fdc138934079c1686c0f	2	1734244844
27f17fcc463844bfed553f9bcb257b5e7	2	1734269138
23fe8b16226233af88941ed6ebc795384	2	1734269148
2de0eb6990ea5b9e63577cd348836c52b	2	1734269208
2faadc73ed15709e73fb499060234f839	2	1734269222
2b5e125bf6bacfe8f1b7f2c177e46951d	2	1734269230
202aa53c6a8f3085f32c552507477f252	2	1734269584
232d788aa52e8ade99b0d3f8e2c2b9958	2	1734269600
2385e34c7f8743ea9fa5f45dd63aecc83	2	1734269620
23a1de2e792e9c5305336c767dadc812a	2	1734269632
2027be031017d64152332926f00995308	2	1734269650
211384dd1fef0bf940dd3eaee441bf733	2	1734269658
2e1a3b80334716f540c394ed0047221fb	2	1734269731
208ec421994f3ab6f73e2c0f97e74e513	2	1734269825
250ee7a841ea523cf959eb08b60108913	2	1734269862
265581684ab2d9766682fd66171882393	2	1734269889
269c1cba020cb30b4cb1812fdbedbf9ed	2	1734269914
253ecafa3f3d0ba1c8adaee8fc5145fd2	2	1734269943
2a659beb23119931b6290015b1a520021	2	1734269953
2a489f134e541d8c451c40706039ed88c	2	1734269973
21b1f900e9376604f7a685a6685d8142c	2	1734270022
213e29359f1e75c04053198a88ff64a50	2	1734270028
2a7adf4cfe120ce4f22b0d2ef513fe23a	2	1734270043
20d276da5bc4abb8a77c983f233d941c8	2	1734270060
2d82555019b985517e910f9dcf5ed4656	2	1734270072
2a0f9ec317594d8e47eb03d831472ae83	2	1734270222
2301ea43daedc09598e46f8f775c609af	2	1734270233
25e0322a2392527e50d68301c70d2943a	2	1734270288
22723fb679bd175f09108885bffc75a08	2	1734270315
2fb43ffe12e3d94fd61fbfd47807bb98c	2	1734270332
257e794c8b9a2469c1625fc2224fdd90d	2	1734270342
2dbb9f640d93ccae500a6ef89a78ecda2	2	1734270388
2615a4128e8672e4700117802d69a9cf5	2	1734270432
2e96a5cb5da0525b71f0f28f316391d83	2	1734270452
271d86f09d7df31d45360a8a2362967bc	2	1734270464
2f2b0113ac495b58c9720eefc55494ce8	2	1734270471
xxx	2	1734270518
2416a0151a4e7658cd9b704bfaa0744f6	2	1734270533
237d88e3a33023b4a5b5951c925d4541a	2	1734270561
2e384f05ca6e132b5d9445c928c42bcdd	2	1734270584
237fbdcd80bfbcbcd2a960644adca35e6	2	1734270612
221db605b942335e108d900f4dc1b88e7	2	1734270626
26386f7ce95219523c4573715416d813e	2	1734270763
2bd8ac8946e86e9bada197020f59a5ca7	2	1734270796
23fcb482dd4e5e4299aaa6bef2755ee5c	2	1734270922
206ed1039857e1bf71faf835c3d891381	2	1734270935
251308ac9d3e009689a4658986fa7929c	2	1734270956
23f6dccb1c44a15628757fb81c63cf5c7	2	1734270965
24e3c09bb8158fd9d8744ef045b49612e	2	1734270979
2daccd59649052d5ba614b3c5d5f5d8dc	2	1734272511
\.


--
-- Data for Name: vin_requests; Type: TABLE DATA; Schema: public; Owner: psxfwnjevvsbfz
--

COPY "public"."vin_requests" ("request_id", "user_id", "requested_at", "vin") FROM stdin;
6	2	1656486911	2321321
7	2	1656501874	212321
8	2	1656501902	212321
9	2	1656501973	212321
10	2	1656502053	212321
11	2	1656502305	212321
12	2	1656503272	212321
13	2	1656503284	212321
14	2	1656503498	2222
15	2	1656503735	222222dd2d2
16	2	1656504082	
17	2	1656512250	WBAUT31040A883939
18	2	1656512296	WBAUT31040A883939
19	4	1656512499	WBAUT31040A883939
\.


--
-- Name: app_users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psxfwnjevvsbfz
--

SELECT pg_catalog.setval('"public"."app_users_user_id_seq"', 4, true);


--
-- Name: vin_requests_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: psxfwnjevvsbfz
--

SELECT pg_catalog.setval('"public"."vin_requests_request_id_seq"', 19, true);


--
-- Name: app_users app_users_pk; Type: CONSTRAINT; Schema: public; Owner: psxfwnjevvsbfz
--

ALTER TABLE ONLY "public"."app_users"
    ADD CONSTRAINT "app_users_pk" PRIMARY KEY ("user_id");


--
-- Name: users_sessions users_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: psxfwnjevvsbfz
--

ALTER TABLE ONLY "public"."users_sessions"
    ADD CONSTRAINT "users_sessions_pkey" PRIMARY KEY ("session_id");


--
-- Name: vin_requests vin_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: psxfwnjevvsbfz
--

ALTER TABLE ONLY "public"."vin_requests"
    ADD CONSTRAINT "vin_requests_pkey" PRIMARY KEY ("request_id");


--
-- Name: vin_requests fk_user; Type: FK CONSTRAINT; Schema: public; Owner: psxfwnjevvsbfz
--

ALTER TABLE ONLY "public"."vin_requests"
    ADD CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "public"."app_users"("user_id");


--
-- PostgreSQL database dump complete
--
