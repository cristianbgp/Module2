--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: actor; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre text,
    nombre_real text,
    fecha_nac date
);


ALTER TABLE public.actor OWNER TO usuario;

--
-- Name: actor_id_actor_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public.actor_id_actor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actor_id_actor_seq OWNER TO usuario;

--
-- Name: actor_id_actor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public.actor_id_actor_seq OWNED BY public.actor.id_actor;


--
-- Name: alquiler; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public.alquiler (
    id_alquiler integer NOT NULL,
    id_casete integer,
    id_miembro integer,
    fecha_alquiler date,
    fecha_devolucion date
);


ALTER TABLE public.alquiler OWNER TO usuario;

--
-- Name: alquiler_id_alquiler_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public.alquiler_id_alquiler_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alquiler_id_alquiler_seq OWNER TO usuario;

--
-- Name: alquiler_id_alquiler_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public.alquiler_id_alquiler_seq OWNED BY public.alquiler.id_alquiler;


--
-- Name: casete; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public.casete (
    id_casete integer NOT NULL,
    id_pelicula integer,
    formato text
);


ALTER TABLE public.casete OWNER TO usuario;

--
-- Name: casete_id_casete_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public.casete_id_casete_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.casete_id_casete_seq OWNER TO usuario;

--
-- Name: casete_id_casete_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public.casete_id_casete_seq OWNED BY public.casete.id_casete;


--
-- Name: miembros; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public.miembros (
    id_miembro integer NOT NULL,
    nombre text,
    telefono text,
    direccion text
);


ALTER TABLE public.miembros OWNER TO usuario;

--
-- Name: miembros_id_miembro_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public.miembros_id_miembro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.miembros_id_miembro_seq OWNER TO usuario;

--
-- Name: miembros_id_miembro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public.miembros_id_miembro_seq OWNED BY public.miembros.id_miembro;


--
-- Name: pelicula; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    titulo text,
    categoria text
);


ALTER TABLE public.pelicula OWNER TO usuario;

--
-- Name: pelicula_id_pelicula_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public.pelicula_id_pelicula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelicula_id_pelicula_seq OWNER TO usuario;

--
-- Name: pelicula_id_pelicula_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public.pelicula_id_pelicula_seq OWNED BY public.pelicula.id_pelicula;


--
-- Name: reparto; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public.reparto (
    id_pelicula integer NOT NULL,
    id_actor integer NOT NULL
);


ALTER TABLE public.reparto OWNER TO usuario;

--
-- Name: actor id_actor; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.actor ALTER COLUMN id_actor SET DEFAULT nextval('public.actor_id_actor_seq'::regclass);


--
-- Name: alquiler id_alquiler; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.alquiler ALTER COLUMN id_alquiler SET DEFAULT nextval('public.alquiler_id_alquiler_seq'::regclass);


--
-- Name: casete id_casete; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.casete ALTER COLUMN id_casete SET DEFAULT nextval('public.casete_id_casete_seq'::regclass);


--
-- Name: miembros id_miembro; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.miembros ALTER COLUMN id_miembro SET DEFAULT nextval('public.miembros_id_miembro_seq'::regclass);


--
-- Name: pelicula id_pelicula; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.pelicula ALTER COLUMN id_pelicula SET DEFAULT nextval('public.pelicula_id_pelicula_seq'::regclass);


--
-- Data for Name: actor; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public.actor (id_actor, nombre, nombre_real, fecha_nac) FROM stdin;
15	Kelvin Runte I	Mr. Petra Glover	1953-07-07
16	Fausto Flatley	Domitila Weber	1995-09-02
17	Mr. Jose Stracke	Susana Orn	1991-02-16
18	Owen Nienow	Ms. Clair Schiller	1939-11-21
19	Randee Keeling	Ellis Lakin DVM	1928-05-12
20	Hobert Hamill	Elly Morissette DVM	1936-11-05
21	Delana Fritsch	Susanne Roberts	1968-09-14
22	Leon Daugherty	Luke Considine	1971-02-17
23	Rickey Doyle	Jae Senger PhD	1920-07-26
24	Dayle McClure	Jama Fisher	2000-02-23
25	Pandora Hermiston II	Brian Nienow	2010-12-26
26	Miss Khalilah Harris	Everett Monahan	1921-03-15
27	Alvera Powlowski IV	Rhiannon Torphy	1988-03-11
28	Kristle Wintheiser	Racquel Prohaska	1925-12-15
29	Armando Weber	Dr. Chauncey Cartwright	2006-10-16
30	Maurice Olson	Ms. Kendrick Feest	1992-05-05
31	Shasta Schulist III	Mozella Bernhard II	1979-11-21
32	Ms. Cindi Walker	Ollie Weimann	1936-07-07
33	Melonie Cummerata III	Elodia Kunze II	1940-02-16
34	Chet Tillman	Cassi Stoltenberg	1967-10-11
35	Emmitt Gutmann	Zack Becker	1971-10-28
36	Shaun Reynolds	Kizzy Runolfsson	1956-04-16
37	Jason Lockman IV	Eddie Stroman	2004-04-08
38	Leland Wolf	Jeremiah Smitham	1976-05-24
39	Ike Deckow	Deangelo Wisoky	1939-11-21
40	Mrs. Bryce Kassulke	Dede Stroman DDS	1946-02-28
41	Gordon Blick PhD	Vanetta Schmeler PhD	1980-11-02
42	Morgan Padberg	Carylon DuBuque	1941-10-02
43	Ms. German Becker	Krystyna Jacobs	1941-04-23
44	Zoila Bahringer	Latisha Emard	1995-08-26
45	Korey Ebert	Quyen Wilkinson	1932-04-27
46	Marlo Kling	Hugh Hickle	2007-07-16
47	Christoper Ondricka	Beth Haag	2011-08-12
48	Belinda Durgan	Delila Cummerata	1977-04-11
49	Reggie Kunde	Mrs. Fred Brakus	1930-04-06
50	Tristan Goyette	Meda Beatty	1936-08-10
51	Ronny Hilll	Guadalupe Abernathy	1924-02-04
52	Latanya Block	Grady Dickinson	1930-05-09
53	Bennie Smitham	Miss Erik Feest	2018-06-24
54	Conrad Hilll MD	Todd Monahan	1968-08-04
55	Mattie Wehner	Deon Boehm	1967-08-09
56	Dr. Tommie Homenick	Leeanne Sawayn	2001-10-25
57	Kimberely Yost	Leo Heller	1994-07-26
58	Dr. Alexander Stehr	Ms. Dalia Tremblay	1982-01-25
59	James Dach	Donn Mayer	1994-03-11
60	Liane McDermott MD	Gil Heathcote	1996-11-24
61	Tommy Olson	Jorge Watsica	1979-04-10
62	Mrs. Granville Kovacek	Luba Quitzon	2007-04-18
63	Dr. Jeramy Crona	Tamika Bergstrom	1984-06-09
64	Deena Jones	Julius Mertz	1977-10-23
65	Margarita Ebert IV	Nicholas Schmitt IV	1959-03-04
66	Ms. Erna Cassin	Maryjo Mosciski DVM	1977-02-09
67	Donald Kohler	Mr. Lina Blick	1924-01-22
68	May Carroll	Carmon Hansen	1926-11-17
69	Dr. Stormy Rath	Shawna Bartoletti DDS	1967-11-09
70	Luke Parisian	Bernardo Anderson	2006-03-17
71	Ms. Hugo Hessel	Morris Heaney	1997-06-24
72	Lee Medhurst	Rolande Mertz Jr.	1964-06-02
73	Peggie Rempel Sr.	Joey Nitzsche	1920-05-16
74	Mrs. Florene Morar	Erin West	1921-11-17
75	Devora Armstrong	Mr. Moses Wilkinson	1971-07-04
76	Mrs. Kia Lueilwitz	Rocky Hahn IV	1969-06-03
77	Mariana Kulas	Dr. Jules Streich	1997-10-21
78	Mr. Brendan Kohler	Dr. Ward Berge	1977-12-09
79	Clint Blanda	Mitchel Boyer	1952-12-18
80	Quincy Dicki	Kamilah Runte	1955-01-22
81	Maximo Berge	Neta Monahan Sr.	1940-03-26
82	Bryan Jenkins	James Grady	1944-07-22
83	Fermin Conn	Sebastian Ernser	1932-08-30
84	Geoffrey Windler	Ms. Luigi Hayes	1947-06-10
85	Carmen Koss	Miss Cathie Champlin	1921-05-05
86	Brittni Grady	Moises Haag	1968-05-10
87	Mrs. Marc Hermann	Benita Anderson	2018-12-23
88	Nathanael Wilderman	Frankie Waelchi	1951-01-15
89	Patricia Little	Elia Ondricka	1936-08-08
90	Corey Rath	Caroline Schowalter	1965-07-08
91	Bernard Altenwerth	Anton Hudson DDS	2004-01-10
92	Maira Satterfield	Aiko Goodwin DVM	1996-11-29
93	Riley Davis	Lizzette Kuhlman	1966-06-12
94	Tom Block	Man Lehner	1990-01-18
95	Miss Cordell Bernhard	Janita Kshlerin PhD	1986-03-31
96	Renaldo Borer	Tony Schaefer	1985-12-20
97	Miss Kermit Spinka	Dara Mosciski	2008-01-09
98	Dr. Isaac Romaguera	Tressa Walsh V	2006-03-28
99	Willian Schumm	Sau Reichel	1950-10-02
100	Leticia Farrell DDS	Candelaria Hane	2009-12-18
101	Ronald Hamill	Mr. Ellsworth Feest	1983-05-21
102	Garret Howe Jr.	Joel Bauch	1988-10-13
103	Bo Wisozk MD	Dr. Natalia McKenzie	1977-11-02
104	Reiko Hyatt	Janelle Wiza	1977-10-10
105	Berneice McGlynn PhD	Roosevelt Durgan	2017-05-05
106	Malisa Abshire	Jamal Hodkiewicz	1971-01-10
107	Isobel Rath	Chad Hoeger	1948-11-02
108	Tamela Larkin	Tyree Lueilwitz	2007-06-22
109	Titus Pollich	Huong Collins	1937-02-19
110	Scott Shields	Nisha Hodkiewicz III	1951-07-28
111	Bradford Rolfson	Velva Pollich	1999-10-22
112	Lou Davis	Gail Herzog	1945-07-24
113	Tobie Klein IV	Doretta Skiles	2005-09-07
114	Tory Auer	Lorenzo Sporer	1946-06-23
115	Lydia Volkman Jr.	Mac Williamson	1983-05-18
116	Jonelle Sawayn PhD	Miss Samella Schowalter	1926-07-07
117	Verdie Lang	Pamelia Windler	2015-04-21
118	Malcolm Kerluke	Roberto Yundt	2007-12-15
119	Johnathan Pouros	Mrs. Andres Herzog	1992-04-08
120	Elsie Watsica Sr.	Delbert Hayes MD	1965-07-05
121	Emmy Altenwerth	Miss Ezra Lang	2013-04-09
122	Kyle Wolff	Alyce Hills	1982-11-20
123	Scotty Hudson	Russell Wilkinson	1951-08-07
124	Jackson Heathcote	Mana Schuster	2012-11-28
125	Chrissy Koss	Terry Murray	2015-11-23
126	Myung Leannon	Dane Schumm	1931-09-08
127	Miss Thu Runte	Hollis Romaguera DVM	1983-05-25
128	Shin Rempel	Warren Balistreri	1977-09-22
129	Joanne Nader	Chong Jenkins	2015-01-12
130	Holly Bauch V	Starla Stracke	1989-05-03
131	Markita Fritsch II	Lucy Denesik	1936-06-27
132	Jani Hirthe Sr.	Nyla Hilll	1961-09-30
133	Renaldo Wuckert	Zona Towne	1970-07-24
134	Miss Edwin Romaguera	Floria Pagac	1987-07-10
135	Germaine Klein	Hong Monahan	1941-12-23
136	Roxy Goldner Sr.	Darcel Gorczany	1939-02-12
137	Nancy Fahey	Elna Auer	2016-01-18
138	Venessa Jerde	Ms. Tabetha Prosacco	1953-06-12
139	Miss Rivka Lebsack	Bob Wisozk	1955-09-28
140	Miss Jessie Ruecker	Galina Yundt Jr.	1953-12-18
141	Sharilyn Funk	Sadie Kuphal	1945-12-28
142	Buddy Lesch	Tameka Pagac	1920-01-23
143	Lyman Altenwerth III	Fermin Steuber	1976-05-27
144	Chante Boyle	Joelle Barton	1928-04-30
145	Tameka Murphy	Bula Zieme	2016-06-21
146	Francisco Leuschke Jr.	Isaias Turner	1952-08-26
147	Demetrius Kub	Kimberlee Schmeler III	1943-07-29
148	Emmy Boehm	Kris Stroman	1977-03-06
149	Merrill Kuhic	Ronald Considine	1942-10-01
150	Trinity Streich	Dr. Margarete Monahan	1977-03-24
151	Candida Kohler III	Shiloh Ruecker	1984-06-13
152	Kanesha Weimann	Jeffry Abbott	1950-11-12
153	Douglas Bartell	Dorthey Dicki	1958-05-01
154	Chang McClure	Ms. Lorraine Goldner	1969-07-10
155	Jess Gottlieb II	Gaye McCullough	1934-04-26
156	Christiana Harris	Claribel Marks	2011-04-08
157	Anisa Zulauf	Cherie Hyatt	1929-03-08
158	Sanford Hyatt Sr.	Chase Wintheiser	2005-09-14
159	Darlena Mann	Dustin Koelpin	1996-04-24
160	Mrs. Garry Russel	Lazaro McLaughlin	2004-10-13
161	Allan Berge Jr.	Dr. Kristine Hammes	1955-11-15
162	Lucien Walter	Stewart Pfeffer	1933-12-30
163	Mrs. Odelia Nitzsche	Edith Haley DVM	1929-05-14
164	Sharonda Fay	Jill Romaguera	1977-04-18
165	Eleonore Schulist	Joel Franecki	2006-06-13
166	Miss Ira Champlin	Martha Harber	1926-01-05
167	Ms. Vincent Tillman	Gwen Schroeder	1979-06-09
168	Mafalda Kunze IV	Maricela Purdy	1995-08-25
169	Mitchell Stark Jr.	Miss Charley Fahey	2006-12-02
170	Drew Howe	Ms. Alvin Thompson	2005-10-07
171	Mr. Elvin Dickinson	Erin Marquardt	1996-04-01
172	Floyd Wunsch DVM	Charlotte Pouros I	1936-12-26
173	Jasper Boyle	Roseann Treutel	1985-04-03
174	Colin Ondricka	Alycia Prosacco II	1935-02-15
175	Buster Rath	Randell Homenick	1924-04-04
176	Ericka Hoppe	Kelsie Runte	1973-02-05
177	Toshia Beatty	Lucile Zulauf DDS	1978-01-17
178	Brant Johnston	Abram Kuhic	1944-12-23
179	Farah Beahan	Waldo Lockman	1973-05-02
180	Stuart Lemke	Pauletta Klocko	2008-10-11
181	Apolonia Davis	Johnsie Reinger DDS	1995-04-18
182	Jone Flatley	Brice Beahan	1924-05-12
183	Lionel MacGyver	Michelle Ledner	1954-11-04
184	Dr. Donovan Kautzer	Gary Koss	1983-10-06
185	Marc Dare	Dusty Ruecker	1954-11-14
186	Corey Thiel	Mr. Penney Kessler	1973-06-08
187	Alejandro Paucek	Larraine Ondricka	1952-04-05
188	Sheree Kris I	Vicente Kuhic	1931-10-31
189	Mrs. Janee Jaskolski	Imelda Bins	1970-11-19
190	Gillian Bergnaum	Miss Woodrow Leffler	1957-12-15
191	Sanda Ziemann	Alvin Stanton	2000-01-23
192	Mrs. Donny Jacobson	Wilson Parker	1973-02-19
193	Freddie Gislason	Ali Hickle	1982-11-23
194	Ms. Katharyn Witting	Mac Turcotte DVM	1957-06-20
195	Clarinda Greenfelder	Demarcus Gottlieb	1944-12-24
196	James Haley III	Signe Lynch	1919-07-21
197	Merle Hartmann	Ludivina Roberts	2006-05-19
198	Ozie Little Jr.	June Miller II	1937-04-11
199	Mr. Armando Littel	Xavier Tromp	1984-04-07
200	Jenna Bartell	Ashanti Connelly	1975-03-07
201	Roman Corkery	Tomas Brekke	1928-11-23
202	Cathi Howe PhD	Mr. Vonda Hilpert	1955-10-18
203	Alex Johnston	Foster Raynor	2012-07-30
204	Mr. Antonio Frami	Dr. Karren Smith	2005-06-09
205	Tammara Ernser	Lucien Beier	1973-09-28
206	Wei Beatty	Malcom Zboncak	1949-05-05
207	Quiana Kessler	Vance Hettinger	2002-12-23
208	Fermin Reynolds PhD	Joane Moore V	1958-06-24
209	Gerald Pagac	Miss Gale Terry	1930-08-03
210	Rigoberto Powlowski	Mrs. Exie Kuvalis	1996-11-08
211	Karole Hoeger	Cole Stark	1965-01-25
212	Clarice Osinski	Marge Pagac	1991-03-03
213	Tran Predovic	Mrs. Stanford Walter	1938-05-11
214	Karen Kshlerin III	Marcy Kutch	1977-11-02
215	Lucius Lowe	Stanford Keeling Jr.	1953-03-01
216	Shirely Bode	Ms. Toby Yundt	2016-03-26
217	Sharan Gerhold	Reba Stiedemann	1980-09-08
218	Aurore Lubowitz	Emery Brakus	1988-08-09
219	Dr. Norbert Raynor	Ms. Jerilyn Pollich	1983-02-12
220	Joselyn Grimes	Sherice Parisian	1958-03-30
221	Ulysses Weber	Sylvester Keeling	1943-01-08
222	Wilbur Mann	Kyle Pfeffer	1983-12-06
223	Dr. Angla Spencer	Imelda Kerluke	2017-08-12
224	Marcellus Haag	Florine Hamill PhD	1998-04-23
225	Dr. Chu Adams	Miss Adah Kohler	1974-10-09
226	Laurette Schumm	Woodrow Marvin	1998-10-15
227	Temika Schultz	Julian Koelpin I	2015-10-22
228	Sherika Rath	Alfonzo Ebert	1997-11-28
229	Gilberto Bogisich	Valeri Douglas	1976-02-07
230	Gita Rau	Gayle Donnelly	1946-04-14
231	Lavelle Emmerich	Mr. Franklyn Schroeder	2003-08-07
232	Brandon Kunde	Roselyn Mertz	1955-08-06
233	Hilton Rippin	Natacha King DDS	1975-03-26
234	Ronny Breitenberg II	Cecille Braun	1952-04-27
235	Owen Hoppe PhD	Miss Kyong Stokes	1957-02-04
236	Donovan Runolfsson	Ashleigh Turcotte Jr.	1953-11-26
237	Ms. Hugh Jakubowski	Aaron Bashirian Sr.	1971-11-27
238	Nathanial Kovacek	Reinaldo Bauch Sr.	1948-03-09
239	Twana Carter V	Madalyn Treutel	1947-06-02
240	Dr. Bill Crooks	Sunny Predovic	1966-07-11
241	Ernie Reinger	Missy Haley	1956-03-22
242	Abe McCullough Jr.	Winford Kerluke MD	1949-09-17
243	Dr. Teddy Pfannerstill	Neta Larson	1954-08-11
244	Ericka Corkery	Morgan Nitzsche	2004-10-04
245	Donetta Ruecker DDS	Polly Botsford	1984-07-15
246	Britney Schuppe II	Alvaro Carter	1963-02-23
247	Stephany Gottlieb IV	Mrs. Carl Flatley	1942-12-14
248	Chauncey Daniel V	Oneida Purdy	2012-07-23
249	Minh Jacobi Jr.	Joshua Jacobs	1940-10-08
250	Diego Baumbach	Eliana Price	2002-04-21
251	Mr. Bruna Prohaska	Murray Bruen	2004-11-03
252	Yuriko Mitchell	Edward Cummings	2008-01-08
253	Marina Toy Sr.	Amal Swift IV	1981-05-17
254	Min Senger PhD	Selma Pacocha	1997-04-01
255	Miss Rina Deckow	Donnetta Funk	1993-01-29
256	Mr. Lynette Hahn	Brice Casper	1979-07-25
257	Kellee Reichel	Garth Aufderhar	1948-08-07
258	Von Lockman	Loralee Kuhlman	1957-10-30
259	Olga Bins	Kayce Conroy	1949-10-26
260	Deandre Schinner	Debby Mosciski	2000-10-26
261	Domingo Jones	Sunday Stoltenberg	2003-09-10
262	Miss Keely Paucek	Mrs. Sergio Pfannerstill	1958-10-29
263	Elois Ritchie	Wade Streich	1963-04-19
264	Jewell Lemke	Tomas Sauer	1947-06-10
265	Gwyneth Gusikowski III	Katherina Kovacek	1969-11-11
266	Vania Jast MD	Armand Berge	2017-12-30
267	Mr. Al Hudson	Patrick Kassulke Sr.	1928-11-04
268	Royal Kautzer	Ian Bernier	1939-12-06
269	Ms. Kenton Jerde	Brenton Crona	1949-02-26
270	Bernita Sauer	Yvette Gutmann	1953-12-08
271	Max Will II	Lakendra Roob DDS	1995-02-28
272	Mckinley Cremin	Shelton Miller	1936-10-17
273	Miss Freeman Feeney	Logan Kihn	1954-03-24
274	Quintin Pagac	Cristopher Schimmel	1990-02-28
275	Mr. Jerrold Balistreri	Lawerence Pouros Jr.	1933-03-06
276	Amado Rohan	Madaline Effertz	1933-08-19
277	Gregorio Jakubowski	Ike Hansen	1967-12-10
278	Emelia Hartmann	Keturah Herzog	1997-05-11
279	Freddy Walsh	Tommy Kovacek	1941-07-02
280	Lanora Mitchell	Asha Waters	2011-07-21
281	Miss Nigel Reinger	Esteban Hirthe	1960-11-19
282	Adrianna Predovic	Danyel Hodkiewicz	1974-01-30
283	Kristina Franecki MD	Michael Goldner	1959-01-21
284	Maile Connelly	Mervin Kilback PhD	1956-08-14
285	Van Williamson	Aura Hammes Sr.	1927-12-12
286	Drusilla Dooley PhD	Deedee Feest	1931-11-20
287	Orlando Marks	Tristan McDermott	1990-08-31
288	Lonnie Wisoky	Venus Hodkiewicz	2004-07-23
289	Mr. Andria Moore	Janae Gerhold	1990-03-10
290	Desmond Mante	Miss Arlene Wintheiser	2019-01-21
291	Adelia Dicki	Delmer Rath	1921-12-19
292	Cole Metz	Desiree Rippin	1942-02-10
293	Porsha Weimann	Sona Reichert	2014-04-12
294	Althea Bradtke	Mr. Shaunta Olson	2001-07-25
295	Alonso Feest	Bud Macejkovic	2001-03-16
296	Mark Morar	Mr. Tad Batz	1985-05-23
297	Dr. Lacy Connelly	Karin Legros	1959-12-02
298	Fredrick Champlin	Adam Mosciski MD	1932-03-22
299	Carrol Fritsch	Aron Bartoletti	1937-11-10
300	Tommy Cummings DDS	Anja Mann	2008-02-27
301	Ami Hermann	Brunilda Smith	2005-08-15
302	Alysia Steuber	Boyd Reichel	1947-09-17
303	Rhett Stark	Jannie Kihn	2016-06-08
304	Zaida Sawayn	Margarito Hirthe	1931-09-21
305	Miss Ferdinand Gulgowski	Mr. Gita Abshire	1954-11-08
306	Delbert Kuphal	Ellis Turner	1993-05-30
307	Jani Huels DDS	Ben Cremin Sr.	1934-06-16
308	Klara Little	Norene Heaney	1991-12-08
309	Yasuko Terry	Grady Kreiger	1950-06-21
310	Jc Spencer	Olin Stark	2007-01-09
311	Lynn Yost	Caroline DuBuque	1965-08-02
312	Arminda Nikolaus	Earle Erdman	1940-12-12
313	Sonny Brekke	Ms. Belle Dare	1993-10-18
314	Ms. Federico Bosco	Annice Jacobs	2004-10-19
315	Russel Beer	Damien Zemlak	1949-09-08
316	Renaldo Kreiger	Chance Ritchie	1982-08-30
317	Jeremy Goodwin	Clayton Runolfsdottir DDS	1971-09-26
318	Tommie Armstrong	Dr. Numbers Hilpert	1936-08-06
319	Sergio Streich Sr.	Naida Hagenes	2015-05-23
320	Mr. Gonzalo Yost	Dimple Halvorson	1997-06-24
321	Mrs. Kirsten Baumbach	Elza Stracke	1989-03-14
322	Shanice Kunze I	Elly Zulauf	1958-06-03
323	Clair Green	Karisa Johns PhD	1933-03-02
324	Tawanda Murphy IV	Winford Wilderman	1945-07-04
325	Angel Kemmer Sr.	Miss Abel Rowe	2004-04-01
326	Miss Garry Considine	Jannette Kilback	1975-07-17
327	Delila Keebler IV	Louis Hirthe	1949-12-27
328	Thalia Swaniawski	Theressa Muller	2008-10-04
329	Charlie Mraz	Miss Aleshia Krajcik	1959-07-06
330	Ms. Layla Ullrich	Leigh Mayert	1991-12-16
331	Ricky Labadie	Riley Kutch DDS	1941-03-02
332	Amos Schimmel	Ms. Tawanda Hane	2008-09-14
333	Ms. Deb Towne	Mrs. Adrianne McDermott	1972-12-05
334	Bart Ankunding I	Terresa Herzog	1960-12-09
335	Mr. Gail Champlin	Synthia Lind I	1929-12-08
336	Natisha Robel	Cameron Reichert IV	2001-08-03
337	Miss Reynaldo Weissnat	Drew Halvorson	1989-12-02
338	Jody Johns	Mr. Lewis Swaniawski	1980-11-19
339	Heath Berge III	Susie Wisoky	1959-02-11
340	Darrel McDermott	Malcolm Donnelly III	1953-10-09
341	Mrs. Greg Hettinger	Mrs. Darwin Powlowski	1997-03-15
342	Miss Bart Tremblay	Dr. Lyndon Yundt	1978-09-17
343	Walton Hand V	Mrs. Dominique Harvey	1993-10-13
344	Rueben Spencer	Jasper Corkery	1931-11-30
345	Hugo Ziemann V	Kala Koepp	1976-11-04
346	Steve Corkery Jr.	Kay Schowalter IV	2009-10-24
347	Pete Waelchi	Merle Stark	1936-04-22
348	Julio Botsford	Josette Reilly DDS	1972-07-15
349	Francisco Turner	Luciano Schuster	1954-06-11
350	Ezekiel Morissette	Ms. Sol Fritsch	2009-09-25
351	Mr. Madonna Cremin	Hong Kreiger	1993-09-09
352	Creola Langworth DVM	Joan Kovacek Jr.	2006-12-20
353	Franchesca Grimes	Roberto Goodwin	1971-08-19
354	Aleshia Ryan	Delsie Jones	2015-08-15
355	Willian Rogahn	Tanner West DVM	1939-10-30
356	Alonso Spinka IV	Lizabeth Ledner IV	1976-08-15
357	Deshawn Reynolds	Hyon Anderson	2016-11-13
358	Clair Denesik	Amelia Becker	2004-01-06
359	Bethann Beatty	Miss Stanford Sipes	1970-01-05
360	King Toy	Elsa Dooley	2015-04-29
361	Bo Becker PhD	Stan Grady DDS	2002-04-04
362	Randolph Gutkowski	Darwin Jerde Sr.	1946-11-08
363	Erich Barrows	Suanne Lowe II	1960-08-11
364	Thad Spencer	Ms. Justin Goyette	1933-02-13
365	Horacio Gutkowski	Refugio Ondricka	1969-04-17
366	Mrs. Adelle Kerluke	Norman Wilkinson DVM	1963-06-12
367	Dr. Crystle Wunsch	Porsche Hoeger	1989-03-19
368	Lucina Kuphal	Carlotta Dietrich	1966-08-31
369	Violet Kunde	Alesha Marks	1947-06-27
370	Eleonora Emmerich	Virgilio Breitenberg	1960-03-28
371	Agustina Hodkiewicz	Illa Barton	1986-04-03
372	Cathrine Tromp	Ms. Mario Hackett	1988-08-16
373	Mariano Streich DVM	Ike Friesen	1991-09-09
374	Phyliss Bradtke	Jeannine Price MD	1987-02-07
375	Carlos Donnelly	Ali VonRueden	1981-01-10
376	Dr. Mickey Tromp	Brianna Padberg	1928-09-13
377	Emilio Schowalter	Bryan Lubowitz I	1964-12-04
378	Miss Imelda Beatty	Chantell Brakus	1919-10-02
379	Sherril Bailey	Alene Stracke III	1948-12-29
380	Hunter Sipes	Alphonse Yundt	1929-05-12
381	Mr. Stuart Dicki	Bella Bruen	1965-06-21
382	Miss Stuart Krajcik	Justin Schuster	2002-01-12
383	Franklyn Nader Jr.	Miss Fausto Stark	2011-12-11
384	Myrtis Walsh	Emma Little IV	1934-07-09
385	Ching Daugherty	Lela Kautzer	2014-06-12
386	Thad Reynolds	Wilfredo Larson	1958-06-15
387	Barbra McLaughlin	Terrence Keebler	1930-04-04
388	Ms. Alysha Weimann	Trey Harber Jr.	1995-10-26
389	Sharri Cole	Mr. Albertine Parisian	1924-11-16
390	Temika Cassin	Emery Kuhlman	1978-11-28
391	Dr. Dick Hermiston	Jody Jast	1981-09-25
392	Mr. Ronna Hahn	Adelina Brown II	1995-10-19
393	Magen Renner PhD	Dovie Kunze Sr.	1932-06-25
394	Mr. Lou Borer	Ilse Ferry	1926-08-18
395	Ms. Renee Nikolaus	Diane Sipes	1981-04-08
396	Nathanael Walsh IV	Thomas Bradtke	1980-01-31
397	Karey Cassin	Dr. Nora Wyman	1989-07-12
398	Arron Kuhic	Mrs. Gregg Reinger	1998-08-25
399	Lenny McCullough	Karyl Moen	1958-10-05
400	Rick Jaskolski	Arvilla Block Sr.	1944-10-12
401	German McGlynn	Mitzie Boehm PhD	1936-10-22
402	Gemma Feil Jr.	Jenni Runolfsdottir	2009-01-31
403	Barry Fahey	Hortense Little DDS	1936-06-08
404	Marla Carter DDS	Maribeth Lehner	2000-10-24
405	Stefany Parisian	Carmelo Hayes	1937-04-24
406	Willie Schowalter	Mrs. Broderick Walker	2017-05-30
407	Emerita Breitenberg	Wm Gusikowski	1926-09-25
408	Quintin Mills I	Mack Halvorson	2012-11-12
409	Grover Nader	Taina Moore	1931-09-07
410	Tamisha Berge	Carolann Mosciski	1928-04-26
411	Bart Torphy	Mercedez Bernhard DVM	2005-03-24
412	Buford Kuhlman	Carma Grady	1931-04-29
413	Ms. Wendy Kovacek	Mrs. Marquerite Heathcote	1996-05-19
414	Dale Stanton	Millard Gleichner	1978-11-23
415	Kelley Rempel II	Eddy Senger	2001-01-03
416	Ben Beatty	Stacee Corwin	2017-12-19
417	Mr. Lavette Ullrich	Vance Boyer	1949-09-17
418	Johnathan Leannon	Bennie Hermiston	1965-01-29
419	Mr. Hilda Hegmann	Mrs. Broderick Marks	1977-09-03
420	Karma Bergnaum	Rutha Leuschke	1985-05-17
421	Cecily Jerde	Don Halvorson	1987-06-13
422	Erich Mitchell II	Tess Haley	1998-05-02
423	Karl Quigley	Patrica Fadel	1932-06-02
424	Wilburn Cassin	Mr. Yolanda Schowalter	2000-08-26
425	Gillian Bosco	Bibi Padberg	1945-05-26
426	Xavier Gleason	Jenette Olson	1931-09-02
427	Elias Moen	Stewart Schamberger	1952-03-07
428	Emmaline Ledner	Wilford Pagac	1974-01-08
429	Normand Reinger	Stevie Parker DVM	1962-08-21
430	Ja Renner	Henry Tillman	1954-01-08
431	Dr. Dusty Rath	Debbra Robel	1951-11-15
432	Evie Schinner	Ms. Edmund Grady	2008-11-13
433	Robbie Rippin I	Ms. Mac Anderson	1984-08-19
434	Quinn Ward	Rick Hagenes	2010-12-03
435	Mrs. Sammy Upton	Eulalia Cole	1959-06-02
436	Abdul Lueilwitz	Zack Stehr	1976-03-19
437	Elli Oberbrunner	Earline Feil	1993-05-13
438	Delmar Crooks	Nikia Feest	1992-02-27
439	Ms. Edison Schuppe	Don Jast	1961-01-09
440	Weston Simonis	Benjamin Kohler II	1947-05-17
441	Mrs. Michael Renner	Concha Hintz	1930-09-06
442	Gerardo Swaniawski Jr.	Pamela Olson	1940-05-27
443	Ernest Schowalter	Vonda Upton	1990-09-18
444	Sherman Parisian	Isiah Watsica	2002-11-10
445	Alvaro Nolan	Clay Stroman	1970-03-20
446	Dr. Jeremy Luettgen	Jana Wisoky	2017-06-15
447	Tena Shields II	Ozie Breitenberg	2012-05-23
448	Ginny Tremblay	Valorie Parisian	2002-10-25
449	Ofelia Ernser	Prince Auer	1948-05-30
450	Wilber Dooley	Mrs. Christinia Stehr	1993-10-29
451	Darin Mitchell	Mr. Paris Kunde	1983-09-13
452	Siobhan Hintz	Kara Morissette	1929-10-20
453	Miss Cara Rice	Mrs. Donald Roob	1957-03-31
454	Ulysses Reilly	Jim Rodriguez II	1955-01-19
455	Lizzette Lind IV	Rosana Smith PhD	1977-06-25
456	Rosalie Cummerata	Robt Murphy	1989-11-30
457	Dr. Tyler Leannon	Karima Schultz III	1925-07-07
458	Shonda Block	Venice Wilkinson	1967-02-16
459	Jake Little PhD	Shane Frami	1923-08-30
460	Archie Bernier	Miss Lynwood Hoeger	1966-11-19
461	Mrs. Bibi Berge	Tawanna Bergnaum	2000-03-11
462	Willy Gerlach	Stephen Parisian	2001-12-04
463	Brant Mann	Duncan Little	1993-05-31
464	Hans Hickle	Bradford Gutkowski	1987-01-27
465	Jess Bogisich	Kelvin Nicolas	1987-08-01
466	Ashley Davis I	Dino Rodriguez	2009-06-30
467	Miss Salome Wunsch	Carlena Schimmel	1999-02-17
468	Katharina Wisozk	Dustin Crooks	1930-01-08
469	Jacques Ryan Sr.	Rickey Flatley	1970-11-29
470	Luigi Schinner	Mr. Coleen Schuster	2007-10-13
471	Rolando Gaylord	Damon Jenkins	2002-07-22
472	Vernie Hilpert	Weldon McCullough	1992-03-05
473	Burl Nienow	Buck Bogan Sr.	1963-10-10
474	Audrea Cummings Sr.	Denisha Douglas	2005-05-21
475	Eleanora Bruen III	Warren Dietrich	1994-11-01
476	Ms. Antony Pagac	Jenise Shields PhD	1927-10-04
477	Garrett Dickinson	Lizette Langosh	1979-09-08
478	Tony Kirlin	Rudolf Shanahan	2016-12-01
479	Wilfred Davis	Ilana McCullough	1951-04-25
480	Mrs. Carey Dietrich	Chester Blick Sr.	1940-12-01
481	Pok Haley IV	Francesco Johnston MD	1934-11-08
482	Fred Bins	Dorian Flatley	1981-11-16
483	Albert Jerde MD	Taylor Bergnaum	1977-05-24
484	Phylis Ritchie	Jeanelle MacGyver	1925-10-03
485	Mandie Jast	Mr. Lawanda Botsford	1951-09-01
486	Devorah Kling	Wilmer Tillman	1952-02-23
487	Brent McCullough	Lisabeth Blanda	1988-03-06
488	Alden Renner	Curtis Cormier	1993-08-08
489	Terrie Reilly	Bart Mills	2005-09-13
490	Lakenya Murphy	Georgia Smith	1951-04-13
491	Nathanael Auer	Carli Schaefer	2001-03-14
492	Lin Bradtke	Eloy Wunsch	1949-05-24
493	Claris Kassulke	Brice Smith	1978-03-02
494	Gigi MacGyver	Arlena Sporer III	1977-04-16
495	Tuan Lind	Olympia Gutmann Sr.	1995-08-17
496	Irish Raynor MD	Rayford Durgan	1943-05-26
497	Merri Welch	Penney Hessel	1993-04-25
498	Loren Kirlin	Aurelia Hauck	1955-07-30
499	Freddie Cassin	Inge Hauck	1979-11-30
500	Ms. Manuel Yost	William Hahn	1980-05-09
501	Josue Smith PhD	Irwin Wehner	1984-11-22
502	Leif Ferry	Patience Jacobi	1922-10-24
503	Willian Wuckert	Mrs. Kim Jaskolski	2003-01-08
504	Esmeralda Pagac	Adalberto Nienow II	2015-07-03
505	Hortense Osinski	Leanora Crist	1998-08-16
506	Geraldo Lebsack	Terese Hegmann I	1948-09-14
507	Paulita Mann	Stephen Grady	1922-06-24
508	Delicia Abbott	Jill Morissette	1975-01-25
509	Gerry Dickens	Kory Daniel	1940-07-29
510	Rigoberto Beer	Donna Schuppe	1992-06-28
511	Mr. Craig Auer	Mrs. Aron Pfannerstill	1967-03-16
512	Shenna Gulgowski	Earnestine Cartwright	1964-07-30
513	Sadie Trantow	Dr. Rory Botsford	1964-03-06
514	Manda Aufderhar	Violette Jerde	2008-03-31
515	Dr. Sherwood Wolff	Ozzie Rogahn I	2009-06-29
516	Frances Rodriguez	Cleo Huels	2009-05-11
517	Roland Balistreri	Wilton Brekke	2003-11-08
518	Siu Kautzer	Mrs. Gia Satterfield	2017-03-14
519	Amberly Schmeler	Miss Min Hackett	1996-10-01
520	Mr. Ashley Kessler	Reggie Conn	1950-03-01
521	Monte Ebert	Trula Powlowski	1963-04-16
522	Ms. Irving Greenfelder	Chet Wiegand	1930-10-29
523	Mr. Tracy Hoeger	Yu Upton	2015-12-22
524	Verlie Williamson	Clorinda Willms DDS	2007-12-24
525	Dr. Kira Wolff	Valeria Becker	1939-03-06
526	Shad McClure	Jackeline Feeney	1995-10-05
527	Antony Lindgren	Miss Marquetta Treutel	1985-01-29
528	Mable Beer	Mrs. Otha Schmeler	2001-09-29
529	Kayleen Kulas	Mr. Carlton Nikolaus	2001-12-30
530	Rubin Carroll Jr.	Shane Legros	1967-02-10
531	Maricruz Purdy	Sheba Graham	1984-11-25
\.


--
-- Data for Name: alquiler; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public.alquiler (id_alquiler, id_casete, id_miembro, fecha_alquiler, fecha_devolucion) FROM stdin;
2	601	1	2018-04-27	2018-04-30
3	1281	2	2019-03-15	2019-03-30
4	1724	3	2019-02-03	2019-03-03
5	2063	4	2018-09-30	2018-09-30
6	585	5	2018-11-02	2018-11-30
7	2475	6	2018-09-03	2018-09-30
8	1556	7	2018-04-28	2018-04-30
9	2639	8	2018-05-10	2018-05-30
10	286	9	2018-12-22	2018-12-30
11	1075	10	2018-08-03	2018-08-30
12	621	11	2018-10-15	2018-10-30
13	648	12	2018-06-10	2018-06-30
14	2086	13	2018-09-17	2018-09-30
15	1407	14	2019-01-02	2019-01-30
16	74	15	2018-11-24	2018-11-30
17	1217	16	2018-12-05	2018-12-30
18	410	17	2018-04-04	2018-04-30
19	2312	18	2019-01-26	2019-01-30
20	2874	19	2018-10-30	2018-10-30
21	1496	20	2019-01-17	2019-01-30
22	1579	21	2018-05-18	2018-05-30
23	2207	22	2018-06-08	2018-06-30
24	2561	23	2018-06-10	2018-06-30
25	2889	24	2018-08-14	2018-08-30
26	424	25	2018-05-26	2018-05-30
27	1396	26	2018-09-06	2018-09-30
28	1711	27	2018-12-05	2018-12-30
29	939	28	2018-09-20	2018-09-30
30	1223	29	2018-12-27	2018-12-30
31	224	30	2018-09-04	2018-09-30
32	906	31	2019-01-15	2019-01-30
33	1152	32	2018-10-24	2018-10-30
34	1522	33	2019-03-17	2019-03-30
35	2664	34	2018-12-28	2018-12-30
36	1634	35	2019-02-24	2019-03-03
37	2163	36	2018-12-10	2018-12-30
38	1394	37	2018-08-20	2018-08-30
39	503	38	2018-08-19	2018-08-30
40	19	39	2018-09-11	2018-09-30
41	2200	40	2018-07-19	2018-07-30
42	1337	41	2018-06-27	2018-06-30
43	228	42	2018-11-22	2018-11-30
44	700	43	2018-10-27	2018-10-30
45	1758	44	2018-10-19	2018-10-30
46	2369	45	2018-06-17	2018-06-30
47	1301	46	2018-03-30	2018-03-30
48	615	47	2018-07-15	2018-07-30
49	1459	48	2018-10-29	2018-10-30
50	771	49	2019-03-06	2019-03-30
51	249	50	2018-04-25	2018-04-30
52	2183	51	2018-07-06	2018-07-30
53	384	52	2018-07-02	2018-07-30
54	2299	53	2019-01-26	2019-01-30
55	1515	54	2019-01-01	2019-01-30
56	102	55	2019-02-09	2019-03-03
57	521	56	2018-09-17	2018-09-30
58	650	57	2018-07-12	2018-07-30
59	1940	58	2018-11-17	2018-11-30
60	2805	59	2018-12-04	2018-12-30
61	1937	60	2018-07-16	2018-07-30
62	2363	61	2018-08-10	2018-08-30
63	724	62	2018-12-14	2018-12-30
64	2987	63	2018-04-23	2018-04-30
65	1480	64	2019-01-21	2019-01-30
66	768	65	2018-10-02	2018-10-30
67	1435	66	2018-10-01	2018-10-30
68	1352	67	2018-08-10	2018-08-30
69	1732	68	2018-10-13	2018-10-30
70	2020	69	2019-03-03	2019-03-30
71	460	70	2018-07-04	2018-07-30
72	1263	71	2019-02-25	2019-03-03
73	1529	72	2018-05-11	2018-05-30
74	2733	73	2019-02-16	2019-03-03
75	1118	74	2019-01-23	2019-01-30
76	2138	75	2019-01-18	2019-01-30
77	236	76	2018-11-27	2018-11-30
78	975	77	2018-07-18	2018-07-30
79	2681	78	2018-05-20	2018-05-30
80	8	79	2018-12-19	2018-12-30
81	2897	80	2018-11-28	2018-11-30
82	300	81	2018-05-01	2018-05-30
83	807	82	2018-07-05	2018-07-30
84	1036	83	2018-10-09	2018-10-30
85	2572	84	2018-12-11	2018-12-30
86	1686	85	2018-12-06	2018-12-30
87	2263	86	2018-09-29	2018-09-30
88	603	87	2019-03-10	2019-03-30
89	2933	88	2018-12-14	2018-12-30
90	1682	89	2019-01-25	2019-01-30
91	929	90	2018-12-20	2018-12-30
92	1558	91	2018-05-28	2018-05-30
93	1051	92	2018-07-11	2018-07-30
94	1637	93	2018-12-06	2018-12-30
95	2976	94	2018-07-27	2018-07-30
96	1297	95	2018-10-29	2018-10-30
97	178	96	2018-08-02	2018-08-30
98	1996	97	2018-11-24	2018-11-30
99	922	98	2018-05-25	2018-05-30
100	320	99	2018-12-13	2018-12-30
101	2583	100	2018-04-07	2018-04-30
102	2595	101	2018-09-01	2018-09-30
103	2231	102	2019-01-25	2019-01-30
104	357	103	2018-11-01	2018-11-30
105	913	104	2018-09-20	2018-09-30
106	511	105	2019-03-12	2019-03-30
107	2904	106	2018-05-26	2018-05-30
108	1362	107	2018-04-25	2018-04-30
109	335	108	2018-05-23	2018-05-30
110	928	109	2018-09-24	2018-09-30
111	1582	110	2018-07-10	2018-07-30
112	654	111	2018-07-07	2018-07-30
113	193	112	2019-01-18	2019-01-30
114	125	113	2019-02-03	2019-03-03
115	1538	114	2018-10-27	2018-10-30
116	236	115	2018-04-25	2018-04-30
117	1275	116	2018-09-21	2018-09-30
118	1705	117	2018-04-02	2018-04-30
119	1905	118	2018-11-01	2018-11-30
120	1772	119	2019-01-05	2019-01-30
121	2770	120	2018-07-24	2018-07-30
122	1038	121	2018-07-16	2018-07-30
123	1362	122	2018-09-23	2018-09-30
124	1891	123	2019-03-06	2019-03-30
125	1770	124	2018-08-28	2018-08-30
126	668	125	2018-11-21	2018-11-30
127	2124	126	2018-08-20	2018-08-30
128	1598	127	2018-10-02	2018-10-30
129	1039	128	2018-04-21	2018-04-30
130	1190	129	2018-11-25	2018-11-30
131	2635	130	2018-04-29	2018-04-30
132	2118	131	2018-12-24	2018-12-30
133	58	132	2018-04-22	2018-04-30
134	1417	133	2018-08-22	2018-08-30
135	1661	134	2019-03-22	2019-03-30
136	1225	135	2019-03-17	2019-03-30
137	1787	136	2018-05-10	2018-05-30
138	2298	137	2019-03-17	2019-03-30
139	1525	138	2018-11-07	2018-11-30
140	774	139	2018-12-12	2018-12-30
141	2705	140	2018-04-11	2018-04-30
142	1002	141	2018-07-14	2018-07-30
143	2295	142	2019-03-04	2019-03-30
144	488	143	2019-01-01	2019-01-30
145	1850	144	2018-09-21	2018-09-30
146	250	145	2018-08-16	2018-08-30
147	893	146	2018-08-28	2018-08-30
148	2659	147	2018-06-15	2018-06-30
149	215	148	2018-11-27	2018-11-30
150	1111	149	2019-01-11	2019-01-30
151	1444	150	2018-12-02	2018-12-30
152	2917	151	2018-11-20	2018-11-30
153	973	152	2018-06-01	2018-06-30
154	2785	153	2018-11-03	2018-11-30
155	2869	154	2019-01-22	2019-01-30
156	1401	155	2018-04-17	2018-04-30
157	2807	156	2018-04-26	2018-04-30
158	551	157	2018-10-16	2018-10-30
159	1259	158	2018-06-17	2018-06-30
160	1381	159	2018-06-04	2018-06-30
161	258	160	2018-09-12	2018-09-30
162	1866	161	2019-02-18	2019-03-03
163	507	162	2018-04-08	2018-04-30
164	2880	163	2019-03-18	2019-03-30
165	1814	164	2018-05-01	2018-05-30
166	445	165	2019-01-31	2019-01-30
167	1769	166	2019-02-22	2019-03-03
168	2984	167	2018-12-08	2018-12-30
169	1703	168	2018-04-04	2018-04-30
170	2682	169	2019-01-21	2019-01-30
171	1320	170	2018-06-03	2018-06-30
172	586	171	2018-12-11	2018-12-30
173	752	172	2018-03-26	2018-03-30
174	43	173	2018-04-07	2018-04-30
175	2951	174	2018-07-04	2018-07-30
176	2907	175	2018-08-23	2018-08-30
177	892	176	2018-05-26	2018-05-30
178	664	177	2019-02-19	2019-03-03
179	1758	178	2019-03-25	2019-03-30
180	1793	179	2018-07-25	2018-07-30
181	2423	180	2019-02-09	2019-03-03
182	1497	181	2018-11-28	2018-11-30
183	2244	182	2018-04-05	2018-04-30
184	2151	183	2018-06-13	2018-06-30
185	1056	184	2018-11-25	2018-11-30
186	1345	185	2019-03-17	2019-03-30
187	2365	186	2018-09-30	2018-09-30
188	1639	187	2019-03-06	2019-03-30
189	716	188	2018-08-09	2018-08-30
190	1331	189	2018-08-03	2018-08-30
191	525	190	2018-04-09	2018-04-30
192	201	191	2018-05-03	2018-05-30
193	991	192	2018-12-14	2018-12-30
194	1475	193	2019-03-04	2019-03-30
195	20	194	2018-10-21	2018-10-30
196	1859	195	2018-05-07	2018-05-30
197	509	196	2018-11-28	2018-11-30
198	1627	197	2018-10-09	2018-10-30
199	509	198	2018-05-27	2018-05-30
200	2356	199	2018-05-29	2018-05-30
201	83	200	2018-06-18	2018-06-30
202	2383	201	2018-09-27	2018-09-30
203	1037	202	2018-08-26	2018-08-30
204	2711	203	2019-03-23	2019-03-30
205	1834	204	2018-08-21	2018-08-30
206	702	205	2018-05-27	2018-05-30
207	2124	206	2019-01-26	2019-01-30
208	2980	207	2018-06-01	2018-06-30
209	2100	208	2018-07-23	2018-07-30
210	466	209	2018-08-10	2018-08-30
211	2905	210	2018-12-26	2018-12-30
212	1218	211	2018-08-19	2018-08-30
213	855	212	2019-01-31	2019-01-30
214	207	213	2019-02-04	2019-03-03
215	64	214	2018-06-26	2018-06-30
216	2181	215	2018-09-22	2018-09-30
217	870	216	2018-08-10	2018-08-30
218	733	217	2018-04-20	2018-04-30
219	603	218	2018-10-04	2018-10-30
220	1045	219	2018-03-29	2018-03-30
221	1080	220	2018-07-12	2018-07-30
222	2008	221	2018-12-27	2018-12-30
223	656	222	2018-07-31	2018-07-30
224	969	223	2018-10-17	2018-10-30
225	1309	224	2018-10-28	2018-10-30
226	2823	225	2018-07-08	2018-07-30
227	2829	226	2018-09-08	2018-09-30
228	828	227	2019-02-27	2019-03-03
229	2458	228	2018-07-11	2018-07-30
230	1667	229	2018-12-11	2018-12-30
231	1011	230	2018-10-07	2018-10-30
232	147	231	2018-10-23	2018-10-30
233	2733	232	2018-05-29	2018-05-30
234	199	233	2018-09-10	2018-09-30
235	492	234	2019-01-17	2019-01-30
236	2436	235	2018-11-26	2018-11-30
237	2224	236	2018-06-06	2018-06-30
238	2398	237	2018-06-02	2018-06-30
239	1473	238	2018-09-18	2018-09-30
240	1078	239	2018-10-06	2018-10-30
241	930	240	2018-09-29	2018-09-30
242	444	241	2018-04-17	2018-04-30
243	2055	242	2018-07-09	2018-07-30
244	2226	243	2018-06-28	2018-06-30
245	827	244	2018-07-02	2018-07-30
246	964	245	2018-04-04	2018-04-30
247	1258	246	2018-09-02	2018-09-30
248	784	247	2018-12-29	2018-12-30
249	297	248	2018-08-25	2018-08-30
250	753	249	2018-09-21	2018-09-30
251	1349	250	2019-02-13	2019-03-03
252	245	251	2018-04-24	2018-04-30
253	303	252	2018-11-30	2018-11-30
254	1446	253	2018-09-14	2018-09-30
255	291	254	2018-07-03	2018-07-30
256	390	255	2019-03-24	2019-03-30
257	2217	256	2018-07-28	2018-07-30
258	879	257	2018-04-15	2018-04-30
259	606	258	2018-03-26	2018-03-30
260	1274	259	2018-05-17	2018-05-30
261	693	260	2018-04-19	2018-04-30
262	842	261	2018-08-23	2018-08-30
263	2671	262	2018-05-13	2018-05-30
264	697	263	2018-11-08	2018-11-30
265	2116	264	2018-05-30	2018-05-30
266	1155	265	2018-07-02	2018-07-30
267	315	266	2018-07-02	2018-07-30
268	1465	267	2018-11-11	2018-11-30
269	546	268	2019-03-09	2019-03-30
270	2070	269	2018-07-16	2018-07-30
271	1534	270	2018-06-12	2018-06-30
272	2331	271	2018-12-06	2018-12-30
273	3010	272	2018-12-19	2018-12-30
274	1294	273	2019-03-08	2019-03-30
275	816	274	2018-06-08	2018-06-30
276	1072	275	2018-04-27	2018-04-30
277	2052	276	2019-03-20	2019-03-30
278	1745	277	2018-08-23	2018-08-30
279	1133	278	2019-01-07	2019-01-30
280	2522	279	2018-11-11	2018-11-30
281	2169	280	2018-05-19	2018-05-30
282	944	281	2018-08-30	2018-08-30
283	2438	282	2018-03-28	2018-03-30
284	164	283	2019-02-24	2019-03-03
285	1599	284	2018-07-07	2018-07-30
286	503	285	2018-10-17	2018-10-30
287	1997	286	2018-07-09	2018-07-30
288	2092	287	2018-05-25	2018-05-30
289	1769	288	2018-09-01	2018-09-30
290	2830	289	2018-07-28	2018-07-30
291	2445	290	2018-12-27	2018-12-30
292	2663	291	2018-05-26	2018-05-30
293	1278	292	2018-04-09	2018-04-30
294	683	293	2018-07-13	2018-07-30
295	1718	294	2018-08-12	2018-08-30
296	1474	295	2018-08-17	2018-08-30
297	2231	296	2018-12-10	2018-12-30
298	2997	297	2019-02-23	2019-03-03
299	94	298	2019-01-24	2019-01-30
300	2353	299	2018-10-14	2018-10-30
301	2189	300	2018-08-02	2018-08-30
302	1236	301	2018-08-22	2018-08-30
303	2988	302	2019-02-15	2019-03-03
304	1367	303	2018-12-06	2018-12-30
305	2180	304	2018-04-26	2018-04-30
306	938	305	2018-07-28	2018-07-30
307	831	306	2018-09-02	2018-09-30
308	2011	307	2018-07-06	2018-07-30
309	129	308	2018-05-18	2018-05-30
310	2239	309	2019-01-16	2019-01-30
311	2345	310	2019-02-10	2019-03-03
312	1583	311	2018-11-26	2018-11-30
313	2977	312	2018-11-12	2018-11-30
314	2301	313	2018-12-30	2018-12-30
315	1390	314	2019-01-23	2019-01-30
316	1626	315	2018-12-28	2018-12-30
317	2564	316	2018-10-04	2018-10-30
318	2945	317	2018-04-15	2018-04-30
319	1704	318	2018-05-28	2018-05-30
320	1621	319	2018-10-06	2018-10-30
321	1281	320	2018-12-07	2018-12-30
322	614	321	2018-08-25	2018-08-30
323	1177	322	2018-06-12	2018-06-30
324	2195	323	2019-01-10	2019-01-30
325	1812	324	2018-08-22	2018-08-30
326	1649	325	2019-01-14	2019-01-30
327	533	326	2018-04-28	2018-04-30
328	527	327	2019-02-24	2019-03-03
329	2665	328	2018-08-26	2018-08-30
330	606	329	2018-06-17	2018-06-30
331	1207	330	2018-07-08	2018-07-30
332	1715	331	2018-10-28	2018-10-30
333	2203	332	2018-10-21	2018-10-30
334	1524	333	2018-10-23	2018-10-30
335	65	334	2018-09-30	2018-09-30
336	1979	335	2019-02-28	2019-03-03
337	1761	336	2018-12-18	2018-12-30
338	387	337	2018-11-25	2018-11-30
339	1986	338	2018-08-24	2018-08-30
340	577	339	2019-01-25	2019-01-30
341	1487	340	2018-09-15	2018-09-30
342	1492	341	2018-12-08	2018-12-30
343	1578	342	2018-07-05	2018-07-30
344	319	343	2018-09-03	2018-09-30
345	3006	344	2018-08-25	2018-08-30
346	1476	345	2019-01-07	2019-01-30
347	987	346	2018-09-09	2018-09-30
348	2796	347	2018-12-21	2018-12-30
349	1093	348	2018-12-07	2018-12-30
350	1264	349	2018-12-16	2018-12-30
351	1994	350	2018-06-03	2018-06-30
352	1987	351	2018-10-14	2018-10-30
353	2144	352	2019-02-25	2019-03-03
354	2233	353	2019-02-01	2019-03-03
355	366	354	2018-10-05	2018-10-30
356	1785	355	2018-05-06	2018-05-30
357	1185	356	2018-12-26	2018-12-30
358	72	357	2019-03-08	2019-03-30
359	509	358	2018-08-29	2018-08-30
360	2386	359	2019-03-25	2019-03-30
361	1432	360	2019-02-09	2019-03-03
362	1037	361	2018-09-03	2018-09-30
363	429	362	2018-08-08	2018-08-30
364	614	363	2018-05-31	2018-05-30
365	2307	364	2018-07-01	2018-07-30
366	1522	365	2018-09-18	2018-09-30
367	1030	366	2018-09-05	2018-09-30
368	2898	367	2019-02-08	2019-03-03
369	752	368	2018-05-26	2018-05-30
370	2101	369	2018-08-08	2018-08-30
371	2816	370	2018-11-19	2018-11-30
372	2664	371	2018-05-07	2018-05-30
373	2612	372	2018-09-19	2018-09-30
374	525	373	2019-01-31	2019-01-30
375	2091	374	2019-01-15	2019-01-30
376	725	375	2018-08-28	2018-08-30
377	334	376	2018-08-11	2018-08-30
378	2806	377	2018-11-04	2018-11-30
379	77	378	2019-01-21	2019-01-30
380	431	379	2018-03-28	2018-03-30
381	524	380	2018-12-29	2018-12-30
382	834	381	2018-08-24	2018-08-30
383	1697	382	2019-03-04	2019-03-30
384	2357	383	2018-05-13	2018-05-30
385	2712	384	2018-07-02	2018-07-30
386	409	385	2018-07-17	2018-07-30
387	1026	386	2018-08-12	2018-08-30
388	699	387	2018-08-19	2018-08-30
389	2691	388	2018-04-07	2018-04-30
390	386	389	2018-08-12	2018-08-30
391	2446	390	2018-11-12	2018-11-30
392	1606	391	2018-04-18	2018-04-30
393	1333	392	2018-07-09	2018-07-30
394	2329	393	2018-10-30	2018-10-30
395	2840	394	2018-12-28	2018-12-30
396	1989	395	2019-03-19	2019-03-30
397	1524	396	2018-07-22	2018-07-30
398	1610	397	2018-11-01	2018-11-30
399	172	398	2019-01-28	2019-01-30
400	142	399	2018-08-16	2018-08-30
401	558	400	2018-07-06	2018-07-30
402	1031	401	2018-11-09	2018-11-30
403	1216	402	2018-12-21	2018-12-30
404	2767	403	2018-08-26	2018-08-30
405	920	404	2018-07-31	2018-07-30
406	1380	405	2018-10-30	2018-10-30
407	1551	406	2018-12-01	2018-12-30
408	416	407	2019-01-29	2019-01-30
409	2763	408	2018-04-28	2018-04-30
410	2068	409	2019-02-20	2019-03-03
411	1182	410	2018-05-11	2018-05-30
412	1341	411	2018-09-15	2018-09-30
413	2265	412	2019-02-04	2019-03-03
414	1297	413	2018-11-10	2018-11-30
415	812	414	2018-11-09	2018-11-30
416	1735	415	2018-11-17	2018-11-30
417	2247	416	2019-01-10	2019-01-30
418	1886	417	2018-10-30	2018-10-30
419	2820	418	2018-07-28	2018-07-30
420	1884	419	2018-10-19	2018-10-30
421	1795	420	2018-07-08	2018-07-30
422	1774	421	2018-07-23	2018-07-30
423	855	422	2019-03-23	2019-03-30
424	867	423	2018-08-20	2018-08-30
425	3008	424	2019-03-14	2019-03-30
426	1977	425	2019-03-15	2019-03-30
427	1693	426	2018-07-02	2018-07-30
428	350	427	2018-08-16	2018-08-30
429	2220	428	2018-10-27	2018-10-30
430	2057	429	2018-04-13	2018-04-30
431	152	430	2018-10-30	2018-10-30
432	956	431	2018-12-04	2018-12-30
433	1223	432	2018-05-26	2018-05-30
434	1472	433	2018-04-12	2018-04-30
435	1350	434	2018-05-17	2018-05-30
436	2874	435	2018-04-08	2018-04-30
437	987	436	2019-01-15	2019-01-30
438	1453	437	2019-03-21	2019-03-30
439	1821	438	2018-12-29	2018-12-30
440	1214	439	2018-08-13	2018-08-30
441	2008	440	2018-09-19	2018-09-30
442	983	441	2018-09-23	2018-09-30
443	2491	442	2018-11-19	2018-11-30
444	2689	443	2019-01-19	2019-01-30
445	2421	444	2019-03-13	2019-03-30
446	126	445	2018-10-22	2018-10-30
447	1371	446	2018-08-03	2018-08-30
448	151	447	2018-04-20	2018-04-30
449	91	448	2018-09-08	2018-09-30
450	471	449	2018-08-05	2018-08-30
451	1446	450	2018-04-03	2018-04-30
452	1018	451	2018-04-22	2018-04-30
453	2415	452	2018-12-30	2018-12-30
454	1915	453	2018-04-14	2018-04-30
455	1523	454	2018-12-25	2018-12-30
456	846	455	2018-05-26	2018-05-30
457	2205	456	2019-01-31	2019-01-30
458	429	457	2019-03-15	2019-03-30
459	2599	342	2018-11-07	2018-11-30
460	384	358	2018-05-22	2018-05-30
461	3001	284	2018-12-07	2018-12-30
462	2988	233	2018-05-15	2018-05-30
463	1400	156	2019-03-21	2019-03-30
464	193	54	2018-05-22	2018-05-30
465	869	236	2018-06-01	2018-06-30
466	1364	170	2018-12-10	2018-12-30
467	2228	296	2018-10-29	2018-10-30
468	2816	433	2018-07-23	2018-07-30
469	2025	172	2018-05-08	2018-05-30
470	2876	235	2019-03-10	2019-03-30
471	2996	411	2018-05-26	2018-05-30
472	2242	442	2018-10-24	2018-10-30
473	2346	386	2018-09-04	2018-09-30
474	208	73	2018-07-06	2018-07-30
475	40	138	2019-02-02	2019-03-03
476	2647	425	2018-04-04	2018-04-30
477	680	60	2019-01-26	2019-01-30
478	526	24	2019-02-25	2019-03-03
479	1240	387	2018-10-17	2018-10-30
480	171	156	2019-03-13	2019-03-30
481	1657	187	2018-10-26	2018-10-30
482	2342	408	2018-10-14	2018-10-30
483	571	298	2018-12-08	2018-12-30
484	1045	29	2019-03-11	2019-03-30
485	1929	335	2018-04-05	2018-04-30
486	591	140	2018-09-14	2018-09-30
487	2953	426	2018-12-15	2018-12-30
488	2702	252	2018-12-01	2018-12-30
489	1591	381	2018-08-21	2018-08-30
490	1438	314	2018-12-23	2018-12-30
491	2570	370	2018-08-29	2018-08-30
492	119	429	2018-11-11	2018-11-30
493	872	443	2019-03-03	2019-03-30
494	911	324	2018-04-06	2018-04-30
495	1204	126	2018-07-15	2018-07-30
496	1297	61	2018-04-23	2018-04-30
497	2084	115	2018-12-07	2018-12-30
498	2441	4	2019-01-16	2019-01-30
499	1672	276	2018-08-20	2018-08-30
500	2425	232	2018-11-14	2018-11-30
501	4	148	2018-11-04	2018-11-30
502	691	425	2018-04-10	2018-04-30
503	175	374	2018-06-15	2018-06-30
504	2748	204	2018-09-02	2018-09-30
505	2098	188	2019-02-12	2019-03-03
506	2706	4	2018-10-31	2018-10-30
507	751	251	2019-01-05	2019-01-30
508	2868	14	2018-10-12	2018-10-30
509	1494	40	2019-01-16	2019-01-30
510	1644	190	2019-02-06	2019-03-03
511	570	82	2018-05-06	2018-05-30
512	778	305	2018-07-22	2018-07-30
513	1645	404	2018-12-11	2018-12-30
514	702	243	2019-01-29	2019-01-30
515	737	42	2019-01-11	2019-01-30
516	1508	218	2018-06-23	2018-06-30
517	2077	363	2019-02-27	2019-03-03
518	2749	48	2018-04-16	2018-04-30
519	1890	399	2018-12-08	2018-12-30
520	1663	114	2018-10-29	2018-10-30
521	2536	220	2018-08-31	2018-08-30
522	175	293	2018-12-17	2018-12-30
523	273	144	2018-11-15	2018-11-30
524	162	63	2018-08-20	2018-08-30
525	482	334	2018-11-10	2018-11-30
526	1780	320	2018-10-25	2018-10-30
527	2637	82	2018-06-17	2018-06-30
528	227	26	2019-02-02	2019-03-03
529	509	74	2018-08-23	2018-08-30
530	195	173	2018-09-10	2018-09-30
531	2294	395	2018-09-24	2018-09-30
532	836	90	2018-05-15	2018-05-30
533	650	7	2018-09-09	2018-09-30
534	2542	154	2018-10-18	2018-10-30
535	415	414	2018-10-01	2018-10-30
536	2524	144	2018-11-28	2018-11-30
537	480	365	2019-02-12	2019-03-03
538	1426	388	2018-11-13	2018-11-30
539	619	252	2018-10-15	2018-10-30
540	155	412	2018-05-31	2018-05-30
541	1826	440	2018-12-31	2018-12-30
542	1563	219	2018-04-24	2018-04-30
543	2251	17	2018-12-04	2018-12-30
544	2693	170	2018-05-09	2018-05-30
545	705	414	2019-03-19	2019-03-30
546	1424	151	2019-03-08	2019-03-30
547	2928	48	2018-06-22	2018-06-30
548	1208	426	2018-08-13	2018-08-30
549	2911	291	2018-04-14	2018-04-30
550	737	441	2018-12-02	2018-12-30
551	1572	429	2018-05-02	2018-05-30
552	2977	209	2018-05-05	2018-05-30
553	2630	444	2019-01-24	2019-01-30
554	2348	143	2018-04-09	2018-04-30
555	1759	308	2018-04-19	2018-04-30
556	996	219	2018-10-26	2018-10-30
557	27	264	2018-05-25	2018-05-30
558	2234	402	2018-06-12	2018-06-30
559	571	36	2018-11-11	2018-11-30
560	549	67	2018-09-02	2018-09-30
561	875	430	2018-12-23	2018-12-30
562	640	152	2018-05-12	2018-05-30
563	2548	18	2018-11-20	2018-11-30
564	2665	66	2019-01-23	2019-01-30
565	818	452	2018-08-17	2018-08-30
566	2458	131	2018-06-04	2018-06-30
567	1788	339	2018-10-16	2018-10-30
568	2606	441	2018-08-01	2018-08-30
569	765	149	2018-09-07	2018-09-30
570	2607	325	2018-08-13	2018-08-30
571	1146	80	2019-03-21	2019-03-30
572	1068	111	2019-01-21	2019-01-30
573	2855	280	2018-09-26	2018-09-30
574	448	326	2018-10-19	2018-10-30
575	612	56	2019-03-04	2019-03-30
576	1433	99	2018-08-19	2018-08-30
577	217	3	2018-06-14	2018-06-30
578	1282	333	2018-04-11	2018-04-30
579	2514	168	2018-10-02	2018-10-30
580	462	140	2019-01-07	2019-01-30
581	440	415	2019-03-05	2019-03-30
582	1241	80	2018-09-24	2018-09-30
583	2520	163	2018-07-29	2018-07-30
584	2348	452	2018-12-15	2018-12-30
585	2737	414	2018-11-05	2018-11-30
586	964	310	2019-03-12	2019-03-30
587	1131	407	2018-04-01	2018-04-30
588	1280	347	2018-05-15	2018-05-30
589	1618	269	2018-09-28	2018-09-30
590	1777	352	2018-11-01	2018-11-30
591	184	373	2018-05-07	2018-05-30
592	1585	12	2018-06-10	2018-06-30
593	495	22	2018-12-24	2018-12-30
594	2862	384	2019-02-01	2019-03-03
595	807	358	2018-10-22	2018-10-30
596	1172	241	2018-10-21	2018-10-30
597	768	5	2019-03-03	2019-03-30
598	2751	189	2018-10-17	2018-10-30
599	2445	324	2018-09-21	2018-09-30
600	74	97	2019-01-25	2019-01-30
601	1285	147	2018-12-18	2018-12-30
602	1612	272	2018-06-10	2018-06-30
603	2591	456	2018-09-27	2018-09-30
604	2758	298	2018-05-22	2018-05-30
605	2752	186	2018-12-24	2018-12-30
606	494	43	2019-03-03	2019-03-30
607	444	401	2018-11-22	2018-11-30
608	2526	20	2018-04-14	2018-04-30
609	2677	134	2019-03-12	2019-03-30
610	2284	333	2018-10-14	2018-10-30
611	503	88	2018-04-26	2018-04-30
612	1786	29	2018-06-22	2018-06-30
613	259	346	2019-02-22	2019-03-03
614	2274	11	2018-04-07	2018-04-30
615	2434	48	2019-01-11	2019-01-30
616	1863	263	2019-03-13	2019-03-30
617	2116	97	2019-03-10	2019-03-30
618	1446	125	2019-01-18	2019-01-30
619	2043	407	2018-12-10	2018-12-30
620	725	18	2018-05-20	2018-05-30
621	2415	101	2018-06-29	2018-06-30
622	844	294	2018-05-22	2018-05-30
623	630	62	2018-08-15	2018-08-30
624	929	1	2018-06-29	2018-06-30
625	463	364	2018-04-01	2018-04-30
626	2452	234	2018-11-14	2018-11-30
627	2121	307	2018-10-09	2018-10-30
628	1555	272	2018-07-12	2018-07-30
629	334	446	2019-03-08	2019-03-30
630	1515	220	2018-06-14	2018-06-30
631	802	26	2019-02-17	2019-03-03
632	2999	415	2018-06-21	2018-06-30
633	2411	56	2018-12-16	2018-12-30
634	2778	146	2019-03-11	2019-03-30
635	2989	455	2018-07-02	2018-07-30
636	929	380	2019-01-06	2019-01-30
637	709	55	2018-08-29	2018-08-30
638	2608	90	2019-01-23	2019-01-30
639	266	38	2018-04-18	2018-04-30
640	1203	431	2018-12-26	2018-12-30
641	1695	406	2018-05-13	2018-05-30
642	1970	249	2018-06-08	2018-06-30
643	773	280	2018-11-27	2018-11-30
644	2422	310	2018-05-28	2018-05-30
645	1094	36	2018-04-19	2018-04-30
646	1403	290	2018-09-24	2018-09-30
647	655	45	2018-06-16	2018-06-30
648	380	108	2018-05-02	2018-05-30
649	1032	170	2018-10-25	2018-10-30
650	175	227	2018-07-27	2018-07-30
651	1979	66	2018-09-03	2018-09-30
652	750	66	2019-01-28	2019-01-30
653	2785	111	2018-12-08	2018-12-30
654	2516	45	2018-05-31	2018-05-30
655	2214	376	2018-08-15	2018-08-30
656	2271	208	2019-01-18	2019-01-30
657	2401	195	2018-09-19	2018-09-30
658	1593	213	2018-09-30	2018-09-30
659	2550	384	2018-10-18	2018-10-30
660	2744	62	2018-11-19	2018-11-30
661	2607	68	2018-05-27	2018-05-30
662	410	48	2018-10-28	2018-10-30
663	1549	12	2018-07-15	2018-07-30
664	902	453	2018-12-28	2018-12-30
665	1996	148	2019-02-16	2019-03-03
666	411	137	2018-04-10	2018-04-30
667	2180	296	2018-04-27	2018-04-30
668	1805	308	2018-04-30	2018-04-30
669	984	150	2018-12-03	2018-12-30
670	2897	307	2019-03-11	2019-03-30
671	2829	251	2018-10-26	2018-10-30
672	3001	43	2018-07-09	2018-07-30
673	203	306	2018-12-29	2018-12-30
674	2951	72	2018-10-28	2018-10-30
675	462	132	2018-09-22	2018-09-30
676	2559	56	2018-11-05	2018-11-30
677	1049	203	2019-03-23	2019-03-30
678	390	234	2018-10-12	2018-10-30
679	293	226	2019-01-22	2019-01-30
680	2434	137	2018-06-04	2018-06-30
681	2717	211	2018-05-15	2018-05-30
682	482	446	2018-07-10	2018-07-30
683	490	292	2018-05-26	2018-05-30
684	1500	22	2018-07-30	2018-07-30
685	2908	30	2018-04-04	2018-04-30
686	2978	36	2018-08-05	2018-08-30
687	1711	46	2018-05-18	2018-05-30
688	34	100	2018-04-01	2018-04-30
689	422	23	2019-01-11	2019-01-30
690	1724	448	2018-04-21	2018-04-30
691	219	152	2019-03-22	2019-03-30
692	2149	98	2018-09-15	2018-09-30
693	2179	16	2018-09-07	2018-09-30
694	1270	145	2019-01-29	2019-01-30
695	1483	390	2019-03-21	2019-03-30
696	533	401	2019-02-14	2019-03-03
697	1569	319	2019-03-13	2019-03-30
698	2246	278	2019-02-02	2019-03-03
699	1289	135	2018-12-05	2018-12-30
700	2061	278	2018-06-15	2018-06-30
701	2522	105	2019-02-16	2019-03-03
702	478	251	2018-05-05	2018-05-30
703	2134	410	2018-06-07	2018-06-30
704	1432	255	2018-10-05	2018-10-30
705	2593	262	2019-01-03	2019-01-30
706	632	193	2018-09-20	2018-09-30
707	2976	20	2018-06-27	2018-06-30
708	2730	164	2018-10-18	2018-10-30
709	2075	56	2018-10-26	2018-10-30
710	477	401	2019-02-19	2019-03-03
711	2271	398	2018-07-06	2018-07-30
712	2236	21	2018-08-07	2018-08-30
713	2650	355	2018-10-19	2018-10-30
714	157	188	2018-05-27	2018-05-30
715	2801	151	2019-02-16	2019-03-03
716	2620	24	2018-04-16	2018-04-30
717	2941	213	2018-06-28	2018-06-30
718	2627	217	2018-11-27	2018-11-30
719	103	120	2018-05-18	2018-05-30
720	2252	314	2018-09-15	2018-09-30
721	1951	373	2019-01-23	2019-01-30
722	2922	363	2018-07-13	2018-07-30
723	570	416	2018-12-28	2018-12-30
724	2461	197	2018-04-11	2018-04-30
725	1463	301	2018-12-13	2018-12-30
726	2825	353	2018-04-17	2018-04-30
727	2412	244	2018-08-29	2018-08-30
728	2026	79	2018-09-28	2018-09-30
729	2744	147	2018-10-25	2018-10-30
730	877	19	2018-06-11	2018-06-30
731	193	372	2019-03-02	2019-03-30
732	239	258	2018-07-15	2018-07-30
733	138	151	2018-06-06	2018-06-30
734	730	379	2018-04-25	2018-04-30
735	417	336	2018-10-21	2018-10-30
736	713	127	2018-10-17	2018-10-30
737	568	92	2018-12-28	2018-12-30
738	148	263	2018-12-15	2018-12-30
739	1865	278	2018-07-22	2018-07-30
740	1417	109	2018-04-10	2018-04-30
741	1076	218	2019-01-25	2019-01-30
742	1241	314	2018-06-22	2018-06-30
743	1765	351	2019-03-14	2019-03-30
744	737	372	2019-02-12	2019-03-03
745	2582	400	2018-12-10	2018-12-30
746	716	325	2018-10-02	2018-10-30
747	2241	215	2019-02-23	2019-03-03
748	33	326	2018-05-17	2018-05-30
749	2338	398	2018-07-09	2018-07-30
750	2856	299	2018-05-01	2018-05-30
751	1379	205	2018-08-22	2018-08-30
752	2148	435	2018-04-30	2018-04-30
753	1172	407	2018-10-01	2018-10-30
754	1372	310	2018-10-26	2018-10-30
755	2610	350	2018-05-25	2018-05-30
756	900	409	2018-11-29	2018-11-30
757	1880	413	2019-02-04	2019-03-03
758	2700	385	2018-06-27	2018-06-30
759	571	389	2018-11-13	2018-11-30
760	561	69	2019-03-18	2019-03-30
761	2307	421	2018-09-23	2018-09-30
762	1708	92	2018-06-27	2018-06-30
763	118	432	2019-02-08	2019-03-03
764	2152	436	2019-01-13	2019-01-30
765	1233	62	2018-12-10	2018-12-30
766	1992	426	2018-08-28	2018-08-30
767	2573	346	2019-01-17	2019-01-30
768	1353	306	2018-07-24	2018-07-30
769	484	199	2018-11-09	2018-11-30
770	2226	367	2019-03-14	2019-03-30
771	2280	126	2018-09-28	2018-09-30
772	1327	357	2019-03-06	2019-03-30
773	1914	70	2018-03-31	2018-03-30
774	102	370	2018-10-05	2018-10-30
775	518	143	2018-04-11	2018-04-30
776	441	354	2018-10-16	2018-10-30
777	1045	65	2018-06-05	2018-06-30
778	1823	26	2018-09-11	2018-09-30
779	469	53	2019-02-03	2019-03-03
780	2723	366	2018-08-09	2018-08-30
781	2884	308	2018-12-12	2018-12-30
782	2216	9	2018-06-18	2018-06-30
783	1618	362	2018-07-20	2018-07-30
784	647	394	2018-09-19	2018-09-30
785	30	168	2018-07-28	2018-07-30
786	81	454	2019-01-13	2019-01-30
787	2837	338	2018-10-03	2018-10-30
788	543	24	2018-06-02	2018-06-30
789	926	342	2018-06-04	2018-06-30
790	2182	231	2018-07-13	2018-07-30
791	1249	288	2019-03-02	2019-03-30
792	1836	67	2019-02-02	2019-03-03
793	1103	35	2018-11-25	2018-11-30
794	1114	84	2018-09-09	2018-09-30
795	2256	219	2019-01-13	2019-01-30
796	1455	178	2018-08-29	2018-08-30
797	1341	258	2018-03-26	2018-03-30
798	41	368	2018-12-26	2018-12-30
799	1497	43	2018-09-15	2018-09-30
800	404	206	2019-01-15	2019-01-30
801	2430	125	2018-07-01	2018-07-30
802	59	242	2018-10-02	2018-10-30
803	2361	377	2018-12-15	2018-12-30
804	238	162	2018-06-18	2018-06-30
805	272	354	2018-06-27	2018-06-30
806	839	335	2018-10-24	2018-10-30
807	2307	114	2019-01-27	2019-01-30
808	73	439	2018-08-16	2018-08-30
809	1502	261	2018-07-25	2018-07-30
810	2085	18	2018-06-12	2018-06-30
811	847	252	2019-02-02	2019-03-03
812	2775	75	2018-11-18	2018-11-30
813	2541	431	2018-10-18	2018-10-30
814	311	47	2018-09-15	2018-09-30
815	2038	218	2018-05-11	2018-05-30
816	1103	393	2018-04-22	2018-04-30
817	510	104	2018-08-31	2018-08-30
818	2366	381	2018-11-17	2018-11-30
819	1811	204	2018-11-13	2018-11-30
820	1297	147	2018-10-01	2018-10-30
821	328	267	2018-10-01	2018-10-30
822	612	182	2019-03-17	2019-03-30
823	876	386	2018-11-29	2018-11-30
824	628	274	2018-04-15	2018-04-30
825	2702	332	2018-08-28	2018-08-30
826	465	62	2018-12-13	2018-12-30
827	1212	89	2018-07-07	2018-07-30
828	2961	328	2018-05-10	2018-05-30
829	1429	356	2018-11-26	2018-11-30
830	1721	191	2018-04-15	2018-04-30
831	1413	146	2019-03-03	2019-03-30
832	2657	373	2018-06-07	2018-06-30
833	1495	166	2019-03-20	2019-03-30
834	2723	99	2018-09-19	2018-09-30
835	236	206	2018-05-07	2018-05-30
836	1229	16	2018-10-23	2018-10-30
837	2199	42	2018-07-04	2018-07-30
838	132	427	2018-07-31	2018-07-30
839	1943	326	2018-09-28	2018-09-30
840	2796	237	2018-07-18	2018-07-30
841	2800	239	2018-07-31	2018-07-30
842	2697	342	2018-12-13	2018-12-30
843	1208	346	2018-09-17	2018-09-30
844	1409	170	2018-09-25	2018-09-30
845	902	363	2019-03-15	2019-03-30
846	382	42	2018-04-24	2018-04-30
847	2044	197	2018-11-17	2018-11-30
848	2095	84	2019-02-15	2019-03-03
849	197	34	2018-10-12	2018-10-30
850	2290	438	2018-05-01	2018-05-30
851	550	325	2018-07-20	2018-07-30
852	2445	176	2018-09-28	2018-09-30
853	1789	273	2018-05-29	2018-05-30
854	980	158	2018-08-08	2018-08-30
855	2877	364	2018-12-06	2018-12-30
856	298	326	2018-09-21	2018-09-30
857	382	253	2018-05-13	2018-05-30
858	1875	290	2018-10-11	2018-10-30
859	1500	314	2018-05-13	2018-05-30
860	822	37	2018-12-03	2018-12-30
861	689	136	2018-10-31	2018-10-30
862	282	239	2018-05-29	2018-05-30
863	2511	40	2018-07-27	2018-07-30
864	2286	226	2018-06-20	2018-06-30
865	2379	341	2019-02-20	2019-03-03
866	1483	128	2019-01-09	2019-01-30
867	839	32	2018-12-22	2018-12-30
868	100	184	2018-07-15	2018-07-30
869	1234	400	2018-06-07	2018-06-30
870	2094	305	2018-12-17	2018-12-30
871	2976	379	2018-11-20	2018-11-30
872	1620	204	2018-07-31	2018-07-30
873	252	288	2018-07-20	2018-07-30
874	561	82	2018-06-24	2018-06-30
875	1814	294	2019-01-17	2019-01-30
876	558	351	2018-05-20	2018-05-30
877	2693	215	2018-08-04	2018-08-30
878	2548	74	2018-08-12	2018-08-30
879	1837	131	2018-12-11	2018-12-30
880	2765	416	2018-10-27	2018-10-30
881	356	447	2018-04-27	2018-04-30
882	344	385	2019-02-01	2019-03-03
883	2578	442	2019-01-28	2019-01-30
884	1471	102	2018-07-21	2018-07-30
885	1447	326	2018-06-05	2018-06-30
886	2475	313	2018-05-21	2018-05-30
887	2939	453	2018-08-10	2018-08-30
888	396	445	2019-01-05	2019-01-30
889	2211	390	2018-10-13	2018-10-30
890	590	347	2019-02-24	2019-03-03
891	1314	36	2019-03-10	2019-03-30
892	488	233	2018-05-10	2018-05-30
893	28	259	2019-02-20	2019-03-03
894	2100	158	2018-05-27	2018-05-30
895	1365	193	2018-10-02	2018-10-30
896	1682	10	2018-08-03	2018-08-30
897	2326	14	2018-12-23	2018-12-30
898	472	271	2018-10-05	2018-10-30
899	1356	103	2018-07-31	2018-07-30
900	192	33	2018-05-17	2018-05-30
901	783	14	2018-12-25	2018-12-30
902	891	133	2018-07-25	2018-07-30
903	2375	286	2018-08-08	2018-08-30
904	1260	438	2019-03-23	2019-03-30
905	1389	36	2019-02-20	2019-03-03
906	1673	317	2018-10-08	2018-10-30
907	2057	298	2018-08-05	2018-08-30
908	1791	413	2018-07-15	2018-07-30
909	663	165	2018-11-21	2018-11-30
910	2678	306	2018-08-23	2018-08-30
911	126	136	2018-11-07	2018-11-30
912	1195	224	2018-10-27	2018-10-30
913	632	218	2018-08-01	2018-08-30
914	2644	233	2018-10-31	2018-10-30
915	2006	41	2018-06-17	2018-06-30
916	2811	324	2018-08-30	2018-08-30
917	722	447	2018-11-19	2018-11-30
918	714	214	2019-01-09	2019-01-30
919	2150	302	2018-05-27	2018-05-30
920	1016	404	2018-06-06	2018-06-30
921	1942	290	2018-07-21	2018-07-30
922	1917	108	2018-12-26	2018-12-30
923	2010	357	2019-01-07	2019-01-30
924	2658	64	2018-05-03	2018-05-30
925	971	143	2018-08-31	2018-08-30
926	1619	16	2018-05-18	2018-05-30
927	1759	163	2019-03-12	2019-03-30
928	1617	104	2018-07-06	2018-07-30
929	2815	324	2018-12-08	2018-12-30
930	1340	318	2018-08-02	2018-08-30
931	1163	297	2018-10-20	2018-10-30
932	2531	354	2018-11-01	2018-11-30
933	2871	89	2018-10-13	2018-10-30
934	439	117	2018-12-30	2018-12-30
935	752	137	2018-06-15	2018-06-30
936	2306	1	2018-04-03	2018-04-30
937	352	32	2018-05-19	2018-05-30
938	80	436	2018-12-22	2018-12-30
939	1591	279	2018-05-06	2018-05-30
940	321	285	2018-06-15	2018-06-30
941	1613	14	2018-04-27	2018-04-30
942	2923	101	2018-09-25	2018-09-30
943	2920	143	2018-08-02	2018-08-30
944	111	439	2018-05-10	2018-05-30
945	2383	192	2018-10-24	2018-10-30
946	2395	208	2018-05-29	2018-05-30
947	2092	415	2018-08-21	2018-08-30
948	1145	117	2018-06-29	2018-06-30
949	1487	115	2018-05-13	2018-05-30
950	990	421	2018-07-26	2018-07-30
951	2340	73	2018-11-18	2018-11-30
952	1386	265	2018-12-29	2018-12-30
953	978	453	2018-09-20	2018-09-30
954	2821	81	2018-10-16	2018-10-30
955	876	414	2018-09-19	2018-09-30
956	648	131	2018-08-13	2018-08-30
957	81	405	2018-05-29	2018-05-30
958	1396	74	2018-08-11	2018-08-30
\.


--
-- Data for Name: casete; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public.casete (id_casete, id_pelicula, formato) FROM stdin;
1	1	Blu-ray
2	2	CD
3	3	CD
4	4	VHS
5	5	DVD
6	6	VHS
7	7	VHS
8	8	CD
9	9	CD
10	10	VHS
11	11	DVD
12	12	Blu-ray
13	13	VHS
14	14	Blu-ray
15	15	DVD
16	16	DVD
17	17	Blu-ray
18	18	CD
19	19	Blu-ray
20	20	DVD
21	21	DVD
22	22	DVD
23	23	DVD
24	24	VHS
25	25	CD
26	26	VHS
27	27	VHS
28	28	VHS
29	29	VHS
30	30	VHS
31	31	CD
32	32	DVD
33	33	DVD
34	34	DVD
35	35	CD
36	36	VHS
37	37	VHS
38	38	DVD
39	39	CD
40	40	CD
41	41	Blu-ray
42	42	DVD
43	43	CD
44	44	CD
45	45	VHS
46	46	CD
47	47	DVD
48	48	VHS
49	49	DVD
50	50	Blu-ray
51	51	DVD
52	52	CD
53	53	VHS
54	54	CD
55	55	DVD
56	56	CD
57	57	CD
58	58	Blu-ray
59	59	Blu-ray
60	60	VHS
61	61	VHS
62	62	VHS
63	63	VHS
64	64	CD
65	65	Blu-ray
66	66	DVD
67	67	CD
68	68	CD
69	69	DVD
70	70	DVD
71	71	CD
72	72	VHS
73	73	CD
74	74	VHS
75	75	CD
76	76	CD
77	77	Blu-ray
78	78	VHS
79	79	CD
80	80	Blu-ray
81	81	Blu-ray
82	82	DVD
83	83	Blu-ray
84	84	DVD
85	85	CD
86	86	VHS
87	87	Blu-ray
88	88	Blu-ray
89	89	DVD
90	90	Blu-ray
91	91	DVD
92	92	VHS
93	93	VHS
94	94	Blu-ray
95	95	VHS
96	96	VHS
97	97	DVD
98	98	DVD
99	99	VHS
100	100	CD
101	101	VHS
102	102	Blu-ray
103	103	Blu-ray
104	104	CD
105	105	Blu-ray
106	106	DVD
107	107	CD
108	108	DVD
109	109	CD
110	110	Blu-ray
111	111	Blu-ray
112	112	CD
113	113	Blu-ray
114	114	Blu-ray
115	115	Blu-ray
116	116	VHS
117	117	Blu-ray
118	118	DVD
119	119	VHS
120	120	VHS
121	121	Blu-ray
122	122	Blu-ray
123	123	CD
124	124	DVD
125	125	VHS
126	126	CD
127	127	Blu-ray
128	128	Blu-ray
129	129	VHS
130	130	VHS
131	131	DVD
132	132	CD
133	133	VHS
134	124	CD
135	111	Blu-ray
136	39	CD
137	32	DVD
138	99	VHS
139	16	CD
140	101	DVD
141	115	CD
142	112	CD
143	119	VHS
144	121	VHS
145	79	Blu-ray
146	127	Blu-ray
147	29	DVD
148	100	CD
149	112	VHS
150	84	Blu-ray
151	17	VHS
152	56	VHS
153	125	CD
154	91	Blu-ray
155	65	VHS
156	70	CD
157	46	DVD
158	23	VHS
159	95	Blu-ray
160	126	CD
161	23	DVD
162	10	CD
163	21	DVD
164	5	VHS
165	9	Blu-ray
166	34	VHS
167	125	CD
168	87	VHS
169	78	Blu-ray
170	129	Blu-ray
171	49	DVD
172	21	VHS
173	58	VHS
174	110	Blu-ray
175	45	DVD
176	73	Blu-ray
177	104	DVD
178	5	CD
179	91	CD
180	18	VHS
181	34	CD
182	112	DVD
183	100	VHS
184	75	CD
185	43	Blu-ray
186	25	DVD
187	107	VHS
188	93	DVD
189	10	VHS
190	123	DVD
191	24	CD
192	4	DVD
193	16	VHS
194	75	Blu-ray
195	55	VHS
196	40	CD
197	10	VHS
198	99	VHS
199	121	VHS
200	90	VHS
201	2	CD
202	102	VHS
203	41	DVD
204	15	CD
205	101	DVD
206	31	VHS
207	29	VHS
208	75	DVD
209	127	CD
210	2	Blu-ray
211	92	DVD
212	31	DVD
213	61	VHS
214	44	VHS
215	113	Blu-ray
216	9	VHS
217	6	DVD
218	51	Blu-ray
219	1	VHS
220	113	CD
221	71	DVD
222	13	VHS
223	113	VHS
224	51	DVD
225	5	DVD
226	36	Blu-ray
227	130	CD
228	13	Blu-ray
229	28	CD
230	84	DVD
231	2	CD
232	81	DVD
233	124	DVD
234	34	VHS
235	104	DVD
236	37	CD
237	11	Blu-ray
238	41	Blu-ray
239	72	VHS
240	42	Blu-ray
241	92	VHS
242	30	DVD
243	98	VHS
244	58	Blu-ray
245	60	Blu-ray
246	43	DVD
247	131	VHS
248	48	VHS
249	128	CD
250	87	VHS
251	127	CD
252	102	VHS
253	127	DVD
254	109	VHS
255	7	VHS
256	4	DVD
257	11	CD
258	124	Blu-ray
259	108	CD
260	121	DVD
261	4	CD
262	105	DVD
263	47	DVD
264	116	DVD
265	131	VHS
266	61	Blu-ray
267	42	DVD
268	6	Blu-ray
269	45	Blu-ray
270	30	Blu-ray
271	77	Blu-ray
272	94	CD
273	63	Blu-ray
274	26	VHS
275	43	CD
276	122	DVD
277	84	DVD
278	100	DVD
279	3	DVD
280	78	CD
281	17	VHS
282	130	VHS
283	20	VHS
284	107	DVD
285	126	DVD
286	25	VHS
287	25	Blu-ray
288	79	VHS
289	88	Blu-ray
290	57	DVD
291	109	Blu-ray
292	14	DVD
293	90	CD
294	12	VHS
295	89	DVD
296	131	Blu-ray
297	125	DVD
298	37	Blu-ray
299	101	DVD
300	123	VHS
301	16	Blu-ray
302	12	DVD
303	25	CD
304	124	DVD
305	48	VHS
306	24	CD
307	103	DVD
308	38	VHS
309	58	CD
310	117	VHS
311	38	Blu-ray
312	27	Blu-ray
313	98	Blu-ray
314	118	Blu-ray
315	133	DVD
316	118	CD
317	105	VHS
318	117	CD
319	102	CD
320	109	VHS
321	23	CD
322	92	Blu-ray
323	106	VHS
324	31	Blu-ray
325	89	CD
326	121	VHS
327	103	Blu-ray
328	95	DVD
329	120	CD
330	46	VHS
331	68	DVD
332	20	VHS
333	80	Blu-ray
334	96	CD
335	28	DVD
336	127	VHS
337	104	VHS
338	118	CD
339	90	Blu-ray
340	77	CD
341	129	VHS
342	88	CD
343	114	DVD
344	60	DVD
345	104	CD
346	63	DVD
347	64	CD
348	89	VHS
349	80	VHS
350	15	VHS
351	34	Blu-ray
352	51	DVD
353	41	CD
354	113	CD
355	12	DVD
356	10	VHS
357	73	DVD
358	94	Blu-ray
359	111	Blu-ray
360	113	Blu-ray
361	43	VHS
362	34	CD
363	109	DVD
364	56	CD
365	50	CD
366	7	Blu-ray
367	94	VHS
368	76	VHS
369	25	Blu-ray
370	65	VHS
371	109	Blu-ray
372	6	Blu-ray
373	64	CD
374	68	DVD
375	52	CD
376	72	VHS
377	53	VHS
378	27	DVD
379	66	Blu-ray
380	133	VHS
381	111	VHS
382	78	Blu-ray
383	19	DVD
384	82	VHS
385	91	DVD
386	47	CD
387	59	VHS
388	79	VHS
389	64	Blu-ray
390	106	VHS
391	71	CD
392	65	CD
393	15	CD
394	79	Blu-ray
395	11	Blu-ray
396	39	Blu-ray
397	68	DVD
398	31	Blu-ray
399	81	DVD
400	125	Blu-ray
401	101	CD
402	26	DVD
403	99	CD
404	36	CD
405	115	DVD
406	73	Blu-ray
407	94	CD
408	118	CD
409	3	VHS
410	113	Blu-ray
411	118	CD
412	8	Blu-ray
413	78	CD
414	65	Blu-ray
415	48	DVD
416	66	VHS
417	92	VHS
418	128	DVD
419	63	CD
420	84	Blu-ray
421	113	DVD
422	109	DVD
423	84	Blu-ray
424	131	DVD
425	106	DVD
426	106	Blu-ray
427	25	Blu-ray
428	126	Blu-ray
429	112	Blu-ray
430	86	DVD
431	50	VHS
432	84	DVD
433	123	CD
434	118	DVD
435	9	CD
436	113	VHS
437	106	DVD
438	57	CD
439	31	CD
440	127	DVD
441	59	DVD
442	96	Blu-ray
443	101	DVD
444	17	VHS
445	25	Blu-ray
446	7	Blu-ray
447	133	DVD
448	14	Blu-ray
449	6	DVD
450	22	Blu-ray
451	127	CD
452	71	Blu-ray
453	11	CD
454	5	CD
455	73	VHS
456	127	DVD
457	123	DVD
458	68	Blu-ray
459	7	CD
460	93	VHS
461	59	CD
462	19	DVD
463	69	Blu-ray
464	3	CD
465	93	Blu-ray
466	38	CD
467	35	Blu-ray
468	4	VHS
469	61	Blu-ray
470	97	DVD
471	117	VHS
472	132	DVD
473	96	CD
474	10	Blu-ray
475	56	DVD
476	120	CD
477	107	VHS
478	6	DVD
479	2	CD
480	65	DVD
481	92	CD
482	66	DVD
483	10	CD
484	76	DVD
485	66	CD
486	89	Blu-ray
487	53	VHS
488	26	DVD
489	76	VHS
490	18	DVD
491	47	Blu-ray
492	96	Blu-ray
493	9	VHS
494	70	CD
495	90	CD
496	48	VHS
497	52	CD
498	55	Blu-ray
499	107	VHS
500	5	VHS
501	57	CD
502	125	VHS
503	130	CD
504	123	DVD
505	43	Blu-ray
506	64	VHS
507	24	Blu-ray
508	32	CD
509	66	Blu-ray
510	61	Blu-ray
511	54	CD
512	122	Blu-ray
513	49	Blu-ray
514	7	Blu-ray
515	98	CD
516	22	DVD
517	73	CD
518	65	VHS
519	47	VHS
520	68	DVD
521	56	CD
522	105	DVD
523	72	Blu-ray
524	58	VHS
525	87	DVD
526	84	Blu-ray
527	65	DVD
528	125	Blu-ray
529	117	VHS
530	73	DVD
531	96	CD
532	103	DVD
533	112	VHS
534	125	Blu-ray
535	59	VHS
536	63	DVD
537	50	DVD
538	37	CD
539	129	CD
540	32	DVD
541	108	DVD
542	107	CD
543	32	DVD
544	84	Blu-ray
545	47	CD
546	62	Blu-ray
547	25	DVD
548	120	CD
549	110	Blu-ray
550	51	DVD
551	22	DVD
552	9	DVD
553	82	VHS
554	12	DVD
555	55	Blu-ray
556	45	Blu-ray
557	124	DVD
558	109	DVD
559	80	Blu-ray
560	123	CD
561	41	Blu-ray
562	16	CD
563	43	DVD
564	107	DVD
565	65	CD
566	18	DVD
567	104	CD
568	57	VHS
569	1	VHS
570	38	VHS
571	52	DVD
572	129	CD
573	3	CD
574	105	Blu-ray
575	113	Blu-ray
576	57	VHS
577	118	Blu-ray
578	119	DVD
579	93	VHS
580	113	CD
581	132	CD
582	55	Blu-ray
583	126	Blu-ray
584	82	Blu-ray
585	90	Blu-ray
586	104	DVD
587	111	VHS
588	9	Blu-ray
589	85	DVD
590	79	VHS
591	127	Blu-ray
592	34	Blu-ray
593	58	CD
594	20	Blu-ray
595	20	DVD
596	128	Blu-ray
597	58	Blu-ray
598	24	Blu-ray
599	120	CD
600	12	Blu-ray
601	16	DVD
602	106	CD
603	107	CD
604	126	DVD
605	74	Blu-ray
606	28	VHS
607	8	VHS
608	15	VHS
609	83	VHS
610	60	VHS
611	67	VHS
612	26	DVD
613	25	CD
614	76	DVD
615	41	Blu-ray
616	113	Blu-ray
617	117	DVD
618	66	DVD
619	130	CD
620	122	DVD
621	86	DVD
622	8	CD
623	7	DVD
624	107	Blu-ray
625	91	CD
626	110	Blu-ray
627	59	Blu-ray
628	24	Blu-ray
629	130	CD
630	32	CD
631	126	Blu-ray
632	75	VHS
633	124	Blu-ray
634	89	VHS
635	117	VHS
636	23	DVD
637	59	CD
638	25	DVD
639	9	DVD
640	12	CD
641	61	CD
642	109	Blu-ray
643	66	VHS
644	49	DVD
645	77	CD
646	18	DVD
647	11	DVD
648	39	VHS
649	93	Blu-ray
650	65	DVD
651	6	DVD
652	21	DVD
653	74	CD
654	100	Blu-ray
655	104	CD
656	4	DVD
657	92	CD
658	14	DVD
659	8	CD
660	44	CD
661	50	DVD
662	105	DVD
663	49	CD
664	131	CD
665	88	DVD
666	65	DVD
667	58	CD
668	74	Blu-ray
669	129	DVD
670	121	VHS
671	93	DVD
672	59	VHS
673	133	Blu-ray
674	83	VHS
675	68	Blu-ray
676	56	VHS
677	128	DVD
678	46	DVD
679	86	CD
680	68	DVD
681	56	DVD
682	70	DVD
683	94	Blu-ray
684	10	Blu-ray
685	30	Blu-ray
686	81	DVD
687	12	VHS
688	113	DVD
689	45	Blu-ray
690	33	VHS
691	3	CD
692	71	DVD
693	108	CD
694	59	VHS
695	56	CD
696	57	VHS
697	110	VHS
698	59	CD
699	45	VHS
700	42	VHS
701	29	DVD
702	21	VHS
703	2	DVD
704	40	Blu-ray
705	45	VHS
706	73	CD
707	29	Blu-ray
708	29	CD
709	16	DVD
710	63	VHS
711	128	CD
712	11	CD
713	108	DVD
714	75	CD
715	8	Blu-ray
716	123	Blu-ray
717	107	Blu-ray
718	69	DVD
719	80	DVD
720	4	DVD
721	23	CD
722	108	CD
723	50	Blu-ray
724	78	DVD
725	74	CD
726	76	CD
727	63	CD
728	8	DVD
729	28	DVD
730	71	DVD
731	4	VHS
732	46	VHS
733	30	DVD
734	98	VHS
735	101	DVD
736	22	Blu-ray
737	125	VHS
738	95	CD
739	64	CD
740	131	Blu-ray
741	34	CD
742	63	CD
743	16	VHS
744	114	Blu-ray
745	133	Blu-ray
746	18	Blu-ray
747	88	DVD
748	74	Blu-ray
749	6	VHS
750	21	DVD
751	66	Blu-ray
752	92	CD
753	22	DVD
754	15	DVD
755	119	DVD
756	2	VHS
757	90	VHS
758	27	VHS
759	31	Blu-ray
760	83	CD
761	3	DVD
762	24	DVD
763	115	CD
764	78	VHS
765	36	DVD
766	61	Blu-ray
767	1	Blu-ray
768	104	Blu-ray
769	37	Blu-ray
770	81	Blu-ray
771	6	CD
772	51	VHS
773	91	DVD
774	79	CD
775	12	VHS
776	61	VHS
777	62	CD
778	49	CD
779	6	VHS
780	5	Blu-ray
781	10	VHS
782	60	Blu-ray
783	1	CD
784	74	DVD
785	72	Blu-ray
786	34	Blu-ray
787	58	Blu-ray
788	16	DVD
789	81	DVD
790	117	VHS
791	90	VHS
792	96	VHS
793	37	Blu-ray
794	97	DVD
795	22	VHS
796	57	Blu-ray
797	10	Blu-ray
798	73	CD
799	130	CD
800	100	Blu-ray
801	117	Blu-ray
802	112	Blu-ray
803	59	DVD
804	43	Blu-ray
805	44	CD
806	43	DVD
807	21	DVD
808	79	CD
809	75	DVD
810	22	CD
811	106	Blu-ray
812	92	DVD
813	124	VHS
814	132	CD
815	7	CD
816	8	CD
817	29	DVD
818	12	CD
819	117	DVD
820	7	CD
821	87	Blu-ray
822	6	Blu-ray
823	93	VHS
824	74	VHS
825	22	CD
826	16	CD
827	124	CD
828	76	CD
829	105	Blu-ray
830	87	VHS
831	8	Blu-ray
832	11	DVD
833	95	VHS
834	20	VHS
835	101	VHS
836	89	CD
837	18	CD
838	123	VHS
839	45	DVD
840	96	DVD
841	26	CD
842	31	VHS
843	123	DVD
844	60	VHS
845	42	DVD
846	102	Blu-ray
847	13	Blu-ray
848	45	CD
849	114	DVD
850	70	DVD
851	13	DVD
852	130	Blu-ray
853	68	DVD
854	52	VHS
855	92	CD
856	1	VHS
857	63	DVD
858	9	Blu-ray
859	83	CD
860	78	DVD
861	43	DVD
862	104	CD
863	96	Blu-ray
864	68	Blu-ray
865	13	Blu-ray
866	72	Blu-ray
867	5	VHS
868	58	VHS
869	92	CD
870	78	Blu-ray
871	69	Blu-ray
872	97	Blu-ray
873	112	DVD
874	29	CD
875	18	DVD
876	29	Blu-ray
877	7	CD
878	106	CD
879	27	DVD
880	16	VHS
881	4	Blu-ray
882	11	DVD
883	44	DVD
884	49	DVD
885	39	DVD
886	2	Blu-ray
887	72	VHS
888	65	Blu-ray
889	90	DVD
890	67	CD
891	125	Blu-ray
892	1	CD
893	121	VHS
894	70	DVD
895	130	DVD
896	79	VHS
897	66	VHS
898	13	VHS
899	115	DVD
900	26	CD
901	33	Blu-ray
902	4	Blu-ray
903	109	VHS
904	35	Blu-ray
905	30	DVD
906	111	Blu-ray
907	125	Blu-ray
908	101	CD
909	66	CD
910	27	Blu-ray
911	111	CD
912	131	CD
913	25	DVD
914	8	CD
915	94	Blu-ray
916	68	DVD
917	55	Blu-ray
918	110	VHS
919	72	DVD
920	57	Blu-ray
921	129	DVD
922	30	CD
923	109	DVD
924	84	DVD
925	72	CD
926	108	CD
927	46	CD
928	59	Blu-ray
929	99	DVD
930	108	VHS
931	88	Blu-ray
932	38	CD
933	56	DVD
934	121	CD
935	124	CD
936	79	Blu-ray
937	27	VHS
938	32	DVD
939	51	DVD
940	49	Blu-ray
941	101	DVD
942	108	Blu-ray
943	98	CD
944	106	VHS
945	93	CD
946	86	Blu-ray
947	133	Blu-ray
948	19	DVD
949	131	CD
950	69	VHS
951	52	Blu-ray
952	125	CD
953	61	Blu-ray
954	132	Blu-ray
955	111	Blu-ray
956	32	CD
957	31	Blu-ray
958	119	DVD
959	106	DVD
960	22	CD
961	123	CD
962	99	Blu-ray
963	95	DVD
964	91	DVD
965	49	VHS
966	17	Blu-ray
967	89	CD
968	92	VHS
969	97	Blu-ray
970	26	Blu-ray
971	6	VHS
972	11	CD
973	124	DVD
974	81	Blu-ray
975	116	VHS
976	75	VHS
977	120	VHS
978	18	DVD
979	108	VHS
980	46	Blu-ray
981	21	CD
982	84	VHS
983	51	VHS
984	35	VHS
985	9	DVD
986	77	Blu-ray
987	117	DVD
988	12	DVD
989	69	VHS
990	96	Blu-ray
991	6	DVD
992	45	Blu-ray
993	116	DVD
994	127	DVD
995	74	CD
996	31	CD
997	124	Blu-ray
998	123	Blu-ray
999	70	DVD
1000	131	DVD
1001	38	Blu-ray
1002	129	Blu-ray
1003	105	VHS
1004	55	DVD
1005	22	CD
1006	92	CD
1007	54	Blu-ray
1008	69	VHS
1009	50	CD
1010	121	DVD
1011	47	VHS
1012	54	CD
1013	6	CD
1014	84	CD
1015	128	DVD
1016	56	Blu-ray
1017	93	Blu-ray
1018	107	CD
1019	108	CD
1020	9	DVD
1021	45	DVD
1022	33	DVD
1023	58	DVD
1024	86	CD
1025	15	VHS
1026	15	Blu-ray
1027	79	Blu-ray
1028	120	DVD
1029	10	DVD
1030	125	Blu-ray
1031	3	DVD
1032	113	Blu-ray
1033	67	DVD
1034	57	CD
1035	114	DVD
1036	114	VHS
1037	7	CD
1038	110	CD
1039	42	Blu-ray
1040	98	Blu-ray
1041	42	CD
1042	122	VHS
1043	13	DVD
1044	3	VHS
1045	5	DVD
1046	59	VHS
1047	86	VHS
1048	49	Blu-ray
1049	70	DVD
1050	113	DVD
1051	82	CD
1052	38	CD
1053	83	CD
1054	32	DVD
1055	29	CD
1056	132	VHS
1057	66	VHS
1058	77	VHS
1059	117	CD
1060	27	Blu-ray
1061	128	DVD
1062	127	VHS
1063	32	DVD
1064	25	CD
1065	114	VHS
1066	75	Blu-ray
1067	130	DVD
1068	30	DVD
1069	128	DVD
1070	4	Blu-ray
1071	97	DVD
1072	58	DVD
1073	84	Blu-ray
1074	42	Blu-ray
1075	99	VHS
1076	97	VHS
1077	70	CD
1078	101	VHS
1079	129	DVD
1080	112	Blu-ray
1081	33	VHS
1082	6	CD
1083	100	CD
1084	70	Blu-ray
1085	125	DVD
1086	90	DVD
1087	38	CD
1088	129	Blu-ray
1089	43	CD
1090	20	VHS
1091	63	VHS
1092	79	DVD
1093	43	CD
1094	61	Blu-ray
1095	76	VHS
1096	10	VHS
1097	106	VHS
1098	100	Blu-ray
1099	62	Blu-ray
1100	15	CD
1101	31	VHS
1102	22	Blu-ray
1103	95	CD
1104	37	Blu-ray
1105	25	Blu-ray
1106	14	Blu-ray
1107	133	Blu-ray
1108	101	CD
1109	47	DVD
1110	65	CD
1111	43	DVD
1112	76	VHS
1113	122	DVD
1114	9	CD
1115	88	DVD
1116	57	Blu-ray
1117	110	CD
1118	3	VHS
1119	36	DVD
1120	73	Blu-ray
1121	52	DVD
1122	129	Blu-ray
1123	32	VHS
1124	70	Blu-ray
1125	4	Blu-ray
1126	6	CD
1127	97	DVD
1128	99	DVD
1129	132	VHS
1130	71	Blu-ray
1131	59	CD
1132	23	Blu-ray
1133	19	Blu-ray
1134	91	DVD
1135	88	VHS
1136	88	VHS
1137	90	VHS
1138	77	VHS
1139	72	DVD
1140	63	CD
1141	84	DVD
1142	96	VHS
1143	48	Blu-ray
1144	105	VHS
1145	100	CD
1146	31	VHS
1147	34	VHS
1148	62	DVD
1149	12	DVD
1150	66	VHS
1151	67	CD
1152	70	VHS
1153	82	Blu-ray
1154	32	DVD
1155	101	CD
1156	112	Blu-ray
1157	62	VHS
1158	88	CD
1159	97	CD
1160	37	Blu-ray
1161	4	VHS
1162	67	Blu-ray
1163	96	CD
1164	11	VHS
1165	50	DVD
1166	94	CD
1167	57	DVD
1168	14	VHS
1169	96	DVD
1170	98	Blu-ray
1171	21	VHS
1172	83	CD
1173	89	DVD
1174	13	CD
1175	130	DVD
1176	108	DVD
1177	131	CD
1178	80	DVD
1179	109	VHS
1180	105	CD
1181	121	VHS
1182	7	Blu-ray
1183	125	DVD
1184	107	VHS
1185	111	Blu-ray
1186	84	Blu-ray
1187	76	VHS
1188	83	Blu-ray
1189	63	DVD
1190	97	DVD
1191	56	CD
1192	58	Blu-ray
1193	28	DVD
1194	61	VHS
1195	27	Blu-ray
1196	125	DVD
1197	4	VHS
1198	117	VHS
1199	128	VHS
1200	8	DVD
1201	79	CD
1202	86	CD
1203	69	DVD
1204	87	VHS
1205	54	Blu-ray
1206	92	CD
1207	77	DVD
1208	52	VHS
1209	129	VHS
1210	113	VHS
1211	16	Blu-ray
1212	101	DVD
1213	113	VHS
1214	94	CD
1215	44	DVD
1216	123	Blu-ray
1217	8	CD
1218	22	VHS
1219	107	DVD
1220	75	DVD
1221	38	CD
1222	37	Blu-ray
1223	67	Blu-ray
1224	80	VHS
1225	61	DVD
1226	40	VHS
1227	5	CD
1228	47	Blu-ray
1229	48	VHS
1230	121	Blu-ray
1231	26	VHS
1232	4	DVD
1233	23	VHS
1234	103	Blu-ray
1235	88	VHS
1236	7	VHS
1237	41	Blu-ray
1238	70	VHS
1239	9	DVD
1240	2	CD
1241	86	CD
1242	28	Blu-ray
1243	57	CD
1244	75	VHS
1245	98	VHS
1246	123	CD
1247	54	DVD
1248	86	DVD
1249	23	DVD
1250	62	CD
1251	103	VHS
1252	30	CD
1253	89	DVD
1254	106	Blu-ray
1255	16	CD
1256	119	CD
1257	115	VHS
1258	20	CD
1259	78	VHS
1260	20	DVD
1261	92	DVD
1262	57	CD
1263	23	VHS
1264	37	Blu-ray
1265	40	VHS
1266	40	Blu-ray
1267	25	DVD
1268	43	Blu-ray
1269	5	Blu-ray
1270	66	DVD
1271	40	CD
1272	59	DVD
1273	12	Blu-ray
1274	14	CD
1275	72	Blu-ray
1276	79	VHS
1277	90	Blu-ray
1278	12	DVD
1279	101	CD
1280	44	VHS
1281	32	DVD
1282	99	DVD
1283	50	CD
1284	78	VHS
1285	40	Blu-ray
1286	115	DVD
1287	123	VHS
1288	28	DVD
1289	48	VHS
1290	54	CD
1291	27	CD
1292	118	VHS
1293	132	VHS
1294	126	CD
1295	96	VHS
1296	28	DVD
1297	45	Blu-ray
1298	20	VHS
1299	100	VHS
1300	37	CD
1301	124	CD
1302	27	Blu-ray
1303	31	CD
1304	103	DVD
1305	65	VHS
1306	66	Blu-ray
1307	3	Blu-ray
1308	124	DVD
1309	40	CD
1310	40	CD
1311	82	VHS
1312	50	VHS
1313	123	Blu-ray
1314	110	Blu-ray
1315	54	Blu-ray
1316	43	CD
1317	44	CD
1318	62	DVD
1319	56	CD
1320	71	Blu-ray
1321	57	DVD
1322	33	VHS
1323	9	CD
1324	86	Blu-ray
1325	30	VHS
1326	42	VHS
1327	18	VHS
1328	93	VHS
1329	57	VHS
1330	20	VHS
1331	64	DVD
1332	33	Blu-ray
1333	58	VHS
1334	64	VHS
1335	86	Blu-ray
1336	105	CD
1337	98	CD
1338	80	DVD
1339	30	CD
1340	74	Blu-ray
1341	26	DVD
1342	120	DVD
1343	75	CD
1344	96	DVD
1345	80	CD
1346	106	VHS
1347	39	CD
1348	13	DVD
1349	124	VHS
1350	22	DVD
1351	110	VHS
1352	71	VHS
1353	44	CD
1354	128	Blu-ray
1355	55	VHS
1356	26	CD
1357	125	Blu-ray
1358	101	Blu-ray
1359	30	VHS
1360	16	Blu-ray
1361	58	VHS
1362	56	DVD
1363	17	DVD
1364	22	Blu-ray
1365	98	Blu-ray
1366	43	CD
1367	57	DVD
1368	34	DVD
1369	36	DVD
1370	57	DVD
1371	3	Blu-ray
1372	12	Blu-ray
1373	72	Blu-ray
1374	128	Blu-ray
1375	98	CD
1376	33	VHS
1377	124	CD
1378	131	CD
1379	72	CD
1380	43	DVD
1381	103	DVD
1382	72	VHS
1383	12	Blu-ray
1384	124	Blu-ray
1385	110	DVD
1386	89	Blu-ray
1387	47	CD
1388	15	Blu-ray
1389	63	DVD
1390	93	DVD
1391	7	DVD
1392	46	VHS
1393	55	DVD
1394	124	DVD
1395	56	VHS
1396	96	DVD
1397	103	Blu-ray
1398	87	Blu-ray
1399	94	VHS
1400	112	CD
1401	82	CD
1402	49	CD
1403	24	VHS
1404	75	DVD
1405	70	DVD
1406	79	VHS
1407	71	DVD
1408	33	DVD
1409	105	CD
1410	53	CD
1411	68	DVD
1412	122	DVD
1413	77	CD
1414	113	VHS
1415	32	CD
1416	51	CD
1417	53	DVD
1418	51	VHS
1419	61	CD
1420	3	VHS
1421	62	Blu-ray
1422	131	CD
1423	96	VHS
1424	100	VHS
1425	91	DVD
1426	45	Blu-ray
1427	6	VHS
1428	82	DVD
1429	131	DVD
1430	40	VHS
1431	70	DVD
1432	97	CD
1433	28	VHS
1434	47	DVD
1435	76	CD
1436	100	Blu-ray
1437	113	CD
1438	71	CD
1439	91	DVD
1440	15	CD
1441	53	Blu-ray
1442	32	Blu-ray
1443	103	Blu-ray
1444	44	VHS
1445	124	Blu-ray
1446	95	CD
1447	22	CD
1448	37	DVD
1449	28	VHS
1450	113	CD
1451	16	VHS
1452	62	VHS
1453	16	CD
1454	68	DVD
1455	102	CD
1456	10	VHS
1457	18	DVD
1458	4	DVD
1459	92	VHS
1460	130	VHS
1461	20	VHS
1462	124	VHS
1463	30	CD
1464	4	Blu-ray
1465	104	DVD
1466	27	VHS
1467	55	CD
1468	41	Blu-ray
1469	5	CD
1470	120	CD
1471	91	Blu-ray
1472	17	Blu-ray
1473	85	VHS
1474	12	VHS
1475	105	DVD
1476	58	DVD
1477	112	VHS
1478	93	VHS
1479	44	VHS
1480	51	VHS
1481	37	Blu-ray
1482	114	Blu-ray
1483	116	VHS
1484	129	Blu-ray
1485	31	DVD
1486	102	VHS
1487	53	CD
1488	16	DVD
1489	89	VHS
1490	16	CD
1491	45	DVD
1492	120	VHS
1493	66	VHS
1494	12	DVD
1495	3	DVD
1496	57	CD
1497	23	DVD
1498	55	CD
1499	53	CD
1500	28	Blu-ray
1501	101	CD
1502	117	VHS
1503	63	CD
1504	5	CD
1505	35	DVD
1506	102	Blu-ray
1507	13	VHS
1508	87	CD
1509	20	Blu-ray
1510	109	DVD
1511	66	Blu-ray
1512	102	DVD
1513	24	Blu-ray
1514	120	DVD
1515	28	CD
1516	133	CD
1517	133	VHS
1518	16	CD
1519	69	Blu-ray
1520	119	VHS
1521	131	VHS
1522	64	Blu-ray
1523	13	Blu-ray
1524	37	Blu-ray
1525	7	DVD
1526	113	VHS
1527	68	CD
1528	10	CD
1529	56	Blu-ray
1530	71	CD
1531	73	VHS
1532	83	DVD
1533	37	Blu-ray
1534	10	Blu-ray
1535	57	Blu-ray
1536	57	VHS
1537	18	DVD
1538	85	Blu-ray
1539	106	DVD
1540	19	DVD
1541	110	Blu-ray
1542	99	CD
1543	102	DVD
1544	102	CD
1545	48	Blu-ray
1546	100	Blu-ray
1547	40	CD
1548	83	VHS
1549	26	DVD
1550	104	VHS
1551	118	Blu-ray
1552	96	VHS
1553	68	VHS
1554	72	CD
1555	77	CD
1556	25	CD
1557	110	VHS
1558	49	VHS
1559	24	DVD
1560	98	DVD
1561	93	DVD
1562	46	VHS
1563	103	DVD
1564	43	Blu-ray
1565	68	DVD
1566	53	Blu-ray
1567	115	CD
1568	84	CD
1569	63	DVD
1570	129	CD
1571	10	CD
1572	126	VHS
1573	38	VHS
1574	9	DVD
1575	45	DVD
1576	117	CD
1577	42	DVD
1578	80	VHS
1579	38	DVD
1580	57	DVD
1581	91	VHS
1582	118	DVD
1583	34	DVD
1584	58	Blu-ray
1585	31	CD
1586	13	VHS
1587	67	Blu-ray
1588	133	Blu-ray
1589	112	VHS
1590	88	Blu-ray
1591	36	VHS
1592	96	Blu-ray
1593	129	CD
1594	39	DVD
1595	6	DVD
1596	107	Blu-ray
1597	91	VHS
1598	34	VHS
1599	58	VHS
1600	61	VHS
1601	89	VHS
1602	11	DVD
1603	78	CD
1604	59	CD
1605	38	Blu-ray
1606	122	Blu-ray
1607	116	CD
1608	81	CD
1609	38	DVD
1610	102	DVD
1611	9	Blu-ray
1612	100	Blu-ray
1613	116	DVD
1614	3	VHS
1615	109	DVD
1616	52	DVD
1617	58	CD
1618	120	Blu-ray
1619	42	Blu-ray
1620	78	CD
1621	37	DVD
1622	107	VHS
1623	118	VHS
1624	12	VHS
1625	30	Blu-ray
1626	20	DVD
1627	54	DVD
1628	108	VHS
1629	36	VHS
1630	15	Blu-ray
1631	112	VHS
1632	27	DVD
1633	26	DVD
1634	90	Blu-ray
1635	2	Blu-ray
1636	37	VHS
1637	79	Blu-ray
1638	115	CD
1639	91	DVD
1640	69	CD
1641	130	Blu-ray
1642	106	VHS
1643	133	VHS
1644	45	Blu-ray
1645	51	Blu-ray
1646	82	VHS
1647	22	Blu-ray
1648	26	DVD
1649	16	VHS
1650	66	VHS
1651	60	CD
1652	118	VHS
1653	5	CD
1654	36	VHS
1655	38	DVD
1656	10	VHS
1657	4	CD
1658	52	CD
1659	63	VHS
1660	130	DVD
1661	93	CD
1662	33	VHS
1663	48	Blu-ray
1664	6	VHS
1665	117	VHS
1666	16	CD
1667	99	CD
1668	28	VHS
1669	25	VHS
1670	39	VHS
1671	31	CD
1672	115	VHS
1673	111	CD
1674	9	CD
1675	87	VHS
1676	68	VHS
1677	34	VHS
1678	77	Blu-ray
1679	4	CD
1680	74	Blu-ray
1681	119	VHS
1682	131	CD
1683	104	CD
1684	129	VHS
1685	24	CD
1686	29	CD
1687	99	DVD
1688	104	CD
1689	23	Blu-ray
1690	66	DVD
1691	119	DVD
1692	25	CD
1693	35	Blu-ray
1694	122	DVD
1695	28	VHS
1696	32	Blu-ray
1697	79	VHS
1698	58	CD
1699	60	VHS
1700	116	Blu-ray
1701	35	Blu-ray
1702	67	DVD
1703	103	Blu-ray
1704	75	DVD
1705	104	Blu-ray
1706	2	CD
1707	66	CD
1708	132	CD
1709	37	VHS
1710	74	CD
1711	108	CD
1712	62	Blu-ray
1713	110	Blu-ray
1714	132	DVD
1715	75	CD
1716	80	VHS
1717	128	CD
1718	16	VHS
1719	67	VHS
1720	37	CD
1721	62	CD
1722	33	Blu-ray
1723	23	Blu-ray
1724	2	CD
1725	10	CD
1726	115	VHS
1727	84	CD
1728	54	DVD
1729	9	CD
1730	23	VHS
1731	26	CD
1732	84	CD
1733	48	CD
1734	92	VHS
1735	115	DVD
1736	76	Blu-ray
1737	77	VHS
1738	42	CD
1739	76	DVD
1740	16	Blu-ray
1741	35	DVD
1742	42	Blu-ray
1743	91	Blu-ray
1744	53	DVD
1745	123	DVD
1746	109	CD
1747	20	DVD
1748	79	CD
1749	36	CD
1750	75	CD
1751	111	VHS
1752	86	CD
1753	31	CD
1754	44	CD
1755	89	VHS
1756	1	DVD
1757	72	Blu-ray
1758	103	Blu-ray
1759	26	DVD
1760	37	DVD
1761	61	CD
1762	103	DVD
1763	113	CD
1764	6	CD
1765	98	DVD
1766	88	Blu-ray
1767	9	Blu-ray
1768	51	DVD
1769	79	DVD
1770	45	VHS
1771	125	DVD
1772	56	DVD
1773	19	VHS
1774	112	DVD
1775	127	DVD
1776	61	VHS
1777	125	VHS
1778	11	DVD
1779	77	VHS
1780	71	DVD
1781	126	Blu-ray
1782	101	DVD
1783	38	DVD
1784	125	VHS
1785	85	Blu-ray
1786	98	VHS
1787	129	Blu-ray
1788	82	Blu-ray
1789	46	CD
1790	121	Blu-ray
1791	45	DVD
1792	119	VHS
1793	13	Blu-ray
1794	14	CD
1795	30	DVD
1796	60	Blu-ray
1797	71	CD
1798	81	Blu-ray
1799	118	VHS
1800	9	Blu-ray
1801	112	VHS
1802	13	DVD
1803	28	VHS
1804	85	VHS
1805	26	DVD
1806	46	Blu-ray
1807	48	VHS
1808	24	VHS
1809	29	DVD
1810	91	VHS
1811	4	DVD
1812	21	DVD
1813	22	Blu-ray
1814	60	DVD
1815	129	DVD
1816	53	Blu-ray
1817	97	Blu-ray
1818	13	VHS
1819	51	CD
1820	55	Blu-ray
1821	106	VHS
1822	100	Blu-ray
1823	122	Blu-ray
1824	11	Blu-ray
1825	20	DVD
1826	96	CD
1827	51	VHS
1828	120	DVD
1829	34	DVD
1830	58	DVD
1831	103	DVD
1832	58	VHS
1833	116	DVD
1834	27	DVD
1835	66	Blu-ray
1836	102	CD
1837	32	DVD
1838	71	Blu-ray
1839	8	Blu-ray
1840	92	VHS
1841	91	DVD
1842	128	Blu-ray
1843	18	Blu-ray
1844	109	DVD
1845	45	VHS
1846	100	CD
1847	66	DVD
1848	95	CD
1849	106	VHS
1850	40	CD
1851	87	DVD
1852	60	VHS
1853	1	DVD
1854	106	Blu-ray
1855	53	VHS
1856	108	Blu-ray
1857	118	Blu-ray
1858	112	CD
1859	12	DVD
1860	111	DVD
1861	69	CD
1862	20	DVD
1863	53	CD
1864	29	CD
1865	108	CD
1866	48	Blu-ray
1867	60	Blu-ray
1868	86	VHS
1869	118	Blu-ray
1870	35	DVD
1871	18	DVD
1872	13	DVD
1873	74	DVD
1874	19	VHS
1875	31	CD
1876	10	VHS
1877	26	CD
1878	71	VHS
1879	67	VHS
1880	32	CD
1881	67	VHS
1882	102	VHS
1883	68	Blu-ray
1884	34	Blu-ray
1885	10	DVD
1886	7	CD
1887	133	Blu-ray
1888	3	DVD
1889	112	Blu-ray
1890	38	DVD
1891	51	DVD
1892	12	CD
1893	49	VHS
1894	54	CD
1895	5	CD
1896	7	CD
1897	26	CD
1898	114	DVD
1899	94	DVD
1900	57	VHS
1901	131	Blu-ray
1902	77	VHS
1903	112	DVD
1904	18	VHS
1905	62	Blu-ray
1906	103	VHS
1907	119	CD
1908	128	CD
1909	69	VHS
1910	133	VHS
1911	112	DVD
1912	45	Blu-ray
1913	71	CD
1914	18	CD
1915	127	CD
1916	121	DVD
1917	16	Blu-ray
1918	15	Blu-ray
1919	9	CD
1920	93	VHS
1921	85	DVD
1922	83	Blu-ray
1923	111	VHS
1924	26	VHS
1925	89	CD
1926	54	VHS
1927	77	Blu-ray
1928	23	Blu-ray
1929	59	Blu-ray
1930	100	VHS
1931	44	CD
1932	70	VHS
1933	63	VHS
1934	13	VHS
1935	81	Blu-ray
1936	92	Blu-ray
1937	73	Blu-ray
1938	64	VHS
1939	76	VHS
1940	28	DVD
1941	1	DVD
1942	124	Blu-ray
1943	6	VHS
1944	7	VHS
1945	43	Blu-ray
1946	106	DVD
1947	6	CD
1948	122	Blu-ray
1949	42	CD
1950	35	VHS
1951	45	CD
1952	58	Blu-ray
1953	119	DVD
1954	103	CD
1955	59	Blu-ray
1956	22	CD
1957	43	VHS
1958	121	Blu-ray
1959	79	DVD
1960	132	Blu-ray
1961	84	CD
1962	4	DVD
1963	80	CD
1964	17	Blu-ray
1965	60	VHS
1966	105	CD
1967	93	VHS
1968	22	CD
1969	95	Blu-ray
1970	123	CD
1971	21	CD
1972	102	Blu-ray
1973	75	CD
1974	61	Blu-ray
1975	110	VHS
1976	55	VHS
1977	53	Blu-ray
1978	16	CD
1979	67	Blu-ray
1980	17	CD
1981	68	CD
1982	42	CD
1983	68	VHS
1984	33	DVD
1985	132	CD
1986	105	Blu-ray
1987	80	DVD
1988	122	VHS
1989	131	CD
1990	103	CD
1991	123	Blu-ray
1992	128	DVD
1993	8	Blu-ray
1994	70	DVD
1995	67	DVD
1996	20	Blu-ray
1997	17	VHS
1998	70	Blu-ray
1999	69	CD
2000	28	DVD
2001	36	Blu-ray
2002	89	Blu-ray
2003	15	CD
2004	93	VHS
2005	117	VHS
2006	70	Blu-ray
2007	90	CD
2008	2	VHS
2009	97	Blu-ray
2010	47	DVD
2011	112	VHS
2012	113	CD
2013	29	VHS
2014	111	DVD
2015	7	DVD
2016	85	Blu-ray
2017	13	Blu-ray
2018	130	CD
2019	117	Blu-ray
2020	95	VHS
2021	78	Blu-ray
2022	70	DVD
2023	35	Blu-ray
2024	17	DVD
2025	50	CD
2026	131	CD
2027	116	Blu-ray
2028	39	CD
2029	115	VHS
2030	16	VHS
2031	113	DVD
2032	40	VHS
2033	38	Blu-ray
2034	107	DVD
2035	80	CD
2036	120	VHS
2037	124	DVD
2038	92	Blu-ray
2039	80	VHS
2040	17	CD
2041	59	DVD
2042	64	CD
2043	112	DVD
2044	54	Blu-ray
2045	100	CD
2046	65	Blu-ray
2047	37	Blu-ray
2048	104	Blu-ray
2049	10	VHS
2050	15	Blu-ray
2051	46	DVD
2052	15	Blu-ray
2053	115	Blu-ray
2054	91	Blu-ray
2055	114	Blu-ray
2056	26	DVD
2057	102	VHS
2058	74	CD
2059	65	DVD
2060	19	VHS
2061	61	VHS
2062	59	VHS
2063	40	CD
2064	45	Blu-ray
2065	5	CD
2066	70	CD
2067	33	VHS
2068	10	VHS
2069	7	CD
2070	68	Blu-ray
2071	29	Blu-ray
2072	75	VHS
2073	83	Blu-ray
2074	67	VHS
2075	123	DVD
2076	33	VHS
2077	132	DVD
2078	12	VHS
2079	71	DVD
2080	5	CD
2081	15	DVD
2082	102	Blu-ray
2083	59	VHS
2084	31	CD
2085	110	VHS
2086	130	Blu-ray
2087	123	CD
2088	2	VHS
2089	42	Blu-ray
2090	35	VHS
2091	19	Blu-ray
2092	102	VHS
2093	81	VHS
2094	116	CD
2095	49	DVD
2096	24	VHS
2097	34	CD
2098	117	VHS
2099	1	Blu-ray
2100	106	VHS
2101	95	DVD
2102	29	CD
2103	85	DVD
2104	10	CD
2105	88	CD
2106	3	DVD
2107	124	VHS
2108	30	CD
2109	101	DVD
2110	120	CD
2111	43	Blu-ray
2112	71	DVD
2113	12	VHS
2114	4	Blu-ray
2115	79	VHS
2116	69	Blu-ray
2117	41	VHS
2118	93	Blu-ray
2119	19	DVD
2120	52	VHS
2121	10	Blu-ray
2122	70	Blu-ray
2123	104	DVD
2124	65	Blu-ray
2125	83	CD
2126	45	Blu-ray
2127	46	VHS
2128	58	VHS
2129	105	VHS
2130	21	Blu-ray
2131	67	CD
2132	50	VHS
2133	22	CD
2134	111	CD
2135	35	CD
2136	58	DVD
2137	7	CD
2138	5	VHS
2139	116	DVD
2140	80	CD
2141	58	VHS
2142	55	DVD
2143	78	VHS
2144	22	Blu-ray
2145	65	Blu-ray
2146	76	VHS
2147	80	DVD
2148	112	Blu-ray
2149	6	Blu-ray
2150	6	VHS
2151	34	DVD
2152	126	DVD
2153	80	Blu-ray
2154	36	Blu-ray
2155	129	DVD
2156	85	VHS
2157	86	VHS
2158	11	Blu-ray
2159	110	VHS
2160	127	Blu-ray
2161	45	VHS
2162	2	Blu-ray
2163	14	DVD
2164	102	Blu-ray
2165	1	DVD
2166	49	DVD
2167	26	CD
2168	117	VHS
2169	71	Blu-ray
2170	21	DVD
2171	41	VHS
2172	10	Blu-ray
2173	132	CD
2174	24	VHS
2175	88	Blu-ray
2176	44	Blu-ray
2177	75	DVD
2178	61	VHS
2179	103	DVD
2180	131	Blu-ray
2181	28	VHS
2182	7	VHS
2183	7	Blu-ray
2184	10	CD
2185	78	Blu-ray
2186	9	VHS
2187	60	CD
2188	41	DVD
2189	127	Blu-ray
2190	11	DVD
2191	72	VHS
2192	104	Blu-ray
2193	72	CD
2194	58	CD
2195	9	VHS
2196	3	Blu-ray
2197	53	DVD
2198	123	DVD
2199	47	VHS
2200	101	Blu-ray
2201	44	DVD
2202	46	DVD
2203	95	Blu-ray
2204	3	Blu-ray
2205	115	VHS
2206	133	VHS
2207	53	VHS
2208	65	Blu-ray
2209	52	CD
2210	103	CD
2211	83	DVD
2212	57	CD
2213	95	Blu-ray
2214	125	DVD
2215	23	Blu-ray
2216	130	VHS
2217	94	CD
2218	91	CD
2219	21	Blu-ray
2220	70	VHS
2221	81	DVD
2222	56	VHS
2223	40	Blu-ray
2224	133	VHS
2225	78	VHS
2226	81	DVD
2227	56	Blu-ray
2228	124	DVD
2229	25	DVD
2230	69	VHS
2231	18	Blu-ray
2232	132	CD
2233	75	Blu-ray
2234	36	DVD
2235	130	VHS
2236	72	CD
2237	131	VHS
2238	80	DVD
2239	32	DVD
2240	125	DVD
2241	49	CD
2242	118	Blu-ray
2243	125	Blu-ray
2244	102	CD
2245	25	Blu-ray
2246	38	DVD
2247	3	DVD
2248	71	VHS
2249	42	CD
2250	81	VHS
2251	105	Blu-ray
2252	14	VHS
2253	14	VHS
2254	104	Blu-ray
2255	73	CD
2256	33	DVD
2257	16	DVD
2258	30	CD
2259	2	VHS
2260	111	CD
2261	30	Blu-ray
2262	13	DVD
2263	92	VHS
2264	48	DVD
2265	114	VHS
2266	111	CD
2267	25	DVD
2268	26	Blu-ray
2269	110	Blu-ray
2270	86	DVD
2271	104	CD
2272	38	Blu-ray
2273	133	VHS
2274	36	DVD
2275	66	VHS
2276	54	Blu-ray
2277	108	DVD
2278	52	Blu-ray
2279	103	DVD
2280	22	DVD
2281	74	CD
2282	115	DVD
2283	13	VHS
2284	132	DVD
2285	47	Blu-ray
2286	66	Blu-ray
2287	46	VHS
2288	72	VHS
2289	78	Blu-ray
2290	91	Blu-ray
2291	26	Blu-ray
2292	99	VHS
2293	28	CD
2294	43	Blu-ray
2295	93	CD
2296	60	CD
2297	126	CD
2298	86	DVD
2299	6	DVD
2300	33	DVD
2301	123	DVD
2302	111	CD
2303	110	Blu-ray
2304	4	CD
2305	35	Blu-ray
2306	26	CD
2307	17	CD
2308	33	VHS
2309	54	Blu-ray
2310	11	Blu-ray
2311	54	DVD
2312	27	DVD
2313	111	Blu-ray
2314	14	DVD
2315	53	DVD
2316	39	CD
2317	44	VHS
2318	72	DVD
2319	117	Blu-ray
2320	25	Blu-ray
2321	86	CD
2322	133	CD
2323	88	DVD
2324	101	CD
2325	116	CD
2326	5	CD
2327	90	CD
2328	31	Blu-ray
2329	15	VHS
2330	100	DVD
2331	69	DVD
2332	103	VHS
2333	115	DVD
2334	52	CD
2335	45	VHS
2336	89	Blu-ray
2337	28	Blu-ray
2338	128	Blu-ray
2339	46	DVD
2340	129	Blu-ray
2341	15	VHS
2342	105	DVD
2343	88	VHS
2344	116	CD
2345	116	CD
2346	41	CD
2347	66	VHS
2348	31	CD
2349	119	VHS
2350	23	Blu-ray
2351	100	DVD
2352	77	CD
2353	43	Blu-ray
2354	85	Blu-ray
2355	5	VHS
2356	108	CD
2357	110	CD
2358	20	CD
2359	119	VHS
2360	15	DVD
2361	84	CD
2362	123	Blu-ray
2363	2	DVD
2364	80	VHS
2365	72	DVD
2366	13	DVD
2367	127	Blu-ray
2368	107	DVD
2369	28	DVD
2370	81	VHS
2371	98	CD
2372	66	DVD
2373	18	CD
2374	67	DVD
2375	78	VHS
2376	54	VHS
2377	35	VHS
2378	55	Blu-ray
2379	104	Blu-ray
2380	33	VHS
2381	62	VHS
2382	49	VHS
2383	33	VHS
2384	49	Blu-ray
2385	59	Blu-ray
2386	36	DVD
2387	116	CD
2388	90	Blu-ray
2389	101	Blu-ray
2390	72	Blu-ray
2391	3	Blu-ray
2392	9	DVD
2393	37	CD
2394	86	CD
2395	21	CD
2396	8	VHS
2397	132	CD
2398	70	CD
2399	71	CD
2400	9	DVD
2401	15	DVD
2402	51	VHS
2403	133	VHS
2404	83	DVD
2405	27	Blu-ray
2406	124	VHS
2407	116	Blu-ray
2408	117	DVD
2409	91	DVD
2410	94	CD
2411	11	DVD
2412	101	VHS
2413	10	Blu-ray
2414	104	Blu-ray
2415	28	DVD
2416	69	Blu-ray
2417	70	Blu-ray
2418	81	CD
2419	47	CD
2420	36	Blu-ray
2421	87	CD
2422	66	CD
2423	103	CD
2424	35	Blu-ray
2425	22	VHS
2426	15	Blu-ray
2427	112	DVD
2428	86	DVD
2429	14	DVD
2430	76	VHS
2431	17	Blu-ray
2432	42	Blu-ray
2433	126	Blu-ray
2434	16	DVD
2435	98	VHS
2436	61	Blu-ray
2437	120	Blu-ray
2438	36	CD
2439	81	VHS
2440	113	VHS
2441	90	Blu-ray
2442	93	Blu-ray
2443	9	VHS
2444	56	CD
2445	62	VHS
2446	70	Blu-ray
2447	81	CD
2448	68	Blu-ray
2449	133	Blu-ray
2450	58	CD
2451	61	Blu-ray
2452	5	CD
2453	52	Blu-ray
2454	38	Blu-ray
2455	46	VHS
2456	125	VHS
2457	132	CD
2458	63	CD
2459	62	VHS
2460	9	CD
2461	112	DVD
2462	10	CD
2463	44	Blu-ray
2464	33	CD
2465	57	CD
2466	103	VHS
2467	86	VHS
2468	29	DVD
2469	58	CD
2470	87	Blu-ray
2471	106	DVD
2472	86	CD
2473	43	Blu-ray
2474	82	CD
2475	83	Blu-ray
2476	10	VHS
2477	91	DVD
2478	30	CD
2479	67	VHS
2480	9	CD
2481	132	Blu-ray
2482	129	VHS
2483	78	DVD
2484	21	VHS
2485	105	CD
2486	60	VHS
2487	2	Blu-ray
2488	103	VHS
2489	14	Blu-ray
2490	17	DVD
2491	82	Blu-ray
2492	21	CD
2493	39	Blu-ray
2494	51	CD
2495	57	DVD
2496	118	CD
2497	119	VHS
2498	6	Blu-ray
2499	35	DVD
2500	74	Blu-ray
2501	91	Blu-ray
2502	14	CD
2503	37	VHS
2504	63	CD
2505	73	Blu-ray
2506	74	DVD
2507	38	DVD
2508	109	Blu-ray
2509	23	VHS
2510	77	CD
2511	42	DVD
2512	55	Blu-ray
2513	118	VHS
2514	68	VHS
2515	64	DVD
2516	2	CD
2517	23	DVD
2518	15	Blu-ray
2519	76	DVD
2520	27	VHS
2521	34	VHS
2522	47	Blu-ray
2523	106	Blu-ray
2524	38	DVD
2525	27	DVD
2526	38	Blu-ray
2527	126	VHS
2528	57	Blu-ray
2529	91	VHS
2530	92	CD
2531	73	VHS
2532	12	Blu-ray
2533	90	DVD
2534	116	CD
2535	72	VHS
2536	105	VHS
2537	103	DVD
2538	58	Blu-ray
2539	129	Blu-ray
2540	77	CD
2541	42	VHS
2542	103	VHS
2543	95	VHS
2544	12	Blu-ray
2545	133	VHS
2546	94	DVD
2547	120	CD
2548	83	CD
2549	81	VHS
2550	84	DVD
2551	50	CD
2552	52	VHS
2553	27	CD
2554	37	VHS
2555	113	VHS
2556	99	DVD
2557	41	VHS
2558	17	DVD
2559	58	VHS
2560	90	DVD
2561	89	CD
2562	115	CD
2563	99	Blu-ray
2564	92	DVD
2565	104	VHS
2566	3	VHS
2567	98	CD
2568	95	DVD
2569	64	DVD
2570	37	Blu-ray
2571	26	VHS
2572	30	DVD
2573	105	Blu-ray
2574	27	VHS
2575	24	CD
2576	103	CD
2577	28	VHS
2578	63	CD
2579	53	CD
2580	114	Blu-ray
2581	78	CD
2582	23	CD
2583	90	CD
2584	36	DVD
2585	114	VHS
2586	118	VHS
2587	48	Blu-ray
2588	67	Blu-ray
2589	41	VHS
2590	52	VHS
2591	46	DVD
2592	5	VHS
2593	89	DVD
2594	15	DVD
2595	39	VHS
2596	72	Blu-ray
2597	17	Blu-ray
2598	41	VHS
2599	6	DVD
2600	80	DVD
2601	96	DVD
2602	116	Blu-ray
2603	32	VHS
2604	84	CD
2605	50	VHS
2606	13	CD
2607	5	CD
2608	75	VHS
2609	123	CD
2610	117	CD
2611	108	CD
2612	26	Blu-ray
2613	33	DVD
2614	35	DVD
2615	20	Blu-ray
2616	11	Blu-ray
2617	4	VHS
2618	28	Blu-ray
2619	23	VHS
2620	79	VHS
2621	29	Blu-ray
2622	21	Blu-ray
2623	116	DVD
2624	73	VHS
2625	19	VHS
2626	43	CD
2627	85	CD
2628	18	DVD
2629	108	VHS
2630	13	DVD
2631	53	VHS
2632	132	VHS
2633	75	VHS
2634	95	CD
2635	115	VHS
2636	10	CD
2637	125	DVD
2638	40	DVD
2639	87	Blu-ray
2640	6	VHS
2641	122	VHS
2642	87	VHS
2643	26	Blu-ray
2644	1	VHS
2645	75	CD
2646	125	CD
2647	36	VHS
2648	133	CD
2649	99	CD
2650	115	CD
2651	70	DVD
2652	93	CD
2653	24	DVD
2654	72	Blu-ray
2655	54	CD
2656	18	DVD
2657	119	DVD
2658	13	DVD
2659	87	DVD
2660	99	CD
2661	75	VHS
2662	65	CD
2663	119	DVD
2664	130	Blu-ray
2665	35	VHS
2666	127	Blu-ray
2667	10	CD
2668	34	VHS
2669	21	VHS
2670	4	VHS
2671	99	VHS
2672	100	Blu-ray
2673	11	VHS
2674	30	DVD
2675	63	CD
2676	94	DVD
2677	52	CD
2678	109	Blu-ray
2679	2	DVD
2680	37	DVD
2681	63	CD
2682	57	CD
2683	1	CD
2684	78	Blu-ray
2685	61	DVD
2686	50	DVD
2687	27	VHS
2688	78	VHS
2689	95	VHS
2690	124	DVD
2691	115	DVD
2692	66	CD
2693	83	CD
2694	98	Blu-ray
2695	75	Blu-ray
2696	109	DVD
2697	16	Blu-ray
2698	46	CD
2699	116	DVD
2700	32	CD
2701	68	CD
2702	112	CD
2703	116	Blu-ray
2704	69	Blu-ray
2705	106	VHS
2706	9	CD
2707	122	Blu-ray
2708	103	CD
2709	116	Blu-ray
2710	18	VHS
2711	118	CD
2712	3	DVD
2713	26	VHS
2714	2	Blu-ray
2715	108	DVD
2716	119	Blu-ray
2717	121	DVD
2718	69	DVD
2719	21	DVD
2720	102	Blu-ray
2721	58	Blu-ray
2722	106	CD
2723	19	Blu-ray
2724	66	DVD
2725	12	DVD
2726	95	VHS
2727	44	CD
2728	121	CD
2729	89	VHS
2730	5	Blu-ray
2731	71	CD
2732	3	CD
2733	76	DVD
2734	21	CD
2735	115	VHS
2736	62	Blu-ray
2737	57	CD
2738	25	VHS
2739	40	VHS
2740	66	CD
2741	36	CD
2742	66	VHS
2743	128	VHS
2744	70	Blu-ray
2745	20	DVD
2746	95	DVD
2747	80	VHS
2748	115	DVD
2749	124	Blu-ray
2750	84	CD
2751	124	VHS
2752	119	DVD
2753	34	CD
2754	125	VHS
2755	39	VHS
2756	55	Blu-ray
2757	49	Blu-ray
2758	13	CD
2759	53	DVD
2760	75	DVD
2761	107	Blu-ray
2762	25	VHS
2763	132	CD
2764	127	CD
2765	4	DVD
2766	63	DVD
2767	87	DVD
2768	1	Blu-ray
2769	115	Blu-ray
2770	92	Blu-ray
2771	57	VHS
2772	85	Blu-ray
2773	34	VHS
2774	110	CD
2775	66	VHS
2776	51	Blu-ray
2777	104	CD
2778	117	CD
2779	8	Blu-ray
2780	71	DVD
2781	23	Blu-ray
2782	121	Blu-ray
2783	82	CD
2784	98	VHS
2785	65	Blu-ray
2786	60	Blu-ray
2787	75	DVD
2788	34	CD
2789	13	Blu-ray
2790	48	CD
2791	80	CD
2792	54	DVD
2793	19	DVD
2794	29	VHS
2795	11	VHS
2796	7	CD
2797	9	DVD
2798	99	DVD
2799	94	Blu-ray
2800	122	DVD
2801	15	VHS
2802	114	Blu-ray
2803	131	Blu-ray
2804	9	CD
2805	104	CD
2806	76	CD
2807	106	CD
2808	13	Blu-ray
2809	45	DVD
2810	86	DVD
2811	40	Blu-ray
2812	9	VHS
2813	78	VHS
2814	12	Blu-ray
2815	62	VHS
2816	114	CD
2817	55	CD
2818	108	Blu-ray
2819	8	CD
2820	107	Blu-ray
2821	13	CD
2822	45	DVD
2823	130	CD
2824	22	CD
2825	56	VHS
2826	62	CD
2827	113	Blu-ray
2828	96	CD
2829	9	CD
2830	115	CD
2831	74	VHS
2832	19	Blu-ray
2833	95	Blu-ray
2834	38	CD
2835	49	CD
2836	4	CD
2837	42	CD
2838	53	Blu-ray
2839	44	VHS
2840	92	DVD
2841	71	Blu-ray
2842	108	VHS
2843	86	VHS
2844	54	CD
2845	27	DVD
2846	78	VHS
2847	16	Blu-ray
2848	19	DVD
2849	72	CD
2850	32	DVD
2851	132	Blu-ray
2852	16	DVD
2853	122	CD
2854	26	DVD
2855	27	DVD
2856	78	VHS
2857	98	VHS
2858	53	VHS
2859	118	VHS
2860	25	Blu-ray
2861	37	Blu-ray
2862	49	CD
2863	53	DVD
2864	107	Blu-ray
2865	7	Blu-ray
2866	77	VHS
2867	75	Blu-ray
2868	57	VHS
2869	76	VHS
2870	121	Blu-ray
2871	83	DVD
2872	50	VHS
2873	83	VHS
2874	93	VHS
2875	56	VHS
2876	69	CD
2877	60	VHS
2878	2	DVD
2879	87	DVD
2880	112	CD
2881	50	Blu-ray
2882	52	DVD
2883	99	Blu-ray
2884	23	Blu-ray
2885	118	DVD
2886	90	DVD
2887	48	CD
2888	40	DVD
2889	111	Blu-ray
2890	75	CD
2891	43	DVD
2892	113	DVD
2893	74	DVD
2894	17	VHS
2895	83	VHS
2896	97	DVD
2897	58	CD
2898	39	CD
2899	10	DVD
2900	132	DVD
2901	49	VHS
2902	86	Blu-ray
2903	121	DVD
2904	115	VHS
2905	61	DVD
2906	50	CD
2907	90	VHS
2908	102	VHS
2909	3	CD
2910	88	DVD
2911	51	Blu-ray
2912	92	CD
2913	71	Blu-ray
2914	67	VHS
2915	108	DVD
2916	62	VHS
2917	76	DVD
2918	85	VHS
2919	63	DVD
2920	24	CD
2921	92	VHS
2922	5	Blu-ray
2923	117	CD
2924	23	Blu-ray
2925	76	VHS
2926	78	VHS
2927	75	CD
2928	67	CD
2929	47	DVD
2930	76	CD
2931	71	VHS
2932	9	DVD
2933	1	DVD
2934	105	Blu-ray
2935	35	DVD
2936	125	DVD
2937	65	VHS
2938	55	VHS
2939	55	VHS
2940	43	VHS
2941	27	CD
2942	16	DVD
2943	119	VHS
2944	51	VHS
2945	26	VHS
2946	121	CD
2947	55	VHS
2948	114	CD
2949	107	CD
2950	124	CD
2951	77	Blu-ray
2952	28	Blu-ray
2953	115	DVD
2954	81	Blu-ray
2955	25	Blu-ray
2956	98	VHS
2957	6	Blu-ray
2958	117	VHS
2959	123	VHS
2960	56	DVD
2961	83	CD
2962	72	DVD
2963	52	CD
2964	106	DVD
2965	87	VHS
2966	48	DVD
2967	76	VHS
2968	108	VHS
2969	47	CD
2970	34	CD
2971	68	VHS
2972	130	Blu-ray
2973	61	CD
2974	81	DVD
2975	58	VHS
2976	22	CD
2977	114	DVD
2978	49	VHS
2979	92	VHS
2980	69	Blu-ray
2981	117	CD
2982	83	DVD
2983	98	CD
2984	102	CD
2985	76	Blu-ray
2986	93	Blu-ray
2987	44	VHS
2988	119	VHS
2989	122	DVD
2990	82	Blu-ray
2991	53	CD
2992	100	CD
2993	33	CD
2994	65	Blu-ray
2995	42	VHS
2996	86	CD
2997	74	DVD
2998	41	DVD
2999	53	Blu-ray
3000	87	Blu-ray
3001	73	Blu-ray
3002	7	DVD
3003	2	Blu-ray
3004	92	DVD
3005	116	DVD
3006	118	Blu-ray
3007	68	CD
3008	22	CD
3009	72	VHS
3010	121	CD
\.


--
-- Data for Name: miembros; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public.miembros (id_miembro, nombre, telefono, direccion) FROM stdin;
1	Forrest Dicki	115-181-9643	Suite 654 244 Hamill Prairie, Lake Tilda, NM 35064
2	Ray Swaniawski	716-176-1955	81160 Thanh Track, East Johnsontown, WI 69343-3151
3	Glen Wilderman IV	680.138.5550	Apt. 407 4232 Jodi Villages, Winfordland, WV 43107-9030
4	Shiela Funk	889.386.2547	Suite 242 6124 Mraz Curve, New Zachery, MS 79111
5	Tyron Sawayn	699-905-0697	860 Peter Landing, West Milanfurt, RI 43932-2717
6	Keneth Bailey	552-827-7624	Suite 246 88272 Donella Hollow, Billieberg, TX 57079-4178
7	Mr. Cori Marks	(754) 147-8973	823 Funk Rest, Earnestshire, WI 09305
8	Nella Bosco	(209) 573-4108	Apt. 318 5603 Scott Unions, Kemmerville, RI 22352-0087
9	Anderson Rolfson	(457) 412-1705	Apt. 859 60369 Orn Trace, New Kirbyhaven, OR 04374-9237
10	Charlene Monahan DDS	956.212.7939	Apt. 479 496 Hansen Inlet, Hymanmouth, ND 45894-8318
11	Lynwood Rodriguez	1-996-198-5570	Suite 935 21126 Mark Cove, Careyton, CA 65142-1636
12	Lindsey Labadie	1-473-560-4571	11744 Rolf Orchard, Grimeshaven, IN 56911
13	Winona Connelly	(237) 755-6245	Suite 138 22187 Koelpin Radial, Klockoville, IL 04242-7329
14	Lan Kris	717-350-8365	Suite 543 523 Graham Branch, Lake Johannaberg, CT 42672
15	Catherin Effertz	1-906-175-6679	Suite 252 10236 Kovacek Lake, Ericborough, LA 82433-1866
16	Theressa Gleichner	480.392.3134	87840 Hahn Street, East Jedstad, VA 19155
17	Buford Okuneva	(631) 100-6501	96054 Yost Station, Lake Brady, TX 50307
18	Dwain Schneider	329-429-5924	Apt. 657 62383 Windler Stream, North Yettahaven, LA 36916
19	Cyrus Emard	(131) 273-0036	2321 Donnette Center, Turcotteburgh, CT 10107
20	Crysta McCullough	591-944-8220	Suite 210 8239 Chas Rue, New Fredashire, TN 46861-9089
21	Julius Sauer	689-129-2007	709 Swaniawski Rue, New Mirellaview, CO 63607
22	Dr. Son Roob	(895) 762-5659	Apt. 845 73231 Kemmer Valleys, Port Ettaside, VT 86422
23	Floyd Rowe V	675.217.8080	Apt. 498 96768 Mervin Locks, Giuseppetown, DE 50056
24	Belle Buckridge	1-377-801-6645	Apt. 781 81787 Leonia Dale, Delmarport, IA 32355-3394
25	Ernie Purdy	110.528.1068	912 Lind Ways, Port Josphinechester, VA 35686
26	Russell Harvey	(495) 073-2779	Suite 464 645 Sauer Avenue, Lake Whitneyborough, LA 28112-9070
27	Alona Kuphal Sr.	1-620-828-9195	319 Shirely Ferry, New Tran, WI 76944
28	Ms. Consuela Hilll	1-590-818-1648	86340 Willia Prairie, West Vincenza, NY 18975-4503
29	Adolph Fay	632.791.2129	36220 Monique Turnpike, Lake June, TN 40978
30	Rachael Considine PhD	(689) 610-5116	599 Wuckert Streets, Johannahaven, AK 31382
31	Tera Ortiz	1-792-045-3856	8153 Velvet Center, West Mac, MI 57919
32	Virgil Schimmel	764-256-8628	5976 Larson Flat, Port Caryl, SC 07605
33	Pricilla Stoltenberg	859.009.6022	206 Gusikowski Estates, Laureenmouth, CT 60766
34	Tenisha Hilll Jr.	150-787-6541	1958 Leroy Centers, Funkfort, MO 29760-8417
35	Mr. Milton Beier	169.114.7483	77290 Waldo Track, Galefurt, KS 66571
36	Joycelyn Streich DDS	1-565-365-3915	Apt. 817 706 Grover Junction, Jeremyside, KY 48942
37	Leighann Dickens	(634) 202-1260	6342 Vincent Inlet, Stromanmouth, NY 39983-3558
38	Kenton Kling I	233-558-5875	Suite 407 2199 Danyel Shores, Jacquelynnport, VT 89353
39	Eulalia Kassulke	630-415-7535	82959 Mertz Greens, Quigleyside, NV 50605-1968
40	Henry Turner	321-548-5955	Suite 684 770 Kihn Way, South Freemanstad, MO 05231-8332
41	Shannon Bogan	(207) 884-0226	692 Carina Grove, Lylemouth, WV 44647
42	Rodrick Halvorson	308-681-0142	Suite 322 1677 Hong Vista, New Ezrachester, SD 59139-8416
43	Eliseo Treutel	839.005.2477	833 Stroman Club, South Nathanial, OR 48010
44	Cody Ryan	1-495-004-3948	761 Ray Valleys, East Chadwickfurt, OR 91462
45	Lenard Brakus	651.799.1876	Apt. 273 717 Lizeth Common, Port Regena, NJ 14454
46	Torri Carter	955-913-2582	499 Lynn Groves, Mrazfurt, NJ 29467-3931
47	Otha Nitzsche	330-564-2972	Suite 369 881 Lynch Via, Modestoton, MI 15503-8676
48	Dante Mosciski	465.341.1692	1353 Kunde Gardens, Lindseyborough, DE 73185-7487
49	Irish White	674-502-0489	48803 Jast Turnpike, Lake Ozziebury, MS 83175
50	Vito Von	1-422-414-9453	204 Gemma Squares, Gordonhaven, AZ 48625-0002
51	Blake Wiza	(274) 556-0076	Suite 596 1375 Gibson Trail, Pagacland, LA 58572-6520
52	Angle Gislason	1-414-862-4802	Apt. 733 144 Kuhn Fork, Filomenamouth, VT 88170-6099
53	Dania Labadie	1-644-944-1912	Apt. 885 749 Grimes Gardens, Lienport, FL 60423-1953
54	Ms. Mui Glover	1-365-311-2885	Apt. 407 696 Evelia Ridge, North Julianhaven, WA 23517
55	Kieth Yost	1-106-084-2222	Suite 166 3144 Simon Parkway, Catalinafort, NH 62572-0348
56	Marcelino Dickens	(616) 082-9726	Suite 134 43554 Julius Springs, Kelleyville, ME 63786
57	Evalyn Gaylord	(386) 438-3057	Suite 197 845 Deckow Bypass, Clayborough, MN 52781-7277
58	Mitchell Heller DVM	(879) 367-8610	221 Zieme Tunnel, Lake Aldoland, IA 84501
59	Kendrick Greenholt PhD	584-082-0406	Suite 298 2171 Adalberto Terrace, Muellerbury, WI 97290
60	Jeffrey Green III	802.108.7396	Suite 406 9229 Reynolds Lock, Gleichnerfurt, TX 75530-1775
61	Lynn Will	(514) 882-3379	Suite 457 8573 Porfirio Springs, East Cornelius, AR 09997
62	Danielle Maggio	(573) 300-3591	695 Konopelski Burg, Port Aleisha, UT 63957
63	Eileen Willms	1-179-996-6623	Apt. 955 89070 Yanira Crescent, West Rose, NJ 80914-2350
64	Marty Cummings V	977.216.2671	Suite 956 7860 Christiansen Forks, Wilmerton, DE 04442
65	Corine Schinner	(217) 746-6310	Suite 665 968 Cornelius Mountain, Penelopeborough, NH 11182-0496
66	Shery Konopelski	(139) 063-7663	Suite 559 75873 Morissette Pike, Ondrickachester, PA 32650-2782
67	Dr. Alla Marvin	1-532-962-4144	Apt. 308 31295 Berge Station, Jacobfort, HI 00532
68	Brant Beier	1-158-801-6554	Suite 275 595 Weissnat Vista, Lake Ezequiel, SD 29083-6258
69	Brian Heathcote	(841) 340-0231	16022 Roob Light, Lalaton, AR 75048-2069
70	Callie Schultz	(743) 468-9919	63121 Abbott Ranch, North Joyemouth, WV 56475-5055
71	Renaldo Donnelly	(325) 116-1822	2896 Riley Shoal, North Alvinhaven, NC 47983-2719
72	Ilda Rice	556-830-3763	Suite 210 113 Andres Shore, Allenchester, MS 50425-8873
73	Johana Morar	697-055-8525	310 Hane Glen, Chuckmouth, AK 36905-1840
74	Dwana Keebler	1-187-792-1441	24884 Andy Canyon, West Myles, HI 63962-9166
75	Ruth Schmitt	(179) 224-2227	3344 Koelpin Drive, North Tiffaney, HI 22584
76	Foster Howell II	448.499.0503	6335 Schmeler Hill, Emeryville, ID 48027-6687
77	Mr. Raquel Kunde	(880) 337-9264	Suite 676 95759 Cartwright Stravenue, South Natisha, MI 69137-9223
78	Steve Stanton	522.918.4930	4646 Ian Cliffs, Fredshire, UT 61902
79	Susan Corwin	1-617-469-8662	Suite 914 3176 Daniel Road, South Kellyburgh, MA 83707-5046
80	Charlie Wilderman	(713) 559-1893	Apt. 912 902 Bode Mission, Raeshire, DE 43968-3992
81	Mr. Wiley Homenick	1-578-952-6353	4834 Roberts Stravenue, Lefflerland, NM 37722
82	Catheryn Keebler	(687) 429-7030	336 Sawayn Islands, North Mirtaside, AZ 09250-0779
83	Keven Roberts	1-337-840-9909	Suite 947 68370 McGlynn Road, Beckiefurt, IN 75218
84	Keenan Conn	199-047-5802	37058 Chong Corner, Rueckerton, MA 21239-1527
85	Arnulfo McLaughlin	1-688-344-5214	527 Mills Overpass, Darrellfurt, FL 84859
86	Milly Crooks	(629) 506-5118	4675 Gutkowski Inlet, Kingbury, WY 89192-4417
87	Hae Krajcik	(144) 578-2300	Apt. 342 9573 Tremblay Ford, Quitzonstad, MO 58192
88	Cherrie Wyman	(683) 599-8046	282 Carrol Streets, Port Loriaton, AL 77141-4630
89	Efren Wintheiser PhD	968-827-8522	89861 Johnson Mews, Nishaberg, AR 43536-8309
90	Ms. Mariann Satterfield	835.681.9333	534 Walter Lakes, Lake Lucienburgh, AR 24049
91	Edyth Gerhold	980.863.3056	168 Mills Glen, West Bruce, MT 37767-8794
92	Antwan Sporer	(100) 109-1565	399 Dicki Valleys, Billieland, OR 38694-6124
93	Elsie Hyatt	(913) 020-7150	Apt. 419 375 Nick Drives, Hageneschester, OR 30247
94	Leola Anderson	1-585-378-5303	9709 Purdy Ridges, Elwandafort, MO 44047-6873
95	Mr. Darlene Kirlin	(445) 795-5114	Apt. 313 168 Krystin Island, Feberg, NM 07351-1280
96	Antione Sporer	(880) 771-4892	Suite 522 9862 Kautzer Forges, Lurleneport, IA 51675-4753
97	Emma Cummerata	891.370.1304	22014 Kozey Fall, Sherleytown, CT 70931-4002
98	Ms. Val Roberts	139.377.4192	Apt. 901 212 Alethia Causeway, East Jarrodborough, AR 79765-0267
99	Brian Klocko	421.463.6818	Apt. 795 592 Hettinger Lakes, West Elmer, AR 13054-0849
100	Ivory MacGyver MD	497.868.7592	Suite 964 7845 Darrin Spring, Port Delmar, WY 81495
101	Jarrod Strosin	126-117-8287	Apt. 996 5208 Natasha Manors, Earlchester, KS 06227-0470
102	Consuela Hettinger	768.053.2775	5520 Eugenio Plain, New Jolene, KY 41499-8958
103	Margene Sauer	1-554-074-4661	Suite 805 70986 Sheila Wells, Eunicefort, WI 87029
104	Mr. Gertie Batz	306-697-8791	Apt. 530 46811 Joette Harbor, Woodrowside, AK 47056
105	Miss Dede Luettgen	901-121-9185	88657 Ziemann View, Deweyshire, WI 62383-1029
106	Edison Spencer	751-092-6364	Apt. 296 6216 Nitzsche Parkways, Feesthaven, VA 63718-3483
107	Mrs. Georgann McKenzie	190.239.6024	17280 Herman Locks, Crookschester, OK 78923
108	Fermin Herzog V	(734) 893-8269	286 Kuhic Pines, South Audrie, GA 67033-9228
109	Cassie Schowalter	(929) 621-1413	9160 Kuhn Villages, East Dante, AR 05840
110	Luann McKenzie	(258) 083-5457	69816 Lue Throughway, West Zena, IA 19604
111	Maye Quigley	1-984-633-9641	Suite 230 83168 Gerard Ramp, Lake Herschel, HI 31818-5156
112	Rubi Beahan	176-168-8553	Suite 672 864 Florence Springs, Katriceview, MI 74621-4286
113	Gerardo Waelchi	367-506-2537	64637 Collier Trace, New Brunildaburgh, ME 15684-8880
114	Deanne Jast	956-802-3438	4189 Florencio Burgs, North Arlenamouth, MS 20033
115	Dr. Ollie Cremin	1-153-584-4096	7840 Kuhlman Roads, Port Consuelo, FL 84649-6235
116	Jonell Nitzsche	182.700.5574	429 Phylicia Meadows, New Caseytown, AK 57127-8677
117	Ms. Noriko Johnson	683.705.9565	235 Devin Spur, West Joiestad, OH 95621
118	Margaretta Greenfelder	(562) 837-0528	378 Corene Islands, New Jerrold, IL 61637-2250
119	Kayce Metz	549-852-0843	Suite 239 505 Isabel Stravenue, Turnerburgh, OK 65610-0189
120	Dr. Warren Ernser	489-973-0195	3435 Paucek Flat, Lake Arnoldoberg, GA 98984-5956
121	Paul Jacobson MD	(730) 428-9965	40225 Lueilwitz Mews, Loganview, VA 17805
122	Lino Wisozk	193.494.5542	259 Trenton Estates, East Jeromy, VT 21902-9908
123	Krishna Cremin	(274) 968-5249	329 Von Turnpike, South Arden, TN 50858
124	Ms. Karlene Bergstrom	582-875-7602	308 Maggio Mills, Port Jong, SC 20010
125	Tennille Spencer	273-638-8524	Apt. 992 24244 Dominique Way, North Ednaland, RI 60878
126	Alexandria Cremin	159-904-0592	552 Britt Trace, Beckerside, HI 73093-2793
127	Kimberli Wuckert V	(359) 697-0925	Suite 307 880 Hoeger Turnpike, Lake Dwight, VT 62026
128	Gordon Nienow	(893) 402-7035	Suite 926 475 Christeen Islands, North Tony, WA 58289
129	Ms. Thomas Nolan	798-941-2522	Suite 229 71422 Lockman Stream, North Guillerminaland, HI 07189-0054
130	Verena Heller	906.473.9598	Apt. 819 70545 Lockman Stream, Port Digna, WI 91582-0986
131	Kizzy Kub III	464-955-4061	83254 Justin Pine, Boehmton, MO 63416-5722
132	Anthony Willms Jr.	604.726.4754	Suite 732 31427 Sigrid Gardens, Silasbury, IA 18081
133	Dr. Cory Kohler	904-476-3404	Suite 588 452 Kirby Extensions, South Julianchester, IL 87361-6767
134	Ms. Louis Zboncak	561-093-4120	Apt. 839 985 Koelpin Parkway, Chetborough, IL 13297
135	Ward Ledner V	722-343-0462	Apt. 706 6741 Orn Mews, Lake Rafaelaland, GA 97423
136	Francisco Littel	1-705-632-4573	Apt. 994 456 Beatty Point, Lake Fatima, VT 90362
137	Cyrus Bashirian	430.763.7132	Suite 981 74302 Ivory Stravenue, Reidville, OR 85649-2602
138	Scot Torp	386-204-4874	4661 Senger Green, Ronnyside, OK 01723-5921
139	Xuan Aufderhar	601.326.7680	2256 Howe Gardens, East Bessie, WI 04298-5247
140	Dalton Baumbach	1-727-848-4118	Suite 614 754 Hubert Village, Faybury, VT 64521
141	Dr. Providencia Koepp	(171) 365-9996	2172 Charmaine Island, Lake Adelaida, KY 14237-0149
142	Leslie Steuber IV	658.795.8588	Apt. 810 5476 Reinger Estate, East Jorgefort, NM 33246-3255
143	Irvin Rosenbaum	1-597-263-8406	151 Nicholas Creek, Lake Angilaside, RI 25488
144	Elia Pacocha IV	774-930-3441	7375 Quigley Square, Port Randee, GA 30973-0073
145	Dr. Michale Barton	(402) 813-9614	358 Sauer Gardens, South Celia, MI 67275-0662
146	Tyler Champlin	1-280-600-5233	Suite 975 672 Daniel Union, Keeblermouth, HI 51106
147	Hsiu Abshire Sr.	1-309-883-4440	Suite 720 5425 Rachal Fort, South Daltonfurt, AL 48209-2067
148	Miss Helga Gislason	732-665-2979	7265 Kessler Fields, East Berniestad, CO 63781
149	Nakita Jacobs	(848) 157-0681	223 Gutmann Point, Bradfordmouth, ID 57782-7490
150	Carley Hodkiewicz	1-318-922-7427	Apt. 928 649 Vena Corner, North Katiside, MT 27660-2608
151	Malcolm Roberts	459.835.7477	749 Rodriguez Oval, Lake Darrick, HI 88542-4563
152	Roland Bogisich	1-659-993-1536	Apt. 900 322 Charlette Mountain, Duncanhaven, ME 23778
153	Mr. Ja Jerde	964-137-5185	44960 Rolfson Mills, South Boydland, CT 97696-2260
154	Evan Hodkiewicz	450-532-9367	Suite 396 51644 Myrtle Mountain, Volkmanchester, NJ 13205
155	Archie Yost II	435-915-1059	9130 Catharine Burg, Doyleshire, NY 96729-4244
156	Kory Hayes	834-794-1949	775 Zoila Mills, Sporerport, MD 00132
157	Mr. Annis Hansen	(834) 120-4714	Suite 530 990 Sammy Plain, Port Denabury, WV 93886
158	Elly Batz	151-302-1376	15194 Slyvia Port, Lake Angieport, GA 35114
159	Henrietta Gutmann Sr.	305.609.4583	Suite 447 28781 Kyong Grove, Lake Dell, RI 15035
160	Bethany Johns	1-293-512-8904	Apt. 354 401 Okuneva Falls, Alecshire, CO 00879-2093
161	Terri Schoen IV	(782) 173-7599	Suite 698 2744 Earnest Street, New Bonitaberg, GA 28330-9335
162	Dewitt Cruickshank	733.410.1315	577 Gottlieb Island, Georgeborough, NV 77064-4232
163	Corinna Carter	408-201-5431	Apt. 577 46963 Layne Row, North Corrina, CO 90474-9264
164	Lady Kozey	377.388.0247	Suite 744 68352 Signe Fields, Muellerside, SC 21219-3331
165	Mariette Dickens V	822.016.6776	Suite 933 1432 Chery Burgs, South Aubrey, WI 13412
166	Geraldine Pollich	417.747.6346	9094 Jacobs Estate, Dachville, IL 91056-3125
167	Blake Reichel	(449) 762-0724	Suite 294 972 DuBuque Springs, Welchmouth, GA 94639-9868
168	Hyman Fahey	(731) 990-9096	Apt. 911 69894 Bernier Plaza, Johnsonland, RI 59908
169	Gayle Brakus	387.327.4178	97388 Wiegand Plaza, Lake Porfirio, MA 88675-0254
170	Andreas Pfannerstill	1-715-623-0695	Apt. 378 2439 Bogisich Rapid, South Niesha, TN 69785
171	Brock Armstrong III	(416) 182-7288	Apt. 491 1106 Harris Plain, Carinaland, IA 61397-9203
172	Yong Cummerata MD	(687) 157-4935	28940 Rath Station, Lethastad, LA 95271-2428
173	Ethan Wiegand IV	1-188-371-6959	22022 Hamill Crossing, East Ruebenside, MN 39960
174	Armando Waters I	1-979-551-5083	Apt. 962 60128 Latesha Via, Nomaview, CA 68954
175	Bong Blanda DVM	544.179.4566	Suite 848 73447 Arnita Trail, South Luveniaberg, VA 40594
176	Josue Collins	(642) 992-4687	56658 Belkis Drives, Sharanburgh, SD 01756-5465
177	Lashell Stoltenberg	(112) 298-0224	Apt. 974 924 Gale Island, Walshton, NH 83607-3112
178	Penney Prohaska	806.510.1836	735 Aletha Ridges, Schambergerview, FL 28488
179	Eladia Langosh Sr.	(793) 426-1402	506 Laveta Springs, Effertzport, MT 86840-4259
180	Jeromy MacGyver	1-892-461-1674	425 Susann Camp, Ernserborough, GA 84806
181	Dino Kunze II	993.483.2786	Suite 560 248 Mosciski Shoal, Schimmelfurt, HI 26829
182	Myrta Quigley	568-652-9240	3748 Emile Cape, Lake Derick, NE 79064
183	Dr. Albert Hoppe	(769) 785-3337	847 Rayford Turnpike, Muellermouth, MO 04599
184	Ms. Travis Gleason	229.100.8025	707 Tisha Port, Port Dario, MA 18200
185	Mr. Barrett Haley	(770) 158-0814	320 Shanta Lodge, Jeffreybury, NC 54169
186	Mohammed Pagac	560.033.8142	4754 Braun Village, East Ping, UT 00201
187	Mr. Denice Howe	486.245.9919	Suite 494 14567 Nevada Expressway, East Dougmouth, NE 85472
188	Donny Willms	1-603-800-4993	828 Rau Cove, New Brittanymouth, AK 07132-7203
189	Tom Vandervort	923.600.1841	Suite 557 65113 Sarita Burg, East Jerold, WV 72564-8232
190	Ms. Alfonso Gerlach	218-528-4004	Apt. 880 9378 Lonnie Underpass, Priceshire, KY 17679
191	Jacque Stehr	608-997-9871	783 Hans Cliff, Murphyville, VA 31143
192	Lucio Reinger	1-927-020-6733	4581 Luciano Islands, New Damianmouth, GA 79380-7510
193	Saul Bogisich	1-478-102-1426	60410 Matilda Station, Jaskolskiborough, ME 78045
194	Janee Bauch	949-309-6586	Apt. 692 7655 Mertz Terrace, East Jamee, MD 39850
195	Dr. Marquerite Powlowski	992-765-8671	78732 Hickle Course, Port Reinaldomouth, CO 97740
196	Darwin Baumbach	1-368-141-9054	Apt. 807 38166 Howell Lane, South Armandinamouth, HI 29547
197	Wilfredo Terry	488-982-4903	Suite 646 7533 Schultz Harbors, South Mikeport, KS 58239
198	Eboni Mann	443-207-1813	Apt. 950 9916 Malinda Groves, Krajcikport, KS 19674-2208
199	Sarita Murphy	(922) 011-0392	Apt. 315 200 Altenwerth Station, Port Kareem, AR 15731-2528
200	Odis Douglas	729-003-5468	74537 Hyatt Junction, South Mildredfort, VT 90586-7494
201	Inocencia Dibbert	1-473-097-0866	476 Raul Turnpike, South Gerrymouth, ME 37472-4133
202	Sam Brekke	1-161-151-8096	18876 Sanford Ranch, South Mildredbury, CA 57125-7259
203	Leroy Thiel	910.258.9220	16736 Crist Way, New Tiaratown, NJ 61015-0138
204	Soon Blick	680.099.2759	Suite 886 96754 Katelin Dam, Kevinchester, WI 52660-4983
205	Ms. Jamar Jakubowski	(782) 703-4225	934 Prosacco Drive, Port Ashtonfort, MS 90734-0574
206	Elisha Goyette PhD	487.056.8256	Apt. 508 65043 Rath Landing, Sporerview, WY 39768
207	Lavern Block	1-809-887-5003	Apt. 711 83767 Cory Drive, West Erin, CO 61650
208	Zackary Terry	1-357-944-3197	3446 Simonis Pass, North Tyishashire, CA 19714-1492
209	Inez Sawayn II	1-491-694-3787	60053 Earle Key, Deedraburgh, VT 01847-7677
210	Rene Cormier	(446) 179-8366	Suite 689 4829 Murray Motorway, Lake Latonia, SC 89137-4728
211	Bertram Morissette	(778) 667-6440	Suite 791 102 Hansen Groves, Lake Latasha, WI 42495
212	Nick Medhurst	107-007-8575	4395 Millard Greens, Port Jackqueline, MT 43662-6766
213	Lavinia Hammes	662.646.6352	Suite 850 548 Else Forest, Welchton, PA 90091-7303
214	Judy Kemmer	664.867.9101	775 Hudson Estate, East Antoniaville, WA 86744
215	Broderick Davis	(745) 502-3109	Apt. 249 5880 Hyatt Forks, East Maggiebury, SC 89434
216	Miss Sherman Kling	633-707-0954	Suite 365 566 Dooley Passage, North Lela, LA 14942
217	Archie Hoeger	1-116-923-7385	723 Casper Glens, North Gayle, NV 07772-8534
218	Rayna Pollich	909-190-3401	806 Collier Road, Magdabury, CT 42200-8134
219	Patricia Price	320.575.9939	Apt. 141 41786 Larson Lodge, South Randychester, NM 08558-8317
220	Charity Schuster	1-595-930-9146	23126 Nader Shoals, Lake Leslieton, WV 10175-9925
221	Thelma Greenfelder DVM	707-344-5775	Suite 181 9393 Kerluke Station, East Agnus, UT 01421
222	Alexis Wilkinson	(692) 893-8156	Suite 933 6331 Vito Port, Dudleyville, ME 80694-1380
223	Tommye Hackett	114-688-3645	15835 Schneider Ferry, Theodoreton, AK 47821
224	Meta White	696-164-7933	79287 Simonis Mountain, Altheaborough, NM 59656-8928
225	Roland Schimmel	(372) 106-7787	Apt. 634 5727 Gary Cliff, New Carmen, MT 05020-5549
226	Rosamaria Johnson	798.778.3055	Apt. 672 35446 Olen Row, Buckburgh, SC 14209
227	Yahaira Pacocha	791.986.9374	5573 Heathcote Circle, New Joana, NJ 41689
228	Terrell Cummings	1-614-473-7807	5305 Lueilwitz Glens, Maggioton, KY 55410
229	Dr. Florencia Reynolds	(980) 537-6619	63322 Nolan Landing, Reynoldsmouth, SC 65364
230	Kareem Dickinson	339.359.9729	Suite 804 334 Jakubowski Shore, West Pabloport, AK 69599-4480
231	Dana Kemmer	(721) 675-5075	3787 Krajcik Highway, Wymanhaven, AR 00955
232	Harold Daniel DDS	766-030-4065	20349 Mary Street, Port Kiyokofurt, IN 65741-2341
233	Leonardo Gislason PhD	(386) 473-4030	Suite 559 41328 Rutha Grove, Waltraudmouth, ID 60391
234	Elinore Daugherty	934-655-8843	Suite 877 2799 Josephina Field, Raefort, IA 14610-0806
235	Micheal Klein Sr.	(266) 533-5650	Suite 645 32460 Elmer Hills, Walterburgh, WY 89434-8567
236	Clifford Feest	(410) 364-6451	7725 Connelly Fork, Tromptown, ME 56501-3188
237	Sharen Collins	(886) 488-9296	Suite 850 8274 Ervin Flat, West Wernershire, NM 00075
238	Ms. Garret VonRueden	691.840.6954	8750 Morissette Route, New Kaye, NJ 71355
239	Arla Schuster	1-822-777-2563	33437 Rickey Mountains, Richmouth, IA 25729-9192
240	Merle Mitchell II	510-604-2763	Suite 663 87352 Kala Overpass, North Morgan, IL 34480-1625
241	Suzann Robel IV	749.578.6010	65359 Yost Groves, Mirtashire, IN 38536-2792
242	Mrs. Courtney Mann	377-070-6808	Apt. 629 7247 Schneider Summit, East Dwanaland, UT 37582-6716
243	Wilfredo Stehr	(116) 720-5083	Apt. 342 8090 Heathcote Lodge, Dwayneview, MO 59436
244	Micheline Bednar PhD	438-701-8696	30012 Gordon Road, Brekkeville, NJ 25811
245	Maia Emard Sr.	1-974-655-4088	Suite 126 440 Isiah Freeway, East Miriam, NJ 89301
246	Arianne Schaefer	775.272.8955	732 Derrick Row, New Jaimee, WI 31355-6302
247	Nichol Purdy	1-576-303-2229	5319 Koepp Expressway, Port Blakeshire, MI 87149-2212
248	Andrea Hand DDS	1-641-385-0870	Suite 866 38501 Deb Mountain, Jacquieshire, ID 33503-0000
249	Ian Walker	(541) 335-1110	601 Carlton Vista, Lake Steveburgh, NC 86106-9163
250	Vanita Williamson	(875) 009-1812	Suite 925 440 Delpha Isle, Lake Giuseppeside, MS 08934-1090
251	Genna Gottlieb	163.589.5932	7543 Arturo Rest, Vickieland, NE 48026-9315
252	Wilfredo Streich III	1-876-970-2560	Suite 828 6275 Spinka Mountain, North Reaganfort, MT 07577-9760
253	Shannan Rodriguez	411-855-9030	Apt. 151 19962 Romaguera Ferry, East Sadye, MT 92707
254	Paris Morar	172-347-9873	Suite 304 8856 Herb Plains, Murphyfurt, MT 86345-8401
255	Mr. Tommie Abbott	1-301-114-6826	Suite 811 45073 Kemmer Rapid, New Christoperport, AZ 02511
256	Dr. Saul Hansen	783-161-0977	953 Dibbert Prairie, South Aldenfurt, VA 36496
257	Jan Conroy	1-942-835-5574	Suite 140 494 Kohler Center, Wilkinsonhaven, IN 56950
258	Eda Bechtelar	944-902-2508	Suite 870 682 Elease Cape, South Efren, ID 18802
259	Celsa Ferry	1-216-014-9890	Apt. 604 188 Denesik Knoll, Hermanntown, FL 57455
260	Anabel Goyette II	1-165-096-9717	Apt. 906 404 Lacie Motorway, Lake Bernardoburgh, FL 39710
261	Markus Cassin	1-193-592-9221	Apt. 813 914 Feeney Corner, Carlotaberg, PA 45980
262	Minh Roob	627.071.1044	818 Stracke Place, Heidenreichville, MT 09784
263	Noel Champlin	624-187-7762	16103 Dibbert Villages, Abernathyside, SD 17058-0587
264	Barry Heidenreich	902.264.7045	Suite 447 4156 Ruby Fall, Leuschkeville, GA 66132-1826
265	Mrs. Dylan Ernser	1-324-918-6732	592 Larson Meadow, Manland, IN 49549-3720
266	Miss Rickie Cormier	961-018-8357	Suite 721 727 Ankunding Road, East Lenamouth, NC 32359
267	Penni Stroman	1-633-870-3257	Suite 724 5331 Hugh Trafficway, South Serina, SD 11036-8434
268	Louis Nader	473.439.8966	276 Kihn Summit, Port Lora, VA 21358-6432
269	Toby Lubowitz	864-938-0145	556 Alex Creek, Octaviaside, NE 33555-9572
270	Henry Orn	1-891-116-7130	10552 Mellisa Way, South Darron, NJ 33284
271	Nathaniel Conn	1-155-036-3403	Apt. 848 92220 Rolfson Stream, New Donny, NE 48794-4797
272	Rosalba Rippin	729-642-7595	Apt. 284 9739 Medhurst Grove, Port Maryroseton, OH 54750-6057
273	Dr. Sanda Fay	(654) 497-7135	911 Clair Lodge, Lake Pedro, UT 48959
274	Aiko Langosh	(339) 826-4852	53365 Toy Streets, South Amie, MS 04071-7644
275	Ms. Soila Gleason	813-441-3219	989 Kuhic Pine, Lake Freddie, TX 36379-2559
276	Domenica Fahey	1-930-097-2030	Apt. 594 8698 Minnie Crescent, Ritchiestad, CO 92753
277	Edwardo Marquardt	171-357-7123	Apt. 668 2973 Schultz Lake, East Rosaliafurt, IL 28057
278	Delmar Reinger	626.461.9266	98859 Kozey Rapids, North Alecville, IA 27908
279	Letisha Leffler IV	158-186-4510	984 Morar Inlet, Lake Sidney, MA 07147
280	Rana Ziemann	797.682.3238	674 Daryl Lock, East Alleneview, AR 10486
281	Santos Kerluke	664.175.1310	Suite 857 76290 Lillia Walks, West Forrestside, ND 33821-0374
282	Irish Trantow	1-126-558-7550	10142 Marty Fields, South Evan, WV 24698-8854
283	Santos Hagenes PhD	705-413-2508	872 Ratke Garden, Walkerton, ME 15686-4915
284	Normand Kohler	(442) 049-1184	Suite 471 5741 Towne Trafficway, South Janette, SD 52614-9694
285	Mrs. Marceline Mann	757-838-1663	7743 Hoyt Ramp, New Cecile, IL 67467-8381
286	Gertrudis Krajcik IV	(573) 471-8452	Apt. 780 10900 Grant Crossing, Lake Hisako, AR 55517
287	Erin Kohler	1-441-569-1542	1153 Mckinley Estates, Charletteside, OK 97893-0890
288	Mrs. Kassandra Borer	358.868.7120	667 Rath Creek, New Terry, MI 59402
289	Tom Hartmann	(596) 075-2901	Suite 290 9218 Shields Grove, MacGyvermouth, AZ 51858
290	Miss Dreama Wilderman	371-679-5231	251 Dietrich Ports, Lake Kelly, SC 55787
291	Jeffrey Jaskolski	(784) 420-5133	Suite 637 8287 Oma Glen, Saritastad, CO 58635-1803
292	Cristopher Krajcik	395-745-9365	94802 Watsica Valleys, New Erasmoville, NY 72976
293	Chadwick Keebler	886.442.7012	Apt. 855 4018 Toby Pass, Keeblerview, KY 89798
294	Jerold Shields	(946) 878-0837	Suite 196 475 Melodee Meadows, Lake Evelinland, NM 10224-8846
295	Aida Heathcote MD	527-775-8418	Suite 919 2457 Ken Light, Keristad, MI 93786
296	Cindie Kovacek DVM	(824) 926-9055	Suite 658 42879 Almeta Cape, Lake Shawn, MO 64753
297	Derick Hettinger	(682) 527-2157	Suite 620 8143 Strosin Junctions, Port Alfredo, AR 82759
298	Mrs. Kevin Lesch	135.151.2481	Apt. 996 6896 Augustine Fields, North Nevamouth, NV 07139
299	Minerva Dare	1-607-911-7426	Apt. 657 6925 Sauer Expressway, Patrickhaven, WV 62608-0371
300	Pablo Wisozk MD	389.955.4024	Suite 870 546 Barry Roads, Edithland, GA 13322
301	Miss Horace Lynch	766.723.9451	7029 Ernser Plains, Anneburgh, NM 33153-1155
302	Sabra Johnson	(631) 289-7758	25878 Diedre Terrace, Port Aureashire, NM 74189-5503
303	Ms. Renato Batz	(282) 176-8283	Apt. 561 10680 Nolan Estates, West Danyellbury, IL 70781
304	Mozelle Kozey DDS	1-809-796-2318	Suite 139 6687 Rolfson Villages, Lake Rosalee, CA 20817
305	Kacie Pacocha	285-935-8341	Apt. 796 994 Hegmann Canyon, New Benjaminmouth, KY 81396
306	Blythe Murazik	1-715-988-3811	3705 Kertzmann Camp, Port Quintin, NY 96731-8283
307	Viva Hoppe	986-880-4206	444 Parisian Inlet, North Alberthafurt, SD 76371
308	Franklin Upton	764-333-4256	22701 Tereasa Well, Johnsonfort, AL 35078
309	Amos Schoen	1-908-993-5288	Apt. 683 593 Ellsworth Fords, South Kurt, NV 94752-5267
310	Ms. Lyman Wilkinson	1-721-286-0732	32366 Bednar Via, Pfefferfort, NE 80624-7178
311	Gay Vandervort	789-822-4743	Suite 791 7038 Josiah Tunnel, New Carleenton, CO 95252-1115
312	Ms. Ronald Schmeler	(739) 899-0686	37218 Beier Forges, West Leonland, NJ 58660-6941
313	Samuel Lehner	514.055.1095	1485 Harber Terrace, Gutmannmouth, ME 98992
314	Earlie Ernser IV	772-588-6588	5615 Basil Plains, North Darcel, GA 18455-5375
315	Monika Dicki	1-603-246-0426	Suite 120 9486 Pouros Lodge, North Timothy, AZ 82211
316	Easter Prohaska	1-982-556-9573	Suite 763 527 Reinger Ferry, Port Ivory, WY 32479-0037
317	Luis Walter	(339) 760-8841	Suite 202 279 Collins Forest, Sheilamouth, TN 39787-0025
318	Tessa Sipes	505-765-9887	469 Treutel Causeway, Oniefort, NC 91764-7470
319	Dr. Vicente Mayert	1-850-581-4225	Apt. 882 73464 Rusty Motorway, Bennystad, OK 83926-4811
320	Pearle Stamm MD	663-824-7627	Apt. 100 754 Billi Brook, Jaynaland, PA 56426
321	Drema Dibbert	(519) 873-8567	Suite 762 9435 Linnea Cape, New Eddie, MI 11610
322	Kerstin Barton	288.537.9608	Apt. 963 3621 Frances Lakes, New Cruz, TN 79965-2847
323	Caridad Heller	1-458-378-5857	859 Lemke Walks, East Rich, WY 72579
324	Edmund Kilback II	535-538-2427	Suite 545 94875 Dalton Islands, Martinport, AK 52423-1552
325	May Beier	1-460-185-1520	31315 Swaniawski Crest, Mirnachester, TN 04958-8389
326	Miss Patria Altenwerth	(993) 140-8930	243 Abbott Springs, New Miloville, NJ 22497-6738
327	Irving Upton	(510) 222-3940	Suite 129 2185 Ankunding Estate, Hoppefurt, VT 94726-3552
328	Meggan White	683-107-4691	277 Beverlee Ports, Klockoborough, OH 64786-5800
329	Colby Parisian	(869) 964-4507	5970 Adrian Crossroad, Isadorafurt, NV 34515-7353
330	Benny Bogisich	554.229.5439	32365 Gustavo Island, South Elisha, GA 30007-9865
331	Dr. Kareen Schulist	1-732-263-9465	Apt. 872 52762 Marketta Causeway, Jaskolskiview, OR 42847-3048
332	Lindsey Daugherty	1-964-206-9334	48402 Shanell Run, Wiltonborough, PA 93090
333	Maynard Kuhn	(709) 686-6290	6385 Pete Extensions, Port Leona, NC 35479
334	Johnie Runte	660.439.8731	22286 Hettinger Place, Aldenchester, NC 01229-9687
335	Leisa Labadie DVM	151-660-8590	Apt. 879 907 Donnie Run, North Dominick, WY 23040-3407
336	Kristopher McCullough	138.660.6182	6417 Mandy Landing, Eldridgechester, KS 08911
337	Miss Kortney Schuster	683.535.8582	Suite 377 506 Mosciski Fields, Volkmanmouth, IA 25058
338	Torrie Koss	(358) 164-2129	301 Schuppe Common, New Melodiview, WV 61623-0200
339	Israel Koelpin V	1-546-331-0448	Suite 893 420 Jamar Valleys, Abshiretown, MA 67867
340	Thomasine Fritsch	1-909-833-0842	6482 Cleveland Burg, New Amparoberg, PA 26525
341	Dayle Predovic	1-354-312-8767	77047 Parker Tunnel, North Colby, LA 67359
342	Sherly Durgan I	(966) 718-2068	Suite 356 2625 Howell Fort, Lake Jaysonmouth, ME 02403-4739
343	Glenn Halvorson	868.810.6003	Apt. 275 4329 Connelly Mill, Lake Loriport, GA 34280-7163
344	Lila Armstrong	858-766-4078	56411 Adams Viaduct, Legrosfort, MA 11184-7662
345	Janette Mante	306.905.6362	Apt. 469 679 Kshlerin Lock, West Freddie, AR 92733
346	Charlie Swaniawski	(177) 190-8627	Apt. 382 407 Young Stravenue, East Anthony, CA 82016
347	Mrs. Luis Orn	242.620.4630	82303 Francisco Mission, Port Efren, GA 20366-3639
348	Angelia Nienow	739.529.0948	508 Wendell Track, Chifurt, TX 24396
349	Miss Shara Maggio	1-534-318-7658	Apt. 430 66770 Schoen Gardens, Lake Peter, MD 89077
350	Ms. Milissa Spinka	1-181-838-6055	Apt. 674 9797 Mike Ways, Joseffort, NH 56980
351	Yon Konopelski	821.830.9135	54988 Malik Gateway, Homenickmouth, WI 91149
352	Mr. Jewell Abbott	460-139-8169	868 Farrah Rapid, Port Vitoshire, CA 26516-4078
353	Matilde Ryan MD	357.948.6054	710 Reynolds Key, Rodriguezhaven, SD 52160
354	Shawanda Gutkowski	470.204.5539	40291 Mckinley Cliff, North Trinidadville, IL 88369-2139
355	Markus Tromp	154.540.4894	130 Silas Mills, New Farrah, MD 11559
356	Miss Brice Boyle	875-420-2494	Apt. 528 43097 Reichert Freeway, Kleinborough, LA 10799
357	Ray Rosenbaum	185.915.0133	Apt. 213 420 Waelchi Mall, East Fermin, WY 33006-9815
358	Angelo Greenfelder	556-741-6928	Suite 458 40027 Strosin Groves, West Bud, MI 24221-4844
359	Adriane Prohaska II	1-536-165-2640	50882 Layla Lane, Rippinbury, ID 82124
360	Son Rice	1-645-653-0960	2795 Kathie Lights, Brownborough, WA 25377-5265
361	Jesse Crooks	1-464-737-2938	Suite 112 9996 Quitzon Fields, Hunterton, ID 11858
362	Ms. Shaunte Nicolas	1-810-280-0315	Suite 848 5420 Jannie Oval, Ferryburgh, CT 96044
363	Mr. Mikaela Morissette	885.079.3393	Apt. 296 4561 Augusta Views, Elishamouth, NY 35261
364	Brian Walsh	873-562-5154	702 Aufderhar Vista, West Allan, ME 05131-3999
365	Dr. Franklyn Nader	468.035.6196	303 Kunde Way, Wintheiserside, ME 83237
366	Graig Hansen Sr.	(266) 777-4859	9781 Augustina Fall, South Rueben, ME 49642-8274
367	Shelli Rippin	1-108-618-3692	Apt. 897 69158 Ludie Forks, East Sixtabury, AZ 34535
368	Gearldine Nolan	933.001.6025	221 Rutherford Mountains, East Ameliaport, NH 60585-7660
369	Siobhan Altenwerth	1-599-393-5157	1466 Olson Green, New Derickbury, AZ 21621-2309
370	Hector Dach Jr.	(952) 166-8973	55262 Else Tunnel, Botsfordmouth, CA 33513
371	Christian Cormier PhD	1-811-438-0281	Suite 584 89812 Bashirian Lights, New Concepcionside, MA 02565
372	Sue Moore	907.169.9669	65146 Hills Place, Port Pete, ME 38213-0302
373	Ms. Elisha Gibson	554.161.8344	5195 Robyn Cove, East Gale, VT 92355-9967
374	Arlen Donnelly	(709) 259-8801	6257 Hal Plaza, Corrinaport, ME 61508
375	Malvina Davis	115.608.9828	Suite 472 3671 Marc Alley, Lake Aaron, OR 09929-2410
376	Mrs. Sibyl Heidenreich	(671) 924-3451	Apt. 891 6222 Ritchie Estates, West Brenton, HI 34272
377	Julienne Goldner	563-596-5670	6572 Medhurst Stream, West Priscilaville, CO 37761
378	Dr. Taylor Wiegand	1-701-302-7704	Suite 888 30100 Reilly Extension, East Shana, CO 84623
379	Mitsue Leffler	(851) 787-2947	3013 Waldo Dam, Monahanstad, CA 41516
380	Winifred Stanton II	1-783-984-4683	134 Brooks River, East Almeda, OH 06450-9985
381	Ute Bednar	(183) 537-1070	63002 Rowe Villages, Careyfort, WY 25780
382	Dr. Inell Ruecker	(493) 456-4808	822 Skiles Point, North Coralbury, RI 47877-3813
383	Aleisha Ondricka	935-840-7203	16140 Everette Springs, Kasiview, AL 45382
384	Isabell Thiel III	583.836.7529	Suite 613 270 Bosco Plains, Lesleyview, WV 78340
385	Jennine Pouros	819-376-5140	6614 Hintz Meadow, Port Nilsa, AL 55017-7119
386	Shirl Pfannerstill	(666) 190-7404	3044 Kilback Mountains, New Eltonfort, PA 59933-8405
387	Mr. Betty Casper	857-466-8423	Apt. 932 59010 Pollich Way, Ocieview, MD 27048
388	Sarita Mitchell	756.922.3775	Apt. 241 2175 Will Harbor, Ritchieland, SC 19224-4452
389	Eldridge Leannon	700-766-9275	Suite 641 7868 Morris Shoals, Medhurstville, OK 23723-9011
390	Kathe Klein	(348) 106-6346	Apt. 832 9854 Matthew Falls, Beaufurt, WY 80402
391	Jacinto Cruickshank DDS	580-410-4244	Suite 333 800 Dietrich Green, Kleinstad, WY 49485
392	Stephen Bashirian	133.769.9321	94978 Kemmer Crescent, Lake Lindy, NJ 89070-9617
393	Stuart Metz	662.971.4054	Suite 699 242 Deshawn Parkways, New Rosannshire, HI 60051-7107
394	Brady Stehr	(916) 653-9536	Suite 377 65779 Dietrich Wells, New Erinton, NH 19691-6495
395	Julianne Schinner MD	1-826-774-8646	Suite 902 643 Lakin Ports, Hueyhaven, OH 59336-5585
396	Gregory Gorczany	1-141-629-4328	Suite 725 13073 Reilly Corner, Wilburnchester, PA 46181-0526
397	Eladia Mohr	231-597-4577	Apt. 264 92747 Keebler Underpass, Port Allynchester, IN 22272
398	Linwood Lakin	1-417-556-3140	Suite 305 2504 Edwardo Extensions, Deidrafurt, MO 40429
399	Millard Thompson	(365) 843-6682	27755 Buckridge Burg, North Alejandro, TN 04187
400	Myron Altenwerth	(309) 645-2328	882 Sonja Court, East Bryanttown, WY 65407
401	Cathryn Kuphal	(330) 090-9072	39779 Denesik Port, East Keisha, CT 66717-1703
402	Harry Homenick	113-126-1211	Apt. 518 95144 Geoffrey Isle, Jeannettebury, VA 11017
403	Hugh Dooley	(867) 306-0708	33486 Bosco Corner, Stantonland, DE 88889-5394
404	Bo Cummerata PhD	(632) 721-9326	7140 Schiller Burg, Port Galabury, MI 26021
405	Nichol White	862-408-0642	Apt. 880 7073 Irving Mission, Schuppeside, AL 34432-8694
406	Beverlee Sauer	840.402.2107	827 Francina Branch, Kossview, TN 19158-2789
407	Jerald Stracke	(412) 957-6022	Suite 696 994 Lesch Cliff, New Ariemouth, OK 68438
408	Carmen Mraz	843.799.7707	Suite 961 38657 Kip Wells, Charisbury, AZ 76544
409	Adrian West	397-545-0179	13453 Dudley Harbor, Nickymouth, UT 05638
410	Consuelo Wiza I	398-106-6934	Apt. 957 7434 Rayford Streets, Funkmouth, CA 94333-3852
411	Ayako Toy DDS	1-483-814-0867	Apt. 260 5451 Baumbach Mountains, Jastmouth, CA 02646-6073
412	Taina Prohaska V	149.058.0848	965 Quigley Springs, Nicolasshire, NH 27158
413	Mrs. Misty Tillman	440-216-1641	40789 Armstrong Knoll, South Inaview, AR 39201
414	Miss Nichol Lockman	553-091-8484	Apt. 582 21624 Braun Turnpike, Lake Terryborough, LA 96920-0931
415	Mrs. Priscilla Turcotte	(699) 691-4880	Apt. 488 59727 Schneider Knolls, Lueilwitzport, NY 75011
416	Janene Hayes Jr.	(927) 253-8225	72768 Wolf Point, South Willyville, ID 78198-5490
417	Aiko Beier	(504) 181-0371	Suite 556 248 Anabel Falls, Palmerberg, MS 08124
418	Bradford Corkery	414.747.0604	Suite 490 402 Kozey Well, Wizabury, AL 65324
419	Xuan Ratke	(262) 064-8378	Apt. 910 877 Gislason Port, North Chanellberg, OK 15158
420	Miss Elouise Cartwright	910-344-7647	Apt. 438 268 Lavern Villages, Port Jed, NE 69212-9890
421	Gayle Homenick	949-748-2804	Suite 493 142 Venus Mill, South Pattiemouth, PA 46405
422	Sparkle Dooley	(800) 667-5011	999 Yong Circles, Littelside, HI 31730
423	Karri Bernhard	1-501-074-0174	Suite 886 44713 Stehr Stream, Sawaynburgh, DE 11274-4688
424	Mertie Rippin	633-364-6099	Suite 384 14514 Delisa Ridge, New Chuckberg, NM 89073-0971
425	Viviana Schuster Sr.	1-988-767-2251	509 Ferry Prairie, West Steviebury, AR 48091-8812
426	Ms. Vernon Homenick	720.700.7154	31467 Watsica Lock, Raneestad, ME 69034
427	Ruthann Macejkovic	1-631-483-6876	95199 Robbie Trace, Hillsfurt, AK 90832-8655
428	Kerri Klocko	535-081-3403	Suite 480 478 Julianne Grove, North Joeybury, MD 48387-8698
429	Alvin Goyette	986-701-0205	Apt. 137 140 Dare Rapids, West Harold, FL 36857
430	Freeman Gislason	(948) 134-1407	Apt. 933 87349 Jay Shoal, New Bradford, CO 93395
431	Lamar Stiedemann	(366) 108-9235	Apt. 388 4883 Edythe Common, Ankundingtown, LA 94047
432	Yolanda Wiza	272-185-1312	Suite 860 80947 Hills Oval, Lake Edithport, AR 65922-1028
433	Francisca Sporer	1-974-754-4553	Apt. 287 8311 Ben Drives, North Nevaville, ND 48868-7103
434	Ms. Floria Ratke	783.757.1249	Apt. 600 19139 Balistreri Canyon, Forestfort, WA 39714
435	Mr. Evelia Ratke	469-902-9971	1393 Labadie Pike, Lorenzoside, KY 39401
436	Sheldon Thompson I	1-468-973-3176	49268 Rosendo Motorway, Port Glenna, KS 32854-7032
437	Kip Schamberger Jr.	(708) 397-2078	Apt. 255 18213 Elisa Parks, South Rufus, WY 75693
438	Takako Schulist	863-319-3533	Apt. 565 52325 Langworth Port, Sabrinamouth, LA 85605-0513
439	Chery Cassin	(170) 204-8844	Suite 993 3531 Vina Flat, Lake Alba, WI 91487-4727
440	Lou Mante	1-250-954-4442	Suite 477 892 Moen Field, South Kathline, PA 12591
441	Riley Upton	847-379-4335	Suite 904 93487 Emery Curve, Florenciomouth, ME 93568-1938
442	Hong Langosh II	670-303-7980	10747 Auer Path, Deloresburgh, MO 17692-6384
443	Dr. Wilton Bode	1-292-791-7083	853 Kenyatta Locks, Loweshire, NV 29895
444	Retha Fritsch III	(977) 752-6453	89047 Rebbecca Plain, Charlesland, ME 12509
445	Lincoln Nienow	1-829-209-1853	215 Dane Lake, Lake Florenciomouth, IL 39285
446	Chris Hodkiewicz	649-643-8185	Suite 799 95844 Anna Track, Huelsmouth, NM 20594
447	Ernestina Senger	1-163-419-3091	5979 Hermine Light, Vickyland, CT 19459-4175
448	Mrs. Rosalie Waelchi	841-036-0208	Apt. 256 96492 Hessel Ford, Renaldomouth, IL 56622
449	Mimi White	759-935-7968	Apt. 648 31487 Elliott Plain, Kassulkefurt, VT 25438
450	Dr. Rolland Kuphal	1-350-890-9218	Suite 562 623 Anderson Pine, Starkmouth, VT 36710-5486
451	Normand Abbott DVM	747-254-7125	Suite 772 48602 Sanford Terrace, Herbview, SC 44989-4325
452	Summer Lang	(238) 811-3239	9231 Schmeler Rue, Bogantown, IN 95594
453	Wyatt Crooks	397-743-4388	6044 Watsica Terrace, Hyattchester, WY 59257-2892
454	Ronald Franecki	324-194-2551	94599 Bruen Dam, Hammesville, MO 06800-9400
455	Yi Yundt	878.549.1511	Suite 137 92948 Bechtelar Manors, Omarville, MD 67896
456	Cheryl Toy	398.320.0886	Apt. 167 49116 Renner Shore, Hegmannville, PA 36122
457	Willard Nicolas	1-931-779-5018	177 Lonnie Pass, Port Agustinview, NJ 98820-9630
\.


--
-- Data for Name: pelicula; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public.pelicula (id_pelicula, titulo, categoria) FROM stdin;
1	Hybrid Theory	Drama
2	Unplugged	Terror
3	Music Box	Ciencia Ficcion
4	...Baby One More Time	Comedia
5	Thriller	Western
6	Happy Nation	Suspenso
7	Grease: The Original Soundtrack from the Motion Picture	Suspenso
8	Boston	Western
9	Backstreet Boys	Ciencia Ficcion
10	No Jacket Required	Ciencia Ficcion
11	Dangerous	Ciencia Ficcion
12	Dirty Dancing	Western
13	Happy Nation	Ciencia Ficcion
14	Supernatural	Accion
15	The Colour of My Love	Comedia
16	Appetite for Destruction	Drama
17	Led Zeppelin IV	Western
18	Bridge over Troubled Water	Ciencia Ficcion
19	Backstreet Boys	Terror
20	Led Zeppelin IV	Terror
21	Boston	Suspenso
22	Grease: The Original Soundtrack from the Motion Picture	Ciencia Ficcion
23	Oops!... I Did It Again	Suspenso
24	The Woman in Me	Ciencia Ficcion
25	Cross Road	Comedia
26	Hands All Over	Comedia
27	Riot!	Suspenso
28	Supernatural	Drama
29	Supernatural	Terror
30	Flashdance: Original Soundtrack from the Motion Picture	Accion
31	Bat Out of Hell	Terror
32	Slippery When Wet	Comedia
33	High School Musical 2	Drama
34	Faith	Ciencia Ficcion
35	Falling into You	Terror
36	The Bodyguard	Terror
37	Brothers in Arms	Comedia
38	Breakfast in America	Comedia
39	...Baby One More Time	Drama
40	Whitney	Western
41	Born in the U.S.A.	Terror
42	 Book I	Comedia
43	Slippery When Wet	Suspenso
44	The Joshua Tree	Ciencia Ficcion
45	Hysteria	Drama
46	The Wall	Ciencia Ficcion
47	Slippery When Wet	Western
48	 Present and Future	Ciencia Ficcion
49	Bridge over Troubled Water	Suspenso
50	Led Zeppelin IV	Western
51	Nevermind	Accion
52	X&Y	Western
53	Their Greatest Hits (1971–1975)	Accion
54	1	Terror
55	Backstreet Boys	Comedia
56	Like a Virgin	Ciencia Ficcion
57	Led Zeppelin IV	Western
58	High School Musical 2	Accion
59	High School Musical	Comedia
60	Oops!... I Did It Again	Ciencia Ficcion
61	Hands All Over	Western
62	Whitney Houston	Accion
63	No Jacket Required	Western
64	The Joshua Tree	Drama
65	Dirty Dancing	Drama
66	Nevermind	Drama
67	Appetite for Destruction	Accion
68	Off the Wall	Western
69	 Book I	Western
70	Bridge over Troubled Water	Comedia
71	Viva la Vida or Death and All His Friends	Comedia
72	The Bodyguard	Western
73	Tracy Chapman	Western
74	21	Suspenso
75	Frozen	Western
76	Bad	Comedia
77	1	Drama
78	The Wall	Comedia
79	Back in Black	Drama
80	Faith	Western
81	Hotel California	Western
82	Boston	Suspenso
83	 Book I	Drama
84	Songs About Jane	Terror
85	Metallica	Suspenso
86	Rumours	Accion
87	Oops!... I Did It Again	Accion
88	The Eminem Show	Ciencia Ficcion
89	Unplugged	Terror
90	The Colour of My Love	Ciencia Ficcion
91	Grease: The Original Soundtrack from the Motion Picture	Ciencia Ficcion
92	Supernatural	Ciencia Ficcion
93	Recovery	Terror
94	Happy Nation	Drama
95	Legend: The Best of Bob Marley & The Wailers	Drama
96	X&Y	Drama
97	High School Musical	Western
98	All We Know Is Falling	Comedia
99	25	Suspenso
100	Rumours	Ciencia Ficcion
101	Boston	Drama
102	Brothers in Arms	Ciencia Ficcion
103	The Marshall Mathers LP	Western
104	Falling into You	Terror
105	High School Musical	Comedia
106	Bat Out of Hell	Ciencia Ficcion
107	Metallica	Comedia
108	Music Box	Suspenso
109	 Present and Future	Western
110	Songs About Jane	Terror
111	Appetite for Destruction	Ciencia Ficcion
112	Born in the U.S.A.	Comedia
113	I Dreamed a Dream	Comedia
114	Born in the U.S.A.	Western
115	Viva la Vida or Death and All His Friends	Terror
116	Gold: Greatest Hits	Western
117	Rumours	Accion
118	 Book I	Ciencia Ficcion
119	High School Musical 2	Accion
120	Oops!... I Did It Again	Terror
121	Whitney	Suspenso
122	Bad	Terror
123	Lemonade	Accion
124	Nevermind	Comedia
125	Dangerous	Suspenso
126	Saturday Night Fever	Accion
127	Led Zeppelin IV	Western
128	HIStory: Past	Western
129	Born in the U.S.A.	Accion
130	Flashdance: Original Soundtrack from the Motion Picture	Comedia
131	 Present and Future	Accion
132	Dookie	Comedia
133	I Dreamed a Dream	Comedia
\.


--
-- Data for Name: reparto; Type: TABLE DATA; Schema: public; Owner: usuario
--

COPY public.reparto (id_pelicula, id_actor) FROM stdin;
65	282
102	262
53	307
9	326
76	184
88	434
12	399
110	119
89	373
60	321
107	354
45	318
101	240
18	337
89	468
129	137
35	39
52	355
43	457
17	489
8	359
132	116
116	396
90	383
39	90
46	369
77	259
89	405
14	103
19	72
32	280
36	165
23	132
41	72
47	210
106	130
75	230
48	497
58	237
48	305
123	457
11	111
65	290
110	421
33	139
130	133
64	336
86	433
72	409
95	284
79	427
57	348
70	357
61	392
100	169
16	17
73	410
115	241
56	295
47	398
121	507
106	365
83	353
62	425
97	458
121	235
89	278
88	170
68	438
107	182
53	55
1	394
15	515
83	334
63	506
128	63
24	531
68	354
88	295
126	247
15	59
9	461
22	274
102	518
22	69
4	195
90	142
28	457
131	54
120	94
9	383
4	201
3	107
115	102
27	271
49	332
60	499
56	181
132	221
60	473
123	417
72	131
48	259
54	303
32	307
10	125
110	123
100	402
89	55
103	113
3	449
112	398
18	241
3	238
68	163
88	506
120	195
85	399
4	520
23	41
51	17
125	514
33	61
124	48
86	504
95	176
107	432
20	323
115	307
45	315
119	192
76	60
66	139
109	207
37	163
44	291
59	471
83	274
105	503
70	301
84	93
133	43
76	163
55	164
93	232
50	509
98	513
115	16
93	434
79	184
94	405
121	74
107	280
20	520
91	384
72	354
94	77
50	508
81	439
125	94
10	463
121	91
85	330
131	470
66	385
70	421
93	493
61	77
106	495
62	230
86	226
111	100
83	259
101	507
43	515
102	297
8	120
104	527
52	234
77	489
123	519
91	165
131	260
28	193
73	391
22	159
5	39
129	36
43	123
46	234
6	472
97	64
12	470
116	470
99	135
129	282
123	71
25	310
59	506
4	458
84	195
37	302
125	327
6	384
21	43
84	454
112	429
103	434
21	482
46	284
103	121
48	375
44	493
108	325
45	102
5	25
109	51
3	431
21	530
84	464
81	138
116	215
97	107
120	508
46	250
15	191
128	309
106	83
3	305
31	137
109	503
113	435
19	499
77	473
34	18
95	80
28	491
92	279
75	487
90	446
99	378
69	493
59	265
11	514
37	235
125	152
59	448
4	307
10	359
45	123
4	287
68	353
92	133
99	414
122	410
2	364
78	480
32	92
2	349
127	257
42	160
107	208
127	506
122	114
102	202
97	124
88	177
122	306
70	218
103	187
20	56
82	501
15	22
3	198
37	366
67	453
2	459
11	522
66	43
50	323
27	99
93	300
22	465
94	496
100	397
57	191
89	183
20	136
92	399
98	510
43	510
37	254
62	51
49	379
13	226
131	295
127	45
5	250
15	513
66	75
70	147
93	218
47	246
42	483
99	351
33	99
55	241
59	144
97	260
40	478
1	501
68	280
57	55
114	112
45	481
132	450
121	359
98	131
42	141
102	144
21	397
11	45
7	34
22	497
64	26
82	85
98	129
15	447
130	117
36	73
116	314
4	132
82	211
62	304
128	177
100	319
41	368
82	238
107	492
6	74
106	249
40	461
8	430
13	523
25	379
129	196
39	423
30	244
113	466
26	235
74	213
34	142
112	27
41	341
110	144
73	331
10	407
53	32
30	53
65	369
111	445
53	516
88	76
122	381
69	155
4	102
47	122
39	438
47	209
82	36
47	484
7	250
100	164
5	53
102	158
96	308
22	238
53	192
74	158
53	213
43	113
43	313
35	130
54	201
124	406
40	296
126	204
64	218
27	239
35	233
132	323
13	375
26	461
98	482
76	230
20	283
91	80
113	367
31	272
39	128
62	308
85	188
93	98
80	398
2	151
120	345
39	204
32	219
20	180
37	16
51	350
56	398
26	527
117	81
61	151
1	388
67	129
87	262
128	114
68	162
32	268
15	159
42	394
119	242
22	492
61	496
94	87
103	332
65	493
19	216
61	20
63	366
78	189
47	514
62	202
95	362
98	483
96	421
118	317
35	274
126	294
68	237
81	376
48	108
131	313
82	530
73	500
46	345
57	404
85	491
29	374
116	111
68	119
75	263
45	248
67	246
63	286
31	265
4	505
80	417
63	64
51	174
2	59
58	239
23	195
69	32
60	66
12	339
1	293
12	425
77	495
74	144
113	353
89	502
25	408
79	62
75	140
107	334
108	312
8	62
64	303
5	360
58	419
107	43
90	180
70	430
72	319
118	468
5	96
72	464
74	475
133	529
62	106
59	495
73	528
28	435
132	333
73	432
72	502
12	235
44	315
67	478
133	477
127	252
91	394
24	119
11	39
92	242
59	184
32	306
79	467
35	321
107	98
51	496
123	525
14	496
63	521
116	502
42	48
20	120
96	495
35	434
80	320
72	126
58	447
6	358
11	216
46	373
34	459
72	53
97	351
40	341
127	138
88	342
127	49
26	264
61	67
41	396
8	452
24	108
39	418
15	62
125	499
37	411
82	185
95	35
80	360
128	336
85	313
107	355
50	463
78	393
52	200
83	117
121	480
32	333
57	395
100	531
84	83
113	167
38	325
133	388
100	300
100	111
23	282
125	20
67	526
6	134
107	426
55	487
67	449
32	134
54	213
123	303
90	319
1	63
1	232
14	340
108	127
108	56
123	237
44	162
61	76
22	354
94	39
97	129
55	500
16	329
53	162
4	88
53	375
58	457
57	234
23	142
104	58
114	72
63	171
33	392
99	236
125	436
110	160
132	356
46	41
106	110
98	25
19	470
60	286
80	305
94	290
62	95
50	179
132	218
120	160
133	439
7	388
62	94
118	464
119	442
61	181
99	288
2	487
14	297
128	405
69	199
89	158
29	43
93	365
98	234
26	22
111	388
48	112
13	322
30	45
36	509
103	353
131	402
108	453
122	152
26	393
98	71
69	171
27	389
40	208
98	101
18	359
46	119
101	68
66	313
81	109
12	449
130	260
3	363
119	239
49	57
58	510
102	240
129	365
5	154
31	330
63	242
88	354
116	401
47	424
46	238
8	57
92	167
50	89
28	203
82	467
25	365
103	297
51	29
71	457
100	133
76	497
48	467
107	322
33	478
133	213
22	439
53	23
69	314
44	37
108	425
71	246
99	529
125	144
93	489
13	308
97	44
115	474
73	123
90	233
58	90
107	369
48	60
77	432
22	296
52	43
100	422
17	425
96	276
88	58
11	495
118	484
129	57
89	92
14	429
27	334
113	74
48	71
17	138
126	519
67	97
130	72
11	174
55	221
25	465
26	477
29	428
47	110
60	482
98	396
72	166
31	495
124	333
18	199
106	369
93	244
50	228
109	459
119	232
65	213
44	148
98	301
75	151
56	127
72	475
15	186
50	482
53	335
2	80
63	337
78	143
34	235
107	289
20	336
81	162
85	268
2	369
108	266
46	167
64	442
115	221
121	220
80	386
103	259
57	210
34	351
4	26
18	405
116	425
28	171
31	165
108	174
61	502
38	492
129	315
73	56
94	403
52	283
128	277
69	284
115	526
97	153
45	495
28	119
126	42
80	420
127	295
19	298
97	488
130	195
131	104
79	18
107	441
25	505
102	308
25	335
96	245
102	454
8	341
29	57
93	19
40	474
49	107
54	26
11	46
123	414
19	55
132	431
5	356
92	315
96	462
16	102
5	108
127	399
61	203
105	128
89	358
21	289
57	223
17	302
53	223
101	399
104	64
109	221
52	233
130	407
29	474
113	349
54	357
106	39
129	481
12	289
86	210
127	149
54	96
104	443
28	35
94	437
132	107
44	357
122	468
35	479
43	292
29	51
107	40
129	345
105	136
25	80
32	72
91	255
45	196
102	227
51	226
9	125
17	443
71	21
89	33
127	226
17	196
101	204
16	37
106	28
13	313
83	195
124	386
22	277
131	459
20	483
29	335
129	183
130	82
121	434
83	415
130	235
121	440
112	522
11	189
27	428
80	404
14	420
68	155
55	44
113	29
105	377
11	305
116	94
50	433
100	33
131	346
118	380
126	505
29	371
53	339
72	174
122	329
49	445
125	369
93	371
16	517
77	285
13	476
42	357
77	112
27	35
50	250
126	112
59	66
99	391
32	118
109	116
88	236
5	313
18	167
84	90
125	138
38	485
74	247
56	192
128	47
133	486
81	133
113	281
29	116
129	402
23	428
8	479
28	217
102	260
128	363
128	425
16	519
59	275
112	360
107	158
117	74
90	279
76	137
110	124
129	320
86	200
117	416
58	243
99	79
40	448
119	199
109	346
46	400
63	353
26	145
40	340
3	300
8	29
115	500
9	23
43	21
9	213
100	129
68	307
48	493
6	173
14	263
49	291
69	149
67	367
119	445
85	304
112	443
76	509
13	249
49	183
98	248
77	435
24	218
24	300
34	103
44	469
126	359
96	226
42	479
23	259
114	231
34	464
37	467
13	230
18	523
36	70
94	56
38	340
112	101
43	289
26	258
96	475
98	453
113	263
107	196
86	323
1	164
2	218
3	23
4	179
6	371
7	529
8	114
9	446
10	199
11	307
12	450
13	529
14	522
15	332
16	395
17	485
18	39
19	465
20	442
21	192
22	521
23	291
24	203
25	366
27	157
28	260
29	82
30	285
31	184
32	140
33	356
34	50
35	409
36	285
37	124
38	138
39	158
40	496
41	491
42	70
43	400
44	323
45	29
46	189
47	432
48	279
49	498
50	327
51	229
52	136
53	224
54	368
55	510
56	98
57	519
58	291
59	368
60	274
61	459
62	445
63	170
64	393
65	451
66	167
67	357
68	333
69	458
70	192
71	174
72	279
73	471
74	86
75	253
76	524
77	348
78	106
79	347
80	387
81	170
82	360
83	393
84	63
85	92
86	370
87	337
88	149
89	308
90	506
91	423
92	176
93	368
94	401
95	461
96	448
97	366
98	444
99	166
100	489
101	376
102	338
103	384
104	477
105	121
106	222
107	120
108	493
109	286
110	118
111	211
112	470
113	121
114	249
115	29
116	485
117	202
118	75
119	206
120	35
121	222
122	58
123	166
124	35
125	477
126	376
127	236
128	449
129	232
130	438
131	172
132	348
133	416
\.


--
-- Name: actor_id_actor_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public.actor_id_actor_seq', 531, true);


--
-- Name: alquiler_id_alquiler_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public.alquiler_id_alquiler_seq', 958, true);


--
-- Name: casete_id_casete_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public.casete_id_casete_seq', 3010, true);


--
-- Name: miembros_id_miembro_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public.miembros_id_miembro_seq', 457, true);


--
-- Name: pelicula_id_pelicula_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 133, true);


--
-- Name: actor actor_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);


--
-- Name: alquiler alquiler_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.alquiler
    ADD CONSTRAINT alquiler_pkey PRIMARY KEY (id_alquiler);


--
-- Name: casete casete_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.casete
    ADD CONSTRAINT casete_pkey PRIMARY KEY (id_casete);


--
-- Name: miembros miembros_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.miembros
    ADD CONSTRAINT miembros_pkey PRIMARY KEY (id_miembro);


--
-- Name: pelicula pelicula_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);


--
-- Name: reparto reparto_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.reparto
    ADD CONSTRAINT reparto_pkey PRIMARY KEY (id_pelicula, id_actor);


--
-- Name: alquiler alquiler_id_casete_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.alquiler
    ADD CONSTRAINT alquiler_id_casete_fkey FOREIGN KEY (id_casete) REFERENCES public.casete(id_casete);


--
-- Name: alquiler alquiler_id_miembro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.alquiler
    ADD CONSTRAINT alquiler_id_miembro_fkey FOREIGN KEY (id_miembro) REFERENCES public.miembros(id_miembro);


--
-- Name: casete casete_id_pelicula_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.casete
    ADD CONSTRAINT casete_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);


--
-- Name: reparto reparto_id_actor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.reparto
    ADD CONSTRAINT reparto_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);


--
-- Name: reparto reparto_id_pelicula_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public.reparto
    ADD CONSTRAINT reparto_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);


--
-- PostgreSQL database dump complete
--

