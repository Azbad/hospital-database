--
-- PostgreSQL database dump
--

\restrict ZLUFzk9T9XUfuNLwk5T6yvioXaFEp6sw2WCS7c8koupbu4uhNYgaOhB2sQEtlll

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (department_id, department_name, department_description, head_of_departments_id) FROM stdin;
1	Cardiology	Heart and cardiovascular care	101
2	Neurology	Brain and nervous-system care	102
3	Pediatrics	Medical care for children	103
4	Emergency	Emergency and urgent care	104
5	Orthopedics	Bones,joints and muscoskeletal care	105
6	General medicine	General medical care	106
\.


--
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doctors (doctor_id, first_name, last_name, gender, specialty, department_id, house_address) FROM stdin;
101	Daniel	Okafor	Male	Cardiologist	1	100 Ibidun street, Ojuelegba.
100	Jan	Levinson	Male	Cardiologist	1	102 Elm Street, Suite 4B
102	Sarah	Adeyemi	Female	Neurologist	2	458 Maple Avenue
103	Micheal	Johnson	Male	Pediatrician	3	789 Oak Lane, Apt 12
104	Aisha	Bello	Female	Emergency Medicine	4	321 Pine Drive
105	David	Williams	Male	Orthopedic Surgeon	5	654 Cedar road
106	Grace	Eze	Female	General Physician	6	987 Birch Street
107	Ibrahim	Musa	Male	Cardiologist	1	147 Walnut Way
108	Chioma	Nwosu	Female	Neurologist	2	258 Chestnut Boulevard
\.


--
-- Data for Name: nurses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nurses (nurse_id, first_name, last_name, gender, house_address) FROM stdin;
231	Mary	Johnson	Female	369 Spruce Court
232	Esther	Okoro	Female	741 Ash Lane, Apt 3A
234	Ruth	Ibrahim	Female	963 Magnolia Palace
235	David	Okeke	Male	159 Cypress Drive
236	Blessing	Eze	Female	357 Poplar Street
237	Samuel	Musa	Male	468 Redwood May
238	Janet	Bello	Female	579 Beech Road
233	James	Adewale	Male	15 Allen Avenue
\.


--
-- Data for Name: receptionists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.receptionists (receptionist_id, first_name, last_name, gender, house_address) FROM stdin;
1	Linda	Okafor	Female	975 Larch Drive
2	Peter	Adeyemi	Male	864 Alder Court
3	Sarah	Musa	Female	135 Sycamore Boulevard
4	Emmanuel	Eze	Male	246 Hickory Lane
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (room_id, room_number, department_id) FROM stdin;
1	101A	1
2	102A	2
3	103A	3
4	104A	4
5	105A	5
6	106A	6
7	101B	1
8	102B	2
9	103B	3
10	104B	4
11	105B	5
12	106B	6
\.


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (patient_id, first_name, last_name, gender, entry_date, exit_date, doctor_assigned, nurse_assigned, reception_guide, room_assigned) FROM stdin;
3075	John	Smith	Male	2026-09-01	2026-09-06	101	235	2	1
3042	Ahmed	Ibrahim	Male	2026-09-02	2026-09-07	102	232	1	2
3490	David	Okafor	Male	2026-09-04	2026-09-10	104	237	1	4
4702	Fatima	Bello	Female	2026-09-05	\N	105	238	1	5
3127	Daniel	Adeyemi	Male	2026-09-06	2026-09-09	106	237	3	6
3026	Mary	Johnson	Female	2026-09-02	\N	100	235	2	7
7264	Esther	Okeke	Female	2026-09-07	\N	104	236	3	3
5819	Grace	Williams	Female	2026-09-03	\N	103	233	1	8
4815	Micheal	Musa	Male	2026-09-08	2026-09-12	107	234	4	1
2698	Amina	Yusuf	Female	2026-09-09	\N	108	231	4	12
7163	Sarah	Nwosu	Female	2026-09-11	\N	102	236	2	9
8361	Ibrahim	Abdullah	Male	2026-09-12	2026-10-07	100	232	4	11
5209	Chioma	Okoro	Male	2026-10-12	2026-10-13	102	231	2	2
1924	Samuel	Adewale	Male	2026-08-14	2026-08-16	103	238	3	3
\.


--
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 6, true);


--
-- Name: receptionists_receptionist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.receptionists_receptionist_id_seq', 4, true);


--
-- Name: rooms_room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_room_id_seq', 12, true);


--
-- PostgreSQL database dump complete
--

\unrestrict ZLUFzk9T9XUfuNLwk5T6yvioXaFEp6sw2WCS7c8koupbu4uhNYgaOhB2sQEtlll

