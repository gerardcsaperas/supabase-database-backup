SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict mwp3U3zZ2bCcUv3x3RMtaXgSbtffuSg09v6ZgHfTlUrVpsEOWIxXPQoSTbRolIa

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."User" ("id", "email", "passwordHash", "name", "role", "preferredLocale", "emailVerified", "emailVerifyToken", "passwordResetToken", "passwordResetExpires", "suspended", "createdAt", "updatedAt", "deletedAt", "dateOfBirth", "displayAlias") FROM stdin;
cmpu7a2oe0000l8t232dsj2jq	admin@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Gerard · Admin	ADMIN	ca	2026-05-31 19:56:21.074	\N	\N	\N	f	2026-05-31 19:56:21.134	2026-05-31 19:56:21.134	\N	\N	\N
cmpu7a31d0005l8t2bcdsydsr	calforner@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Roser Vilanova	SELLER	ca	2026-05-31 19:56:21.556	\N	\N	\N	f	2026-05-31 19:56:21.601	2026-05-31 19:56:21.601	\N	\N	\N
cmpu7a3er000al8t2r270jifo	masdeloli@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Pere Gibert	SELLER	ca	2026-05-31 19:56:22.043	\N	\N	\N	f	2026-05-31 19:56:22.083	2026-05-31 19:56:22.083	\N	\N	\N
cmpu7a3rz000fl8t2gpop3t7w	lacadernera@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Jaume Oller	SELLER	ca	2026-05-31 19:56:22.517	\N	\N	\N	f	2026-05-31 19:56:22.559	2026-05-31 19:56:22.559	\N	\N	\N
cmpu7a45l000kl8t250r3mgr9	tramuntana@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Anna Costa	SELLER	ca	2026-05-31 19:56:23.006	\N	\N	\N	f	2026-05-31 19:56:23.049	2026-05-31 19:56:23.049	\N	\N	\N
cmpu7a4jb000pl8t2z99dv0ay	ceramica@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Núria Sentís	SELLER	ca	2026-05-31 19:56:23.49	\N	\N	\N	f	2026-05-31 19:56:23.543	2026-05-31 19:56:23.543	\N	\N	\N
cmpu7a4vf000tl8t2u8t7462k	marta@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Marta Puig	BUYER	ca	2026-05-31 19:56:23.934	\N	\N	\N	f	2026-05-31 19:56:23.984	2026-05-31 19:56:23.984	\N	\N	\N
cmpu7a51x000vl8t233b55u1x	jordi@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Jordi Soler	BUYER	ca	2026-05-31 19:56:24.172	\N	\N	\N	f	2026-05-31 19:56:24.213	2026-05-31 19:56:24.213	\N	\N	\N
cmpu7a58c000xl8t2htaj0e0v	laia@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Laia Ferrer	BUYER	ca	2026-05-31 19:56:24.375	\N	\N	\N	f	2026-05-31 19:56:24.444	2026-05-31 19:56:24.444	\N	\N	\N
cmpu7a5e1000zl8t2wn4lmvys	pol@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Pol Mas	BUYER	ca	2026-05-31 19:56:24.609	\N	\N	\N	f	2026-05-31 19:56:24.649	2026-05-31 19:56:24.649	\N	\N	\N
cmpu7a5kk0011l8t2mjyz3q0t	carla@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Carla Roig	BUYER	ca	2026-05-31 19:56:24.822	\N	\N	\N	f	2026-05-31 19:56:24.884	2026-05-31 19:56:24.884	\N	\N	\N
cmpu7a5qq0013l8t23hutiwoy	marc@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Marc Soldevila	BUYER	ca	2026-05-31 19:56:25.05	\N	\N	\N	f	2026-05-31 19:56:25.106	2026-05-31 19:56:25.106	\N	\N	\N
cmpvchf4w0004yjt2isrskbox	gcsaperas@gmail.com	$2b$12$qRhD7H6/5aerD8Usx.uBJeXKWYOB7c95W0.CEBhDnEmOB5UWf67sW	Gerard Castrelo Saperas	BUYER	ca	\N	f9bb1e8f40fbaef5456d3ea6b6f8210357c0840f3b880b67d3ccafd5b78c0591	\N	\N	f	2026-06-01 15:09:48.128	2026-06-01 15:09:48.128	\N	\N	\N
cmpvp44yn0000l0t23ohg1rsd	gerard@recomposicioncorporal.es	$2b$12$fujMhnYWmA98nVohWXYYp.uOXYG1faiOvDarknojS5sVjKsMElhPi	Gerard Castrelo Saperas	BUYER	ca	2026-06-01 21:04:06.05	\N	\N	\N	f	2026-06-01 21:03:23.423	2026-06-01 21:05:03.684	\N	\N	\N
cmpxq12g7000004la5bg7k22q	josep.f@lamant.cat	$2b$12$stB62CAHFQ6smlPaiMhdI.e31tkRFml7YLE/pzZhCfNeu03/s5ngW	Josep Fortunet	BUYER	ca	\N	538e1a62f2a67e0560fd90f271ddae2587ba9f74941fd3b903589be2864b8eb7	\N	\N	f	2026-06-03 07:04:32.167	2026-06-03 07:04:32.167	\N	\N	\N
cmpy85uvo000004jojvlenfsq	hi@quotavita.com	$2b$12$mzc1pMXCuvQUeehigbcp4OLDZjaFL1Jkjs.1ilTUgrhV9S.93qzWy	Gerard Rosell	BUYER	ca	\N	40f84f6d214d2b374cfec01c6f1ec2efb91d63c3236a33fbe8dbb5a0160d5bfe	\N	\N	f	2026-06-03 15:32:08.724	2026-06-03 15:32:08.724	\N	\N	\N
cmpy87vzd000004l1nekjm03g	gerardrosell@quotavita.com	$2b$12$i2X16BkjpXZHqCOymN1ScO/YaisfOewHJgKDS2qYNoHlnP7RchIoK	Gerard Rosell	SELLER	ca	\N	bf3a4d6c5d63d30082921a876480deb92c60be3a0bbe9ca59c9ed0393495428e	\N	\N	f	2026-06-03 15:33:43.465	2026-06-03 15:33:43.465	\N	\N	\N
cmpyhlf4w000004l4f8q7ljyu	martasgrr@gmail.com	$2b$12$EpPfs0ohZneXPzlJUtrK6.r.hxTATJjC4CozewJOpW6B.C/ophXca	Marta Segarra Corcobado	SELLER	ca	2026-06-03 20:04:10.504	\N	\N	\N	f	2026-06-03 19:56:11.36	2026-06-03 20:04:10.506	\N	\N	\N
cmpyick4e000004jlpb1optdv	esteveayma@gmail.com	$2b$12$F7hOyyG.cNL0xLRD8mDGV.wlB9xUrFXzFYW8uFHz6LxWwQauMl0Sq	Esteve Aymà Tintó	BUYER	ca	\N	6b21deb0994b12d9eb6a725fbe0f9cee6a8fbe2887f7cd3f6195ba5b1cc23bac	\N	\N	f	2026-06-03 20:17:17.534	2026-06-03 20:17:17.534	\N	\N	\N
cmpzapzbe000004ieeqx3bi85	info@closdebasella.com	$2b$12$YEqKY/yqglVE5Eak/ddzOOnlE8qN4n4NeDixb2bzYLlw49./tDox2	Clos de Basella	BUYER	ca	2026-06-04 10:02:35.764	\N	\N	\N	f	2026-06-04 09:31:33.002	2026-06-04 10:02:35.771	\N	\N	\N
cmq0mzkv4000104jrs8isx6ym	alejandrapbanca@gmail.com	$2b$12$kW2MF5wqJbp0Y5l.F2boIus.ki0T.Da/o2E0YL2zFsWhT9SgCfxV.	Alejandra Banca	BUYER	ca	2026-06-05 08:32:40.023	\N	\N	\N	f	2026-06-05 08:02:42.4	2026-06-05 08:32:40.03	\N	\N	\N
cmq0qwn5n000004l1b0zd7m8o	verorio85@gmail.com	$2b$12$2I9Mcmz6uVG0M96V6G312em.Qj8cKoHEA8FSfDnr6xap4pmTNsfC6	Verónica Rio	BUYER	ca	2026-06-05 10:25:02.872	\N	\N	\N	f	2026-06-05 09:52:23.867	2026-06-05 10:25:02.881	\N	\N	\N
cmq24otby000004kzyfgzs554	aaxeel93@hotmail.com	$2b$12$hHqneWcLvY0PkjXLbMakoOVjYnq7.o41F0mw5cQaykqGFJSnXrZSG	Axel Dagá Canudas	BUYER	ca	2026-06-07 10:06:08.054	\N	\N	\N	f	2026-06-06 09:05:59.422	2026-06-07 10:06:08.063	\N	\N	\N
cmq709p73000004l7e26w0dst	david121cc@proton.me	$2b$12$2YdiXRBGVJS4RMyar73Y/OV0QaLeL5HINsVsvfT2k/X9J4lzcORiC	David Camacho	BUYER	ca	2026-06-09 19:02:25.881	\N	\N	\N	f	2026-06-09 19:01:06.639	2026-06-09 19:02:25.887	\N	\N	\N
cmqhlgdbx000004l4rclvdurj	planasc6@gmail.com	$2b$12$aHj/PU/c9GlnC.y4JVlc4OZyWaqdD2.26r..BX7w743bAPkyCkJbG	Carles Planas Cañete	BUYER	ca	\N	ab897b7d7ebb93bcdea3c86bed17a42ee52dbac65939d79687d236b671d0dede	\N	\N	f	2026-06-17 04:51:51.549	2026-06-17 04:51:51.549	\N	\N	\N
cmq723oae000004joi3yp01p0	jordi@racodepensar.com	$2b$12$bIn7kOqjxOyd0itJ5cLOl.R3DfrrpQ4EQjRICU72x9MftUM52rrrq	JORDI TARRAGÓ ROCA	BUYER	ca	2026-06-10 05:44:50.374	\N	\N	\N	f	2026-06-09 19:52:24.758	2026-06-10 05:44:50.382	\N	\N	\N
cmq7pl9hy000004jz8jufbmlo	gonzalezjodarlaura@gmail.com	$2b$12$NjVj4kTURgZEM72SO/fUj.1Ym6X/mjj3OZG/gN2IC1hRGtuV8F2wu	Laura Gonzalez	BUYER	ca	2026-06-10 07:02:18.029	\N	\N	\N	f	2026-06-10 06:49:56.566	2026-06-10 07:02:18.036	\N	\N	\N
cmq8er2lj000004jumh7n0q0j	janimarti@gmail.com	$2b$12$FRW3vMW2Q7oJP8S78HErpOmyZyFAP8YmjogRZxc6P0Xcc6NJZJtHO	Èlia Casanovas Hernàndez	BUYER	ca	2026-06-10 18:35:15.715	\N	\N	\N	f	2026-06-10 18:34:17.959	2026-06-10 18:36:01.927	\N	\N	\N
cmq8cnzjc000004l8utnoryka	albaauledasc@gmail.com	$2b$12$m11Gftn0Mz9ct4CeSjP1refUHmfycsmfRvluC0pb9Z5MKonHAxGra	Alba Auledas Costa	BUYER	ca	2026-06-11 05:48:29.177	\N	\N	\N	f	2026-06-10 17:35:54.792	2026-06-11 05:48:29.186	\N	\N	\N
cmpvaoc350000yjt2w4ur6be3	test@cangerard.cat	$2b$12$J9y1LY3XEOEy8WoYGeBq9uYK.nClRP5yYKxV6W354ejlN0FRPYF1W	Venedor Demo	SELLER	ca	2026-06-12 16:36:59.51	\N	\N	\N	f	2026-06-01 14:19:11.537	2026-06-12 16:36:59.517	\N	\N	\N
cmqii08xh000004ihicxy4c9l	txellguardiola@gmail.com	$2b$12$LIVZH2.4uSKHAk8BeTiYqu8Y28fNQyG3AclMtktqvM0e38h6naPu2	Meritxell Guardiola Sánchez	BUYER	ca	2026-06-17 20:03:21.457	\N	\N	\N	f	2026-06-17 20:03:06.678	2026-06-17 20:03:21.464	\N	1977-02-03 00:00:00	\N
cmqijdsre000404l7qh6x0ynm	mareyfofana@gmail.com	$2b$12$YXZxK7h.iWXiqDsrKBMLw.bdz4pbOioG/Q.UZRd.rX2Lzp1kTUF1a	Marey Fofana	BUYER	ca	2026-06-17 20:42:12.541	\N	\N	\N	f	2026-06-17 20:41:38.522	2026-06-17 20:42:12.548	\N	2000-02-08 00:00:00	\N
cmqijf9r0000004jrses2kfx5	mariona.alau@gmail.com	$2b$12$M4ZM8f/IdXNLT3Zjj6cdlOcwVKfVox5n4M/5MmBejCGEXiFwL1OAm	Mariona Alamego Uceda	BUYER	ca	2026-06-18 05:31:24.905	\N	\N	\N	f	2026-06-17 20:42:47.196	2026-06-18 05:31:24.913	\N	2003-09-20 00:00:00	\N
cmqin06q0000004jpgyabnte8	lauragogi7@gmail.com	$2b$12$u8M0iDqssPFBcRfAZaZ9Z.ihNZgO57B67PUjpFZ1soByDkwhLMW5i	Laura Gonzalez	BUYER	ca	2026-06-18 05:47:02.366	\N	\N	\N	f	2026-06-17 22:23:01.897	2026-06-18 05:47:02.373	\N	1972-10-20 00:00:00	\N
cmqj30ixm000004l8n61y9hs3	mireia.manya@gmail.com	$2b$12$Hq0xxgDa1Ti/Zgo8/VrkTurZVJMpJrBl26JZJvf28uAZiicVuHthO	Mireia Manyà	BUYER	ca	2026-06-18 05:51:25.037	\N	\N	\N	f	2026-06-18 05:51:11.578	2026-06-18 05:51:25.044	\N	2002-06-14 00:00:00	\N
cmqj3idbs000004kyityoqw50	gloria.maspoch@gmail.com	$2b$12$GiiGWDZzA/F75sjBwsWfUuH4f49gAp8DzMj2TmVZe2QGGtTtmkNT.	Gloria	BUYER	ca	\N	86a42794c7a6365b4c0eed9776af9f3c22b44012fdfa54010f11671220130e05	\N	\N	f	2026-06-18 06:05:04.121	2026-06-18 06:05:04.121	\N	1999-02-03 00:00:00	\N
cmqj3pxtw000404kyi6uwc4i3	valerotax@hotmail.com	$2b$12$voTaAT/WQLuNSmkL7GLUaOurHxlNYVo8bha2FaJ0ymwHlYYtwrDyu	Joana Valero Calero	BUYER	ca	\N	202c4fcd193c925eafcf6b08c5029c9a4d4ed7704465fa81d5475cb10cb70058	\N	\N	f	2026-06-18 06:10:57.284	2026-06-18 06:10:57.284	\N	1965-07-01 00:00:00	\N
cmqj6ikde000004jsva6b3jbs	laiaalsina3@gmail.com	$2b$12$LYOMfNt5RBqnazDkaEgrfOGPxGGkNsYrhMfoVpC9Qh9rzV/pbhzc.	laia alsina	BUYER	ca	\N	2e29af3d2fda07aa3258719630b8e8e199effba824d86330583d0b60d5839d2b	\N	\N	f	2026-06-18 07:29:12.098	2026-06-18 07:29:12.098	\N	1981-06-20 00:00:00	\N
cmqj5qomq000004jy2848o1zt	laurabsu@gmail.com	$2b$12$NEKWZh2Z2yYVqWwLyJuH/ekuHBKP3YNn50udWw7fgCFZIj5s2zeC2	Laura Barneda Sureda	BUYER	ca	2026-06-18 07:50:32.049	\N	\N	\N	f	2026-06-18 07:07:31.25	2026-06-18 07:50:32.056	\N	2000-04-11 00:00:00	\N
cmqj83ml3000104ilciuo697p	frankie.1962.8@gmail.com	$2b$12$Cdv0FKIyqT7lQ0QGMFX0Re/oHEFtCDiNCeG8bPJZtfhyWhZ3qiOl2	Francesc Agustinoy Conde	BUYER	ca	2026-06-18 08:13:53.01	\N	\N	\N	f	2026-06-18 08:13:34.359	2026-06-18 08:13:53.013	\N	1962-08-15 00:00:00	\N
cmqj91p6i000504ilstx49t1o	salvador@cardus.cat	$2b$12$36CYiLRf9GsJB8MJzxPOYeAPqi.J.OYMfHdqTG3kt8T50.MByFF6m	Salvador Cardús Ros	BUYER	ca	2026-06-18 08:41:05.544	\N	\N	\N	f	2026-06-18 08:40:04.026	2026-06-18 08:41:05.544	\N	1954-06-12 00:00:00	\N
cmqjazpe4000004kz4d22drzp	embla77@hotmail.com	$2b$12$U5KWSIW9HZkSTThI12R9YOvk8Yytwr7/MI2kzss3HZ1oNdQ.R5WYi	vanesa tudela	BUYER	ca	\N	7cafefbffccad3b46d63d29d50ee76bca08de177b5050d24a98e30e02769c0ab	\N	\N	f	2026-06-18 09:34:30.22	2026-06-18 09:34:30.22	\N	1977-07-18 00:00:00	\N
cmqj9hwcj000004jvioj091n6	santiago.alias@gmail.com	$2b$12$sfcHqeutLRHQlC/TcbswP.EiQKN2HT/Lqjb1XAlHUbsHBTsUr3nky	Santi Alias Luis	BUYER	ca	2026-06-18 10:33:52.263	\N	\N	\N	f	2026-06-18 08:52:39.811	2026-06-18 10:33:52.271	\N	1967-07-11 00:00:00	\N
cmqjdtsco000004l78t08zf7l	chicovip@me.com	$2b$12$KlnAyouNDIipDWLuJLw69eEWK.x3ot.potMHOf.f77nEcFYbrqWQq	Enric Castillo	BUYER	ca	\N	38126d323f6e0ec9881c4706ac8b0941871f22bdb0d5a65796edbfc0b5ae268c	\N	\N	f	2026-06-18 10:53:52.968	2026-06-18 10:53:52.968	\N	1974-12-21 00:00:00	\N
cmqjg62po000004jxmzn6rskx	fracasopolar@gmail.com	$2b$12$rvQpUIafGdXkJjhYqDm.leqKM9/wzpBUZ7j.jwtqfXa1XwW0LeG7.	Jorge Serrate lamiel	BUYER	ca	\N	2199ecb158697f68aaeecc0560fe5a161fed5950a4be5bf3ba2043da9734b248	\N	\N	f	2026-06-18 11:59:25.5	2026-06-18 11:59:25.5	\N	1971-08-07 00:00:00	\N
cmqjgfuxy000804jl2m66wf36	montseka2@gmail.com	$2b$12$iUPdh.lWh7X6L4jIqizWH.YMQQJbwpayGRX22tkFanxn/40aSUt0e	Montserrat Andreu Domingo	BUYER	ca	2026-06-18 12:20:12.496	\N	\N	\N	f	2026-06-18 12:07:01.99	2026-06-18 12:20:12.504	\N	1974-05-19 00:00:00	\N
cmqjh2bty000004jvr8cham0u	francescbalcellsaleu@gmail.com	$2b$12$OBLqGFnfmu0vkU44wGjPDOaAzBTaMkEtIvLLZBlnTFQl5zxt7mhAi	Francesc Balcells Aleu	BUYER	ca	2026-06-18 12:25:13.943	\N	\N	\N	f	2026-06-18 12:24:30.31	2026-06-18 12:25:13.965	\N	1960-09-23 00:00:00	\N
cmqjhbbgi000004lb371296dq	estrellayluna5@hotmail.es	$2b$12$Pb8OlxpisqK5qfXc8jwUc.S6cYcsSV1jR/D2P9lZeeGZ6LpKuwY02	Alba A	BUYER	ca	\N	ad085458f2097d976511f7d2032732911101c31ebc704ba435c81639069e88f2	\N	\N	f	2026-06-18 12:31:29.731	2026-06-18 12:31:29.731	\N	2000-12-05 00:00:00	\N
cmqjjkqza000004l1z6ddmz1w	plopezpr11@gmail.com	$2b$12$/ni2vfVNULtEkOSKiulFU.PdpuG1TZqsR2UQmMKJgv3Om9DsH55Ae	PERE LOPEZ PRADO	BUYER	ca	2026-06-18 13:48:00.786	\N	\N	\N	f	2026-06-18 13:34:48.982	2026-06-18 13:48:00.801	\N	1977-12-30 00:00:00	\N
cmqjf6xyq000004jl4zdta7ss	martastmary@gmail.com	$2b$12$UMEb4OOdM1UQiWykWoOlPuzX5KpFjrepxXIdCtlA5owJ32pgV3YlK	Marta Santamaria	BUYER	ca	2026-06-18 13:55:52.054	\N	\N	\N	f	2026-06-18 11:32:06.387	2026-06-18 13:55:52.058	\N	1961-12-20 00:00:00	\N
cmqjkjjom000004jrztfykx5l	esanuyriera@gmail.com	$2b$12$6SWwolua7EyiFprW1ToV3emtcfywUDPKFCYvxDK12GBO03IHEGIue	Eduard	BUYER	ca	2026-06-18 14:02:27.397	\N	\N	\N	f	2026-06-18 14:01:52.486	2026-06-18 14:02:27.4	\N	1982-04-08 00:00:00	\N
cmqjlj63u000004l4xr2w5bko	weskins@gmail.com	$2b$12$XG0S5q2mEH28AH.vJ7KJ5.HnegxlG/yr5QC094tRMOTiLk5aoEGKK	Miquel Amorós Ortiz	BUYER	ca	\N	ddad05b89d5422fbb4c2fed26e8328432fe973091dc039d33449e11769ed24d0	\N	\N	f	2026-06-18 14:29:34.506	2026-06-18 14:29:34.506	\N	1956-04-13 00:00:00	\N
cmqjlqvqj000004jpj2qde3xm	nadalfarmacia2@gmail.com	$2b$12$MXhNW79IRguIodPKHoe3EejJlxC6aJ8su7dCj4/ZLTIPMSYyg.Rbu	Lluis Nadal	BUYER	ca	2026-06-18 14:36:18.701	\N	\N	\N	f	2026-06-18 14:35:34.315	2026-06-18 14:36:18.704	\N	1961-10-10 00:00:00	\N
cmqjlvezk000404jpi582pjka	noctilucass@gmail.com	$2b$12$1EsdWrbscUSKfr.0QHBPQO.u.eJ5MdwG2dNQsli.L3YUxqNF1EoYq	Sònia D. Boix	BUYER	ca	\N	976399e1e89ca0f1b2f2ec58cc4017ec3be90e37988c582f5ec8272dadd7f91f	\N	\N	f	2026-06-18 14:39:05.888	2026-06-18 14:39:05.888	\N	1970-12-18 00:00:00	\N
cmqjpf8x1000004jv5mfwi8ci	lcg1975.lcg@gmail.com	$2b$12$Voi9KBzczZWXVVx13pA6vO8SpN8Xoiv/vxQZGjhPyHwaPccc3Tk7u	Laura Cerrato Gallego	BUYER	ca	\N	5306408e880a7cea6d2436aea10e6a31fb4f09e0950db3333e9d78eaea5c7641	\N	\N	f	2026-06-18 16:18:29.99	2026-06-18 16:18:29.99	\N	1975-06-12 00:00:00	\N
cmqjo4ppb000004l7jzqlb2o1	joan.j.tortosa@gmail.com	$2b$12$78jBwSuKoxIoKzcpI.bcLuZnB6jmPNI9Dj.zfosIjZGpmiU/6hqf6	Joan Tortosa Pons	BUYER	ca	2026-06-18 16:20:00.325	\N	\N	\N	f	2026-06-18 15:42:18.911	2026-06-18 16:20:00.332	\N	1961-06-14 00:00:00	\N
cmqjply8e000004js8i5o3mhw	nilmas.nm@gmail.com	$2b$12$.R48YaCrp8F0B6dnO.jP4./i0QyYyB2byjE0VZ0DMVUAyHrRpJaG.	Nil Mas Gallemí	BUYER	ca	2026-06-18 16:31:05.771	\N	\N	\N	f	2026-06-18 16:23:42.734	2026-06-18 16:31:05.774	\N	2000-08-29 00:00:00	\N
cmqjrdhpd000004jv6cgs9aw9	mteresa.cufi@gmail.com	$2b$12$OmoF.QY5hBGfRb.ZgrTsyePU.eszmZmypsXzc.D.f/oiFvz59Zbga	Teresa Cufi	BUYER	ca	\N	9a702bf09a27e189edad8a46edface13e68e49ac6dc40d284c054631504ee0fb	\N	\N	f	2026-06-18 17:13:07.298	2026-06-18 17:13:07.298	\N	1963-08-29 00:00:00	\N
cmqjrvg7k000004i5sxnpv9r2	casrosjo@gmail.com	$2b$12$okXV4.85OATRiQyUoxDyPOEKmVmrv4CAWlQoCiB0tx8hlz1ilvdZG	Josep Ros Cas	BUYER	ca	2026-06-18 17:28:31.023	\N	\N	\N	f	2026-06-18 17:27:05.168	2026-06-18 17:28:31.03	\N	1960-03-21 00:00:00	\N
cmqjwpk16000004kydtgd3hxq	jollsu.jls@gmail.com	$2b$12$l9BJ0Lk0NeYGhu.FhSjSt.aISOoAHDOTDYgGU44VYd0aeQnF3M/bi	Jordi Lleo Subirats	BUYER	ca	\N	627be33286c60054165ff9974cf0ef49b83b746f87e83cca694e7ae49aa09ac9	\N	\N	f	2026-06-18 19:42:28.266	2026-06-18 19:42:28.266	\N	1971-10-25 00:00:00	\N
cmqjyvzcd000804kyqmjycah7	marcmarull@gmail.com	$2b$12$86DBXs0sVCTfazZD2E6wmODICd6kBzT4DyUixGvWNVi9YHP65mQkG	Marc Marull	BUYER	ca	2026-06-18 20:46:26.554	\N	\N	\N	f	2026-06-18 20:43:27.277	2026-06-18 20:46:26.561	\N	1974-07-12 00:00:00	\N
cmqjz8y60000004jjtacmeyo2	peremr264@proton.me	$2b$12$uc2uDHnTNSG7CRXfn5Y1F.1z0Szy9D2eoo9z4NMc5nPfKq8CuoVTG	Pere Martinez Rodriguez	BUYER	ca	2026-06-18 20:53:50.92	\N	\N	\N	f	2026-06-18 20:53:32.281	2026-06-18 20:53:50.927	\N	1974-02-13 00:00:00	\N
cmqjzntrx000404jjp08l8xyb	nuria.1967@hotmail.com	$2b$12$aPNy2N.Dy3O82/lZqEIPf.cFyuDRMrSjriWRE9O.zaEixzEjxhw3a	Núria Mañe Sal	BUYER	ca	\N	72e8ac10fe7092f45ec12b90667149caa97602179d5ba96667c73f3498fd5a02	\N	\N	f	2026-06-18 21:05:06.429	2026-06-18 21:05:06.429	\N	2008-06-18 00:00:00	\N
cmqjzr34s000004jpt47ocl2p	jordimedi@protonmail.com	$2b$12$/IGF2p3Zi1VNCJ1D9hECo.xPFRS8A6bmcpzOLDtFXNjX9qW4YePGS	Jordi Medina Sala	BUYER	ca	2026-06-18 21:08:10.265	\N	\N	\N	f	2026-06-18 21:07:38.525	2026-06-18 21:08:10.268	\N	1963-07-11 00:00:00	\N
cmqk0s2f8000004l5ibsuitun	edelweis68@hotmail.com	$2b$12$pFqakLuuWxbxuCsGm1QDVefmXxQ7oZEhkKy33OpilvODweQR6Yg0q	M. Angeles Puertolas Acin	BUYER	ca	2026-06-19 06:58:20.438	\N	\N	\N	f	2026-06-18 21:36:23.876	2026-06-19 06:58:20.444	\N	1968-10-08 00:00:00	\N
cmqjmz0ba000004l4133jkklx	annabelengs@gmail.com	$2b$12$j0O4lxWAt1IYX7pluNh3suhPRSgxciVGAUVLSuhd53ydXVLJbIFa.	Anna Garcia	BUYER	ca	2026-06-19 09:23:54.713	\N	\N	\N	f	2026-06-18 15:09:53.11	2026-06-19 09:23:54.72	\N	1971-04-08 00:00:00	\N
cmqjxwvlq000404kybs366h86	jsgxaume@gmail.com	$2b$12$kpDUmyIo4su3tYjzBMvzWOYe/WVKT92VFRV1Psh0Qhw5/rhNJONbK	Jaume Saltó Garrabé	BUYER	ca	2026-06-19 13:57:54.643	\N	\N	\N	f	2026-06-18 20:16:09.47	2026-06-19 13:57:54.656	\N	1962-10-04 00:00:00	\N
cmqjhardd000004ihc5hi51rr	raul.sa.me@icloud.com	$2b$12$zszmBnadjt7/FIm6PpsEjuIa//i/Us4FeZTMXOHgQ6AmFsVchhGOu	Raul Santamaria Menen	BUYER	ca	2026-06-19 15:51:07.986	\N	\N	\N	f	2026-06-18 12:31:03.697	2026-06-19 15:51:07.996	\N	1988-06-06 00:00:00	\N
cmqk5plq5000004l044h0kz47	ecofamilysensetoxics@gmail.com	$2b$12$ag.fknsUdcA8VMBN3iczY.9arrOXxVt1.M07Td6gGGtCXq/aHe9me	Xènia Josa Ferrer	BUYER	ca	\N	c8478ba9d9210347121aa5fb65d39ec65dd4746d5ab8b1a74bbb231f2c43f471	\N	\N	f	2026-06-18 23:54:27.005	2026-06-18 23:54:27.005	\N	1974-10-22 00:00:00	\N
cmqkcgnkq000004l1732k7k1h	oriolpita@gmail.com	$2b$12$x8r4xXd/RvCoDHGJriwageyXAwMWXZPo3PMEPoNo5bJ/evOcRPRUS	Oriol Pita Ortin	BUYER	ca	2026-06-19 06:24:57.205	\N	\N	\N	f	2026-06-19 03:03:26.81	2026-06-19 06:24:57.214	\N	1989-10-11 00:00:00	\N
cmqjg5cry000404jlna8wgvc7	pradesmteresa561@gmail.com	$2b$12$80obH9oGP4gVljDbmRkpROap1Qcf0VqwbXYSAOhYVgx/ODDQle6iy	m teresa prades	BUYER	ca	2026-06-19 06:49:55.82	\N	\N	\N	f	2026-06-18 11:58:51.886	2026-06-19 06:49:55.827	\N	1966-06-11 00:00:00	\N
cmqkyoh0u000004l1w2wnx1fq	ngrane61@gmail.com	$2b$12$jBm/nQLr9WNCPEa4RmBXMec.0c01GNgSy3DbtouzoDrRPZbbqWW1m	Núria Grané Alsina	BUYER	ca	2026-06-19 13:36:36.478	\N	\N	\N	f	2026-06-19 13:25:23.118	2026-06-19 13:36:36.482	\N	1961-03-11 00:00:00	\N
cmql0skeh000004l1uy8ngvre	eugenia.revilla@gmail.com	$2b$12$RPz9ofvWKdu1ZEchPM3Jb.L6GqJCRPJAu5miSNjotEvSs2a23loS2	Eugènia Revilla Esteve	BUYER	ca	\N	b028ff86f866f777c2f75d44f2fcfdc0a0d6112b37dbb9c6dd2d4de11aba8a7e	\N	\N	f	2026-06-19 14:24:33.353	2026-06-19 14:24:33.353	\N	1972-10-19 00:00:00	\N
cmqkraagz000004l1vp6a90nk	antoniolle02@gmail.com	$2b$12$XkO.cjfRz77SfCoLsFaRY.688inpiZ9QjvccaYVhKkCKAtQGkUm6a	Antoni Olle	BUYER	ca	2026-06-19 15:37:53.786	\N	\N	\N	f	2026-06-19 09:58:24.131	2026-06-19 15:37:53.792	\N	1946-01-02 00:00:00	\N
cmql3clua000404lb17o23afm	jordivilavila@movistar.es	$2b$12$atJpX8MlOlUt9m/MHDA5hOcJ3jvr2EzhVUP4GZVskGyt7elXLkRMq	Jordi Vila Vila	BUYER	ca	2026-06-19 16:00:12.193	\N	\N	\N	f	2026-06-19 15:36:07.57	2026-06-19 16:00:12.204	\N	1962-01-06 00:00:00	\N
cmql8fxqj000004lbpnll7hbv	carles@merino.cat	$2b$12$xGEihNVy5y58cvFlcfDE3e54dAOJ7YpsOH7pSdq3GkE2hEehoEu3W	Carles Merino	BUYER	ca	2026-06-20 06:29:57.664	\N	\N	\N	f	2026-06-19 17:58:41.035	2026-06-20 06:29:57.674	\N	1967-07-25 00:00:00	\N
cmql303bs000004lby838azbl	joanriba@msn.com	$2b$12$W8/RmYtaNfYzTdtOyTpuGOP6AUkp9sNgkKIWvZbE0mv5UV3qrRSOm	Joan Riba	BUYER	ca	2026-06-20 07:45:13.295	\N	\N	\N	f	2026-06-19 15:26:23.704	2026-06-20 07:45:13.302	\N	2008-06-19 00:00:00	\N
cmqmf61lt000004ju3al1fnzd	rodriguezgine@hotmail.com	$2b$12$g5ZkFmrcrrrMwFWjxO9H/uHkrCY.dgBdTsJacTL7xJaUaxZ/5xnu6	Jesús Rodríguez Giné	BUYER	ca	\N	610b8f2f5e5530ca7981132dd871b9f3b4df5575f462124f9f9c3ce50d8a9bae	\N	\N	f	2026-06-20 13:54:42.977	2026-06-20 13:54:42.977	\N	1960-11-08 00:00:00	\N
cmqmi6ra1000004l2mw67823n	franqui1014@gmail.com	$2b$12$OJZyiQRzVawB20D0oyDeH.02cSyHfsHyhTgTY8sweD1Rnb31Yn6oq	Albert Costa	BUYER	ca	2026-06-20 15:19:32.869	\N	\N	\N	f	2026-06-20 15:19:15.097	2026-06-20 15:19:32.876	\N	1978-12-21 00:00:00	\N
cmqmvftz6000304jxm441kpeg	info@cervesalovilot.com	$2b$12$JvyddJ3Ly748.CAgqfrADO15LKhjAALZ4Xb9ZO6835vOxNz4dEeji	Quiònia Pujol Sabaté	SELLER	ca	2026-06-20 21:30:13.472	\N	\N	\N	f	2026-06-20 21:30:13.506	2026-06-20 21:30:13.506	\N	\N	\N
cmqmxx8r8000004lgn5feflb6	raulescamot@gmail.com	$2b$12$h/rSoTVavTCQkisNYwVcguoP3vkT6KBwovCaICph8yFHfWCWJSJOC	Raül Roch	BUYER	ca	\N	92bab84c04d271896138078485be640d42f5b57d6f6f066c81513430a18367b8	\N	\N	f	2026-06-20 22:39:45.045	2026-06-20 22:39:45.045	\N	1980-04-27 00:00:00	\N
cmqij6psc000004l7tk29jibo	degomedinasoto12@gmail.com	$2b$12$xj6TW04LNuJiK37s5Gwy3eE6RHk.D8h9f2bSKwu0DPB5/V8W8kKdO	Dego M	BUYER	ca	2026-06-21 00:16:47.135	\N	\N	\N	f	2026-06-17 20:36:08.076	2026-06-21 00:16:47.142	\N	2000-04-19 00:00:00	\N
cmqlce6df000004l8z67gbcvj	espetri64@hotmail.com	$2b$12$dit9RL/nO9byhrG0ao9U3uK.KwY.Q8oA1TkJqdgofKQxZ.a0GPgAe	Trinidad Espejo	BUYER	ca	2026-06-22 16:14:46.562	\N	\N	\N	f	2026-06-19 19:49:17.379	2026-06-22 16:14:46.575	\N	1964-04-12 00:00:00	\N
cmqna76iv000004jxqktkxab5	mcarmegirart@gmail.com	$2b$12$mFUmFO6DM640nYkBSRgr0.TrOKs.VVm/UiTV.w56jhgr9udMEMNNG	M. Carme Girart	BUYER	ca	2026-06-21 04:24:32.988	\N	\N	\N	f	2026-06-21 04:23:24.103	2026-06-21 04:24:32.997	\N	1968-11-21 00:00:00	MCarmeG.
cmqnkd6fu000004jvb313k6kh	pilartrubat@hotmail.com	$2b$12$QtsJYtpLY8SD1uF2O038iujcmOKFlB86jJuzd43E6EJ0j5cfIrdQS	Pilar Trubat Alltarriba	BUYER	ca	\N	ea9e3559e1617424f011ef96bb84878a189b3c72c0691b54839f1257a4281535	\N	\N	f	2026-06-21 09:08:00.09	2026-06-21 09:08:00.09	\N	2008-06-14 00:00:00	\N
cmqo0vd2p000004l4gh8c8yxn	lauragine@gmail.com	$2b$12$7OTQcWyq/ZdzvJjyhRcW6eJKBywpNn62B4VZnA4y.w22oc3ntTRn6	Laura Giné Prades	BUYER	ca	2026-06-21 16:50:15.563	\N	\N	\N	f	2026-06-21 16:50:02.353	2026-06-21 16:50:44.403	\N	1979-07-03 00:00:00	Lau*
cmqnojisi000004l4vyamzrfz	isidre.sala@gmail.com	$2b$12$p4T6gz7o3lxlxxQkKz/y1eDK8lO/oluOu.6atF7WCmpLhc1XmvHEW	Isidre sala Elías	BUYER	ca	2026-06-22 08:28:54.159	\N	\N	\N	f	2026-06-21 11:04:54.498	2026-06-22 08:28:54.166	\N	1972-03-03 00:00:00	\N
cmqpmawzl000004jmlne1m13l	sergisegarra2@gmail.com	$2b$12$TCh/c3.1hjbtfRaqetURJ.odj2fI.YO6tu3Wd7Yt9Q/uVJocrm2JW	Sergi Segarra	BUYER	ca	2026-06-22 19:38:25.758	\N	\N	\N	f	2026-06-22 19:37:46.113	2026-06-22 19:38:25.765	\N	2007-11-23 00:00:00	\N
\.


--
-- Data for Name: Address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Address" ("id", "userId", "recipient", "street", "city", "postalCode", "province", "country", "phone", "isDefault", "createdAt", "updatedAt") FROM stdin;
cmpvcikg10007yjt26wuequhw	cmpu7a2oe0000l8t232dsj2jq	test	test	test	08520	test	ES	667717567	t	2026-06-01 15:10:41.665	2026-06-01 15:10:41.665
cmq8ewu3z000004le4z00vp0p	cmq8er2lj000004jumh7n0q0j	Èlia Casanovas Hernàndez	C/ Gran Via de Lluís Companys, 204 3r 2a	Premià de Mar	08330	El Maresme	ES	618038622	t	2026-06-10 18:38:46.895	2026-06-10 18:38:46.895
cmqb5nd1v000004lbb9756ccm	cmpvaoc350000yjt2w4ur6be3	Test CanGerard	c/ Test cangerard.cat	LES FRANQUESES DEL VALLES	08520	Barcelona	ES	667717567	t	2026-06-12 16:42:46.868	2026-06-12 16:42:46.868
\.


--
-- Data for Name: SellerProfile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."SellerProfile" ("id", "userId", "storeName", "slug", "bioCa", "bioEs", "bioEn", "logoUrl", "region", "status", "rejectionReason", "commissionRate", "stripeAccountId", "stripeChargesEnabled", "stripePayoutsEnabled", "stripeDetailsSubmitted", "stripeOnboardingComplete", "approvedAt", "createdAt", "updatedAt", "originCity", "originCountry", "originPostalCode", "originProvince", "originStreet", "fiscalAddressLine1", "fiscalAddressLine2", "fiscalCity", "fiscalCountry", "fiscalPostalCode", "fiscalProvince", "fiscalResidenceCountry", "holdedContactId", "legalName", "payoutIban", "taxId", "vatExemptionLegalBasis", "vatRegime", "phone", "fiscalEmail", "saleInvoiceNextNumber", "saleInvoiceSeriesPrefix", "rgseaa", "sellerTermsAcceptedAt", "sellerTermsVersion") FROM stdin;
cmpu7a2qp0002l8t2jom93w15	cmpu7a2oe0000l8t232dsj2jq	Demo CanGerard	demo-cangerard	Botiga de demostració del personal de CanGerard. Productes amb variants per provar el flux de compra.	Tienda de demostración del personal de CanGerard. Productos con variantes para probar el flujo de compra.	A demo storefront run by the CanGerard team. Products carry variants so the buying flow can be exercised end-to-end.	\N	Barcelonès	APPROVED	\N	10.00	\N	f	f	f	f	2026-05-31 19:56:21.074	2026-05-31 19:56:21.134	2026-05-31 19:56:21.134	Barcelona	ES	08036	Barcelonès	Carrer de Mallorca, 100	Carrer de Mallorca, 100	\N	Barcelona	ES	08036	Barcelonès	ES	\N	CanGerard Demo SL	\N	A12345674	\N	GENERAL	+34 932 000 100	admin@cangerard.cat	1	CG-A12345674	\N	\N	\N
cmpu7a3h7000cl8t27muo350k	cmpu7a3er000al8t2r270jifo	Mas de l'Oli	mas-de-l-oli	Mas familiar de Les Garrigues: oli d'oliva verge extra, vins, mel i productes ecològics de proximitat.	Mas familiar de Les Garrigues: aceite de oliva virgen extra, vinos, miel y productos ecológicos de proximidad.	A family farm in Les Garrigues: extra-virgin olive oil, wines, honey and local organic products.	\N	Les Garrigues	APPROVED	\N	10.00	\N	f	f	f	f	2026-05-31 19:56:22.043	2026-05-31 19:56:22.083	2026-05-31 19:56:22.083	Les Borges Blanques	ES	25400	Les Garrigues	Camí de l'Oli, 4	Camí de l'Oli, 4	\N	Les Borges Blanques	ES	25400	Les Garrigues	ES	\N	Pere Gibert Sentís	\N	12345678Z	\N	GENERAL	+34 973 142 200	masdeloli@cangerard.cat	1	CG-12345678Z	\N	\N	\N
cmpu7a3uq000hl8t2izdspdci	cmpu7a3rz000fl8t2gpop3t7w	La Cadernera	la-cadernera	Llibreria i editorial independent: literatura catalana, llibres infantils, disseny, regals i papereria.	Librería y editorial independiente: literatura catalana, libros infantiles, diseño, regalos y papelería.	An independent bookshop and publisher: Catalan literature, children’s books, design, gifts and stationery.	\N	Barcelonès	APPROVED	\N	10.00	\N	f	f	f	f	2026-05-31 19:56:22.517	2026-05-31 19:56:22.559	2026-05-31 19:56:22.559	Barcelona	ES	08002	Barcelonès	Carrer dels Llibreters, 7	Carrer dels Llibreters, 7	\N	Barcelona	ES	08002	Barcelonès	ES	\N	Edicions La Cadernera SL	\N	B62345673	\N	GENERAL	+34 933 015 588	lacadernera@cangerard.cat	1	CG-B62345673	\N	\N	\N
cmpu7a47u000ml8t2rpsunk86	cmpu7a45l000kl8t250r3mgr9	Tramuntana	tramuntana	Taller de disseny i artesania de l'Empordà: ceràmica, tèxtil de la llar, espardenyes i material de muntanya.	Taller de diseño y artesanía del Empordà: cerámica, textil del hogar, alpargatas y material de montaña.	An Empordà design and craft workshop: pottery, home textiles, espadrilles and mountain gear.	\N	Alt Empordà	APPROVED	\N	10.00	\N	f	f	f	f	2026-05-31 19:56:23.006	2026-05-31 19:56:23.049	2026-05-31 19:56:23.049	Figueres	ES	17600	Alt Empordà	Carrer de la Tramuntana, 23	Carrer de la Tramuntana, 23	\N	Figueres	ES	17600	Alt Empordà	ES	\N	Tramuntana Disseny SL	\N	B98765431	\N	GENERAL	+34 972 503 144	tramuntana@cangerard.cat	1	CG-B98765431	\N	\N	\N
cmpu7a4lj000rl8t22nheyztj	cmpu7a4jb000pl8t2z99dv0ay	Ceràmica Montsant	ceramica-montsant	Ceràmica feta a mà al Priorat: terrissa, plats i gerres amb esmalts tradicionals.	Cerámica hecha a mano en el Priorat: alfarería, platos y jarras con esmaltes tradicionales.	Handmade pottery from Priorat: earthenware, plates and jugs with traditional glazes.	\N	Priorat	PENDING	\N	10.00	\N	f	f	f	f	\N	2026-05-31 19:56:23.543	2026-05-31 19:56:23.543	Falset	ES	43730	Priorat	Carrer del Forn, 9	\N	\N	\N	ES	\N	\N	ES	\N	\N	\N	\N	\N	GENERAL	\N	\N	1	\N	\N	\N	\N
cmqmvftzu000504jxy963ldl9	cmqmvftz6000304jxm441kpeg	Granja Cervesera Lo Vilot	granja-cervesera-lo-vilot	A la granja cervesera Lo Vilot fem cervesa artesana ecològica de granja, amb ingredients ecològics que produïm nosaltres mateixes, temps i passió.\r\n\r\nCada ampolla és una petita obra d’art que garanteix la seva qualitat, terrer, sabor i autenticitat.\r\n\r\nSi vols una cervesa honesta, amb caràcter i amb ingredients d’aquí, tria Lo Vilot.	A la granja cervesera Lo Vilot fem cervesa artesana ecològica de granja, amb ingredients ecològics que produïm nosaltres mateixes, temps i passió.\r\n\r\nCada ampolla és una petita obra d’art que garanteix la seva qualitat, terrer, sabor i autenticitat.\r\n\r\nSi vols una cervesa honesta, amb caràcter i amb ingredients d’aquí, tria Lo Vilot.	A la granja cervesera Lo Vilot fem cervesa artesana ecològica de granja, amb ingredients ecològics que produïm nosaltres mateixes, temps i passió.\r\n\r\nCada ampolla és una petita obra d’art que garanteix la seva qualitat, terrer, sabor i autenticitat.\r\n\r\nSi vols una cervesa honesta, amb caràcter i amb ingredients d’aquí, tria Lo Vilot.	\N	Lleida	PENDING	\N	10.00	\N	f	f	f	f	\N	2026-06-20 21:30:13.506	2026-06-20 21:30:13.506	\N	ES	\N	\N	\N	\N	\N	\N	ES	\N	\N	ES	\N	\N	\N	\N	\N	GENERAL	635409999	\N	1	\N	\N	\N	\N
cmpvaoc650002yjt2cim935ix	cmpvaoc350000yjt2w4ur6be3	Test	test	test	test	test	\N	Test	APPROVED	\N	10.00	\N	f	f	f	f	2026-06-01 15:06:24.796	2026-06-01 14:19:11.537	2026-06-01 15:06:24.8	\N	ES	\N	\N	\N	c/ Test 1-3	\N	Granollers	ES	08502	Barcelona	ES	6a1d9540ee7a73ecb103debf	TEST, S.L.	\N	47920372X	\N	GENERAL	667717567	test@cangerard.cat	1	CG-B1213141516	\N	\N	\N
cmpy87w4o000204l1twrbo7ye	cmpy87vzd000004l1nekjm03g	Quota Vita	quota-vita	Whey protein amb gustos locals de crema catalana i orxata	Whey protein amb gustos locals de crema catalana i orxata	Whey protein amb gustos locals de crema catalana i orxata	\N	Premià de Mar	PENDING	\N	10.00	\N	f	f	f	f	\N	2026-06-03 15:33:43.465	2026-06-03 15:33:43.465	\N	ES	\N	\N	\N	\N	\N	\N	ES	\N	\N	ES	\N	\N	\N	\N	\N	GENERAL	683338038	\N	1	\N	\N	\N	\N
cmpyhlfag000204l428x8he27	cmpyhlf4w000004l4f8q7ljyu	Marta Segarra	marta-segarra	Les Franqueses del Vallès Les Franqueses del Vallès Les Franqueses del Vallès	Les Franqueses del Vallès Les Franqueses del Vallès Les Franqueses del Vallès	Les Franqueses del Vallès Les Franqueses del Vallès Les Franqueses del Vallès	\N	Les Franqueses del Vallès	PENDING	\N	10.00	\N	f	f	f	f	\N	2026-06-03 19:56:11.36	2026-06-03 19:56:11.36	\N	ES	\N	\N	\N	\N	\N	\N	ES	\N	\N	ES	\N	\N	\N	\N	\N	GENERAL	667717567	\N	1	\N	\N	\N	\N
cmpu7a33m0007l8t2zwqbkwf7	cmpu7a31d0005l8t2bcdsydsr	Cal Forner	cal-forner	Forn de pa i botiga de gust del Bages: embotits, formatges, torrons, conserves i caves de tota la vida.	Horno de pan y tienda gourmet del Bages: embutidos, quesos, turrones, conservas y cavas de toda la vida.	A bakery and gourmet shop from Bages: cured meats, cheeses, nougat, preserves and cava.	\N	Bages	APPROVED	\N	10.00	\N	f	f	f	f	2026-05-31 19:56:21.556	2026-05-31 19:56:21.601	2026-06-12 19:32:36.576	Manresa	ES	08241	Bages	Carrer del Born, 12	Carrer del Born, 12	\N	Manresa	ES	08241	Bages	ES	\N	Cal Forner SL	\N	B12345674	\N	GENERAL	+34 938 720 011	calforner@cangerard.cat	4	CG-B12345674	\N	\N	\N
\.


--
-- Data for Name: BillingMandate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."BillingMandate" ("id", "sellerId", "documentVersion", "documentText", "signedAt", "signerUserId", "signerName", "signerIp", "acceptanceMethod", "revokedAt", "createdAt", "updatedAt") FROM stdin;
cmpu7a2ve0003l8t2cjdbmzkz	cmpu7a2qp0002l8t2jom93w15	2026-05-placeholder-v1	[PENDIENTE_TEXTO_LEGAL_ASESORIA] — acord signat (seed).	2026-05-31 19:56:21.384	cmpu7a2oe0000l8t232dsj2jq	Gerard · Admin	\N	PLATFORM_CLICK	\N	2026-05-31 19:56:21.386	2026-05-31 19:56:21.386
cmpu7a38g0008l8t2df52wymf	cmpu7a33m0007l8t2zwqbkwf7	2026-05-placeholder-v1	[PENDIENTE_TEXTO_LEGAL_ASESORIA] — acord signat (seed).	2026-05-31 19:56:21.855	cmpu7a31d0005l8t2bcdsydsr	Roser Vilanova	\N	PLATFORM_CLICK	\N	2026-05-31 19:56:21.856	2026-05-31 19:56:21.856
cmpu7a3lu000dl8t2edbjry9h	cmpu7a3h7000cl8t27muo350k	2026-05-placeholder-v1	[PENDIENTE_TEXTO_LEGAL_ASESORIA] — acord signat (seed).	2026-05-31 19:56:22.337	cmpu7a3er000al8t2r270jifo	Pere Gibert	\N	PLATFORM_CLICK	\N	2026-05-31 19:56:22.338	2026-05-31 19:56:22.338
cmpu7a3zd000il8t2pu36x7au	cmpu7a3uq000hl8t2izdspdci	2026-05-placeholder-v1	[PENDIENTE_TEXTO_LEGAL_ASESORIA] — acord signat (seed).	2026-05-31 19:56:22.824	cmpu7a3rz000fl8t2gpop3t7w	Jaume Oller	\N	PLATFORM_CLICK	\N	2026-05-31 19:56:22.825	2026-05-31 19:56:22.825
cmpu7a4da000nl8t2ejxyo6d2	cmpu7a47u000ml8t2rpsunk86	2026-05-placeholder-v1	[PENDIENTE_TEXTO_LEGAL_ASESORIA] — acord signat (seed).	2026-05-31 19:56:23.325	cmpu7a45l000kl8t250r3mgr9	Anna Costa	\N	PLATFORM_CLICK	\N	2026-05-31 19:56:23.326	2026-05-31 19:56:23.326
cmpvaqkjs0003yjt26dj263qj	cmpvaoc650002yjt2cim935ix	2026-05-placeholder-v1	ACORD DE FACTURACIÓ PER COMPTE DE TERCER\n\n[PENDIENTE_TEXTO_LEGAL_ASESORIA]\n\nAquest és un text de marcador de posició. La redacció vinculant l'ha\nd'aportar l'assessoria fiscal abans de la posada en producció.\n\nEn acceptar aquest acord, TEST, S.L. (el "Venedor") autoritza expressament\ncangerard.cat a expedir factures en nom i per compte seu, conforme a\nl'article 5 del Reial decret 1619/2012.\n\nAquest mandat queda limitat EXCLUSIVAMENT a les operacions realitzades a\ntravés de la plataforma cangerard.cat. El Venedor segueix gestionant pel seu\ncompte la resta de la seva facturació.\n\nL'acceptació de les factures expedides s'entén realitzada de forma tàcita a\ntravés de la plataforma, sens perjudici del dret del Venedor a rebutjar-les\npels mitjans habilitats. La responsabilitat fiscal última de les operacions\ncorrespon al Venedor; la plataforma actua com a operador material.\n\nAquest acord s'ha de signar amb caràcter previ a qualsevol venda.	2026-06-01 14:20:55.813	cmpvaoc350000yjt2w4ur6be3	Test Test	::1	PLATFORM_CLICK	\N	2026-06-01 14:20:55.816	2026-06-01 14:20:55.816
\.


--
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Category" ("id", "parentId", "nameCa", "nameEs", "nameEn", "slug", "iconName", "imageUrl", "sortOrder", "createdAt", "updatedAt", "sendcloudEnabled", "ageRestricted", "withdrawalExcludedDefault") FROM stdin;
cmpu7a5vj0015l8t2pvwyxect	\N	Alimentació i Begudes	Alimentación y Bebidas	Food & Drink	alimentacio-i-begudes	UtensilsCrossed	\N	0	2026-05-31 19:56:25.279	2026-05-31 19:56:25.279	t	f	f
cmpu7a5ww0016l8t25emkzqx4	cmpu7a5vj0015l8t2pvwyxect	Caves	Cavas	Cava	caves	\N	\N	0	2026-05-31 19:56:25.328	2026-05-31 19:56:25.328	t	f	f
cmpu7a5y60017l8t2fwpd1gm0	cmpu7a5vj0015l8t2pvwyxect	Vins DO Catalunya	Vinos DO Cataluña	Wines DO Catalonia	vins-do-catalunya	\N	\N	1	2026-05-31 19:56:25.374	2026-05-31 19:56:25.374	t	f	f
cmpu7a5zg0018l8t2bbcpif6c	cmpu7a5vj0015l8t2pvwyxect	Oli d'oliva	Aceite de oliva	Olive oil	oli-doliva	\N	\N	2	2026-05-31 19:56:25.42	2026-05-31 19:56:25.42	t	f	f
cmpu7a60o0019l8t23h4fmyrn	cmpu7a5vj0015l8t2pvwyxect	Embotits i fuet	Embutidos y fuet	Cured meats & fuet	embotits-i-fuet	\N	\N	3	2026-05-31 19:56:25.464	2026-05-31 19:56:25.464	t	f	f
cmpu7a61w001al8t218acf7c1	cmpu7a5vj0015l8t2pvwyxect	Formatges	Quesos	Cheeses	formatges	\N	\N	4	2026-05-31 19:56:25.508	2026-05-31 19:56:25.508	t	f	f
cmpu7a636001bl8t2qsqskc8s	cmpu7a5vj0015l8t2pvwyxect	Torrons i dolços	Turrones y dulces	Nougat & sweets	torrons-i-dolcos	\N	\N	5	2026-05-31 19:56:25.554	2026-05-31 19:56:25.554	t	f	f
cmpu7a64c001cl8t2eom88xbr	cmpu7a5vj0015l8t2pvwyxect	Conserves	Conservas	Preserves	conserves	\N	\N	6	2026-05-31 19:56:25.596	2026-05-31 19:56:25.596	t	f	f
cmpu7a65k001dl8t2l97zcsft	\N	Llar i Artesania	Hogar y Artesanía	Home & Crafts	llar-i-artesania	Armchair	\N	1	2026-05-31 19:56:25.64	2026-05-31 19:56:25.64	t	f	f
cmpu7a66q001el8t2qc3yi0dz	cmpu7a65k001dl8t2l97zcsft	Ceràmica	Cerámica	Pottery	ceramica	\N	\N	0	2026-05-31 19:56:25.682	2026-05-31 19:56:25.682	t	f	f
cmpu7a67x001fl8t2j5ik7hrj	cmpu7a65k001dl8t2l97zcsft	Espardenyes	Alpargatas	Espadrilles	espardenyes	\N	\N	1	2026-05-31 19:56:25.725	2026-05-31 19:56:25.725	t	f	f
cmpu7a694001gl8t231nis4zu	cmpu7a65k001dl8t2l97zcsft	Tèxtil de la llar	Textil del hogar	Home textiles	textil-de-la-llar	\N	\N	2	2026-05-31 19:56:25.768	2026-05-31 19:56:25.768	t	f	f
cmpu7a6ac001hl8t2m8uwlsjh	\N	Llibres en català	Libros en catalán	Catalan books	llibres-en-catala	BookOpen	\N	2	2026-05-31 19:56:25.812	2026-05-31 19:56:25.812	t	f	f
cmpu7a6bk001il8t2f0mbx80l	cmpu7a6ac001hl8t2m8uwlsjh	Novel·la	Novela	Fiction	novella-catalana	\N	\N	0	2026-05-31 19:56:25.856	2026-05-31 19:56:25.856	t	f	f
cmpu7a6ct001jl8t2oezg7wtg	cmpu7a6ac001hl8t2m8uwlsjh	Llibres de cuina	Libros de cocina	Cookbooks	llibres-de-cuina	\N	\N	1	2026-05-31 19:56:25.901	2026-05-31 19:56:25.901	t	f	f
cmpu7a6e1001kl8t2lntgim52	cmpu7a6ac001hl8t2m8uwlsjh	Llibres infantils	Libros infantiles	Children's books	llibres-infantils	\N	\N	2	2026-05-31 19:56:25.945	2026-05-31 19:56:25.945	t	f	f
cmpu7a6f8001ll8t2m4nwf9dz	\N	Disseny i Regals	Diseño y Regalos	Design & Gifts	disseny-i-regals	Gift	\N	3	2026-05-31 19:56:25.988	2026-05-31 19:56:25.988	t	f	f
cmpu7a6gf001ml8t2fz5vlh51	cmpu7a6f8001ll8t2m4nwf9dz	Decoració	Decoración	Decor	decoracio	\N	\N	0	2026-05-31 19:56:26.031	2026-05-31 19:56:26.031	t	f	f
cmpu7a6hl001nl8t2n79nbfnm	cmpu7a6f8001ll8t2m4nwf9dz	Papereria	Papelería	Stationery	papereria	\N	\N	1	2026-05-31 19:56:26.073	2026-05-31 19:56:26.073	t	f	f
cmpu7a6ir001ol8t2120cnq5p	cmpu7a6f8001ll8t2m4nwf9dz	Jocs i regals	Juegos y regalos	Games & gifts	jocs-i-regals	\N	\N	2	2026-05-31 19:56:26.115	2026-05-31 19:56:26.115	t	f	f
cmpu7a6jy001pl8t2r6j1vpw5	\N	Productes Ecològics Locals	Productos Ecológicos Locales	Local Organic Products	productes-ecologics	Sprout	\N	4	2026-05-31 19:56:26.158	2026-05-31 19:56:26.158	t	f	f
cmpu7a6l7001ql8t2ra3ydbfu	cmpu7a6jy001pl8t2r6j1vpw5	Alimentació ecològica	Alimentación ecológica	Organic food	alimentacio-ecologica	\N	\N	0	2026-05-31 19:56:26.203	2026-05-31 19:56:26.203	t	f	f
cmpu7a6me001rl8t2y0zjekcp	cmpu7a6jy001pl8t2r6j1vpw5	Cosmètica natural	Cosmética natural	Natural cosmetics	cosmetica-natural	\N	\N	1	2026-05-31 19:56:26.247	2026-05-31 19:56:26.247	t	f	f
cmpu7a6nm001sl8t2eiz0djgj	\N	Esport	Deporte	Sport	esport	Dumbbell	\N	5	2026-05-31 19:56:26.29	2026-05-31 19:56:26.29	t	f	f
cmpu7a6ot001tl8t23ysjdo2d	cmpu7a6nm001sl8t2eiz0djgj	Muntanya i senderisme	Montaña y senderismo	Hiking & outdoors	muntanya-i-senderisme	\N	\N	0	2026-05-31 19:56:26.333	2026-05-31 19:56:26.333	t	f	f
cmpu7a6pz001ul8t2d44i5jud	\N	Infància	Infancia	Childhood	infancia	Baby	\N	6	2026-05-31 19:56:26.376	2026-05-31 19:56:26.376	t	f	f
cmpu7a6r5001vl8t2roldrply	cmpu7a6pz001ul8t2d44i5jud	Joguines	Juguetes	Toys	joguines	\N	\N	0	2026-05-31 19:56:26.417	2026-05-31 19:56:26.417	t	f	f
cmqmuhkra000004jxn5xsd31x	cmpu7a5vj0015l8t2pvwyxect	Cerveses	Cervezas	Beers	beers	\N	\N	7	2026-06-20 21:03:35.254	2026-06-20 21:03:35.254	t	f	f
cmqmuiu61000004l815xi85s8	\N	Experiències	Experiencias	Experiences	experiences	\N	\N	7	2026-06-20 21:04:34.105	2026-06-20 21:04:34.105	t	f	f
cmqmujalj000204jx03vaj8aq	\N	Música	Música	Music	music	\N	\N	8	2026-06-20 21:04:55.399	2026-06-20 21:04:55.399	t	f	f
cmqmurtvk000004jxffsff7vd	cmqmuiu61000004l815xi85s8	Experiències	Experiencias	Experiences	experiences-2	\N	\N	0	2026-06-20 21:11:33.632	2026-06-20 21:11:33.632	t	f	f
\.


--
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Product" ("id", "sellerId", "categoryId", "titleCa", "titleEs", "titleEn", "slug", "descriptionCa", "descriptionEs", "descriptionEn", "brand", "basePrice", "originalPrice", "vatRate", "totalPrice", "currency", "stock", "condition", "status", "attributes", "ratingAvg", "ratingCount", "createdAt", "updatedAt", "heightCm", "lengthCm", "weightGrams", "widthCm", "origin", "originVerifiedAt", "unlimitedStock", "netContentUnit", "netContentValue", "salesCount", "withdrawalEligible", "age18Plus", "bookFixedPrice", "euResponsibleContact", "euResponsibleName", "foodInfo", "manufacturerAddress", "manufacturerName", "safetyWarningsEs", "digitalDownloadUrl", "isDigital") FROM stdin;
cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a5ww0016l8t25emkzqx4	Cava Brut Nature Gran Reserva	Cava Brut Nature Gran Reserva	Cava Brut Nature Gran Reserva	cava-brut-nature-gran-reserva	Cava elaborat amb el mètode tradicional i criat més de 30 mesos. Bombolla fina i final sec.	Cava elaborado con el método tradicional y criado más de 30 meses. Burbuja fina y final seco.	Cava made with the traditional method and aged over 30 months. Fine bubbles and a dry finish.	Cal Forner	15.62	\N	21.00	18.90	EUR	40	NEW	ACTIVE	{"do": "Cava", "year": 2019, "grape": "Macabeu, Xarel·lo", "volume": "75 cl"}	4.2	5	2026-05-31 19:56:26.465	2026-05-31 19:56:32.222	35	12	1400	12	FET_A_CATALUNYA	\N	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7ae7j002cl8t25myc6ukc	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a5ww0016l8t25emkzqx4	Cava Reserva Semisec	Cava Reserva Semiseco	Cava Reserva Semi-dry	cava-reserva-semi-dry	Un cava reserva suau i afruitat, perfecte per acompanyar les postres.	Un cava reserva suave y afrutado, perfecto para acompañar los postres.	A smooth, fruity reserva cava — a great match for desserts.	Cal Forner	9.88	13.95	21.00	11.95	EUR	26	NEW	ACTIVE	{"do": "Cava", "year": 2020, "grape": "Parellada", "volume": "75 cl"}	4.33	3	2026-05-31 19:56:36.079	2026-05-31 19:56:39.883	35	12	1400	12	FET_A_CATALUNYA	\N	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7ah6y002il8t2w5hp0t4k	cmpu7a3h7000cl8t27muo350k	cmpu7a5y60017l8t2fwpd1gm0	Vi Negre DO Priorat	Vino Tinto DO Priorat	Red Wine DO Priorat	red-wine-do-priorat	Vi negre potent del Priorat, criat en bóta de roure. Notes de fruita madura i mineralitat.	Vino tinto potente del Priorat, criado en barrica de roble. Notas de fruta madura y mineralidad.	A powerful Priorat red, oak-aged. Ripe-fruit notes and a mineral edge.	Mas de l'Oli	19.83	\N	21.00	24.00	EUR	22	NEW	ACTIVE	{"do": "Priorat", "year": 2020, "grape": "Garnatxa, Carinyena", "volume": "75 cl"}	4.17	6	2026-05-31 19:56:39.946	2026-05-31 19:56:45.534	33	10	1300	10	FET_A_CATALUNYA	2026-05-31 19:56:39.944	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7alji002sl8t2nllk5q6w	cmpu7a3h7000cl8t27muo350k	cmpu7a5y60017l8t2fwpd1gm0	Vi Blanc DO Penedès	Vino Blanco DO Penedès	White Wine DO Penedès	white-wine-do-penedes	Vi blanc fresc i aromàtic del Penedès, amb notes cítriques i floral.	Vino blanco fresco y aromático del Penedès, con notas cítricas y florales.	A fresh, aromatic Penedès white with citrus and floral notes.	Mas de l'Oli	10.33	\N	21.00	12.50	EUR	38	NEW	ACTIVE	{"do": "Penedès", "year": 2022, "grape": "Xarel·lo", "volume": "75 cl"}	4.5	4	2026-05-31 19:56:45.582	2026-05-31 19:56:49.481	33	10	1300	10	FET_A_CATALUNYA	2026-05-31 19:56:45.578	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7aol1002zl8t2p63c2ruk	cmpu7a3h7000cl8t27muo350k	cmpu7a5y60017l8t2fwpd1gm0	Vi Negre DO Montsant	Vino Tinto DO Montsant	Red Wine DO Montsant	red-wine-do-montsant	Vi negre jove del Montsant, fresc i afruitat, fàcil de beure.	Vino tinto joven del Montsant, fresco y afrutado, fácil de beber.	A young Montsant red — fresh, fruity and easy-drinking.	Mas de l'Oli	8.18	\N	21.00	9.90	EUR	45	NEW	ACTIVE	{"do": "Montsant", "year": 2022, "grape": "Samsó", "volume": "75 cl"}	4.33	3	2026-05-31 19:56:49.525	2026-05-31 19:56:53.674	33	10	1300	10	FET_A_CATALUNYA	2026-05-31 19:56:49.523	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7ab9q0025l8t2qauh9733	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a5ww0016l8t25emkzqx4	Cava Rosat Brut	Cava Rosado Brut	Rosé Cava Brut	rose-cava-brut	Cava rosat de garnatja amb aromes de fruita vermella, ideal per a celebracions.	Cava rosado de garnacha con aromas de fruta roja, ideal para celebraciones.	Garnatxa rosé cava with red-fruit aromas — perfect for celebrations.	Cal Forner	11.98	\N	21.00	14.50	EUR	32	NEW	REMOVED	{"do": "Cava", "year": 2021, "grape": "Garnatxa", "volume": "75 cl"}	4	4	2026-05-31 19:56:32.27	2026-06-22 20:07:11.975	35	12	1400	12	FET_A_CATALUNYA	\N	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7arti0035l8t20w56me5d	cmpu7a3h7000cl8t27muo350k	cmpu7a5y60017l8t2fwpd1gm0	Vi Rosat DO Empordà	Vino Rosado DO Empordà	Rosé Wine DO Empordà	rose-wine-do-emporda	Rosat de l'Empordà, lleuger i refrescant, perfecte per a l'estiu.	Rosado del Empordà, ligero y refrescante, perfecto para el verano.	A light, refreshing Empordà rosé — made for summer.	Mas de l'Oli	8.68	\N	21.00	10.50	EUR	30	NEW	ACTIVE	{"do": "Empordà", "year": 2023, "grape": "Garnatxa", "volume": "75 cl"}	4.5	2	2026-05-31 19:56:53.718	2026-05-31 19:56:57.372	33	10	1300	10	FET_A_CATALUNYA	2026-05-31 19:56:53.717	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7auo8003al8t2xp5d91ps	cmpu7a3h7000cl8t27muo350k	cmpu7a5zg0018l8t2bbcpif6c	Oli d'oliva verge extra DOP Les Garrigues 500 ml	Aceite de oliva virgen extra DOP Les Garrigues 500 ml	Extra-virgin olive oil DOP Les Garrigues 500 ml	extra-virgin-olive-oil-dop-les-garrigues-500-ml	Oli verge extra de varietat arbequina, premsat en fred. Fruitat suau amb un lleuger toc amarg.	Aceite virgen extra de variedad arbequina, prensado en frío. Frutado suave con un ligero toque amargo.	Cold-pressed arbequina extra-virgin oil — a mild fruitiness with a gentle bitter note.	Mas de l'Oli	11.73	\N	10.00	12.90	EUR	60	NEW	ACTIVE	{"volume": "500 ml", "variety": "Arbequina", "designation": "DOP Les Garrigues"}	4.17	6	2026-05-31 19:56:57.416	2026-05-31 19:57:02.72	30	10	1100	10	FET_A_CATALUNYA	2026-05-31 19:56:57.415	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7ayt7003kl8t22wbz04wy	cmpu7a3h7000cl8t27muo350k	cmpu7a5zg0018l8t2bbcpif6c	Oli d'oliva verge extra Arbequina 1 L	Aceite de oliva virgen extra Arbequina 1 L	Extra-virgin olive oil Arbequina 1 L	extra-virgin-olive-oil-arbequina-1-l	Ampolla d'1 litre d'oli verge extra arbequí, ideal per a l'ús diari a la cuina.	Botella de 1 litro de aceite virgen extra arbequino, ideal para el uso diario en la cocina.	A one-litre bottle of arbequina extra-virgin oil for everyday cooking.	Mas de l'Oli	16.82	\N	10.00	18.50	EUR	48	NEW	ACTIVE	{"volume": "1 L", "variety": "Arbequina", "designation": "Verge extra"}	4.75	4	2026-05-31 19:57:02.779	2026-05-31 19:57:06.261	30	10	1100	10	FET_A_CATALUNYA	2026-05-31 19:57:02.775	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7b1j6003rl8t25slacz2s	cmpu7a3h7000cl8t27muo350k	cmpu7a5zg0018l8t2bbcpif6c	Oli d'oliva ecològic 250 ml	Aceite de oliva ecológico 250 ml	Organic olive oil 250 ml	organic-olive-oil-250-ml	Oli d'oliva ecològic certificat, de collita primerenca. Intens i herbaci.	Aceite de oliva ecológico certificado, de cosecha temprana. Intenso y herbáceo.	Certified organic olive oil from an early harvest — intense and grassy.	Mas de l'Oli	8.64	\N	10.00	9.50	EUR	35	NEW	ACTIVE	{"volume": "250 ml", "variety": "Picual", "designation": "Ecològic"}	4.67	3	2026-05-31 19:57:06.306	2026-05-31 19:57:09.994	30	10	1100	10	FET_A_CATALUNYA	2026-05-31 19:57:06.305	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7b4fo003xl8t2f78go8ap	cmpu7a3h7000cl8t27muo350k	cmpu7a5zg0018l8t2bbcpif6c	Llauna d'oli d'oliva verge extra 3 L	Lata de aceite de oliva virgen extra 3 L	Extra-virgin olive oil tin 3 L	extra-virgin-olive-oil-tin-3-l	Llauna de 3 litres per a les famílies que cuinen amb bon oli cada dia.	Lata de 3 litros para las familias que cocinan con buen aceite cada día.	A 3-litre tin for families who cook with good oil every day.	Mas de l'Oli	29.09	36.00	10.00	32.00	EUR	18	NEW	ACTIVE	{"volume": "3 L", "variety": "Arbequina", "designation": "Verge extra"}	4.5	2	2026-05-31 19:57:10.068	2026-05-31 19:57:13.821	30	10	1100	10	FET_A_CATALUNYA	2026-05-31 19:57:10.065	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7b7d30042l8t25wrp8xyn	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a60o0019l8t23h4fmyrn	Fuet extra de pagès	Fuet extra de payés	Farmhouse extra fuet	farmhouse-extra-fuet	Fuet artesà curat lentament, amb la flor blanca natural. Sabor intens i textura ferma.	Fuet artesano curado lentamente, con la flor blanca natural. Sabor intenso y textura firme.	Slow-cured artisan fuet with its natural white bloom — intense flavour, firm texture.	Cal Forner	6.27	\N	10.00	6.90	EUR	70	NEW	ACTIVE	{"curing": "5 setmanes", "weight": "170 g", "allergens": "Cap"}	4.6	5	2026-05-31 19:57:13.863	2026-05-31 19:57:17.395	8	25	450	8	FET_A_CATALUNYA	2026-05-31 19:57:13.862	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7ba4c004al8t2a3igvfl3	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a60o0019l8t23h4fmyrn	Llonganissa de Vic IGP	Longaniza de Vic IGP	Llonganissa de Vic IGP	llonganissa-de-vic-igp	Llonganissa curada de la Plana de Vic, amb Indicació Geogràfica Protegida.	Longaniza curada de la Plana de Vic, con Indicación Geográfica Protegida.	Cured llonganissa from the Plana de Vic, with Protected Geographical Indication.	Cal Forner	12.27	\N	10.00	13.50	EUR	40	NEW	ACTIVE	{"weight": "300 g", "allergens": "Cap", "designation": "IGP Vic"}	5	4	2026-05-31 19:57:17.437	2026-05-31 19:57:21.205	8	25	450	8	FET_A_CATALUNYA	2026-05-31 19:57:17.435	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7bd2b004hl8t26sodk0rf	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a60o0019l8t23h4fmyrn	Secallona artesana	Secallona artesana	Artisan secallona	artisan-secallona	Embotit prim i sec, perfecte per a un esmorzar de pa amb tomàquet.	Embutido fino y seco, perfecto para un desayuno de pan con tomate.	A thin, dry cured sausage — perfect with pa amb tomàquet.	Cal Forner	5.00	\N	10.00	5.50	EUR	55	NEW	ACTIVE	{"curing": "3 setmanes", "weight": "120 g", "allergens": "Cap"}	4	2	2026-05-31 19:57:21.251	2026-05-31 19:57:23.054	8	25	450	8	FET_A_CATALUNYA	2026-05-31 19:57:21.247	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7bei2004ll8t25uarqwe2	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a61w001al8t218acf7c1	Formatge de cabra curat	Queso de cabra curado	Cured goat cheese	cured-goat-cheese	Formatge de cabra curat sis mesos, cremós i intens, elaborat amb llet crua.	Queso de cabra curado seis meses, cremoso e intenso, elaborado con leche cruda.	Six-month cured goat cheese — creamy and intense, made with raw milk.	Cal Forner	8.91	\N	10.00	9.80	EUR	34	NEW	ACTIVE	{"milk": "Cabra", "weight": "250 g", "allergens": "Llet"}	4.2	5	2026-05-31 19:57:23.114	2026-05-31 19:57:26.933	10	18	700	18	FET_A_CATALUNYA	2026-05-31 19:57:23.11	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7bhhr004tl8t22m4mkvkn	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a61w001al8t218acf7c1	Tupí del Pallars	Tupí del Pallars	Tupí cheese from Pallars	tupi-cheese-from-pallars	Formatge fermentat tradicional del Pallars, fort i untuós, presentat en got de vidre.	Queso fermentado tradicional del Pallars, fuerte y untuoso, presentado en vaso de cristal.	A traditional fermented Pallars cheese — strong and spreadable, in a glass jar.	Cal Forner	6.59	\N	10.00	7.25	EUR	20	NEW	ACTIVE	{"milk": "Vaca", "weight": "180 g", "allergens": "Llet"}	4.67	3	2026-05-31 19:57:26.991	2026-05-31 19:57:28.835	10	18	700	18	FET_A_CATALUNYA	2026-05-31 19:57:26.99	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7biy7004yl8t2836hqou6	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a61w001al8t218acf7c1	Formatge de l'Alt Urgell i la Cerdanya DOP	Queso del Alt Urgell y la Cerdanya DOP	Alt Urgell & Cerdanya cheese DOP	alt-urgell-cerdanya-cheese-dop	Formatge tendre de pasta semitova, suau i mantegós, amb Denominació d'Origen Protegida.	Queso tierno de pasta semiblanda, suave y mantecoso, con Denominación de Origen Protegida.	A tender semi-soft cheese — mild and buttery, with Protected Designation of Origin.	Cal Forner	10.36	\N	10.00	11.40	EUR	28	NEW	ACTIVE	{"milk": "Vaca", "weight": "300 g", "allergens": "Llet"}	4.25	4	2026-05-31 19:57:28.879	2026-05-31 19:57:32.175	10	18	700	18	FET_A_CATALUNYA	2026-05-31 19:57:28.877	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7bo6g005el8t2ksigbaq3	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a636001bl8t2qsqskc8s	Torró de xocolata amb ametlles	Turrón de chocolate con almendras	Chocolate nougat with almonds	chocolate-nougat-with-almonds	Torró de xocolata negra amb ametlla marcona, elaborat de manera artesana.	Turrón de chocolate negro con almendra marcona, elaborado de manera artesana.	Dark-chocolate nougat with marcona almonds, handmade in small batches.	Cal Forner	7.73	\N	10.00	8.50	EUR	50	NEW	ACTIVE	{"weight": "250 g", "allergens": "Fruits secs, llet, soja"}	4.33	3	2026-05-31 19:57:35.656	2026-05-31 19:57:39.307	4	22	400	12	FET_A_CATALUNYA	2026-05-31 19:57:35.652	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7br1b005kl8t2rzxiksmh	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a636001bl8t2qsqskc8s	Neules de Catalunya	Neules de Cataluña	Catalan neules wafers	catalan-neules-wafers	Neules fines i cruixents, el complement clàssic del cava per festes.	Neules finas y crujientes, el complemento clásico del cava en fiestas.	Thin, crisp neules wafers — the classic festive companion to cava.	Cal Forner	5.64	\N	10.00	6.20	EUR	64	NEW	ACTIVE	{"weight": "150 g", "allergens": "Gluten, ou"}	4	2	2026-05-31 19:57:39.359	2026-05-31 19:57:41.624	4	22	400	12	FET_A_CATALUNYA	2026-05-31 19:57:39.354	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7bsti005ol8t2yo9g3lu6	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a64c001cl8t2eom88xbr	Anxoves de l'Escala	Anchoas de l'Escala	Anchovies from L'Escala	anchovies-from-l-escala	Anxoves curades en sal seguint la tradició de l'Escala, en oli d'oliva.	Anchoas curadas en sal siguiendo la tradición de l'Escala, en aceite de oliva.	Salt-cured anchovies in olive oil, following the L'Escala tradition.	Cal Forner	8.09	\N	10.00	8.90	EUR	38	NEW	ACTIVE	{"weight": "95 g", "allergens": "Peix"}	4.5	4	2026-05-31 19:57:41.67	2026-05-31 19:57:45.507	14	12	600	12	FET_A_CATALUNYA	2026-05-31 19:57:41.667	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7bvzt005vl8t21o1ga9ty	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a64c001cl8t2eom88xbr	Melmelada de figa artesana	Mermelada de higo artesana	Artisan fig jam	artisan-fig-jam	Melmelada de figa feta a foc lent amb fruita de proximitat i poc sucre.	Mermelada de higo hecha a fuego lento con fruta de proximidad y poco azúcar.	Slow-cooked fig jam made with local fruit and little added sugar.	Cal Forner	4.91	\N	10.00	5.40	EUR	46	NEW	ACTIVE	{"weight": "240 g", "allergens": "Cap"}	4.67	3	2026-05-31 19:57:45.785	2026-05-31 19:57:47.737	14	12	600	12	FET_A_CATALUNYA	2026-05-31 19:57:45.783	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7bxjb0060l8t226ep4ocm	cmpu7a47u000ml8t2rpsunk86	cmpu7a66q001el8t2qc3yi0dz	Bol de ceràmica esmaltada	Bol de cerámica esmaltada	Glazed ceramic bowl	glazed-ceramic-bowl	Bol fet a torn i esmaltat a mà, apte per al microones i el rentaplats.	Bol hecho a torno y esmaltado a mano, apto para microondas y lavavajillas.	A wheel-thrown, hand-glazed bowl — microwave and dishwasher safe.	Tramuntana	13.64	\N	21.00	16.50	EUR	24	NEW	ACTIVE	{"care": "Apte rentaplats", "diameter": "14 cm", "material": "Ceràmica"}	4.75	4	2026-05-31 19:57:47.783	2026-05-31 19:57:54.053	20	28	1800	28	FET_A_CATALUNYA	2026-05-31 19:57:47.779	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7c2et0068l8t2fnbe7zpm	cmpu7a47u000ml8t2rpsunk86	cmpu7a66q001el8t2qc3yi0dz	Plat de terrissa pintat a mà	Plato de barro pintado a mano	Hand-painted earthenware plate	hand-painted-earthenware-plate	Plat decoratiu de terrissa amb motius tradicionals catalans pintats a mà.	Plato decorativo de barro con motivos tradicionales catalanes pintados a mano.	A decorative earthenware plate with hand-painted traditional Catalan motifs.	Tramuntana	18.18	\N	21.00	22.00	EUR	16	NEW	ACTIVE	{"style": "Tradicional", "diameter": "22 cm", "material": "Terrissa"}	5	3	2026-05-31 19:57:54.101	2026-05-31 19:57:57.902	20	28	1800	28	FET_A_CATALUNYA	2026-05-31 19:57:54.097	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7c5do006el8t2sdubxltt	cmpu7a47u000ml8t2rpsunk86	cmpu7a66q001el8t2qc3yi0dz	Gerro de ceràmica blau	Jarrón de cerámica azul	Blue ceramic vase	blue-ceramic-vase	Gerro de ceràmica amb esmalt blau mediterrani, peça única feta a mà.	Jarrón de cerámica con esmalte azul mediterráneo, pieza única hecha a mano.	A ceramic vase with a Mediterranean-blue glaze — a unique handmade piece.	Tramuntana	28.84	\N	21.00	34.90	EUR	9	NEW	ACTIVE	{"style": "Mediterrani", "height": "26 cm", "material": "Ceràmica"}	4.5	2	2026-05-31 19:57:57.948	2026-05-31 19:58:01.669	20	28	1800	28	FET_A_CATALUNYA	2026-05-31 19:57:57.945	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7bljf0055l8t280uw0rqw	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a636001bl8t2qsqskc8s	Torró d'Agramunt IGP	Turrón de Agramunt IGP	Agramunt nougat IGP	agramunt-nougat-igp	Torró cruixent d'ametlla i mel d'Agramunt, amb Indicació Geogràfica Protegida.	Turrón crujiente de almendra y miel de Agramunt, con Indicación Geográfica Protegida.	Crunchy almond-and-honey nougat from Agramunt, with Protected Geographical Indication.	Cal Forner	11.73	\N	10.00	12.90	EUR	32	NEW	ACTIVE	{"weight": "300 g", "allergens": "Fruits secs, mel"}	4.33	6	2026-05-31 19:57:32.235	2026-06-12 19:32:35.608	4	22	400	12	FET_A_CATALUNYA	2026-05-31 19:57:32.232	f	\N	\N	1	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7c8ad006jl8t23i1d4afk	cmpu7a47u000ml8t2rpsunk86	cmpu7a67x001fl8t2j5ik7hrj	Espardenyes catalanes de set vetes	Alpargatas catalanas de siete cintas	Catalan seven-ribbon espadrilles	catalan-seven-ribbon-espadrilles	Espardenyes tradicionals de set vetes, fetes a mà amb sola de espart.	Alpargatas tradicionales de siete cintas, hechas a mano con suela de esparto.	Traditional seven-ribbon espadrilles, handmade with an esparto sole.	Tramuntana	23.14	\N	21.00	28.00	EUR	30	NEW	ACTIVE	{"sizes": "36-45", "style": "Tradicional", "material": "Espart i cotó"}	4.67	3	2026-05-31 19:58:01.717	2026-05-31 19:58:05.593	12	30	500	20	FET_A_CATALUNYA	2026-05-31 19:58:01.713	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7cbbc006pl8t28vnq7yqz	cmpu7a47u000ml8t2rpsunk86	cmpu7a694001gl8t231nis4zu	Joc de tovalloles de lli	Juego de toallas de lino	Linen towel set	linen-towel-set	Joc de dues tovalloles de lli català, suaus i absorbents.	Juego de dos toallas de lino catalán, suaves y absorbentes.	A set of two Catalan-linen towels — soft and absorbent.	Tramuntana	20.25	\N	21.00	24.50	EUR	22	NEW	ACTIVE	{"care": "Rentadora 40°", "pieces": 2, "material": "100% lli"}	4.5	2	2026-05-31 19:58:05.641	2026-05-31 19:58:09.264	8	30	600	24	FET_A_CATALUNYA	2026-05-31 19:58:05.637	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7ce5b006ul8t21xfh6ehf	cmpu7a47u000ml8t2rpsunk86	cmpu7a694001gl8t231nis4zu	Coixí teixit a mà	Cojín tejido a mano	Hand-woven cushion	hand-woven-cushion	Coixí decoratiu teixit a mà amb cotó natural i motius geomètrics.	Cojín decorativo tejido a mano con algodón natural y motivos geométricos.	A decorative hand-woven cushion in natural cotton with geometric motifs.	Tramuntana	16.45	\N	21.00	19.90	EUR	27	NEW	ACTIVE	{"size": "45 × 45 cm", "style": "Geomètric", "material": "Cotó"}	4	3	2026-05-31 19:58:09.311	2026-05-31 19:58:13.482	8	30	600	24	FET_A_CATALUNYA	2026-05-31 19:58:09.307	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7cheh0070l8t2edtzrzyi	cmpu7a3uq000hl8t2izdspdci	cmpu7a6bk001il8t2f0mbx80l	Terra de cendra — novel·la	Terra de cendra — novela	Terra de cendra — novel	terra-de-cendra-novel	Una novel·la coral ambientada en un poble del Priorat durant la postguerra.	Una novela coral ambientada en un pueblo del Priorat durante la posguerra.	A choral novel set in a Priorat village during the post-war years.	Edicions La Cadernera	18.75	\N	4.00	19.50	EUR	40	NEW	ACTIVE	{"pages": 312, "author": "Aurora Camps", "language": "Català"}	4	5	2026-05-31 19:58:13.529	2026-05-31 19:58:15.635	3	20	350	13	FET_A_CATALUNYA	2026-05-31 19:58:13.525	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7cj2b0077l8t2940yni61	cmpu7a3uq000hl8t2izdspdci	cmpu7a6ct001jl8t2oezg7wtg	La cuina de l'àvia	La cocina de la abuela	Grandmother's kitchen	grandmother-s-kitchen	Receptari de cuina catalana tradicional amb més de 120 receptes de tota la vida.	Recetario de cocina catalana tradicional con más de 120 recetas de toda la vida.	A traditional Catalan cookbook with over 120 time-honoured recipes.	Edicions La Cadernera	23.08	\N	4.00	24.00	EUR	36	NEW	ACTIVE	{"pages": 248, "author": "Mercè Roig", "language": "Català"}	4.5	4	2026-05-31 19:58:15.683	2026-05-31 19:58:19.319	3	24	900	19	FET_A_CATALUNYA	2026-05-31 19:58:15.678	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7clwl007el8t2kt9kwe68	cmpu7a3uq000hl8t2izdspdci	cmpu7a6e1001kl8t2lntgim52	El drac de Sant Jordi — conte	El dragón de Sant Jordi — cuento	The Sant Jordi dragon — picture book	the-sant-jordi-dragon-picture-book	Un conte il·lustrat sobre la llegenda de Sant Jordi, per a primers lectors.	Un cuento ilustrado sobre la leyenda de Sant Jordi, para primeros lectores.	An illustrated retelling of the Sant Jordi legend, for early readers.	Edicions La Cadernera	14.33	\N	4.00	14.90	EUR	52	NEW	ACTIVE	{"ages": "3-6 anys", "pages": 36, "author": "Pau Ferrer"}	5	3	2026-05-31 19:58:19.365	2026-05-31 19:58:22.783	2	24	400	22	FET_A_CATALUNYA	2026-05-31 19:58:19.361	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7cokv007kl8t2gyel7qtu	cmpu7a3uq000hl8t2izdspdci	cmpu7a6bk001il8t2f0mbx80l	Mar endins — poesia	Mar adentro — poesía	Mar endins — poetry	mar-endins-poetry	Un recull de poemes sobre la mar i la memòria, d'una veu jove de la poesia catalana.	Una recopilación de poemas sobre el mar y la memoria, de una voz joven de la poesía catalana.	A collection of poems on the sea and memory, from a young Catalan voice.	Edicions La Cadernera	12.98	\N	4.00	13.50	EUR	28	NEW	ACTIVE	{"pages": 96, "author": "Laia Bonet", "language": "Català"}	5	2	2026-05-31 19:58:22.831	2026-05-31 19:58:25.052	3	20	350	13	FET_A_CATALUNYA	2026-05-31 19:58:22.826	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7cqbs007ol8t2fwse1yqz	cmpu7a3uq000hl8t2izdspdci	cmpu7a6gf001ml8t2fz5vlh51	Làmina il·lustrada de Barcelona	Lámina ilustrada de Barcelona	Illustrated Barcelona print	illustrated-barcelona-print	Làmina A3 amb una il·lustració original dels terrats de Barcelona.	Lámina A3 con una ilustración original de los tejados de Barcelona.	An A3 print with an original illustration of the rooftops of Barcelona.	Estudi Cadernera	14.88	\N	21.00	18.00	EUR	33	NEW	ACTIVE	{"size": "A3 (29,7 × 42 cm)", "finish": "Mat", "material": "Paper 250 g"}	5	3	2026-05-31 19:58:25.096	2026-05-31 19:58:28.502	15	30	900	25	FET_A_CATALUNYA	2026-05-31 19:58:25.094	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7cszn007ul8t2vnpp1tpl	cmpu7a3uq000hl8t2izdspdci	cmpu7a6ir001ol8t2120cnq5p	Joc de taula de fusta	Juego de mesa de madera	Wooden board game	wooden-board-game	Joc de taula d'estratègia fet amb fusta de faig de boscos catalans.	Juego de mesa de estrategia hecho con madera de haya de bosques catalanes.	A strategy board game crafted from beech wood from Catalan forests.	Estudi Cadernera	24.71	34.90	21.00	29.90	EUR	19	NEW	ACTIVE	{"ages": "8+ anys", "players": "2-4", "material": "Fusta de faig"}	4.75	4	2026-05-31 19:58:28.547	2026-05-31 19:58:32.647	8	28	700	20	FET_A_CATALUNYA	2026-05-31 19:58:28.544	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7cw720081l8t2v8wm4u07	cmpu7a3uq000hl8t2izdspdci	cmpu7a6hl001nl8t2n79nbfnm	Llibreta artesana de paper reciclat	Libreta artesana de papel reciclado	Artisan recycled-paper notebook	artisan-recycled-paper-notebook	Llibreta cosida a mà amb tapes de cartró i full de paper 100% reciclat.	Libreta cosida a mano con tapas de cartón y hojas de papel 100% reciclado.	A hand-stitched notebook with cardboard covers and 100% recycled paper.	Estudi Cadernera	7.85	\N	21.00	9.50	EUR	60	NEW	ACTIVE	{"size": "A5", "pages": 120, "paper": "Reciclat"}	4.5	2	2026-05-31 19:58:32.702	2026-05-31 19:58:34.583	3	24	250	17	FET_A_CATALUNYA	2026-05-31 19:58:32.697	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7cxom0085l8t2h2lz7tnb	cmpu7a3h7000cl8t27muo350k	cmpu7a6l7001ql8t2ra3ydbfu	Mel ecològica de muntanya	Miel ecológica de montaña	Organic mountain honey	organic-mountain-honey	Mel crua ecològica recollida a la muntanya catalana, sense pasteuritzar.	Miel cruda ecológica recogida en la montaña catalana, sin pasteurizar.	Raw organic honey gathered in the Catalan mountains — unpasteurised.	Mas de l'Oli	7.64	\N	10.00	8.40	EUR	44	NEW	ACTIVE	{"weight": "500 g", "allergens": "Cap", "certification": "Ecològic CCPAE"}	4.25	4	2026-05-31 19:58:34.63	2026-05-31 19:58:38.022	12	22	800	16	FET_A_CATALUNYA	2026-05-31 19:58:34.626	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7d0c3008cl8t20a7iho6c	cmpu7a3h7000cl8t27muo350k	cmpu7a6me001rl8t2y0zjekcp	Sabó natural d'oli d'oliva	Jabón natural de aceite de oliva	Natural olive-oil soap	natural-olive-oil-soap	Sabó fet en fred amb oli d'oliva verge, sense perfums ni colorants.	Jabón hecho en frío con aceite de oliva virgen, sin perfumes ni colorantes.	A cold-process soap made with virgin olive oil — no fragrance or dyes.	Mas de l'Oli	4.88	\N	21.00	5.90	EUR	80	NEW	ACTIVE	{"skin": "Tot tipus", "weight": "100 g", "certification": "Natural"}	4.33	3	2026-05-31 19:58:38.067	2026-05-31 19:58:40.204	8	12	300	10	FET_A_CATALUNYA	2026-05-31 19:58:38.064	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7d20o008hl8t2hljigjrd	cmpu7a3h7000cl8t27muo350k	cmpu7a6l7001ql8t2ra3ydbfu	Infusió ecològica del Montseny	Infusión ecológica del Montseny	Organic Montseny herbal infusion	organic-montseny-herbal-infusion	Barreja d'herbes remeieres collides al Parc Natural del Montseny.	Mezcla de hierbas medicinales recogidas en el Parque Natural del Montseny.	A blend of medicinal herbs gathered in the Montseny Natural Park.	Mas de l'Oli	5.91	\N	10.00	6.50	EUR	38	NEW	ACTIVE	{"weight": "40 g", "allergens": "Cap", "certification": "Ecològic CCPAE"}	4.5	2	2026-05-31 19:58:40.248	2026-05-31 19:58:44.619	12	22	800	16	FET_A_CATALUNYA	2026-05-31 19:58:40.245	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7d5fd008ml8t2jvq93fbz	cmpu7a47u000ml8t2rpsunk86	cmpu7a6ot001tl8t23ysjdo2d	Bastons de senderisme dels Pirineus	Bastones de senderismo de los Pirineos	Pyrenees trekking poles	pyrenees-trekking-poles	Parell de bastons telescòpics d'alumini, lleugers i resistents per a la muntanya.	Par de bastones telescópicos de aluminio, ligeros y resistentes para la montaña.	A pair of telescopic aluminium poles — light and tough for the mountains.	Tramuntana	28.10	\N	21.00	34.00	EUR	25	NEW	ACTIVE	{"length": "65-135 cm", "weight": "240 g/parell", "material": "Alumini"}	4.67	3	2026-05-31 19:58:44.665	2026-05-31 19:58:47.919	14	35	900	28	FET_A_CATALUNYA	2026-05-31 19:58:44.661	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7d7zd008sl8t2uww4uxst	cmpu7a47u000ml8t2rpsunk86	cmpu7a6ot001tl8t23ysjdo2d	Samarreta tècnica de muntanya	Camiseta técnica de montaña	Technical hiking t-shirt	technical-hiking-t-shirt	Samarreta tècnica transpirable per a senderisme, de teixit reciclat.	Camiseta técnica transpirable para senderismo, de tejido reciclado.	A breathable technical hiking t-shirt made from recycled fabric.	Tramuntana	22.73	\N	21.00	27.50	EUR	0	NEW	OUT_OF_STOCK	{"fit": "Regular", "sizes": "XS-XXL", "material": "Polièster reciclat"}	4.5	2	2026-05-31 19:58:47.977	2026-05-31 19:58:51.384	14	35	900	28	FET_A_CATALUNYA	2026-05-31 19:58:47.973	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7danb008xl8t2n1sctbxm	cmpu7a3uq000hl8t2izdspdci	cmpu7a6r5001vl8t2roldrply	Tren de fusta de colors	Tren de madera de colores	Colourful wooden train	colourful-wooden-train	Tren de fusta amb vagons de colors, pintat amb pintures no tòxiques.	Tren de madera con vagones de colores, pintado con pinturas no tóxicas.	A wooden train with colourful carriages, finished with non-toxic paint.	Estudi Cadernera	18.93	\N	21.00	22.90	EUR	31	NEW	ACTIVE	{"ages": "1-4 anys", "safety": "Pintura no tòxica", "material": "Fusta"}	4.25	4	2026-05-31 19:58:51.431	2026-05-31 19:58:54.705	12	30	600	22	FET_A_CATALUNYA	2026-05-31 19:58:51.427	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7dd7h0094l8t28p1b078o	cmpu7a3uq000hl8t2izdspdci	cmpu7a6r5001vl8t2roldrply	Conte de roba per a nadons	Cuento de tela para bebés	Soft cloth book for babies	soft-cloth-book-for-babies	Conte de roba suau amb textures i sons, ideal per als més menuts.	Cuento de tela suave con texturas y sonidos, ideal para los más pequeños.	A soft cloth book with textures and sounds — perfect for the littlest ones.	Estudi Cadernera	13.14	\N	21.00	15.90	EUR	40	NEW	ACTIVE	{"ages": "0-2 anys", "care": "Rentadora 30°", "material": "Cotó"}	4.5	2	2026-05-31 19:58:54.749	2026-05-31 19:58:56.575	12	30	600	22	FET_A_CATALUNYA	2026-05-31 19:58:54.747	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7denf0098l8t2xm12vujb	cmpu7a4lj000rl8t22nheyztj	cmpu7a66q001el8t2qc3yi0dz	Joc de plats de ceràmica	Juego de platos de cerámica	Ceramic plate set	ceramic-plate-set	Joc de quatre plats de ceràmica esmaltada, fets a mà al Priorat.	Juego de cuatro platos de cerámica esmaltada, hechos a mano en el Priorat.	A set of four glazed ceramic plates, handmade in the Priorat.	Ceràmica Montsant	32.23	\N	21.00	39.00	EUR	12	NEW	DRAFT	{"pieces": 4, "diameter": "24 cm", "material": "Ceràmica"}	0	0	2026-05-31 19:58:56.619	2026-05-31 19:58:56.619	20	28	1800	28	FET_A_CATALUNYA	2026-05-31 19:58:56.616	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7diko009dl8t2xoprra7l	cmpu7a2qp0002l8t2jom93w15	cmpu7a6l7001ql8t2ra3ydbfu	Cafè Aràbica 100% en gra	Café Arábica 100% en grano	100% Arabica coffee beans	100-arabica-coffee-beans	Cafè aràbica de torrefacció artesana, dolç i amb cos. Disponible en diversos formats segons el consum.	Café arábica de tueste artesanal, dulce y con cuerpo. Disponible en varios formatos según el consumo.	Artisan-roasted Arabica coffee — sweet and full-bodied. Available in several sizes to fit your usage.	Demo CanGerard	5.91	\N	10.00	6.50	EUR	52	NEW	ACTIVE	{"grind": "En gra", "roast": "Mitjana", "origin": "Colòmbia"}	4	3	2026-05-31 19:59:01.704	2026-05-31 19:59:05.2	12	22	800	16	FET_A_CATALUNYA	2026-05-31 19:59:01.702	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7dlaz009ml8t2m73c1nps	cmpu7a2qp0002l8t2jom93w15	cmpu7a5zg0018l8t2bbcpif6c	Oli d'oliva verge extra Arbequina	Aceite de oliva virgen extra Arbequina	Arbequina extra-virgin olive oil	arbequina-extra-virgin-olive-oil	Oli d'oliva verge extra de la varietat Arbequina, suau i afruitat. Tria el format que millor s'adapti a la teva cuina.	Aceite de oliva virgen extra de la variedad Arbequina, suave y afrutado. Elige el formato que mejor se adapte a tu cocina.	Arbequina extra-virgin olive oil — smooth and fruity. Pick the size that fits your kitchen.	Demo CanGerard	5.36	\N	10.00	5.90	EUR	66	NEW	ACTIVE	{"region": "Les Garrigues", "acidity": "0,2°", "variety": "Arbequina"}	4.5	2	2026-05-31 19:59:05.243	2026-05-31 19:59:09.31	30	10	1100	10	FET_A_CATALUNYA	2026-05-31 19:59:05.242	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7doh6009ul8t2kayxka2f	cmpu7a2qp0002l8t2jom93w15	cmpu7a6l7001ql8t2ra3ydbfu	Mel artesana de romaní	Miel artesana de romero	Artisan rosemary honey	artisan-rosemary-honey	Mel pura de romaní recollida al Bages, sense pasteuritzar. Triable en tres formats.	Miel pura de romero recogida en el Bages, sin pasteurizar. Disponible en tres formatos.	Pure rosemary honey from the Bages, unpasteurised. Available in three sizes.	Demo CanGerard	6.82	\N	10.00	7.50	EUR	52	NEW	ACTIVE	{"raw": "Sí", "floral": "Romaní", "region": "Bages"}	4.5	2	2026-05-31 19:59:09.354	2026-05-31 19:59:14.319	12	22	800	16	FET_A_CATALUNYA	2026-05-31 19:59:09.351	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmpu7dh7s009bl8t245ldaxtr	cmpu7a4lj000rl8t22nheyztj	cmpu7a66q001el8t2qc3yi0dz	Gerra d'aigua de terrissa	Jarra de agua de barro	Earthenware water jug	earthenware-water-jug	Gerra d'aigua de terrissa tradicional que manté l'aigua fresca.	Jarra de agua de barro tradicional que mantiene el agua fresca.	A traditional earthenware water jug that keeps water cool.	Ceràmica Montsant	8.26	\N	21.00	10.00	EUR	20	NEW	DRAFT	[{"keyCa": "style", "keyEn": "style", "keyEs": "style", "valueCa": "Tradicional", "valueEn": "Tradicional", "valueEs": "Tradicional"}, {"keyCa": "capacity", "keyEn": "capacity", "keyEs": "capacity", "valueCa": "1,5 L", "valueEn": "1,5 L", "valueEs": "1,5 L"}, {"keyCa": "material", "keyEn": "material", "keyEs": "material", "valueCa": "Terrissa", "valueEn": "Terrissa", "valueEs": "Terrissa"}]	0	0	2026-05-31 19:58:59.944	2026-06-03 19:43:14.84	20	28	1800	28	FET_A_CATALUNYA	2026-05-31 19:58:59.943	f	\N	\N	0	t	f	\N	\N	\N	\N	\N	\N	\N	\N	f
cmqndbk71000004jvsb6gjiyq	cmqmvftzu000504jxy963ldl9	cmpu7a5ww0016l8t25emkzqx4	Cervesa Alien Inoculated	Cerveza Alien Inoculated	Alien Inoculated Beer	test	La Alien Inoculated és una cervesa àcida elaborada amb maltes i llúpols ecològics i microorganismes de l’ambient de la nostra granja cervesera. Alcohol 6,5%.\n\nDesprès de deixar el most a l’aire lliure durant unes 12 hores, s’inicia la fermentació de manera espontània en tancs de fermentació (4 mesos aproximadament) i posteriorment s’envelleix en botes de fusta de roure durant 24 mesos.\n\nEls ingredients ecològics utilitzats per a l’elaboració d’aquesta cervesa han estat produïts 100% a la granja cervesera Lo Vilot Farm Brewery – full circle beer project.	Fermentación espontánea en coolship. Salvaje. Temperatura 6-8 °C. Alcohol 6,5%.\n\nCerveza ácida elaborada con maltas y lúpulos ecológicos de producción propia, y microorganismos del ambiente de nuestra granja cervecera. Envejecida en botas de roble durante 24 meses.	Spontaneous fermentation in coolship. Savage. Temperature 6-8oC. Alcohol 6.5%.\n\nAcid beer made with organic malts and hops of own production , and microorganisms of the environment of our beer farm. Aged in oak barrels for 24 months.	Granja Cervesera Lo Vilot	5.17	\N	21.00	6.25	EUR	0	NEW	DRAFT	[{"keyCa": "Alcohol", "keyEn": "Alcohol", "keyEs": "Alcohol", "valueCa": "6,5%", "valueEn": "6,5%", "valueEs": "6,5%"}]	0	0	2026-06-21 05:50:47.293	2026-06-22 21:18:49.809	10	20	500	15	FET_A_CATALUNYA	2026-06-21 06:01:55.186	t	l	0.375	0	f	t	\N	\N	\N	{"storageEs": "", "allergensEs": "Ordi", "businessName": "Granja Cervesera Lo Vilot", "ingredientsEs": "Cervesa"}	\N	Granja Cervesera Lo Vilot	\N	\N	f
cmqppnj6x000304lhl1hflcjg	cmqmvftzu000504jxy963ldl9	cmpu7a5ww0016l8t25emkzqx4	Cervesa Holy Wood	Cerveza Holy Wood	Holy Wood Beer	cervesa-holy-wood	Fermentació espontània en coolship. Salvatge. Temperatura 6-8ºC.\n\nLa Holy Wood és una cervesa àcida elaborada amb maltes i llúpols ecològics i microorganismes de l’ambient de la nostra granja cervesera. Alcohol 6,8%.\n\nDesprès de deixar el most a l’aire lliure durant unes 12 hores, s’inicia la fermentació de manera espontània en tancs de fermentació (4 mesos aproximadament) i posteriorment s’envelleix en botes de fusta de roure durant 24 mesos. S’acaba amb fruita de codony (codonyer: Cydonia oblonga) que es lamina de manera natural i es deixa macerar amb la cervesa durant 6-8 mesos més.\n\nEls ingredients ecològics utilitzats per a l’elaboració d’aquesta cervesa han estat produïts 100% a la granja cervesera Lo Vilot Farm Brewery – full circle beer project.	Fermentación espontánea en coolship. Salvaje. Temperatura 6-8 °C. Alcohol 6,8%.\n\nCerveza ácida elaborada con maltas y lúpulos ecológicos de producción propia , y microorganismos del ambiente de nuestra granja cervecera. Envejecida en botas de roble durante 24 meses. Acabada con fruta de membrillo.	Spontaneous fermentation in coolship. Savage. Temperature 6-8ºC. Alcohol 6.8%.\n\nAcid beer made with organic malts and hops of own production , and microorganisms of the environment of our beer farm. Aged in oak barrels for 24 months. Finished with quince fruit.	Granja Cervesera Lo Vilot	5.37	\N	21.00	6.50	EUR	0	NEW	DRAFT	[{"keyCa": "Alcohol", "keyEn": "Alcohol", "keyEs": "Alcohol", "valueCa": "6,8%", "valueEn": "6,8%", "valueEs": "6,8%"}]	0	0	2026-06-22 21:11:33.609	2026-06-22 21:18:31.989	10	20	500	15	FET_A_CATALUNYA	\N	t	l	0.375	0	f	t	\N	\N	\N	{"storageEs": "", "allergensEs": "Ordi", "businessName": "Granja Cervesera Lo Vilot", "ingredientsEs": "Cervesa"}	\N	Granja Cervesera Lo Vilot	\N	\N	f
cmqppwbyj000104l5r6at5l70	cmqmvftzu000504jxy963ldl9	cmpu7a5ww0016l8t25emkzqx4	Cervesa Apricot Dispersion	Cerveza Apricot Dispersion	Apricot Dispersion Beer	cervesa-apricot-dispersion	Fermentació mixta. Salvatge. Apricot sour ale. Temperatura 6-8 ºC.\n\nLa Apricot Dispersión és una cervesa de fermentación mixta, envellida en bota de fusta de roure francés y macerada amb albaricocs locals. De color dorat, aroma afruitat i  perfil salvatge. 250 gr/l de albaricoque. Alcohol: 6%.\n\nEls ingredients ecològics utilitzats en aquesta cervesa (malta i llúpols) han estat elaborats 100% a la granja cervesera Lo Vilot – Full circel beer project.\n\nCervesa que ha estat guardonada amb una medalla de bronze internacional al Barcelona Beer Challenge 2021 en la categoria Wild Specialty Beer.	Fermentación mixta. Salvaje. Temperatura 6-8ºC.\n\nCerveza de fermentación mixta macerada con albaricoque local. De color dorado, aroma afrutado y perfil salvaje. 250 gr/l de albaricoque.	Mixed fermentation. Wild. Temperature 6-8ºC.\n\nMixed fermentation beer macerated with local apricot. Golden in color, fruity aroma and wild profile. 250 gr / l apricot.	Granja Cervesera Lo Vilot	4.96	\N	21.00	6.00	EUR	0	NEW	DRAFT	[{"keyCa": "Alcohol", "keyEn": "Alcohol", "keyEs": "Alcohol", "valueCa": "6%", "valueEn": "6%", "valueEs": "6%"}]	0	0	2026-06-22 21:18:24.139	2026-06-22 21:18:24.139	10	20	500	15	FET_A_CATALUNYA	\N	t	l	0.375	0	f	t	\N	\N	\N	{"storageEs": "", "allergensEs": "Ordi", "businessName": "Granja Cervesera Lo Vilot", "ingredientsEs": "Cervesa"}	\N	Granja Cervesera Lo Vilot	\N	\N	f
cmqppk15y000004lh34bvxr1g	cmqmvftzu000504jxy963ldl9	cmpu7a5ww0016l8t25emkzqx4	Cervesa Betabel	Cerveza Betabel	Betabel Beer	cervesa-betabel	Fermentació espontània en coolship. Salvatge. Temperatura 6-8ºC.\n\nLa Betabel és una cervesa àcida elaborada amb maltes i llúpols ecològics i microorganismes de l’ambient de la nostra granja cervesera. Alcohol 6,8%.\n\nDesprès de deixar el most a l’aire lliure durant unes 12 hores, s’inicia la fermentació de manera espontània en tancs de fermentació (4 mesos aproximadament) i posteriorment s’envelleix en botes de fusta de roure durant 24 mesos. S’acaba amb remolatxa natural (Beta vulgaris – d’on li ve el seu nom) i es deixa macerar amb la cervesa durant 6-8 mesos més.\n\nEls ingredients ecològics utilitzats per a l’elaboració d’aquesta cervesa (llúpols i maltes) han estat produïts 100% a la granja cervesera Lo Vilot Farm Brewery – full circle beer project.\n\nMedalla d’or internacional al Barcelona Beer Challenge 2024.	Fermentación espontánea en coolship. Salvaje. Temperatura 6-8 °C. Alcohol 6,8%.\n\nCerveza ácida elaborada con maltas y lúpulos ecológicos de producción propia , y microorganismos del ambiente de nuestra granja cervecera. Envejecida en botas de roble durante 24 meses. Acabada con remolacha. Medalla de oro internacional en el Barcelona Beer Challenge 2024.	Spontaneous fermentation in coolship. Savage. Temperature 6-8ºC. Alcohol 6.8%.\n\nAcid beer made with organic malts and hops of own production , and microorganisms of the environment of our beer farm. Aged in oak barrels for 24 months. Finished with beetroot. International gold medal in the Barcelona Beer Challenge 2024.	Granja Cervesera Lo Vilot	5.37	\N	21.00	6.50	EUR	0	NEW	DRAFT	[{"keyCa": "Alcohol", "keyEn": "Alcohol", "keyEs": "Alcohol", "valueCa": "6,8%", "valueEn": "6,8%", "valueEs": "6,8%"}]	0	0	2026-06-22 21:08:50.286	2026-06-22 21:18:39.158	10	20	500	15	FET_A_CATALUNYA	\N	t	l	0.375	0	f	t	\N	\N	\N	{"storageEs": "", "allergensEs": "Ordi", "businessName": "Granja Cervesera Lo Vilot", "ingredientsEs": "Cervesa"}	\N	Granja Cervesera Lo Vilot	\N	\N	f
cmqpq2ijo000004l8vpyeedv6	cmqmvftzu000504jxy963ldl9	cmpu7a5ww0016l8t25emkzqx4	Cervesa Benzin – Brandy Barrel Aged (Barley Wine)	Cerveza Benzin – Brandy Barrel Aged (Barley Wine)	Benzin – Brandy Barrel Aged Beer (Barley Wine)	cervesa-benzin-brandy-barrel-aged-barley-wine	Fermentació mixta. Salvatge. Apricot sour ale. Temperatura 6-8 ºC.\n\nLa Apricot Dispersión és una cervesa de fermentación mixta, envellida en bota de fusta de roure francés y macerada amb albaricocs locals. De color dorat, aroma afruitat i  perfil salvatge. 250 gr/l de albaricoque. Alcohol: 6%.\n\nEls ingredients ecològics utilitzats en aquesta cervesa (malta i llúpols) han estat elaborats 100% a la granja cervesera Lo Vilot – Full circel beer project.\n\nCervesa que ha estat guardonada amb una medalla de bronze internacional al Barcelona Beer Challenge 2021 en la categoria Wild Specialty Beer.	Fermentación mixta. Salvaje. Temperatura 6-8ºC.\n\nCerveza de fermentación mixta macerada con albaricoque local. De color dorado, aroma afrutado y perfil salvaje. 250 gr/l de albaricoque.	Mixed fermentation. Wild. Temperature 6-8ºC.\n\nMixed fermentation beer macerated with local apricot. Golden in color, fruity aroma and wild profile. 250 gr / l apricot.	Granja Cervesera Lo Vilot	3.68	\N	21.00	4.45	EUR	0	NEW	DRAFT	[{"keyCa": "Alcohol", "keyEn": "Alcohol", "keyEs": "Alcohol", "valueCa": "12%", "valueEn": "12%", "valueEs": "12%"}]	0	0	2026-06-22 21:23:12.612	2026-06-22 21:23:12.612	10	20	500	15	FET_A_CATALUNYA	\N	f	l	0.375	0	f	t	\N	\N	\N	{"storageEs": "", "allergensEs": "Ordi", "businessName": "Granja Cervesera Lo Vilot", "ingredientsEs": "Cervesa"}	\N	Granja Cervesera Lo Vilot	\N	\N	f
cmqpqbzhh000304l8e8yml97e	cmqmvftzu000504jxy963ldl9	cmpu7a5ww0016l8t25emkzqx4	Cervesa Blat Eco (Ecològica)	Cerveza Blat Eco (Ecológica)	Blat Eco Organic Beer	cervesa-blat-eco-ecologica	Cervesa rossa, blat. Temperatura 6-8 ºC.\n\nBlat eco és una cervesa de blat tipus alemany (weissbier) i ecològica (certificada pel CCPAE).\n\nSuau i fàcil de beure, molt poc amarga i amb un toc àcid refrescant. Alta carbonatació, final sec i sensació en boca cremosa, amb notes a\nplàtan i clau d’espècia d’olor que són producte del llevat de blat.\n\nEls ingredients utilitzats han estat 100% produïts i transformat a la granja cervesera Lo Vilot dins del full circle beer project. En aquest cas concret s’utilitza un 50% de malta de blat i un 50% de malta d’ordi.\n\nA la etiqueta hi surt el carro que utilitzem per a cullir el nostre llúpol amb la primera plataforma que utilitzavam per a la collita, a dalt de la plataforma elevada sempre hi havia una de les sòcies/treballadores de la cooperativa per anar tallant el llúpol d’un en un i deixar-lo ordenadament a dins de la carreta. Aquí representa que la sòcia/treballadora salta de la plataforma fins a una piscina de blat.	Ale Rubia de Trigo – Ecológica. Temperatura: 4-8ºC\n\nCerveza rubia de trigo tipo alemán y ecológica. Suave y fácil de beber, muy poco amarga y con un toque ácido refrescante. Final seco, con notas a plátano y clavo de especie de olor que son resultado de la levadura de trigo.	Wheat Blonde Ale – Organic. Temperature: 4-8ºC\n\nGerman and organic wheat blond beer. Soft and easy to drink, very slightly bitter and with a refreshing sour touch. Dry finish, with hints of banana and cloves that are the result of wheat yeast.	Granja Cervesera Lo Vilot	3.68	\N	21.00	4.45	EUR	0	NEW	DRAFT	[{"keyCa": "Alcohol", "keyEn": "Alcohol", "keyEs": "Alcohol", "valueCa": "5,2%", "valueEn": "5,2%", "valueEs": "5,2%"}, {"keyCa": "Ecològica", "keyEn": "Organic", "keyEs": "Ecológica", "valueCa": "Sí", "valueEn": "Yes", "valueEs": "Sí"}]	0	0	2026-06-22 21:30:34.469	2026-06-22 21:30:34.469	10	20	500	15	FET_A_CATALUNYA	\N	f	l	0.375	0	f	t	\N	\N	\N	{"storageEs": "", "allergensEs": "Ordi", "businessName": "Granja Cervesera Lo Vilot", "ingredientsEs": "Cervesa"}	\N	Granja Cervesera Lo Vilot	\N	\N	f
\.


--
-- Data for Name: ProductVariant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ProductVariant" ("id", "productId", "labelCa", "labelEs", "labelEn", "basePrice", "totalPrice", "originalPrice", "stock", "weightGrams", "lengthCm", "widthCm", "heightCm", "imageUrl", "sortOrder", "createdAt", "updatedAt", "netContentUnit", "netContentValue") FROM stdin;
cmpu7dl43009gl8t23gp9fkzt	cmpu7diko009dl8t2xoprra7l	250 g	250 g	250 g	5.91	6.50	\N	24	270	14	9	5	\N	0	2026-05-31 19:59:04.995	2026-05-31 19:59:04.995	\N	\N
cmpu7dl43009hl8t2vjnvhw82	cmpu7diko009dl8t2xoprra7l	500 g	500 g	500 g	10.82	11.90	13.00	18	530	18	11	6	\N	1	2026-05-31 19:59:04.995	2026-05-31 19:59:04.995	\N	\N
cmpu7dl43009il8t2ao169x9w	cmpu7diko009dl8t2xoprra7l	1 kg	1 kg	1 kg	19.55	21.50	26.00	10	1050	22	14	8	\N	2	2026-05-31 19:59:04.995	2026-05-31 19:59:04.995	\N	\N
cmpu7do8y009pl8t2knw1z5lp	cmpu7dlaz009ml8t2m73c1nps	250 ml	250 ml	250 ml	5.36	5.90	\N	30	380	7	7	20	\N	0	2026-05-31 19:59:09.058	2026-05-31 19:59:09.058	\N	\N
cmpu7do8y009ql8t2sob9bmuw	cmpu7dlaz009ml8t2m73c1nps	500 ml	500 ml	500 ml	8.64	9.50	\N	22	700	8	8	24	\N	1	2026-05-31 19:59:09.058	2026-05-31 19:59:09.058	\N	\N
cmpu7do8y009rl8t24cfwiahi	cmpu7dlaz009ml8t2m73c1nps	1 L	1 L	1 L	15.36	16.90	19.50	14	1250	9	9	30	\N	2	2026-05-31 19:59:09.058	2026-05-31 19:59:09.058	\N	\N
cmpu7ds5b009xl8t2vbyk1ik7	cmpu7doh6009ul8t2kayxka2f	250 g	250 g	250 g	6.82	7.50	\N	26	320	7	7	9	\N	0	2026-05-31 19:59:14.111	2026-05-31 19:59:14.111	\N	\N
cmpu7ds5b009yl8t2g9q6uq56	cmpu7doh6009ul8t2kayxka2f	500 g	500 g	500 g	12.27	13.50	\N	18	600	9	9	11	\N	1	2026-05-31 19:59:14.111	2026-05-31 19:59:14.111	\N	\N
cmpu7ds5b009zl8t2sfcbku7y	cmpu7doh6009ul8t2kayxka2f	1 kg	1 kg	1 kg	21.82	24.00	28.00	8	1150	11	11	13	\N	2	2026-05-31 19:59:14.111	2026-05-31 19:59:14.111	\N	\N
cmpyh4s7o000204l26qm6v2t1	cmpu7dh7s009bl8t245ldaxtr	Variant 1	Variant 1	Variant 1	8.26	10.00	100.00	10	1800	28	28	20	https://res.cloudinary.com/gerardcsaperas/image/upload/v1780515733/cangerard/products/iemeufk6gochgr8ljyds.png	0	2026-06-03 19:43:15.156	2026-06-03 19:43:15.156	g	100.000
cmpyh4sac000304l2y738st48	cmpu7dh7s009bl8t245ldaxtr	Variant 2	Variant 2	Variant 2	82.64	100.00	1000.00	10	18000	28	28	20	https://res.cloudinary.com/gerardcsaperas/image/upload/v1780515786/cangerard/products/iu1kuijhuzwhgiql5psn.png	1	2026-06-03 19:43:15.252	2026-06-03 19:43:15.252	kg	100.000
\.


--
-- Data for Name: CartItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."CartItem" ("id", "userId", "sessionId", "productId", "quantity", "createdAt", "updatedAt", "savedForLater", "variantId") FROM stdin;
cmpwtrpvo000004jy40moei4q	cmpu7a2oe0000l8t232dsj2jq	\N	cmpu7bljf0055l8t280uw0rqw	1	2026-06-02 16:01:28.26	2026-06-02 16:01:28.26	f	\N
cmqayr7es000004l2u2f95y3t	\N	85d84df5-62c2-410b-8ac2-9cb84e24320b	cmpu7dd7h0094l8t28p1b078o	1	2026-06-12 13:29:48.869	2026-06-12 13:29:48.869	f	\N
\.


--
-- Data for Name: ConsentRecord; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ConsentRecord" ("id", "userId", "type", "granted", "textShown", "locale", "ip", "createdAt") FROM stdin;
cmqii08ya000204ih299n5mtl	cmqii08xh000004ihicxy4c9l	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	79.153.4.99	2026-06-17 20:03:06.678
cmqij6pt1000204l7l575anh4	cmqij6psc000004l7tk29jibo	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	79.116.218.206	2026-06-17 20:36:08.076
cmqijdssb000604l7e3sozcqb	cmqijdsre000404l7qh6x0ynm	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	92.185.130.60	2026-06-17 20:41:38.522
cmqijf9rb000204jrlu9ezsle	cmqijf9r0000004jrses2kfx5	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	188.239.146.161	2026-06-17 20:42:47.196
cmqin06qt000204jp5y7tu2fi	cmqin06q0000004jpgyabnte8	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	137.101.247.93	2026-06-17 22:23:01.897
cmqj30iye000204l8xvi6ala8	cmqj30ixm000004l8n61y9hs3	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	2.57.131.139	2026-06-18 05:51:11.578
cmqj3idc6000204kyle72u5wb	cmqj3idbs000004kyityoqw50	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	85.184.225.36	2026-06-18 06:05:04.121
cmqj3pxv4000604kyxf4ozq9j	cmqj3pxtw000404kyi6uwc4i3	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	90.167.86.149	2026-06-18 06:10:57.284
cmqj5qon6000204jytx55mj62	cmqj5qomq000004jy2848o1zt	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	79.159.220.52	2026-06-18 07:07:31.25
cmqj6ikds000204jsfusaiu2m	cmqj6ikde000004jsva6b3jbs	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	79.157.178.27	2026-06-18 07:29:12.098
cmqj83mm6000304ilb0h4p9lo	cmqj83ml3000104ilciuo697p	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	83.50.2.169	2026-06-18 08:13:34.359
cmqj91p7c000704ilqej7sbqa	cmqj91p6i000504ilstx49t1o	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	104.28.88.130	2026-06-18 08:40:04.026
cmqj9hwdj000204jvsdiyp6bg	cmqj9hwcj000004jvioj091n6	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	84.79.3.166	2026-06-18 08:52:39.811
cmqjazpex000204kz11nst79k	cmqjazpe4000004kz4d22drzp	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	46.251.168.165	2026-06-18 09:34:30.22
cmqjdtsd6000204l7yy263lae	cmqjdtsco000004l78t08zf7l	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	46.27.219.210	2026-06-18 10:53:52.968
cmqjf6xza000204jl0o9044wc	cmqjf6xyq000004jl4zdta7ss	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	83.46.64.42	2026-06-18 11:32:06.387
cmqjg5csh000604jlwiclqn94	cmqjg5cry000404jlna8wgvc7	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	46.251.165.217	2026-06-18 11:58:51.886
cmqjg62q1000204jxqos2lt54	cmqjg62po000004jxmzn6rskx	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	46.222.17.15	2026-06-18 11:59:25.5
cmqjgfuy7000a04jlyg38fb9n	cmqjgfuxy000804jl2m66wf36	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	81.33.19.137	2026-06-18 12:07:01.99
cmqjh2bur000204jvn82tsdbf	cmqjh2bty000004jvr8cham0u	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	86.127.229.123	2026-06-18 12:24:30.31
cmqjhare0000204ihcrcsx6vj	cmqjhardd000004ihc5hi51rr	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	195.55.233.16	2026-06-18 12:31:03.697
cmqjhbbgs000204lb3zr29lp1	cmqjhbbgi000004lb371296dq	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	139.47.35.116	2026-06-18 12:31:29.731
cmqjjkr0a000204l1nynknw1q	cmqjjkqza000004l1z6ddmz1w	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	85.50.130.240	2026-06-18 13:34:48.982
cmqjkjjoy000204jr2hcseatw	cmqjkjjom000004jrztfykx5l	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	83.42.255.100	2026-06-18 14:01:52.486
cmqjlj64a000204l4qxrfwjyq	cmqjlj63u000004l4xr2w5bko	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	85.87.7.219	2026-06-18 14:29:34.506
cmqjlqvqy000204jp4gkyueoh	cmqjlqvqj000004jpj2qde3xm	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	206.204.155.150	2026-06-18 14:35:34.315
cmqjlvezu000604jpz7uk6ho7	cmqjlvezk000404jpi582pjka	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	83.41.148.205	2026-06-18 14:39:05.888
cmqjmz0c1000204l4swyh885s	cmqjmz0ba000004l4133jkklx	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	155.190.46.7	2026-06-18 15:09:53.11
cmqjo4ppy000204l7nwsh24rp	cmqjo4ppb000004l7jzqlb2o1	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	79.154.227.188	2026-06-18 15:42:18.911
cmqjpf8xs000204jv5neq048f	cmqjpf8x1000004jv5mfwi8ci	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	83.46.89.230	2026-06-18 16:18:29.99
cmqjply8w000204js6t5i13cv	cmqjply8e000004js8i5o3mhw	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	79.154.97.55	2026-06-18 16:23:42.734
cmqjrdhq3000204jvpwm4159k	cmqjrdhpd000004jv6cgs9aw9	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	85.58.32.50	2026-06-18 17:13:07.298
cmqjrvg83000204i56tfdlmlc	cmqjrvg7k000004i5sxnpv9r2	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	206.204.153.248	2026-06-18 17:27:05.168
cmqjwpk1u000204ky4kpvykib	cmqjwpk16000004kydtgd3hxq	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	185.222.167.92	2026-06-18 19:42:28.266
cmqjxwvm8000604ky768ked6f	cmqjxwvlq000404kybs366h86	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	146.75.210.16	2026-06-18 20:16:09.47
cmqjyvzd5000a04kyqbzbdhti	cmqjyvzcd000804kyqmjycah7	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	217.65.139.74	2026-06-18 20:43:27.277
cmqjz8y6c000204jjwphgqvzj	cmqjz8y60000004jjtacmeyo2	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	62.174.165.139	2026-06-18 20:53:32.281
cmqjzntsb000604jj4vaxk7xe	cmqjzntrx000404jjp08l8xyb	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	79.159.169.32	2026-06-18 21:05:06.429
cmqjzr356000204jp3o3a8hm8	cmqjzr34s000004jpt47ocl2p	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	93.176.130.24	2026-06-18 21:07:38.525
cmqk0s2fj000204l55tlv4wxp	cmqk0s2f8000004l5ibsuitun	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	137.101.248.225	2026-06-18 21:36:23.876
cmqk5plr0000204l0o2hri2y1	cmqk5plq5000004l044h0kz47	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	85.251.67.69	2026-06-18 23:54:27.005
cmqkcgnla000204l17w1rlwy2	cmqkcgnkq000004l1732k7k1h	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	188.84.43.80	2026-06-19 03:03:26.81
cmqkraaho000204l1nbatn53b	cmqkraagz000004l1vp6a90nk	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	83.45.93.52	2026-06-19 09:58:24.131
cmqkyoh1f000204l1xz6tr4h7	cmqkyoh0u000004l1w2wnx1fq	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	79.155.90.146	2026-06-19 13:25:23.118
cmql0skez000204l1f7i40ms5	cmql0skeh000004l1uy8ngvre	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	31.4.243.197	2026-06-19 14:24:33.353
cmql303c7000204lbqgygncxl	cmql303bs000004lby838azbl	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	83.46.137.56	2026-06-19 15:26:23.704
cmql3cluo000604lblyu1glfi	cmql3clua000404lb17o23afm	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	79.152.125.44	2026-06-19 15:36:07.57
cmql8fxr3000204lb2x01xktr	cmql8fxqj000004lbpnll7hbv	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	90.168.174.141	2026-06-19 17:58:41.035
cmqlce6e5000204l8qyt0r9fg	cmqlce6df000004l8z67gbcvj	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	79.152.102.206	2026-06-19 19:49:17.379
cmqmf61mk000204jubqo7cj1m	cmqmf61lt000004ju3al1fnzd	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	95.126.96.201	2026-06-20 13:54:42.977
cmqmi6rap000204l2i1lunpcf	cmqmi6ra1000004l2mw67823n	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	150.228.85.114	2026-06-20 15:19:15.097
cmqmxx8ry000204lgjjxaqe1r	cmqmxx8r8000004lgn5feflb6	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	139.47.116.28	2026-06-20 22:39:45.045
cmqna76jm000204jx3mic1605	cmqna76iv000004jxqktkxab5	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	88.2.250.53	2026-06-21 04:23:24.103
cmqnkd6gk000204jvp0exkyjc	cmqnkd6fu000004jvb313k6kh	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	83.41.252.217	2026-06-21 09:08:00.09
cmqnojitb000204l49evnmkj4	cmqnojisi000004l4vyamzrfz	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	104.28.34.163	2026-06-21 11:04:54.498
cmqo0vd3k000204l46acxzx2f	cmqo0vd2p000004l4gh8c8yxn	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	81.47.4.115	2026-06-21 16:50:02.353
cmqpmax0i000204jmja9b16lb	cmqpmawzl000004jmlne1m13l	PRIVACY_NOTICE	t	He llegit i accepto l'avís de privadesa.	ca	104.28.34.164	2026-06-22 19:37:46.113
\.


--
-- Data for Name: ContactMessage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ContactMessage" ("id", "reason", "name", "email", "subject", "body", "locale", "userId", "handled", "handledAt", "createdAt") FROM stdin;
cmq6zimj3000004gwitzd4sdl	LOGISTICS	Fredrick	fredrick.cohen45@gmail.com	Suggestions to Improve Your Website’s User Experience cangerard.com	Hello,\r\n\r\nI noticed a few design-related issues on your website cangerard.com that could impact its performance and user experience.\r\n\r\nWould you like me to send a screenshot highlighting these errors? I can also prepare a detailed audit report, along with a proposal and pricing to improve your website’s design and optimize its ranking.\r\n\r\nLooking forward to your response.\r\n\r\nKind regard	ca	\N	f	\N	2026-06-09 18:40:03.471
cmqaywyme000004jug2luj40d	OTHER	Hola	magikpat@protonmail.com	Teniu això obert jejeje	de fet varies coses :(	ca	\N	f	\N	2026-06-12 13:34:17.414
cmqf08cyn000005gn27kjg8u8	OTHER	JUDITH CONTRERAS	judith.contreras@impackta.com	Can Gerard & GLS	Hola, \r\n\r\nSóc la Judith, de GLS 📦🚀.\r\n\r\nM'agradaria entendre com gestioneu actualment la paqueteria a  i veure si hi ha punts clars on puguem simplificar la vostra operativa o millorar costos 💯.\r\n\r\n¿Què us sembla si en parlem en una trucada ràpida?\r\n\r\nSalutacions, 👉	ca	\N	f	\N	2026-06-15 09:22:13.535
\.


--
-- Data for Name: DsaNotice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."DsaNotice" ("id", "targetType", "targetId", "targetUrl", "reporterName", "reporterEmail", "reporterUserId", "motivation", "category", "goodFaith", "status", "priority", "decision", "statementOfReasons", "createdAt", "resolvedAt") FROM stdin;
\.


--
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Order" ("id", "orderNumber", "buyerId", "status", "subtotal", "shippingTotal", "grandTotal", "currency", "shippingAddress", "stripePaymentIntentId", "paidAt", "createdAt", "updatedAt", "shippingMarginDelta", "shippingRealCost", "shippingService", "shippingVatBreakdown", "vatBreakdown", "ebookConsentAt") FROM stdin;
cmpvcikjr0008yjt2tf4ihh33	CG-20260601-DIMMPF	cmpu7a2oe0000l8t232dsj2jq	PAID	129.00	0.00	129.00	EUR	{"city": "test", "phone": "667717567", "street": "test", "country": "ES", "province": "test", "recipient": "test", "postalCode": "08520"}	pi_3TdXUEGkg0BRtJUg1YCuUeRI	2026-06-01 15:10:56.011	2026-06-01 15:10:41.799	2026-06-01 15:10:56.065	0.00	0.00	custom	{}	[{"base": 117.27, "rate": 10, "cuota": 11.73}]	\N
cmqb5ndd5000104lbu95woi7r	CG-20260612-NICKI4	cmpvaoc350000yjt2w4ur6be3	CANCELLED	12.90	3.95	16.85	EUR	{"city": "LES FRANQUESES DEL VALLES", "phone": "667717567", "street": "c/ Test cangerard.cat", "country": "ES", "province": "Barcelona", "recipient": "Test CanGerard", "postalCode": "08520"}	pi_3ThYAOGkg0BRtJUg1MIXePv0	2026-06-12 16:43:02.579	2026-06-12 16:42:47.273	2026-06-12 19:32:35.415	0.00	3.95	standard	{"base": 3.26, "rate": 21, "cuota": 0.69}	[{"base": 11.73, "rate": 10, "cuota": 1.17}]	\N
\.


--
-- Data for Name: InvoiceRequest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."InvoiceRequest" ("id", "orderId", "buyerId", "taxProfileSnapshot", "status", "requestedAt", "expiresAt") FROM stdin;
\.


--
-- Data for Name: InvoiceRecipient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."InvoiceRecipient" ("id", "invoiceRequestId", "sellerId", "status", "notifiedAt", "fulfilledAt") FROM stdin;
\.


--
-- Data for Name: InvoiceDocument; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."InvoiceDocument" ("id", "invoiceRecipientId", "cloudinaryPublicId", "pdfUrl", "invoiceNumber", "issueDate", "uploadedByUserId", "uploadedAt") FROM stdin;
\.


--
-- Data for Name: ModerationAction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ModerationAction" ("id", "measure", "sellerId", "productId", "reviewId", "statementOfReasons", "actorId", "appealStatus", "createdAt") FROM stdin;
\.


--
-- Data for Name: Notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Notification" ("id", "userId", "type", "payload", "readAt", "emailedAt", "createdAt") FROM stdin;
cmqiu5fr7000004jupaanaz9x	cmpu7a31d0005l8t2bcdsydsr	SELLER_SHIPMENT_DELAYED	{"days": 16, "orderNumber": "CG-20260601-DIMMPF"}	\N	2026-06-18 01:43:04.188	2026-06-18 01:43:04.195
cmqk97laa000004l152z7cvpr	cmpu7a31d0005l8t2bcdsydsr	SELLER_SHIPMENT_DELAYED	{"days": 17, "orderNumber": "CG-20260601-DIMMPF"}	\N	2026-06-19 01:32:25.071	2026-06-19 01:32:25.09
cmqlonfpt000004i5zqh12m3a	cmpu7a31d0005l8t2bcdsydsr	SELLER_SHIPMENT_DELAYED	{"days": 18, "orderNumber": "CG-20260601-DIMMPF"}	\N	2026-06-20 01:32:24.778	2026-06-20 01:32:24.785
cmqn3ztk9000004l1ja1vm4cl	cmpu7a31d0005l8t2bcdsydsr	SELLER_SHIPMENT_DELAYED	{"days": 19, "orderNumber": "CG-20260601-DIMMPF"}	\N	2026-06-21 01:29:43.01	2026-06-21 01:29:43.017
cmqii08ze000304ihbc60w0i2	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Meritxell Guardiola Sánchez", "email": "txellguardiola@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-17 20:03:06.746
cmqij6pub000304l7g4wn8vui	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Dego M", "email": "degomedinasoto12@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-17 20:36:08.147
cmqijdstb000704l7qs0336a2	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Marey Fofana", "email": "mareyfofana@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-17 20:41:38.591
cmqijf9s9000304jre3f7iwgd	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Mariona Alamego Uceda", "email": "mariona.alau@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-17 20:42:47.241
cmqin06s7000304jpqakv3zle	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Laura Gonzalez", "email": "lauragogi7@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-17 22:23:01.975
cmqj30j01000304l89hyp7blr	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Mireia Manyà", "email": "mireia.manya@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 05:51:11.665
cmqj3idd8000304kyhx24pkf4	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Gloria", "email": "gloria.maspoch@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 06:05:04.172
cmqj3pxw6000704kyz8fp8uxt	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Joana Valero Calero", "email": "valerotax@hotmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 06:10:57.366
cmqj5qood000304jyqluvq0is	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Laura Barneda Sureda", "email": "laurabsu@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 07:07:31.309
cmqj6ikg1000304jsetmfree2	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "laia alsina", "email": "laiaalsina3@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 07:29:12.193
cmqj83mnm000404il2s35weuy	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Francesc Agustinoy Conde", "email": "frankie.1962.8@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 08:13:34.45
cmqj91p8a000804ilodqg5wa3	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Salvador Cardús Ros", "email": "salvador@cardus.cat"}	2026-06-21 06:00:43.981	\N	2026-06-18 08:40:04.09
cmqj9hwev000304jvelawmvpy	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Santi Alias Luis", "email": "santiago.alias@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 08:52:39.895
cmqjazpg0000304kzkxyhrhh2	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "vanesa tudela", "email": "embla77@hotmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 09:34:30.288
cmqjdtsed000304l7yrkqv0sm	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Enric Castillo", "email": "chicovip@me.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 10:53:53.029
cmqjf6y0j000304jlu9wg109x	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Marta Santamaria", "email": "martastmary@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 11:32:06.451
cmqjg5cti000704jlwrja10w6	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "m teresa prades", "email": "pradesmteresa561@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 11:58:51.942
cmqjg62r0000304jx461xmn4k	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Jorge Serrate lamiel", "email": "fracasopolar@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 11:59:25.548
cmqjgfuyz000b04jlmrtnuds8	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Montserrat Andreu Domingo", "email": "montseka2@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 12:07:02.027
cmqjh2bw5000304jvm9zblcu9	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Francesc Balcells Aleu", "email": "francescbalcellsaleu@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 12:24:30.389
cmqjharf4000304ihpn74iovf	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Raul Santamaria Menen", "email": "raul.sa.me@icloud.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 12:31:03.76
cmqjhbbhx000304lbb27m1n90	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Alba A", "email": "estrellayluna5@hotmail.es"}	2026-06-21 06:00:43.981	\N	2026-06-18 12:31:29.781
cmqjjkr1w000304l12ym0pfov	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "PERE LOPEZ PRADO", "email": "plopezpr11@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 13:34:49.076
cmqjkjjpy000304jr0o4trpn0	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Eduard", "email": "esanuyriera@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 14:01:52.534
cmqjlj65c000304l4eg8h5qda	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Miquel Amorós Ortiz", "email": "weskins@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 14:29:34.56
cmqjlqvs0000304jpm6anvftr	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Lluis Nadal", "email": "nadalfarmacia2@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 14:35:34.368
cmqjlvf0p000704jped80i8ft	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Sònia D. Boix", "email": "noctilucass@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 14:39:05.929
cmqjmz0d3000304l4gqan2iok	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Anna Garcia", "email": "annabelengs@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 15:09:53.175
cmqjo4pra000304l7e2vn253f	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Joan Tortosa Pons", "email": "joan.j.tortosa@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 15:42:18.982
cmqjpf8z1000304jvt20815gk	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Laura Cerrato Gallego", "email": "lcg1975.lcg@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 16:18:30.061
cmqjply9x000304jsssegcs1f	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Nil Mas Gallemí", "email": "nilmas.nm@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 16:23:42.789
cmqjrdhra000304jvb0ebvzs7	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Teresa Cufi", "email": "mteresa.cufi@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 17:13:07.366
cmqjrvg96000304i5lpievn26	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Josep Ros Cas", "email": "casrosjo@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 17:27:05.226
cmqjwpk36000304kynkt39241	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Jordi Lleo Subirats", "email": "jollsu.jls@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 19:42:28.338
cmqjxwvn5000704kyntuztfuv	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Jaume Saltó Garrabé", "email": "jsgxaume@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 20:16:09.521
cmqjyvze5000b04ky8w8uayqm	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Marc Marull", "email": "marcmarull@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 20:43:27.341
cmqjz8y76000304jj8vvnfgl9	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Pere Martinez Rodriguez", "email": "peremr264@proton.me"}	2026-06-21 06:00:43.981	\N	2026-06-18 20:53:32.322
cmqjzntt7000704jjl7g5u3h9	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Núria Mañe Sal", "email": "nuria.1967@hotmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 21:05:06.475
cmqjzr36b000304jpkljppbkl	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Jordi Medina Sala", "email": "jordimedi@protonmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 21:07:38.579
cmqk0s2gl000304l5vcbzizhf	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "M. Angeles Puertolas Acin", "email": "edelweis68@hotmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 21:36:23.925
cmqk5plsf000304l0mgbkoe19	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Xènia Josa Ferrer", "email": "ecofamilysensetoxics@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-18 23:54:27.087
cmqkcgnmx000304l1qrnvd08l	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Oriol Pita Ortin", "email": "oriolpita@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-19 03:03:26.889
cmqkraajb000304l1pyhkz791	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Antoni Olle", "email": "antoniolle02@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-19 09:58:24.216
cmqkyoh2p000304l1i44wdg5w	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Núria Grané Alsina", "email": "ngrane61@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-19 13:25:23.185
cmql0skg5000304l1fa5z7y8i	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Eugènia Revilla Esteve", "email": "eugenia.revilla@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-19 14:24:33.413
cmql303df000304lbwzwr036z	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Joan Riba", "email": "joanriba@msn.com"}	2026-06-21 06:00:43.981	\N	2026-06-19 15:26:23.763
cmql3clvl000704lbxgc6n0cr	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Jordi Vila Vila", "email": "jordivilavila@movistar.es"}	2026-06-21 06:00:43.981	\N	2026-06-19 15:36:07.617
cmql8fxsd000304lbmpv35275	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Carles Merino", "email": "carles@merino.cat"}	2026-06-21 06:00:43.981	\N	2026-06-19 17:58:41.101
cmqlce6fp000304l8a3lhhy39	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Trinidad Espejo", "email": "espetri64@hotmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-19 19:49:17.461
cmqmf61ny000304ju4ljibjw9	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Jesús Rodríguez Giné", "email": "rodriguezgine@hotmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-20 13:54:43.054
cmqmi6rc1000304l20ef1p61e	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Albert Costa", "email": "franqui1014@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-20 15:19:15.169
cmqmxx8t3000304lgd6cgbv01	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Raül Roch", "email": "raulescamot@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-20 22:39:45.111
cmqna76l0000304jxiysr20kj	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "M. Carme Girart", "email": "mcarmegirart@gmail.com"}	2026-06-21 06:00:43.981	\N	2026-06-21 04:23:24.18
cmqndbkb4000104jvtwzr6ki6	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_PRODUCT	{"storeName": "Granja Cervesera Lo Vilot", "productTitle": "Test"}	2026-06-21 06:00:43.981	\N	2026-06-21 05:50:47.44
cmqnkd6id000304jvq6ram64d	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Pilar Trubat Alltarriba", "email": "pilartrubat@hotmail.com"}	\N	\N	2026-06-21 09:08:00.181
cmqnojiuj000304l4h1lp5rvo	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Isidre sala Elías", "email": "isidre.sala@gmail.com"}	\N	\N	2026-06-21 11:04:54.571
cmqo0vd4y000304l4n9hljqf2	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Laura Giné Prades", "email": "lauragine@gmail.com"}	\N	\N	2026-06-21 16:50:02.434
cmqojfoxm000004l55tn7glqf	cmpu7a31d0005l8t2bcdsydsr	SELLER_SHIPMENT_DELAYED	{"days": 20, "orderNumber": "CG-20260601-DIMMPF"}	\N	2026-06-22 01:29:43.914	2026-06-22 01:29:43.93
cmqpmax25000304jmzde4gqay	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_USER	{"name": "Sergi Segarra", "email": "sergisegarra2@gmail.com"}	\N	\N	2026-06-22 19:37:46.205
cmqpncrrt000004le33myhorw	cmpu7a31d0005l8t2bcdsydsr	SELLER_PRODUCT_MODERATED	{"action": "REMOVED", "productTitle": "Cava Rosat Brut"}	\N	2026-06-22 20:07:12.275	2026-06-22 20:07:12.281
cmqppk17o000204lh0tovorue	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_PRODUCT	{"storeName": "Granja Cervesera Lo Vilot", "productTitle": "Cervesa Betabel"}	\N	\N	2026-06-22 21:08:50.34
cmqppnj87000404lhn4ilg5lu	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_PRODUCT	{"storeName": "Granja Cervesera Lo Vilot", "productTitle": "Cervesa Holy Wood"}	\N	\N	2026-06-22 21:11:33.655
cmqppwbz8000304l5h6bcrw0f	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_PRODUCT	{"storeName": "Granja Cervesera Lo Vilot", "productTitle": "Cervesa Apricot Dispersion"}	\N	\N	2026-06-22 21:18:24.164
cmqpq2ikt000204l8dllw8p8w	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_PRODUCT	{"storeName": "Granja Cervesera Lo Vilot", "productTitle": "Cervesa Benzin – Brandy Barrel Aged (Barley Wine)"}	\N	\N	2026-06-22 21:23:12.653
cmqpqbzim000504l87jwnp9ta	cmpu7a2oe0000l8t232dsj2jq	ADMIN_NEW_PRODUCT	{"storeName": "Granja Cervesera Lo Vilot", "productTitle": "Cervesa Blat Eco (Ecològica)"}	\N	\N	2026-06-22 21:30:34.51
cmqpyfpbf000004jpp5bw7izh	cmpu7a31d0005l8t2bcdsydsr	SELLER_SHIPMENT_DELAYED	{"days": 21, "orderNumber": "CG-20260601-DIMMPF"}	\N	2026-06-23 01:17:24.835	2026-06-23 01:17:24.843
\.


--
-- Data for Name: NotificationPreference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."NotificationPreference" ("id", "userId", "type", "inApp", "email", "whatsapp", "updatedAt") FROM stdin;
\.


--
-- Data for Name: SellerShippingMethod; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."SellerShippingMethod" ("id", "sellerId", "nameCa", "nameEs", "nameEn", "price", "currency", "leadTimeDays", "active", "sortOrder", "minWeightGrams", "maxWeightGrams", "minOrderAmount", "maxOrderAmount", "maxLengthCm", "maxWidthCm", "maxHeightCm", "createdAt", "updatedAt") FROM stdin;
cmpu7a2xu0004l8t27e4pe1qt	cmpu7a2qp0002l8t2jom93w15	Enviament gratuït a partir de 25 €	Envío gratis a partir de 25 €	Free shipping over €25	0.00	EUR	2-4	t	0	\N	\N	25.00	\N	\N	\N	\N	2026-05-31 19:56:21.474	2026-05-31 19:56:21.474
cmpu7a3b60009l8t2un7lp59m	cmpu7a33m0007l8t2zwqbkwf7	Enviament gratuït a partir de 40 €	Envío gratis a partir de 40 €	Free shipping over €40	0.00	EUR	2-4	t	0	\N	\N	40.00	\N	\N	\N	\N	2026-05-31 19:56:21.954	2026-05-31 19:56:21.954
cmpu7a3ok000el8t2ipo8lwla	cmpu7a3h7000cl8t27muo350k	Enviament gratuït a partir de 50 €	Envío gratis a partir de 50 €	Free shipping over €50	0.00	EUR	2-5	t	0	\N	\N	50.00	\N	\N	\N	\N	2026-05-31 19:56:22.436	2026-05-31 19:56:22.436
cmpu7a425000jl8t2no68pzs8	cmpu7a3uq000hl8t2izdspdci	Enviament gratuït a partir de 30 €	Envío gratis a partir de 30 €	Free shipping over €30	0.00	EUR	1-3	t	0	\N	\N	30.00	\N	\N	\N	\N	2026-05-31 19:56:22.925	2026-05-31 19:56:22.925
cmpu7a4fk000ol8t2kgp6l31y	cmpu7a47u000ml8t2rpsunk86	Enviament gratuït a partir de 60 €	Envío gratis a partir de 60 €	Free shipping over €60	0.00	EUR	3-5	t	0	\N	\N	60.00	\N	\N	\N	\N	2026-05-31 19:56:23.408	2026-05-31 19:56:23.408
cmpu7a4rt000sl8t2kw42q43u	cmpu7a4lj000rl8t22nheyztj	Enviament gratuït a partir de 70 €	Envío gratis a partir de 70 €	Free shipping over €70	0.00	EUR	3-6	t	0	\N	\N	70.00	\N	\N	\N	\N	2026-05-31 19:56:23.849	2026-05-31 19:56:23.849
\.


--
-- Data for Name: Shipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Shipment" ("id", "orderId", "sellerId", "service", "realCost", "sendcloudParcelId", "labelUrl", "trackingNumber", "trackingStatus", "carrier", "idempotencyKey", "labelSentToVendorAt", "createdAt", "updatedAt", "methodName", "sellerShippingMethodId") FROM stdin;
cmpvcikr2000byjt2xzc2tvlw	cmpvcikjr0008yjt2tf4ihh33	cmpu7a33m0007l8t2zwqbkwf7	custom	0.00	\N	\N	\N	seller_fulfilled	\N	cmpvcikjr0008yjt2tf4ihh33-cmpu7a33m0007l8t2zwqbkwf7	2026-06-01 15:10:56.758	2026-06-01 15:10:42.062	2026-06-01 15:10:56.759	Enviament gratuït a partir de 40 €	cmpu7a3b60009l8t2un7lp59m
cmqb5ndrm000404lbwq9r2ozd	cmqb5ndd5000104lbu95woi7r	cmpu7a33m0007l8t2zwqbkwf7	standard	3.95	MOCK-L8T2ZWQBKWF7	/uploads/labels/mock-cmqb5ndrm000404lbwq9r2ozd.pdf	CGMOCKL8T2ZWQBKWF7	label_created	mock-carrier	cmqb5ndd5000104lbu95woi7r-cmpu7a33m0007l8t2zwqbkwf7	2026-06-12 16:43:04.317	2026-06-12 16:42:47.794	2026-06-12 16:43:04.318	\N	\N
\.


--
-- Data for Name: OrderItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."OrderItem" ("id", "orderId", "productId", "sellerId", "productTitle", "productImageUrl", "unitPrice", "quantity", "lineTotal", "platformFee", "sellerEarnings", "stripeTransferId", "fulfillmentStatus", "createdAt", "updatedAt", "shipmentId", "variantId", "variantLabel", "baseAmount", "vatAmount", "vatRate") FROM stdin;
cmpvcikl40009yjt2au1qm4v5	cmpvcikjr0008yjt2tf4ihh33	cmpu7bljf0055l8t280uw0rqw	cmpu7a33m0007l8t2zwqbkwf7	Torró d'Agramunt IGP	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701168/cangerard/seed/agramunt-nougat-igp-1.svg	12.90	10	129.00	12.90	113.39	\N	UNFULFILLED	2026-06-01 15:10:41.799	2026-06-01 15:10:42.161	cmpvcikr2000byjt2xzc2tvlw	\N	\N	117.27	11.73	10.00
cmqb5ndg5000204lbym2aqpvi	cmqb5ndd5000104lbu95woi7r	cmpu7bljf0055l8t280uw0rqw	cmpu7a33m0007l8t2zwqbkwf7	Torró d'Agramunt IGP	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701168/cangerard/seed/agramunt-nougat-igp-1.svg	12.90	1	12.90	1.29	11.34	\N	CANCELLED	2026-06-12 16:42:47.273	2026-06-12 19:32:35.512	cmqb5ndrm000404lbwq9r2ozd	\N	\N	11.73	1.17	10.00
\.


--
-- Data for Name: Payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Payment" ("id", "orderId", "provider", "method", "status", "amount", "currency", "stripePaymentIntentId", "stripeChargeId", "createdAt", "updatedAt", "stripeBalanceTxId", "stripeFeeAmount") FROM stdin;
cmpvcikmc000ayjt2ourov3zy	cmpvcikjr0008yjt2tf4ihh33	STRIPE	CARD	SUCCEEDED	129.00	EUR	pi_3TdXUEGkg0BRtJUg1YCuUeRI	ch_3TdXUEGkg0BRtJUg1Kmn3Bz8	2026-06-01 15:10:41.799	2026-06-01 15:10:56.111	\N	\N
cmqb5ndjd000304lbru2xd3ql	cmqb5ndd5000104lbu95woi7r	STRIPE	CARD	REFUNDED	16.85	EUR	pi_3ThYAOGkg0BRtJUg1MIXePv0	ch_3ThYAOGkg0BRtJUg1xeo8lct	2026-06-12 16:42:47.273	2026-06-12 19:32:35.317	\N	\N
\.


--
-- Data for Name: PlatformInvoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PlatformInvoice" ("id", "concept", "status", "sellerId", "buyerId", "orderId", "period", "baseAmount", "vatRate", "vatAmount", "totalAmount", "holdedInvoiceId", "holdedInvoiceNum", "holdedSeries", "pdfUrl", "rectifiesId", "lastError", "attemptedAt", "createdAt", "updatedAt", "sourceOrderId", "orderKey", "pdfPublicId") FROM stdin;
cmqb5nqny000504lbovd9odq5	SHIPPING	ISSUED	\N	cmpvaoc350000yjt2w4ur6be3	cmqb5ndd5000104lbu95woi7r	\N	3.26	21.00	0.69	3.95	6a2c37199fa7ce743f0c8508	F260023	\N	\N	\N	\N	2026-06-12 16:43:06.05	2026-06-12 16:43:04.511	2026-06-12 16:43:06.052	\N	cmqb5ndd5000104lbu95woi7r:platform:SHIPPING	\N
cmqbbptiu000304l2wih60isu	SHIPPING_RECTIFY	ISSUED	\N	cmpvaoc350000yjt2w4ur6be3	cmqb5ndd5000104lbu95woi7r	\N	3.26	21.00	0.69	3.95	6a2c5ed74134af7f730f50ab	CN260002	\N	\N	cmqb5nqny000504lbovd9odq5	\N	2026-06-12 19:32:40.041	2026-06-12 19:32:39.222	2026-06-12 19:32:40.043	\N	cmqb5ndd5000104lbu95woi7r:platform:SHIPPING_RECTIFY	\N
\.


--
-- Data for Name: ProductImage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ProductImage" ("id", "productId", "url", "alt", "sortOrder") FROM stdin;
cmpu7ab1y001xl8t2kk244dy4	cmpu7a6sh001wl8t2m4ikuyq1	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701089/cangerard/seed/cava-brut-nature-gran-reserva-1.svg	Cava Brut Nature Gran Reserva	0
cmpu7ab1y001yl8t28muu3qsm	cmpu7a6sh001wl8t2m4ikuyq1	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701093/cangerard/seed/cava-brut-nature-gran-reserva-2.svg	Cava Brut Nature Gran Reserva	1
cmpu7ab1y001zl8t20cm5gvrr	cmpu7a6sh001wl8t2m4ikuyq1	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701094/cangerard/seed/cava-brut-nature-gran-reserva-3.svg	Cava Brut Nature Gran Reserva	2
cmpu7ae0b0026l8t28a6r5hyz	cmpu7ab9q0025l8t2qauh9733	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701097/cangerard/seed/rose-cava-brut-1.svg	Cava Rosat Brut	0
cmpu7ae0b0027l8t264e93hen	cmpu7ab9q0025l8t2qauh9733	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701098/cangerard/seed/rose-cava-brut-2.svg	Cava Rosat Brut	1
cmpu7agzf002dl8t2r5cs8g5l	cmpu7ae7j002cl8t25myc6ukc	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701100/cangerard/seed/cava-reserva-semi-dry-1.svg	Cava Reserva Semisec	0
cmpu7agzg002el8t2klq4vgqr	cmpu7ae7j002cl8t25myc6ukc	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701102/cangerard/seed/cava-reserva-semi-dry-2.svg	Cava Reserva Semisec	1
cmpu7albf002jl8t2dc8ltcco	cmpu7ah6y002il8t2w5hp0t4k	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701104/cangerard/seed/red-wine-do-priorat-1.svg	Vi Negre DO Priorat	0
cmpu7albf002kl8t2hf0zpy23	cmpu7ah6y002il8t2w5hp0t4k	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701106/cangerard/seed/red-wine-do-priorat-2.svg	Vi Negre DO Priorat	1
cmpu7albf002ll8t2aco3iz8w	cmpu7ah6y002il8t2w5hp0t4k	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701108/cangerard/seed/red-wine-do-priorat-3.svg	Vi Negre DO Priorat	2
cmpu7aodz002tl8t2aspavquy	cmpu7alji002sl8t2nllk5q6w	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701110/cangerard/seed/white-wine-do-penedes-1.svg	Vi Blanc DO Penedès	0
cmpu7aodz002ul8t2mcoobto3	cmpu7alji002sl8t2nllk5q6w	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701112/cangerard/seed/white-wine-do-penedes-2.svg	Vi Blanc DO Penedès	1
cmpu7armi0030l8t2yc5l9rvd	cmpu7aol1002zl8t2p63c2ruk	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701115/cangerard/seed/red-wine-do-montsant-1.svg	Vi Negre DO Montsant	0
cmpu7armi0031l8t2jdscfv0v	cmpu7aol1002zl8t2p63c2ruk	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701117/cangerard/seed/red-wine-do-montsant-2.svg	Vi Negre DO Montsant	1
cmpu7aufm0036l8t2jnow1hpr	cmpu7arti0035l8t20w56me5d	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701119/cangerard/seed/rose-wine-do-emporda-1.svg	Vi Rosat DO Empordà	0
cmpu7aufm0037l8t2cptqphx3	cmpu7arti0035l8t20w56me5d	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701121/cangerard/seed/rose-wine-do-emporda-2.svg	Vi Rosat DO Empordà	1
cmpu7aykx003bl8t2c40p1zxz	cmpu7auo8003al8t2xp5d91ps	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701123/cangerard/seed/extra-virgin-olive-oil-dop-les-garrigues-500-ml-1.svg	Oli d'oliva verge extra DOP Les Garrigues 500 ml	0
cmpu7aykx003cl8t2qs4anoqk	cmpu7auo8003al8t2xp5d91ps	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701125/cangerard/seed/extra-virgin-olive-oil-dop-les-garrigues-500-ml-2.svg	Oli d'oliva verge extra DOP Les Garrigues 500 ml	1
cmpu7aykx003dl8t2b3qgq14x	cmpu7auo8003al8t2xp5d91ps	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701126/cangerard/seed/extra-virgin-olive-oil-dop-les-garrigues-500-ml-3.svg	Oli d'oliva verge extra DOP Les Garrigues 500 ml	2
cmpu7b1c7003ll8t2qjknc9vn	cmpu7ayt7003kl8t22wbz04wy	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701129/cangerard/seed/extra-virgin-olive-oil-arbequina-1-l-1.svg	Oli d'oliva verge extra Arbequina 1 L	0
cmpu7b1c7003ml8t2ny3yx7o7	cmpu7ayt7003kl8t22wbz04wy	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701130/cangerard/seed/extra-virgin-olive-oil-arbequina-1-l-2.svg	Oli d'oliva verge extra Arbequina 1 L	1
cmpu7b46t003sl8t2xxvl5x5j	cmpu7b1j6003rl8t25slacz2s	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701132/cangerard/seed/organic-olive-oil-250-ml-1.svg	Oli d'oliva ecològic 250 ml	0
cmpu7b46t003tl8t2s7suysve	cmpu7b1j6003rl8t25slacz2s	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701135/cangerard/seed/organic-olive-oil-250-ml-2.svg	Oli d'oliva ecològic 250 ml	1
cmpu7b765003yl8t2gowf2hpm	cmpu7b4fo003xl8t2f78go8ap	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701139/cangerard/seed/extra-virgin-olive-oil-tin-3-l-1.svg	Llauna d'oli d'oliva verge extra 3 L	0
cmpu7b765003zl8t2ua4yd8ea	cmpu7b4fo003xl8t2f78go8ap	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701142/cangerard/seed/extra-virgin-olive-oil-tin-3-l-2.svg	Llauna d'oli d'oliva verge extra 3 L	1
cmpu7b9w20043l8t2q8t1x94t	cmpu7b7d30042l8t25wrp8xyn	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701145/cangerard/seed/farmhouse-extra-fuet-1.svg	Fuet extra de pagès	0
cmpu7b9w20044l8t2orww17ha	cmpu7b7d30042l8t25wrp8xyn	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701146/cangerard/seed/farmhouse-extra-fuet-2.svg	Fuet extra de pagès	1
cmpu7bcv6004bl8t2jdfftfbx	cmpu7ba4c004al8t2a3igvfl3	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701149/cangerard/seed/llonganissa-de-vic-igp-1.svg	Llonganissa de Vic IGP	0
cmpu7bcv6004cl8t2bt78dlkf	cmpu7ba4c004al8t2a3igvfl3	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701150/cangerard/seed/llonganissa-de-vic-igp-2.svg	Llonganissa de Vic IGP	1
cmpu7be9o004il8t209xfvb25	cmpu7bd2b004hl8t26sodk0rf	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701154/cangerard/seed/artisan-secallona-1.svg	Secallona artesana	0
cmpu7bh9w004ml8t2j2mzf8zr	cmpu7bei2004ll8t25uarqwe2	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701156/cangerard/seed/cured-goat-cheese-1.svg	Formatge de cabra curat	0
cmpu7bh9w004nl8t2sytf4uzl	cmpu7bei2004ll8t25uarqwe2	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701158/cangerard/seed/cured-goat-cheese-2.svg	Formatge de cabra curat	1
cmpu7bir0004ul8t27neuwz3k	cmpu7bhhr004tl8t22m4mkvkn	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701160/cangerard/seed/tupi-cheese-from-pallars-1.svg	Tupí del Pallars	0
cmpu7blbn004zl8t21hnbr9t5	cmpu7biy7004yl8t2836hqou6	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701164/cangerard/seed/alt-urgell-cerdanya-cheese-dop-1.svg	Formatge de l'Alt Urgell i la Cerdanya DOP	0
cmpu7blbn0050l8t249n78yjx	cmpu7biy7004yl8t2836hqou6	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701166/cangerard/seed/alt-urgell-cerdanya-cheese-dop-2.svg	Formatge de l'Alt Urgell i la Cerdanya DOP	1
cmpu7bnyx0056l8t26x5veboh	cmpu7bljf0055l8t280uw0rqw	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701168/cangerard/seed/agramunt-nougat-igp-1.svg	Torró d'Agramunt IGP	0
cmpu7bnyx0057l8t2xgvxz5sm	cmpu7bljf0055l8t280uw0rqw	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701171/cangerard/seed/agramunt-nougat-igp-2.svg	Torró d'Agramunt IGP	1
cmpu7bqu3005fl8t2f3eases1	cmpu7bo6g005el8t2ksigbaq3	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701173/cangerard/seed/chocolate-nougat-with-almonds-1.svg	Torró de xocolata amb ametlles	0
cmpu7bqu3005gl8t2y8tu4rdz	cmpu7bo6g005el8t2ksigbaq3	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701175/cangerard/seed/chocolate-nougat-with-almonds-2.svg	Torró de xocolata amb ametlles	1
cmpu7bsmc005ll8t2r0ll8co2	cmpu7br1b005kl8t2rzxiksmh	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701178/cangerard/seed/catalan-neules-wafers-1.svg	Neules de Catalunya	0
cmpu7bvg7005pl8t2o1k0f1rd	cmpu7bsti005ol8t2yo9g3lu6	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701180/cangerard/seed/anchovies-from-l-escala-1.svg	Anxoves de l'Escala	0
cmpu7bvg8005ql8t2cq0dwulo	cmpu7bsti005ol8t2yo9g3lu6	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701182/cangerard/seed/anchovies-from-l-escala-2.svg	Anxoves de l'Escala	1
cmpu7bxaz005wl8t2i4yuld4q	cmpu7bvzt005vl8t21o1ga9ty	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701186/cangerard/seed/artisan-fig-jam-1.svg	Melmelada de figa artesana	0
cmpu7c27m0061l8t2p7xrtpbp	cmpu7bxjb0060l8t226ep4ocm	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701188/cangerard/seed/glazed-ceramic-bowl-1.svg	Bol de ceràmica esmaltada	0
cmpu7c27m0062l8t2nit2cp99	cmpu7bxjb0060l8t226ep4ocm	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701190/cangerard/seed/glazed-ceramic-bowl-2.svg	Bol de ceràmica esmaltada	1
cmpu7c27m0063l8t2k3hv83dg	cmpu7bxjb0060l8t226ep4ocm	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701191/cangerard/seed/glazed-ceramic-bowl-3.svg	Bol de ceràmica esmaltada	2
cmpu7c55s0069l8t2um6e339u	cmpu7c2et0068l8t2fnbe7zpm	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701193/cangerard/seed/hand-painted-earthenware-plate-1.svg	Plat de terrissa pintat a mà	0
cmpu7c55s006al8t2se3xbr2x	cmpu7c2et0068l8t2fnbe7zpm	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701196/cangerard/seed/hand-painted-earthenware-plate-2.svg	Plat de terrissa pintat a mà	1
cmpu7c83b006fl8t2ocyzpo7l	cmpu7c5do006el8t2sdubxltt	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701198/cangerard/seed/blue-ceramic-vase-1.svg	Gerro de ceràmica blau	0
cmpu7c83b006gl8t291aqhhah	cmpu7c5do006el8t2sdubxltt	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701200/cangerard/seed/blue-ceramic-vase-2.svg	Gerro de ceràmica blau	1
cmpu7cb3h006kl8t2iiw7r2gj	cmpu7c8ad006jl8t23i1d4afk	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701202/cangerard/seed/catalan-seven-ribbon-espadrilles-1.svg	Espardenyes catalanes de set vetes	0
cmpu7cb3h006ll8t2r6ieuj8l	cmpu7c8ad006jl8t23i1d4afk	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701203/cangerard/seed/catalan-seven-ribbon-espadrilles-2.svg	Espardenyes catalanes de set vetes	1
cmpu7cdy7006ql8t2s2imw949	cmpu7cbbc006pl8t28vnq7yqz	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701206/cangerard/seed/linen-towel-set-1.svg	Joc de tovalloles de lli	0
cmpu7cdy7006rl8t2ff3eqpds	cmpu7cbbc006pl8t28vnq7yqz	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701207/cangerard/seed/linen-towel-set-2.svg	Joc de tovalloles de lli	1
cmpu7ch6f006vl8t23z1vybuz	cmpu7ce5b006ul8t21xfh6ehf	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701209/cangerard/seed/hand-woven-cushion-1.svg	Coixí teixit a mà	0
cmpu7ch6g006wl8t2w67gxytc	cmpu7ce5b006ul8t21xfh6ehf	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701211/cangerard/seed/hand-woven-cushion-2.svg	Coixí teixit a mà	1
cmpu7ciu60071l8t26qz5bklj	cmpu7cheh0070l8t2edtzrzyi	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701213/cangerard/seed/terra-de-cendra-novel-1.svg	Terra de cendra — novel·la	0
cmpu7clpg0078l8t21a0hdrik	cmpu7cj2b0077l8t2940yni61	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701215/cangerard/seed/grandmother-s-kitchen-1.svg	La cuina de l'àvia	0
cmpu7clpg0079l8t25syk5m32	cmpu7cj2b0077l8t2940yni61	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701217/cangerard/seed/grandmother-s-kitchen-2.svg	La cuina de l'àvia	1
cmpu7cod7007fl8t2jzovxr08	cmpu7clwl007el8t2kt9kwe68	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701219/cangerard/seed/the-sant-jordi-dragon-picture-book-1.svg	El drac de Sant Jordi — conte	0
cmpu7cod7007gl8t2m5r6w4ku	cmpu7clwl007el8t2kt9kwe68	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701221/cangerard/seed/the-sant-jordi-dragon-picture-book-2.svg	El drac de Sant Jordi — conte	1
cmpu7cq4s007ll8t23zle31w2	cmpu7cokv007kl8t2gyel7qtu	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701224/cangerard/seed/mar-endins-poetry-1.svg	Mar endins — poesia	0
cmpu7cssk007pl8t2uf50z2ed	cmpu7cqbs007ol8t2fwse1yqz	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701226/cangerard/seed/illustrated-barcelona-print-1.svg	Làmina il·lustrada de Barcelona	0
cmpu7cssk007ql8t268mkoub1	cmpu7cqbs007ol8t2fwse1yqz	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701229/cangerard/seed/illustrated-barcelona-print-2.svg	Làmina il·lustrada de Barcelona	1
cmpu7cvz5007vl8t26jg9gszn	cmpu7cszn007ul8t2vnpp1tpl	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701231/cangerard/seed/wooden-board-game-1.svg	Joc de taula de fusta	0
cmpu7cvz5007wl8t2thlfh1sg	cmpu7cszn007ul8t2vnpp1tpl	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701234/cangerard/seed/wooden-board-game-2.svg	Joc de taula de fusta	1
cmpu7cxhj0082l8t237u4jw33	cmpu7cw720081l8t2v8wm4u07	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701237/cangerard/seed/artisan-recycled-paper-notebook-1.svg	Llibreta artesana de paper reciclat	0
cmpu7d0520086l8t2zsvyis7f	cmpu7cxom0085l8t2h2lz7tnb	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701239/cangerard/seed/organic-mountain-honey-1.svg	Mel ecològica de muntanya	0
cmpu7d0520087l8t23x1652rb	cmpu7cxom0085l8t2h2lz7tnb	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701241/cangerard/seed/organic-mountain-honey-2.svg	Mel ecològica de muntanya	1
cmpu7d1tb008dl8t28viwvquh	cmpu7d0c3008cl8t20a7iho6c	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701243/cangerard/seed/natural-olive-oil-soap-1.svg	Sabó natural d'oli d'oliva	0
cmpu7d58d008il8t209axtrw3	cmpu7d20o008hl8t2hljigjrd	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701245/cangerard/seed/organic-montseny-herbal-infusion-1.svg	Infusió ecològica del Montseny	0
cmpu7d58d008jl8t2rl4acr5l	cmpu7d20o008hl8t2hljigjrd	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701247/cangerard/seed/organic-montseny-herbal-infusion-2.svg	Infusió ecològica del Montseny	1
cmpu7d7r4008nl8t22jqqlpqd	cmpu7d5fd008ml8t2jvq93fbz	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701249/cangerard/seed/pyrenees-trekking-poles-1.svg	Bastons de senderisme dels Pirineus	0
cmpu7d7r4008ol8t2utqqhvzx	cmpu7d5fd008ml8t2jvq93fbz	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701251/cangerard/seed/pyrenees-trekking-poles-2.svg	Bastons de senderisme dels Pirineus	1
cmpu7dag6008tl8t2d6xyg1td	cmpu7d7zd008sl8t2uww4uxst	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701253/cangerard/seed/technical-hiking-t-shirt-1.svg	Samarreta tècnica de muntanya	0
cmpu7dag6008ul8t2cdji2ftr	cmpu7d7zd008sl8t2uww4uxst	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701256/cangerard/seed/technical-hiking-t-shirt-2.svg	Samarreta tècnica de muntanya	1
cmpu7dd0l008yl8t2p8ylqncr	cmpu7danb008xl8t2n1sctbxm	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701259/cangerard/seed/colourful-wooden-train-1.svg	Tren de fusta de colors	0
cmpu7dd0l008zl8t2c05nkevc	cmpu7danb008xl8t2n1sctbxm	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701261/cangerard/seed/colourful-wooden-train-2.svg	Tren de fusta de colors	1
cmpu7degh0095l8t27ldr10uc	cmpu7dd7h0094l8t28p1b078o	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701263/cangerard/seed/soft-cloth-book-for-babies-1.svg	Conte de roba per a nadons	0
cmpu7dh5i0099l8t20lcznrpr	cmpu7denf0098l8t2xm12vujb	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701265/cangerard/seed/ceramic-plate-set-1.svg	Joc de plats de ceràmica	0
cmpu7dh5i009al8t2hibldvwf	cmpu7denf0098l8t2xm12vujb	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701266/cangerard/seed/ceramic-plate-set-2.svg	Joc de plats de ceràmica	1
cmpu7dl0m009el8t2fw7f6zk0	cmpu7diko009dl8t2xoprra7l	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779740575/cangerard/seed/100-arabica-coffee-beans-1.svg	Cafè Aràbica 100% en gra	0
cmpu7dl0m009fl8t27ckovi4v	cmpu7diko009dl8t2xoprra7l	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779740578/cangerard/seed/100-arabica-coffee-beans-2.svg	Cafè Aràbica 100% en gra	1
cmpu7do1h009nl8t2f7znrc39	cmpu7dlaz009ml8t2m73c1nps	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779740580/cangerard/seed/arbequina-extra-virgin-olive-oil-1.svg	Oli d'oliva verge extra Arbequina	0
cmpu7do1h009ol8t2rochblx5	cmpu7dlaz009ml8t2m73c1nps	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779740581/cangerard/seed/arbequina-extra-virgin-olive-oil-2.svg	Oli d'oliva verge extra Arbequina	1
cmpu7ds1x009vl8t2fvj677v9	cmpu7doh6009ul8t2kayxka2f	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779740583/cangerard/seed/artisan-rosemary-honey-1.svg	Mel artesana de romaní	0
cmpu7ds1x009wl8t2q8gnbqfg	cmpu7doh6009ul8t2kayxka2f	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779740586/cangerard/seed/artisan-rosemary-honey-2.svg	Mel artesana de romaní	1
cmpyh4s2b000004l2d8rq2dbm	cmpu7dh7s009bl8t245ldaxtr	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701269/cangerard/seed/earthenware-water-jug-1.svg	Gerra d'aigua de terrissa	0
cmpyh4s2b000104l2cpwly7po	cmpu7dh7s009bl8t245ldaxtr	https://res.cloudinary.com/gerardcsaperas/image/upload/v1780515658/cangerard/products/beknmvrkys55dbd0ji9h.png	Gerra d'aigua de terrissa	1
cmqppwbyn000204l5hjjotku5	cmqppwbyj000104l5r6at5l70	https://res.cloudinary.com/gerardcsaperas/image/upload/v1782163017/cangerard/products/qwexdarfwasffciqlco3.jpg	Cervesa Apricot Dispersion	0
cmqppwi0s000004lb8zr77kux	cmqppnj6x000304lhl1hflcjg	https://res.cloudinary.com/gerardcsaperas/image/upload/v1782162713/cangerard/products/yfyenxwk60rjaphap0ci.jpg	Cervesa Holy Wood	0
cmqppwnjv000404l5wm8lldqc	cmqppk15y000004lh34bvxr1g	https://res.cloudinary.com/gerardcsaperas/image/upload/v1782162342/cangerard/products/mph9cv2cgjynxiqg4fmk.jpg	Cervesa Betabel	0
cmqppwvrq000104lbs2p314c3	cmqndbk71000004jvsb6gjiyq	https://res.cloudinary.com/gerardcsaperas/image/upload/v1782021064/cangerard/products/hz5fnojeuydfwslsh5zq.jpg	Cervesa Alien Inoculated	0
cmqpq2ik0000104l8lu45bwkc	cmqpq2ijo000004l8vpyeedv6	https://res.cloudinary.com/gerardcsaperas/image/upload/v1782163371/cangerard/products/ybooujpa41efs6ni0faa.jpg	Cervesa Benzin – Brandy Barrel Aged (Barley Wine)	0
cmqpqbzhu000404l8rz69jvkp	cmqpqbzhh000304l8e8yml97e	https://res.cloudinary.com/gerardcsaperas/image/upload/v1782163827/cangerard/products/l73ec4wd8dr89rfik8tk.jpg	Cervesa Blat Eco (Ecològica)	0
\.


--
-- Data for Name: ProductSlugHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ProductSlugHistory" ("id", "slug", "productId", "createdAt") FROM stdin;
\.


--
-- Data for Name: RectificationRequest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."RectificationRequest" ("id", "invoiceRecipientId", "status", "reason", "notifiedAt", "expiresAt", "fulfilledAt", "cloudinaryPublicId", "pdfUrl", "invoiceNumber", "issueDate", "uploadedByUserId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Refund; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Refund" ("id", "paymentId", "orderItemId", "amount", "reason", "status", "stripeRefundId", "stripeTransferReversalId", "createdAt", "updatedAt") FROM stdin;
cmqbbpqfb000004l221xblva4	cmqb5ndjd000304lbru2xd3ql	\N	12.90	requested_by_customer	SUCCEEDED	re_3ThYAOGkg0BRtJUg1pgziRN5	\N	2026-06-12 19:32:35.207	2026-06-12 19:32:35.207
cmqbbpqfb000104l2872kwlcy	cmqb5ndjd000304lbru2xd3ql	\N	3.95	delivery	SUCCEEDED	re_3ThYAOGkg0BRtJUg1d6XFKMX	\N	2026-06-12 19:32:35.207	2026-06-12 19:32:35.207
\.


--
-- Data for Name: ReturnRequest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ReturnRequest" ("id", "orderId", "sellerId", "buyerId", "status", "reason", "refundAmount", "createdAt", "receivedAt", "refundedAt", "updatedAt", "refundExecutedBy", "shipmentProofAt", "shipmentProofUrl") FROM stdin;
\.


--
-- Data for Name: ReturnItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ReturnItem" ("id", "returnRequestId", "orderItemId", "quantity") FROM stdin;
\.


--
-- Data for Name: Review; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Review" ("id", "productId", "userId", "rating", "title", "body", "verifiedPurchase", "helpfulCount", "createdAt", "updatedAt", "moderationStatus", "orderId", "removalReason", "removedAt") FROM stdin;
cmpu7ab5h0020l8t2tkwh03qx	cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a5kk0011l8t2mjyz3q0t	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	3	2026-05-31 19:56:32.117	2026-05-31 19:56:32.117	PUBLISHED	\N	\N	\N
cmpu7ab5h0021l8t2l7p2i46c	cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a5e1000zl8t2wn4lmvys	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	8	2026-05-31 19:56:32.117	2026-05-31 19:56:32.117	PUBLISHED	\N	\N	\N
cmpu7ab5h0022l8t2px6juajs	cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a51x000vl8t233b55u1x	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	0	2026-05-31 19:56:32.117	2026-05-31 19:56:32.117	PUBLISHED	\N	\N	\N
cmpu7ab5h0023l8t24nh6dyxv	cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a5qq0013l8t23hutiwoy	3	Correcte	Compleix, però esperava una mica més per aquest preu.	f	7	2026-05-31 19:56:32.117	2026-05-31 19:56:32.117	PUBLISHED	\N	\N	\N
cmpu7ab5h0024l8t2qypbkfkv	cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a4vf000tl8t2u8t7462k	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	0	2026-05-31 19:56:32.117	2026-05-31 19:56:32.117	PUBLISHED	\N	\N	\N
cmpu7ae3x0028l8t2hqwy7h3w	cmpu7ab9q0025l8t2qauh9733	cmpu7a5kk0011l8t2mjyz3q0t	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	4	2026-05-31 19:56:35.949	2026-05-31 19:56:35.949	PUBLISHED	\N	\N	\N
cmpu7ae3x0029l8t29o7vtea7	cmpu7ab9q0025l8t2qauh9733	cmpu7a5e1000zl8t2wn4lmvys	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	7	2026-05-31 19:56:35.949	2026-05-31 19:56:35.949	PUBLISHED	\N	\N	\N
cmpu7ae3x002al8t2hw2l5bq6	cmpu7ab9q0025l8t2qauh9733	cmpu7a58c000xl8t2htaj0e0v	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	0	2026-05-31 19:56:35.949	2026-05-31 19:56:35.949	PUBLISHED	\N	\N	\N
cmpu7ae3x002bl8t2c4ogebir	cmpu7ab9q0025l8t2qauh9733	cmpu7a4vf000tl8t2u8t7462k	3	Correcte	Compleix, però esperava una mica més per aquest preu.	f	10	2026-05-31 19:56:35.949	2026-05-31 19:56:35.949	PUBLISHED	\N	\N	\N
cmpu7ah2v002fl8t2yawgeget	cmpu7ae7j002cl8t25myc6ukc	cmpu7a58c000xl8t2htaj0e0v	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	13	2026-05-31 19:56:39.799	2026-05-31 19:56:39.799	PUBLISHED	\N	\N	\N
cmpu7ah2v002gl8t21mf0jhly	cmpu7ae7j002cl8t25myc6ukc	cmpu7a5kk0011l8t2mjyz3q0t	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	8	2026-05-31 19:56:39.799	2026-05-31 19:56:39.799	PUBLISHED	\N	\N	\N
cmpu7ah2v002hl8t2fvfyvtcy	cmpu7ae7j002cl8t25myc6ukc	cmpu7a5qq0013l8t23hutiwoy	5	Una joia	Producte català de primera. El recomano completament.	t	2	2026-05-31 19:56:39.799	2026-05-31 19:56:39.799	PUBLISHED	\N	\N	\N
cmpu7alfv002ml8t20hhn8j3q	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a4vf000tl8t2u8t7462k	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	6	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451	PUBLISHED	\N	\N	\N
cmpu7alfv002nl8t2s6szr9gh	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a5qq0013l8t23hutiwoy	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	11	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451	PUBLISHED	\N	\N	\N
cmpu7alfv002ol8t2i4rgnx4y	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a5e1000zl8t2wn4lmvys	5	Una joia	Producte català de primera. El recomano completament.	t	4	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451	PUBLISHED	\N	\N	\N
cmpu7alfv002pl8t27ngw31ky	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a5kk0011l8t2mjyz3q0t	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	6	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451	PUBLISHED	\N	\N	\N
cmpu7alfv002ql8t2y0w2ll6q	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a58c000xl8t2htaj0e0v	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	0	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451	PUBLISHED	\N	\N	\N
cmpu7alfv002rl8t2vlk7vqfz	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a51x000vl8t233b55u1x	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	f	4	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451	PUBLISHED	\N	\N	\N
cmpu7aohj002vl8t2ncbh6t4h	cmpu7alji002sl8t2nllk5q6w	cmpu7a58c000xl8t2htaj0e0v	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	6	2026-05-31 19:56:49.399	2026-05-31 19:56:49.399	PUBLISHED	\N	\N	\N
cmpu7aohj002wl8t2w4vm8unr	cmpu7alji002sl8t2nllk5q6w	cmpu7a5qq0013l8t23hutiwoy	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	f	12	2026-05-31 19:56:49.399	2026-05-31 19:56:49.399	PUBLISHED	\N	\N	\N
cmpu7aohj002xl8t2ntjyxb2v	cmpu7alji002sl8t2nllk5q6w	cmpu7a5kk0011l8t2mjyz3q0t	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	8	2026-05-31 19:56:49.399	2026-05-31 19:56:49.399	PUBLISHED	\N	\N	\N
cmpu7aohj002yl8t2j3hulszn	cmpu7alji002sl8t2nllk5q6w	cmpu7a4vf000tl8t2u8t7462k	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	12	2026-05-31 19:56:49.399	2026-05-31 19:56:49.399	PUBLISHED	\N	\N	\N
cmpu7arpx0032l8t2y73cjgpj	cmpu7aol1002zl8t2p63c2ruk	cmpu7a4vf000tl8t2u8t7462k	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	11	2026-05-31 19:56:53.589	2026-05-31 19:56:53.589	PUBLISHED	\N	\N	\N
cmpu7arpx0033l8t243m3u0jv	cmpu7aol1002zl8t2p63c2ruk	cmpu7a5kk0011l8t2mjyz3q0t	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	f	11	2026-05-31 19:56:53.589	2026-05-31 19:56:53.589	PUBLISHED	\N	\N	\N
cmpu7arpx0034l8t2fukl9git	cmpu7aol1002zl8t2p63c2ruk	cmpu7a5e1000zl8t2wn4lmvys	5	Una joia	Producte català de primera. El recomano completament.	t	1	2026-05-31 19:56:53.589	2026-05-31 19:56:53.589	PUBLISHED	\N	\N	\N
cmpu7aujx0038l8t2tq4j114m	cmpu7arti0035l8t20w56me5d	cmpu7a51x000vl8t233b55u1x	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	10	2026-05-31 19:56:57.261	2026-05-31 19:56:57.261	PUBLISHED	\N	\N	\N
cmpu7aujx0039l8t2n3ymb8d8	cmpu7arti0035l8t20w56me5d	cmpu7a5e1000zl8t2wn4lmvys	5	Una joia	Producte català de primera. El recomano completament.	t	2	2026-05-31 19:56:57.261	2026-05-31 19:56:57.261	PUBLISHED	\N	\N	\N
cmpu7ayp8003el8t246hoebrv	cmpu7auo8003al8t2xp5d91ps	cmpu7a58c000xl8t2htaj0e0v	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	11	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636	PUBLISHED	\N	\N	\N
cmpu7ayp8003fl8t2y48c7ykz	cmpu7auo8003al8t2xp5d91ps	cmpu7a4vf000tl8t2u8t7462k	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	12	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636	PUBLISHED	\N	\N	\N
cmpu7ayp8003gl8t2lwlgbehf	cmpu7auo8003al8t2xp5d91ps	cmpu7a5qq0013l8t23hutiwoy	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	f	11	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636	PUBLISHED	\N	\N	\N
cmpu7ayp8003hl8t2t93rq1ix	cmpu7auo8003al8t2xp5d91ps	cmpu7a51x000vl8t233b55u1x	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	13	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636	PUBLISHED	\N	\N	\N
cmpu7ayp8003il8t2l95s8qx8	cmpu7auo8003al8t2xp5d91ps	cmpu7a5e1000zl8t2wn4lmvys	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	5	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636	PUBLISHED	\N	\N	\N
cmpu7ayp8003jl8t2dhrdw4xi	cmpu7auo8003al8t2xp5d91ps	cmpu7a5kk0011l8t2mjyz3q0t	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	6	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636	PUBLISHED	\N	\N	\N
cmpu7b1fo003nl8t25p2acqq0	cmpu7ayt7003kl8t22wbz04wy	cmpu7a51x000vl8t233b55u1x	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	5	2026-05-31 19:57:06.18	2026-05-31 19:57:06.18	PUBLISHED	\N	\N	\N
cmpu7b1fo003ol8t2bumsfq8u	cmpu7ayt7003kl8t22wbz04wy	cmpu7a58c000xl8t2htaj0e0v	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	13	2026-05-31 19:57:06.18	2026-05-31 19:57:06.18	PUBLISHED	\N	\N	\N
cmpu7b1fo003pl8t2tzb7xg1v	cmpu7ayt7003kl8t22wbz04wy	cmpu7a5qq0013l8t23hutiwoy	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	11	2026-05-31 19:57:06.18	2026-05-31 19:57:06.18	PUBLISHED	\N	\N	\N
cmpu7b1fo003ql8t2qupy9y4j	cmpu7ayt7003kl8t22wbz04wy	cmpu7a5e1000zl8t2wn4lmvys	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	f	9	2026-05-31 19:57:06.18	2026-05-31 19:57:06.18	PUBLISHED	\N	\N	\N
cmpu7b4b1003ul8t2bs67sjaf	cmpu7b1j6003rl8t25slacz2s	cmpu7a5qq0013l8t23hutiwoy	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	12	2026-05-31 19:57:09.901	2026-05-31 19:57:09.901	PUBLISHED	\N	\N	\N
cmpu7b4b1003vl8t2mthw19ih	cmpu7b1j6003rl8t25slacz2s	cmpu7a51x000vl8t233b55u1x	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	9	2026-05-31 19:57:09.901	2026-05-31 19:57:09.901	PUBLISHED	\N	\N	\N
cmpu7b4b1003wl8t2kbbacey1	cmpu7b1j6003rl8t25slacz2s	cmpu7a4vf000tl8t2u8t7462k	5	Una joia	Producte català de primera. El recomano completament.	t	1	2026-05-31 19:57:09.901	2026-05-31 19:57:09.901	PUBLISHED	\N	\N	\N
cmpu7b79m0040l8t2x5spwpda	cmpu7b4fo003xl8t2f78go8ap	cmpu7a51x000vl8t233b55u1x	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	f	12	2026-05-31 19:57:13.738	2026-05-31 19:57:13.738	PUBLISHED	\N	\N	\N
cmpu7b79m0041l8t2w3e6vj1f	cmpu7b4fo003xl8t2f78go8ap	cmpu7a5qq0013l8t23hutiwoy	5	Una joia	Producte català de primera. El recomano completament.	f	2	2026-05-31 19:57:13.738	2026-05-31 19:57:13.738	PUBLISHED	\N	\N	\N
cmpu7ba0a0045l8t2c63ank51	cmpu7b7d30042l8t25wrp8xyn	cmpu7a5e1000zl8t2wn4lmvys	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	13	2026-05-31 19:57:17.29	2026-05-31 19:57:17.29	PUBLISHED	\N	\N	\N
cmpu7ba0a0046l8t2v3adolxk	cmpu7b7d30042l8t25wrp8xyn	cmpu7a58c000xl8t2htaj0e0v	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	f	13	2026-05-31 19:57:17.29	2026-05-31 19:57:17.29	PUBLISHED	\N	\N	\N
cmpu7ba0a0047l8t2sd366ico	cmpu7b7d30042l8t25wrp8xyn	cmpu7a51x000vl8t233b55u1x	5	Una joia	Producte català de primera. El recomano completament.	t	13	2026-05-31 19:57:17.29	2026-05-31 19:57:17.29	PUBLISHED	\N	\N	\N
cmpu7ba0a0048l8t2skvyeflp	cmpu7b7d30042l8t25wrp8xyn	cmpu7a5qq0013l8t23hutiwoy	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	8	2026-05-31 19:57:17.29	2026-05-31 19:57:17.29	PUBLISHED	\N	\N	\N
cmpu7ba0a0049l8t22rvt42r9	cmpu7b7d30042l8t25wrp8xyn	cmpu7a4vf000tl8t2u8t7462k	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	5	2026-05-31 19:57:17.29	2026-05-31 19:57:17.29	PUBLISHED	\N	\N	\N
cmpu7bcyp004dl8t2cn9gh6ld	cmpu7ba4c004al8t2a3igvfl3	cmpu7a58c000xl8t2htaj0e0v	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	0	2026-05-31 19:57:21.121	2026-05-31 19:57:21.121	PUBLISHED	\N	\N	\N
cmpu7bcyp004el8t2xug56nzm	cmpu7ba4c004al8t2a3igvfl3	cmpu7a5e1000zl8t2wn4lmvys	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	8	2026-05-31 19:57:21.121	2026-05-31 19:57:21.121	PUBLISHED	\N	\N	\N
cmpu7bcyp004fl8t2xibj8y4l	cmpu7ba4c004al8t2a3igvfl3	cmpu7a51x000vl8t233b55u1x	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	f	2	2026-05-31 19:57:21.121	2026-05-31 19:57:21.121	PUBLISHED	\N	\N	\N
cmpu7bcyp004gl8t2jv022otf	cmpu7ba4c004al8t2a3igvfl3	cmpu7a5qq0013l8t23hutiwoy	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	7	2026-05-31 19:57:21.121	2026-05-31 19:57:21.121	PUBLISHED	\N	\N	\N
cmpu7bee4004jl8t2bslvje67	cmpu7bd2b004hl8t26sodk0rf	cmpu7a51x000vl8t233b55u1x	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	2	2026-05-31 19:57:22.972	2026-05-31 19:57:22.972	PUBLISHED	\N	\N	\N
cmpu7bee4004kl8t2zuarjy5s	cmpu7bd2b004hl8t26sodk0rf	cmpu7a4vf000tl8t2u8t7462k	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	f	2	2026-05-31 19:57:22.972	2026-05-31 19:57:22.972	PUBLISHED	\N	\N	\N
cmpu7bhdv004ol8t23fn0f716	cmpu7bei2004ll8t25uarqwe2	cmpu7a5qq0013l8t23hutiwoy	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	12	2026-05-31 19:57:26.851	2026-05-31 19:57:26.851	PUBLISHED	\N	\N	\N
cmpu7bhdv004pl8t2145e69rv	cmpu7bei2004ll8t25uarqwe2	cmpu7a5kk0011l8t2mjyz3q0t	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	0	2026-05-31 19:57:26.851	2026-05-31 19:57:26.851	PUBLISHED	\N	\N	\N
cmpu7bhdv004ql8t2x3b08za4	cmpu7bei2004ll8t25uarqwe2	cmpu7a5e1000zl8t2wn4lmvys	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	7	2026-05-31 19:57:26.851	2026-05-31 19:57:26.851	PUBLISHED	\N	\N	\N
cmpu7bhdv004rl8t2q016kkh3	cmpu7bei2004ll8t25uarqwe2	cmpu7a4vf000tl8t2u8t7462k	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	f	13	2026-05-31 19:57:26.851	2026-05-31 19:57:26.851	PUBLISHED	\N	\N	\N
cmpu7bhdv004sl8t2id3n61jk	cmpu7bei2004ll8t25uarqwe2	cmpu7a51x000vl8t233b55u1x	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	f	1	2026-05-31 19:57:26.851	2026-05-31 19:57:26.851	PUBLISHED	\N	\N	\N
cmpu7biue004vl8t2keja7zg4	cmpu7bhhr004tl8t22m4mkvkn	cmpu7a51x000vl8t233b55u1x	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	11	2026-05-31 19:57:28.742	2026-05-31 19:57:28.742	PUBLISHED	\N	\N	\N
cmpu7biue004wl8t21mrc5m9i	cmpu7bhhr004tl8t22m4mkvkn	cmpu7a58c000xl8t2htaj0e0v	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	0	2026-05-31 19:57:28.742	2026-05-31 19:57:28.742	PUBLISHED	\N	\N	\N
cmpu7biue004xl8t2vchpc6qu	cmpu7bhhr004tl8t22m4mkvkn	cmpu7a4vf000tl8t2u8t7462k	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	4	2026-05-31 19:57:28.742	2026-05-31 19:57:28.742	PUBLISHED	\N	\N	\N
cmpu7blfi0051l8t2yrums1dy	cmpu7biy7004yl8t2836hqou6	cmpu7a5qq0013l8t23hutiwoy	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	6	2026-05-31 19:57:32.094	2026-05-31 19:57:32.094	PUBLISHED	\N	\N	\N
cmpu7blfi0052l8t2cd1h796q	cmpu7biy7004yl8t2836hqou6	cmpu7a51x000vl8t233b55u1x	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	f	1	2026-05-31 19:57:32.094	2026-05-31 19:57:32.094	PUBLISHED	\N	\N	\N
cmpu7blfi0053l8t2z08dgqx3	cmpu7biy7004yl8t2836hqou6	cmpu7a4vf000tl8t2u8t7462k	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	9	2026-05-31 19:57:32.094	2026-05-31 19:57:32.094	PUBLISHED	\N	\N	\N
cmpu7blfi0054l8t23kiv27tn	cmpu7biy7004yl8t2836hqou6	cmpu7a5kk0011l8t2mjyz3q0t	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	8	2026-05-31 19:57:32.094	2026-05-31 19:57:32.094	PUBLISHED	\N	\N	\N
cmpu7bo2h0058l8t2j7l0vv25	cmpu7bljf0055l8t280uw0rqw	cmpu7a4vf000tl8t2u8t7462k	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	11	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513	PUBLISHED	\N	\N	\N
cmpu7bo2i0059l8t2ro60l3ry	cmpu7bljf0055l8t280uw0rqw	cmpu7a5kk0011l8t2mjyz3q0t	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	2	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513	PUBLISHED	\N	\N	\N
cmpu7bo2i005al8t2c8xc9n5p	cmpu7bljf0055l8t280uw0rqw	cmpu7a5e1000zl8t2wn4lmvys	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	f	6	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513	PUBLISHED	\N	\N	\N
cmpu7bo2i005bl8t2nfis5kou	cmpu7bljf0055l8t280uw0rqw	cmpu7a5qq0013l8t23hutiwoy	5	Una joia	Producte català de primera. El recomano completament.	f	2	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513	PUBLISHED	\N	\N	\N
cmpu7bo2i005cl8t2452dwnl6	cmpu7bljf0055l8t280uw0rqw	cmpu7a58c000xl8t2htaj0e0v	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	12	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513	PUBLISHED	\N	\N	\N
cmpu7bo2i005dl8t2l0682j78	cmpu7bljf0055l8t280uw0rqw	cmpu7a51x000vl8t233b55u1x	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	9	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513	PUBLISHED	\N	\N	\N
cmpu7bqxk005hl8t2xbx16l8h	cmpu7bo6g005el8t2ksigbaq3	cmpu7a58c000xl8t2htaj0e0v	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	13	2026-05-31 19:57:39.224	2026-05-31 19:57:39.224	PUBLISHED	\N	\N	\N
cmpu7bqxk005il8t2bf3s9w6t	cmpu7bo6g005el8t2ksigbaq3	cmpu7a4vf000tl8t2u8t7462k	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	5	2026-05-31 19:57:39.224	2026-05-31 19:57:39.224	PUBLISHED	\N	\N	\N
cmpu7bqxk005jl8t28epefrsl	cmpu7bo6g005el8t2ksigbaq3	cmpu7a5e1000zl8t2wn4lmvys	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	0	2026-05-31 19:57:39.224	2026-05-31 19:57:39.224	PUBLISHED	\N	\N	\N
cmpu7bspx005ml8t26uxn45wy	cmpu7br1b005kl8t2rzxiksmh	cmpu7a5qq0013l8t23hutiwoy	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	4	2026-05-31 19:57:41.541	2026-05-31 19:57:41.541	PUBLISHED	\N	\N	\N
cmpu7bspx005nl8t27ry1b28q	cmpu7br1b005kl8t2rzxiksmh	cmpu7a4vf000tl8t2u8t7462k	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	5	2026-05-31 19:57:41.541	2026-05-31 19:57:41.541	PUBLISHED	\N	\N	\N
cmpu7bvmh005rl8t2ij3huhvm	cmpu7bsti005ol8t2yo9g3lu6	cmpu7a5kk0011l8t2mjyz3q0t	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	0	2026-05-31 19:57:45.305	2026-05-31 19:57:45.305	PUBLISHED	\N	\N	\N
cmpu7bvmh005sl8t2ld3c3vx4	cmpu7bsti005ol8t2yo9g3lu6	cmpu7a5qq0013l8t23hutiwoy	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	5	2026-05-31 19:57:45.305	2026-05-31 19:57:45.305	PUBLISHED	\N	\N	\N
cmpu7bvmh005tl8t22zbd5k1s	cmpu7bsti005ol8t2yo9g3lu6	cmpu7a4vf000tl8t2u8t7462k	5	Una joia	Producte català de primera. El recomano completament.	t	13	2026-05-31 19:57:45.305	2026-05-31 19:57:45.305	PUBLISHED	\N	\N	\N
cmpu7bvmh005ul8t2friiaalb	cmpu7bsti005ol8t2yo9g3lu6	cmpu7a51x000vl8t233b55u1x	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	4	2026-05-31 19:57:45.305	2026-05-31 19:57:45.305	PUBLISHED	\N	\N	\N
cmpu7bxf6005xl8t2y0z5fcp3	cmpu7bvzt005vl8t21o1ga9ty	cmpu7a5qq0013l8t23hutiwoy	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	f	10	2026-05-31 19:57:47.634	2026-05-31 19:57:47.634	PUBLISHED	\N	\N	\N
cmpu7bxf6005yl8t2tcomdjm6	cmpu7bvzt005vl8t21o1ga9ty	cmpu7a58c000xl8t2htaj0e0v	5	Una joia	Producte català de primera. El recomano completament.	t	1	2026-05-31 19:57:47.634	2026-05-31 19:57:47.634	PUBLISHED	\N	\N	\N
cmpu7bxf6005zl8t2f3loyejp	cmpu7bvzt005vl8t21o1ga9ty	cmpu7a5kk0011l8t2mjyz3q0t	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	9	2026-05-31 19:57:47.634	2026-05-31 19:57:47.634	PUBLISHED	\N	\N	\N
cmpu7c2b60064l8t2p9qe4mhp	cmpu7bxjb0060l8t226ep4ocm	cmpu7a58c000xl8t2htaj0e0v	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	f	10	2026-05-31 19:57:53.97	2026-05-31 19:57:53.97	PUBLISHED	\N	\N	\N
cmpu7c2b60065l8t2gzsvcvzo	cmpu7bxjb0060l8t226ep4ocm	cmpu7a5e1000zl8t2wn4lmvys	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	2	2026-05-31 19:57:53.97	2026-05-31 19:57:53.97	PUBLISHED	\N	\N	\N
cmpu7c2b60066l8t2n62u6yqc	cmpu7bxjb0060l8t226ep4ocm	cmpu7a51x000vl8t233b55u1x	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	1	2026-05-31 19:57:53.97	2026-05-31 19:57:53.97	PUBLISHED	\N	\N	\N
cmpu7c2b70067l8t2j2fdmds3	cmpu7bxjb0060l8t226ep4ocm	cmpu7a4vf000tl8t2u8t7462k	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	13	2026-05-31 19:57:53.97	2026-05-31 19:57:53.97	PUBLISHED	\N	\N	\N
cmpu7c5a1006bl8t2ej1brnqr	cmpu7c2et0068l8t2fnbe7zpm	cmpu7a58c000xl8t2htaj0e0v	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	9	2026-05-31 19:57:57.817	2026-05-31 19:57:57.817	PUBLISHED	\N	\N	\N
cmpu7c5a1006cl8t2fuul7j17	cmpu7c2et0068l8t2fnbe7zpm	cmpu7a4vf000tl8t2u8t7462k	5	Una joia	Producte català de primera. El recomano completament.	f	4	2026-05-31 19:57:57.817	2026-05-31 19:57:57.817	PUBLISHED	\N	\N	\N
cmpu7c5a1006dl8t24tgmkfbm	cmpu7c2et0068l8t2fnbe7zpm	cmpu7a51x000vl8t233b55u1x	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	f	6	2026-05-31 19:57:57.817	2026-05-31 19:57:57.817	PUBLISHED	\N	\N	\N
cmpu7c86q006hl8t2vhe1vjb6	cmpu7c5do006el8t2sdubxltt	cmpu7a51x000vl8t233b55u1x	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	1	2026-05-31 19:58:01.586	2026-05-31 19:58:01.586	PUBLISHED	\N	\N	\N
cmpu7c86q006il8t28bn5jwty	cmpu7c5do006el8t2sdubxltt	cmpu7a5qq0013l8t23hutiwoy	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	3	2026-05-31 19:58:01.586	2026-05-31 19:58:01.586	PUBLISHED	\N	\N	\N
cmpu7cb7n006ml8t2118jie1x	cmpu7c8ad006jl8t23i1d4afk	cmpu7a5e1000zl8t2wn4lmvys	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	12	2026-05-31 19:58:05.507	2026-05-31 19:58:05.507	PUBLISHED	\N	\N	\N
cmpu7cb7n006nl8t2u36ynd0b	cmpu7c8ad006jl8t23i1d4afk	cmpu7a5qq0013l8t23hutiwoy	5	Una joia	Producte català de primera. El recomano completament.	f	6	2026-05-31 19:58:05.507	2026-05-31 19:58:05.507	PUBLISHED	\N	\N	\N
cmpu7cb7n006ol8t2zqmd1l92	cmpu7c8ad006jl8t23i1d4afk	cmpu7a5kk0011l8t2mjyz3q0t	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	f	6	2026-05-31 19:58:05.507	2026-05-31 19:58:05.507	PUBLISHED	\N	\N	\N
cmpu7ce1p006sl8t24unwovy2	cmpu7cbbc006pl8t28vnq7yqz	cmpu7a51x000vl8t233b55u1x	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	4	2026-05-31 19:58:09.181	2026-05-31 19:58:09.181	PUBLISHED	\N	\N	\N
cmpu7ce1p006tl8t2cigw2wdx	cmpu7cbbc006pl8t28vnq7yqz	cmpu7a4vf000tl8t2u8t7462k	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	9	2026-05-31 19:58:09.181	2026-05-31 19:58:09.181	PUBLISHED	\N	\N	\N
cmpu7chav006xl8t28kuubpts	cmpu7ce5b006ul8t21xfh6ehf	cmpu7a4vf000tl8t2u8t7462k	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	4	2026-05-31 19:58:13.399	2026-05-31 19:58:13.399	PUBLISHED	\N	\N	\N
cmpu7chav006yl8t22yyk7oq1	cmpu7ce5b006ul8t21xfh6ehf	cmpu7a58c000xl8t2htaj0e0v	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	4	2026-05-31 19:58:13.399	2026-05-31 19:58:13.399	PUBLISHED	\N	\N	\N
cmpu7chav006zl8t2v0lrep1x	cmpu7ce5b006ul8t21xfh6ehf	cmpu7a5qq0013l8t23hutiwoy	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	6	2026-05-31 19:58:13.399	2026-05-31 19:58:13.399	PUBLISHED	\N	\N	\N
cmpu7ciym0072l8t2k75spcm8	cmpu7cheh0070l8t2edtzrzyi	cmpu7a5e1000zl8t2wn4lmvys	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	3	2026-05-31 19:58:15.55	2026-05-31 19:58:15.55	PUBLISHED	\N	\N	\N
cmpu7ciym0073l8t296y4mcjw	cmpu7cheh0070l8t2edtzrzyi	cmpu7a5kk0011l8t2mjyz3q0t	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	7	2026-05-31 19:58:15.55	2026-05-31 19:58:15.55	PUBLISHED	\N	\N	\N
cmpu7ciym0074l8t2g89zwezy	cmpu7cheh0070l8t2edtzrzyi	cmpu7a4vf000tl8t2u8t7462k	5	Una joia	Producte català de primera. El recomano completament.	f	4	2026-05-31 19:58:15.55	2026-05-31 19:58:15.55	PUBLISHED	\N	\N	\N
cmpu7ciym0075l8t2hktzfcm1	cmpu7cheh0070l8t2edtzrzyi	cmpu7a5qq0013l8t23hutiwoy	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	f	11	2026-05-31 19:58:15.55	2026-05-31 19:58:15.55	PUBLISHED	\N	\N	\N
cmpu7ciym0076l8t2jj0cuats	cmpu7cheh0070l8t2edtzrzyi	cmpu7a58c000xl8t2htaj0e0v	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	f	4	2026-05-31 19:58:15.55	2026-05-31 19:58:15.55	PUBLISHED	\N	\N	\N
cmpu7clt1007al8t2mfz2w670	cmpu7cj2b0077l8t2940yni61	cmpu7a51x000vl8t233b55u1x	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	6	2026-05-31 19:58:19.237	2026-05-31 19:58:19.237	PUBLISHED	\N	\N	\N
cmpu7clt1007bl8t2mhj0fkib	cmpu7cj2b0077l8t2940yni61	cmpu7a5qq0013l8t23hutiwoy	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	4	2026-05-31 19:58:19.237	2026-05-31 19:58:19.237	PUBLISHED	\N	\N	\N
cmpu7clt1007cl8t2i3mdhyrq	cmpu7cj2b0077l8t2940yni61	cmpu7a58c000xl8t2htaj0e0v	5	Una joia	Producte català de primera. El recomano completament.	t	1	2026-05-31 19:58:19.237	2026-05-31 19:58:19.237	PUBLISHED	\N	\N	\N
cmpu7clt1007dl8t2m1jk0t5r	cmpu7cj2b0077l8t2940yni61	cmpu7a5kk0011l8t2mjyz3q0t	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	f	13	2026-05-31 19:58:19.237	2026-05-31 19:58:19.237	PUBLISHED	\N	\N	\N
cmpu7coh8007hl8t2xzw457uf	cmpu7clwl007el8t2kt9kwe68	cmpu7a5kk0011l8t2mjyz3q0t	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	12	2026-05-31 19:58:22.7	2026-05-31 19:58:22.7	PUBLISHED	\N	\N	\N
cmpu7coh8007il8t2u7zhivu4	cmpu7clwl007el8t2kt9kwe68	cmpu7a5qq0013l8t23hutiwoy	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	9	2026-05-31 19:58:22.7	2026-05-31 19:58:22.7	PUBLISHED	\N	\N	\N
cmpu7coh8007jl8t2d41otltx	cmpu7clwl007el8t2kt9kwe68	cmpu7a51x000vl8t233b55u1x	5	Una joia	Producte català de primera. El recomano completament.	t	8	2026-05-31 19:58:22.7	2026-05-31 19:58:22.7	PUBLISHED	\N	\N	\N
cmpu7cq87007ml8t28byt9dgo	cmpu7cokv007kl8t2gyel7qtu	cmpu7a58c000xl8t2htaj0e0v	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	10	2026-05-31 19:58:24.967	2026-05-31 19:58:24.967	PUBLISHED	\N	\N	\N
cmpu7cq87007nl8t29b0howcp	cmpu7cokv007kl8t2gyel7qtu	cmpu7a4vf000tl8t2u8t7462k	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	f	12	2026-05-31 19:58:24.967	2026-05-31 19:58:24.967	PUBLISHED	\N	\N	\N
cmpu7csw1007rl8t2xk9egf5e	cmpu7cqbs007ol8t2fwse1yqz	cmpu7a5qq0013l8t23hutiwoy	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	12	2026-05-31 19:58:28.417	2026-05-31 19:58:28.417	PUBLISHED	\N	\N	\N
cmpu7csw1007sl8t2rr3tbe3s	cmpu7cqbs007ol8t2fwse1yqz	cmpu7a51x000vl8t233b55u1x	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	8	2026-05-31 19:58:28.417	2026-05-31 19:58:28.417	PUBLISHED	\N	\N	\N
cmpu7csw1007tl8t22y51pda5	cmpu7cqbs007ol8t2fwse1yqz	cmpu7a5e1000zl8t2wn4lmvys	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	f	4	2026-05-31 19:58:28.417	2026-05-31 19:58:28.417	PUBLISHED	\N	\N	\N
cmpu7cw38007xl8t29gnny8sc	cmpu7cszn007ul8t2vnpp1tpl	cmpu7a58c000xl8t2htaj0e0v	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	1	2026-05-31 19:58:32.564	2026-05-31 19:58:32.564	PUBLISHED	\N	\N	\N
cmpu7cw38007yl8t2tyqxpbm9	cmpu7cszn007ul8t2vnpp1tpl	cmpu7a5kk0011l8t2mjyz3q0t	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	10	2026-05-31 19:58:32.564	2026-05-31 19:58:32.564	PUBLISHED	\N	\N	\N
cmpu7cw38007zl8t291eigwpg	cmpu7cszn007ul8t2vnpp1tpl	cmpu7a4vf000tl8t2u8t7462k	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	12	2026-05-31 19:58:32.564	2026-05-31 19:58:32.564	PUBLISHED	\N	\N	\N
cmpu7cw380080l8t2rhojahqu	cmpu7cszn007ul8t2vnpp1tpl	cmpu7a5qq0013l8t23hutiwoy	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	7	2026-05-31 19:58:32.564	2026-05-31 19:58:32.564	PUBLISHED	\N	\N	\N
cmpu7cxl00083l8t2qon1ey1i	cmpu7cw720081l8t2v8wm4u07	cmpu7a5qq0013l8t23hutiwoy	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	5	2026-05-31 19:58:34.5	2026-05-31 19:58:34.5	PUBLISHED	\N	\N	\N
cmpu7cxl00084l8t2lpzrlz3p	cmpu7cw720081l8t2v8wm4u07	cmpu7a5kk0011l8t2mjyz3q0t	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	f	6	2026-05-31 19:58:34.5	2026-05-31 19:58:34.5	PUBLISHED	\N	\N	\N
cmpu7d08h0088l8t2x955m8jt	cmpu7cxom0085l8t2h2lz7tnb	cmpu7a5kk0011l8t2mjyz3q0t	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	7	2026-05-31 19:58:37.937	2026-05-31 19:58:37.937	PUBLISHED	\N	\N	\N
cmpu7d08i0089l8t22x5aq33m	cmpu7cxom0085l8t2h2lz7tnb	cmpu7a4vf000tl8t2u8t7462k	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	f	8	2026-05-31 19:58:37.937	2026-05-31 19:58:37.937	PUBLISHED	\N	\N	\N
cmpu7d08i008al8t29a1tw1a3	cmpu7cxom0085l8t2h2lz7tnb	cmpu7a5qq0013l8t23hutiwoy	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	12	2026-05-31 19:58:37.937	2026-05-31 19:58:37.937	PUBLISHED	\N	\N	\N
cmpu7d08i008bl8t2mfdb679y	cmpu7cxom0085l8t2h2lz7tnb	cmpu7a5e1000zl8t2wn4lmvys	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	1	2026-05-31 19:58:37.937	2026-05-31 19:58:37.937	PUBLISHED	\N	\N	\N
cmpu7d1wp008el8t2eeo3rn73	cmpu7d0c3008cl8t20a7iho6c	cmpu7a5e1000zl8t2wn4lmvys	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	10	2026-05-31 19:58:40.105	2026-05-31 19:58:40.105	PUBLISHED	\N	\N	\N
cmpu7d1wp008fl8t2h23e9b1o	cmpu7d0c3008cl8t20a7iho6c	cmpu7a51x000vl8t233b55u1x	5	Una joia	Producte català de primera. El recomano completament.	t	11	2026-05-31 19:58:40.105	2026-05-31 19:58:40.105	PUBLISHED	\N	\N	\N
cmpu7d1wp008gl8t2vthgwupn	cmpu7d0c3008cl8t20a7iho6c	cmpu7a4vf000tl8t2u8t7462k	3	Correcte	Compleix, però esperava una mica més per aquest preu.	f	12	2026-05-31 19:58:40.105	2026-05-31 19:58:40.105	PUBLISHED	\N	\N	\N
cmpu7d5bq008kl8t2kg7rw7uu	cmpu7d20o008hl8t2hljigjrd	cmpu7a5kk0011l8t2mjyz3q0t	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	f	7	2026-05-31 19:58:44.534	2026-05-31 19:58:44.534	PUBLISHED	\N	\N	\N
cmpu7d5bq008ll8t25qhlhgmc	cmpu7d20o008hl8t2hljigjrd	cmpu7a4vf000tl8t2u8t7462k	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	11	2026-05-31 19:58:44.534	2026-05-31 19:58:44.534	PUBLISHED	\N	\N	\N
cmpu7d7vf008pl8t23i9qfyuc	cmpu7d5fd008ml8t2jvq93fbz	cmpu7a58c000xl8t2htaj0e0v	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	4	2026-05-31 19:58:47.836	2026-05-31 19:58:47.836	PUBLISHED	\N	\N	\N
cmpu7d7vg008ql8t2v752zopz	cmpu7d5fd008ml8t2jvq93fbz	cmpu7a5qq0013l8t23hutiwoy	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	8	2026-05-31 19:58:47.836	2026-05-31 19:58:47.836	PUBLISHED	\N	\N	\N
cmpu7d7vg008rl8t2n3790esf	cmpu7d5fd008ml8t2jvq93fbz	cmpu7a51x000vl8t233b55u1x	5	Una joia	Producte català de primera. El recomano completament.	f	1	2026-05-31 19:58:47.836	2026-05-31 19:58:47.836	PUBLISHED	\N	\N	\N
cmpu7dajp008vl8t200kp6kdn	cmpu7d7zd008sl8t2uww4uxst	cmpu7a5kk0011l8t2mjyz3q0t	5	Una joia	Producte català de primera. El recomano completament.	t	5	2026-05-31 19:58:51.301	2026-05-31 19:58:51.301	PUBLISHED	\N	\N	\N
cmpu7dajp008wl8t2coi5rqx9	cmpu7d7zd008sl8t2uww4uxst	cmpu7a5e1000zl8t2wn4lmvys	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	9	2026-05-31 19:58:51.301	2026-05-31 19:58:51.301	PUBLISHED	\N	\N	\N
cmpu7dd3y0090l8t2d1j3ya8u	cmpu7danb008xl8t2n1sctbxm	cmpu7a5qq0013l8t23hutiwoy	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	3	2026-05-31 19:58:54.622	2026-05-31 19:58:54.622	PUBLISHED	\N	\N	\N
cmpu7dd3y0091l8t2fon8rzib	cmpu7danb008xl8t2n1sctbxm	cmpu7a51x000vl8t233b55u1x	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	7	2026-05-31 19:58:54.622	2026-05-31 19:58:54.622	PUBLISHED	\N	\N	\N
cmpu7dd3y0092l8t2fsy9c1jj	cmpu7danb008xl8t2n1sctbxm	cmpu7a4vf000tl8t2u8t7462k	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	6	2026-05-31 19:58:54.622	2026-05-31 19:58:54.622	PUBLISHED	\N	\N	\N
cmpu7dd3y0093l8t2t6kbdyjy	cmpu7danb008xl8t2n1sctbxm	cmpu7a58c000xl8t2htaj0e0v	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	8	2026-05-31 19:58:54.622	2026-05-31 19:58:54.622	PUBLISHED	\N	\N	\N
cmpu7dejy0096l8t285xxl8vj	cmpu7dd7h0094l8t28p1b078o	cmpu7a5e1000zl8t2wn4lmvys	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	13	2026-05-31 19:58:56.494	2026-05-31 19:58:56.494	PUBLISHED	\N	\N	\N
cmpu7dejy0097l8t2b3do1uua	cmpu7dd7h0094l8t28p1b078o	cmpu7a51x000vl8t233b55u1x	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	4	2026-05-31 19:58:56.494	2026-05-31 19:58:56.494	PUBLISHED	\N	\N	\N
cmpu7dl7j009jl8t274rhbl9o	cmpu7diko009dl8t2xoprra7l	cmpu7a58c000xl8t2htaj0e0v	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	11	2026-05-31 19:59:05.119	2026-05-31 19:59:05.119	PUBLISHED	\N	\N	\N
cmpu7dl7j009kl8t29v5cielh	cmpu7diko009dl8t2xoprra7l	cmpu7a5qq0013l8t23hutiwoy	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	11	2026-05-31 19:59:05.119	2026-05-31 19:59:05.119	PUBLISHED	\N	\N	\N
cmpu7dl7j009ll8t2vz4ae8ya	cmpu7diko009dl8t2xoprra7l	cmpu7a51x000vl8t233b55u1x	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	11	2026-05-31 19:59:05.119	2026-05-31 19:59:05.119	PUBLISHED	\N	\N	\N
cmpu7dodj009sl8t2rugkrhth	cmpu7dlaz009ml8t2m73c1nps	cmpu7a5qq0013l8t23hutiwoy	5	Una joia	Producte català de primera. El recomano completament.	t	2	2026-05-31 19:59:09.223	2026-05-31 19:59:09.223	PUBLISHED	\N	\N	\N
cmpu7dodj009tl8t2qiobr5lm	cmpu7dlaz009ml8t2m73c1nps	cmpu7a51x000vl8t233b55u1x	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	4	2026-05-31 19:59:09.223	2026-05-31 19:59:09.223	PUBLISHED	\N	\N	\N
cmpu7ds8s00a0l8t2v2o9ikd7	cmpu7doh6009ul8t2kayxka2f	cmpu7a4vf000tl8t2u8t7462k	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	2	2026-05-31 19:59:14.236	2026-05-31 19:59:14.236	PUBLISHED	\N	\N	\N
cmpu7ds8s00a1l8t2f6k5trmw	cmpu7doh6009ul8t2kayxka2f	cmpu7a5e1000zl8t2wn4lmvys	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	4	2026-05-31 19:59:14.236	2026-05-31 19:59:14.236	PUBLISHED	\N	\N	\N
\.


--
-- Data for Name: SearchQuery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."SearchQuery" ("id", "query", "queryNormalized", "locale", "resultCount", "userId", "createdAt") FROM stdin;
cmpzxsrcy000004iibz44yds9	Cafe	cafe	ca	0	\N	2026-06-04 20:17:33.826
cmq0mw4in000004jr3czl7k02	Tintes naturales	tintes naturales	ca	0	\N	2026-06-05 08:00:01.247
cmq0myob1000004jlb2yhh38u	Tintes	tintes	ca	2	\N	2026-06-05 08:02:00.205
cmq0n4r7u000004l11iinyd24	Tintes	tintes	ca	2	cmq0mzkv4000104jrs8isx6ym	2026-06-05 08:06:43.915
cmq0qtn19000004jv7ffx6lqk	Gat	gat	ca	5	\N	2026-06-05 09:50:03.741
cmq0qwukr000104jvmtpu4lyk	Gat	gat	ca	5	cmq0qwn5n000004l1b0zd7m8o	2026-06-05 09:52:33.483
cmq0s308e000004js7c6j51nj	Gat	gat	ca	5	cmq0qwn5n000004l1b0zd7m8o	2026-06-05 10:25:20.366
cmq724x41000004l5qhhfyaty	Auriculars	auriculars	ca	0	\N	2026-06-09 19:53:22.849
cmqijfoxr000804l7m1u41cn9	Ropa	ropa	ca	0	cmqijdsre000404l7qh6x0ynm	2026-06-17 20:43:06.879
cmqj7lo48000004ilz20f7rjo	Probiotics per a gossos	probiotics per a gossos	ca	0	\N	2026-06-18 07:59:36.536
cmqjcru9m000004l8il95yi44	Feuita	feuita	ca	0	\N	2026-06-18 10:24:22.522
cmqjg72s5000404jxmy6886q5	Einas	einas	ca	0	cmqjg62po000004jxmzn6rskx	2026-06-18 12:00:12.245
cmqjg7cpy000504jxdkpidzav	Einas	einas	ca	0	cmqjg62po000004jxmzn6rskx	2026-06-18 12:00:25.126
cmqjj47ns000004js2ccgh04d	LLET	llet	ca	1	\N	2026-06-18 13:21:57.448
cmqjj52jr000104jsj85stwed	LLET	llet	ca	1	\N	2026-06-18 13:22:37.479
cmqjjlfqu000004jpe6gcrxs9	llet	llet	ca	1	cmqjjkqza000004l1z6ddmz1w	2026-06-18 13:35:21.079
cmqm7vu4e000004jv9labg74y	Ventilador sostre	ventilador sostre	ca	0	\N	2026-06-20 10:30:49.406
cmqm7w17i000004jpj65nh7hk	Ventilador	ventilador	ca	0	\N	2026-06-20 10:30:58.59
cmqnq1alx000004jfm8zo9iqk	Roba	roba	ca	1	\N	2026-06-21 11:46:43.317
\.


--
-- Data for Name: SellerSaleInvoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."SellerSaleInvoice" ("id", "orderId", "sellerId", "buyerId", "kind", "type", "status", "series", "number", "invoiceNumber", "issueDate", "issuerSnapshot", "recipientSnapshot", "lineItems", "baseAmount", "vatBreakdown", "vatAmount", "totalAmount", "legalMention", "pdfPublicId", "pdfUrl", "rectifiesId", "lastError", "createdAt", "updatedAt", "saleIdempotencyKey") FROM stdin;
cmpvciwfs000cyjt2csq0ofla	cmpvcikjr0008yjt2tf4ihh33	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a2oe0000l8t232dsj2jq	SALE	SIMPLIFIED	ISSUED	CG-B12345674	1	CG-B12345674-000001	2026-06-01 15:10:57.208	{"taxId": "B12345674", "legalName": "Cal Forner SL", "vatRegime": "GENERAL", "fiscalCity": "Manresa", "fiscalCountry": "ES", "fiscalProvince": "Bages", "fiscalPostalCode": "08241", "fiscalAddressLine1": "Carrer del Born, 12", "fiscalAddressLine2": null, "vatExemptionLegalBasis": null}	null	[{"title": "Torró d'Agramunt IGP", "vatRate": 10, "quantity": 10, "lineTotal": 129, "unitPrice": 12.9, "vatAmount": 11.73, "baseAmount": 117.27, "variantLabel": null}]	117.27	[{"base": 117.27, "rate": 10, "cuota": 11.73}]	11.73	129.00	Factura expedida por cangerard.cat en nombre y por cuenta de Cal Forner SL, conforme al art. 5 del RD 1619/2012.	cangerard/fiscal/invoices/cmpvciwfs000cyjt2csq0ofla.pdf	https://res.cloudinary.com/gerardcsaperas/raw/private/s--YzXZN6RL--/v1780326658/cangerard/fiscal/invoices/cmpvciwfs000cyjt2csq0ofla.pdf	\N	\N	2026-06-01 15:10:57.208	2026-06-01 15:10:58.583	cmpvcikjr0008yjt2tf4ihh33:cmpu7a33m0007l8t2zwqbkwf7
cmqb5nsv0000604lb6ovy6gkh	cmqb5ndd5000104lbu95woi7r	cmpu7a33m0007l8t2zwqbkwf7	cmpvaoc350000yjt2w4ur6be3	SALE	SIMPLIFIED	RECTIFIED	CG-B12345674	2	CG-B12345674-000002	2026-06-12 16:43:07.356	{"taxId": "B12345674", "legalName": "Cal Forner SL", "vatRegime": "GENERAL", "fiscalCity": "Manresa", "fiscalCountry": "ES", "fiscalProvince": "Bages", "fiscalPostalCode": "08241", "fiscalAddressLine1": "Carrer del Born, 12", "fiscalAddressLine2": null, "vatExemptionLegalBasis": null}	null	[{"title": "Torró d'Agramunt IGP", "vatRate": 10, "quantity": 1, "lineTotal": 12.9, "unitPrice": 12.9, "vatAmount": 1.17, "baseAmount": 11.73, "variantLabel": null}]	11.73	[{"base": 11.73, "rate": 10, "cuota": 1.17}]	1.17	12.90	Factura expedida por cangerard.cat en nombre y por cuenta de Cal Forner SL, conforme al art. 5 del RD 1619/2012.	cangerard/fiscal/invoices/cmqb5nsv0000604lb6ovy6gkh.pdf	https://res.cloudinary.com/gerardcsaperas/raw/private/s--0c18uHpL--/v1781282588/cangerard/fiscal/invoices/cmqb5nsv0000604lb6ovy6gkh.pdf	\N	\N	2026-06-12 16:43:07.356	2026-06-12 19:32:36.776	cmqb5ndd5000104lbu95woi7r:cmpu7a33m0007l8t2zwqbkwf7
cmqbbprk4000204l2xljkqr0i	cmqb5ndd5000104lbu95woi7r	cmpu7a33m0007l8t2zwqbkwf7	cmpvaoc350000yjt2w4ur6be3	RECTIFICATION	SIMPLIFIED	ISSUED	CG-B12345674	3	CG-B12345674-000003	2026-06-12 19:32:36.676	{"taxId": "B12345674", "legalName": "Cal Forner SL", "vatRegime": "GENERAL", "fiscalCity": "Manresa", "fiscalCountry": "ES", "fiscalProvince": "Bages", "fiscalPostalCode": "08241", "fiscalAddressLine1": "Carrer del Born, 12", "fiscalAddressLine2": null, "vatExemptionLegalBasis": null}	null	[{"title": "Torró d'Agramunt IGP", "vatRate": 10, "quantity": 1, "lineTotal": -12.9, "unitPrice": 12.9, "vatAmount": -1.17, "baseAmount": -11.73, "variantLabel": null}]	-11.73	[{"base": -11.73, "rate": 10, "cuota": -1.17}]	-1.17	-12.90	Factura expedida por cangerard.cat en nombre y por cuenta de Cal Forner SL, conforme al art. 5 del RD 1619/2012.	cangerard/fiscal/invoices/cmqbbprk4000204l2xljkqr0i.pdf	https://res.cloudinary.com/gerardcsaperas/raw/private/s--vNu1WkfJ--/v1781292757/cangerard/fiscal/invoices/cmqbbprk4000204l2xljkqr0i.pdf	cmqb5nsv0000604lb6ovy6gkh	buyer email: The cangerard.cat domain is not verified. Please, add and verify your domain on https://resend.com/domains; seller email: The cangerard.cat domain is not verified. Please, add and verify your domain on https://resend.com/domains	2026-06-12 19:32:36.676	2026-06-12 19:32:38.931	\N
\.


--
-- Data for Name: Setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Setting" ("key", "value", "updatedAt") FROM stdin;
defaultCommissionRate	10	2026-05-31 19:56:21.021
holdedB2CContactId	6a2c37182d9f849b320d93e1	2026-06-12 16:43:05.201
\.


--
-- Data for Name: TaxProfile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."TaxProfile" ("id", "userId", "legalName", "taxId", "fiscalAddressLine1", "fiscalAddressLine2", "fiscalCity", "fiscalPostalCode", "fiscalProvince", "fiscalCountry", "createdAt", "updatedAt", "holdedContactId") FROM stdin;
\.


--
-- Data for Name: VerifactuEvent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."VerifactuEvent" ("id", "type", "payload", "createdAt") FROM stdin;
\.


--
-- Data for Name: VerifactuRecord; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."VerifactuRecord" ("id", "invoiceId", "sellerId", "recordType", "previousHash", "recordHash", "payloadXml", "qrPayload", "aeatStatus", "createdAt") FROM stdin;
\.


--
-- Data for Name: Wishlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Wishlist" ("id", "userId", "createdAt") FROM stdin;
cmpu7a2pj0001l8t29arq6ldl	cmpu7a2oe0000l8t232dsj2jq	2026-05-31 19:56:21.134
cmpu7a32i0006l8t22t7vrmat	cmpu7a31d0005l8t2bcdsydsr	2026-05-31 19:56:21.601
cmpu7a3fx000bl8t28pfxofpm	cmpu7a3er000al8t2r270jifo	2026-05-31 19:56:22.083
cmpu7a3ti000gl8t2kpj6gpxn	cmpu7a3rz000fl8t2gpop3t7w	2026-05-31 19:56:22.559
cmpu7a46q000ll8t2p0jzh10k	cmpu7a45l000kl8t250r3mgr9	2026-05-31 19:56:23.049
cmpu7a4kf000ql8t2foomf1fx	cmpu7a4jb000pl8t2z99dv0ay	2026-05-31 19:56:23.543
cmpu7a4ws000ul8t2eiwkx5if	cmpu7a4vf000tl8t2u8t7462k	2026-05-31 19:56:23.984
cmpu7a531000wl8t2u7hdas1r	cmpu7a51x000vl8t233b55u1x	2026-05-31 19:56:24.213
cmpu7a59h000yl8t2uj4xu2qi	cmpu7a58c000xl8t2htaj0e0v	2026-05-31 19:56:24.444
cmpu7a5ff0010l8t2r4787biq	cmpu7a5e1000zl8t2wn4lmvys	2026-05-31 19:56:24.649
cmpu7a5lo0012l8t243fuyvoj	cmpu7a5kk0011l8t2mjyz3q0t	2026-05-31 19:56:24.884
cmpu7a5rx0014l8t2w3d8ibv5	cmpu7a5qq0013l8t23hutiwoy	2026-05-31 19:56:25.106
cmpvaoc4o0001yjt2f358rav5	cmpvaoc350000yjt2w4ur6be3	2026-06-01 14:19:11.537
cmpvchf630005yjt2jhe9h1os	cmpvchf4w0004yjt2isrskbox	2026-06-01 15:09:48.128
cmpvp45080001l0t2mm7uyf5p	cmpvp44yn0000l0t23ohg1rsd	2026-06-01 21:03:23.423
cmpxq12j4000104la7qy87b5a	cmpxq12g7000004la5bg7k22q	2026-06-03 07:04:32.167
cmpy85uyh000104jobtrypq27	cmpy85uvo000004jojvlenfsq	2026-06-03 15:32:08.724
cmpy87w20000104l1uu0u9rfy	cmpy87vzd000004l1nekjm03g	2026-06-03 15:33:43.465
cmpyhlf7m000104l4absgg6t8	cmpyhlf4w000004l4f8q7ljyu	2026-06-03 19:56:11.36
cmpyick73000104jlp1bpkr9z	cmpyick4e000004jlpb1optdv	2026-06-03 20:17:17.534
cmpzapzeb000104ieb94pyyy0	cmpzapzbe000004ieeqx3bi85	2026-06-04 09:31:33.002
cmq0mzkxt000204jrqawe3le4	cmq0mzkv4000104jrs8isx6ym	2026-06-05 08:02:42.4
cmq0qwn8b000104l1cvoe7hn8	cmq0qwn5n000004l1b0zd7m8o	2026-06-05 09:52:23.867
cmq24oter000104kzv5d83fqz	cmq24otby000004kzyfgzs554	2026-06-06 09:05:59.422
cmq709p9x000104l75ytglktp	cmq709p73000004l7e26w0dst	2026-06-09 19:01:06.639
cmq723odb000104jofzr4wh06	cmq723oae000004joi3yp01p0	2026-06-09 19:52:24.758
cmq7pl9kn000104jz2wkyhjma	cmq7pl9hy000004jz8jufbmlo	2026-06-10 06:49:56.566
cmq8cnzm6000104l8ry2c86ml	cmq8cnzjc000004l8utnoryka	2026-06-10 17:35:54.792
cmq8er2oe000104ju1flbie1y	cmq8er2lj000004jumh7n0q0j	2026-06-10 18:34:17.959
cmqhlgdes000104l4j8vtnktk	cmqhlgdbx000004l4rclvdurj	2026-06-17 04:51:51.549
cmqii08xt000104ih47bbq3sh	cmqii08xh000004ihicxy4c9l	2026-06-17 20:03:06.678
cmqij6psn000104l7fqo300hv	cmqij6psc000004l7tk29jibo	2026-06-17 20:36:08.076
cmqijdss1000504l7pqxaymrg	cmqijdsre000404l7qh6x0ynm	2026-06-17 20:41:38.522
cmqijf9r6000104jri6s87ufm	cmqijf9r0000004jrses2kfx5	2026-06-17 20:42:47.196
cmqin06qf000104jploaczkjh	cmqin06q0000004jpgyabnte8	2026-06-17 22:23:01.897
cmqj30iy1000104l8ggpp5e2w	cmqj30ixm000004l8n61y9hs3	2026-06-18 05:51:11.578
cmqj3idc0000104ky8uj6s8tn	cmqj3idbs000004kyityoqw50	2026-06-18 06:05:04.121
cmqj3pxut000504ky2svyn3k5	cmqj3pxtw000404kyi6uwc4i3	2026-06-18 06:10:57.284
cmqj5qomx000104jy6p8aw2lp	cmqj5qomq000004jy2848o1zt	2026-06-18 07:07:31.25
cmqj6ikdk000104js5fexdegn	cmqj6ikde000004jsva6b3jbs	2026-06-18 07:29:12.098
cmqj83mle000204iltyf3eyjb	cmqj83ml3000104ilciuo697p	2026-06-18 08:13:34.359
cmqj91p6r000604illveic4uf	cmqj91p6i000504ilstx49t1o	2026-06-18 08:40:04.026
cmqj9hwcz000104jvcp9n32oy	cmqj9hwcj000004jvioj091n6	2026-06-18 08:52:39.811
cmqjazpem000104kzovbdzj39	cmqjazpe4000004kz4d22drzp	2026-06-18 09:34:30.22
cmqjdtscw000104l7tf19esd8	cmqjdtsco000004l78t08zf7l	2026-06-18 10:53:52.968
cmqjf6xz1000104jlu9nyljmx	cmqjf6xyq000004jl4zdta7ss	2026-06-18 11:32:06.387
cmqjg5cs8000504jl5ibqhdni	cmqjg5cry000404jlna8wgvc7	2026-06-18 11:58:51.886
cmqjg62pu000104jx9htai18m	cmqjg62po000004jxmzn6rskx	2026-06-18 11:59:25.5
cmqjgfuy2000904jlacl1tfp3	cmqjgfuxy000804jl2m66wf36	2026-06-18 12:07:01.99
cmqjh2bua000104jv3qkqqzyf	cmqjh2bty000004jvr8cham0u	2026-06-18 12:24:30.31
cmqjhardm000104ihqvgpruo4	cmqjhardd000004ihc5hi51rr	2026-06-18 12:31:03.697
cmqjhbbgn000104lbfu8t8y2q	cmqjhbbgi000004lb371296dq	2026-06-18 12:31:29.731
cmqjjkqzr000104l1z6g5ofdh	cmqjjkqza000004l1z6ddmz1w	2026-06-18 13:34:48.982
cmqjkjjos000104jr3itry8y2	cmqjkjjom000004jrztfykx5l	2026-06-18 14:01:52.486
cmqjlj641000104l4wtiqm1jg	cmqjlj63u000004l4xr2w5bko	2026-06-18 14:29:34.506
cmqjlqvqs000104jpxi8kzyta	cmqjlqvqj000004jpj2qde3xm	2026-06-18 14:35:34.315
cmqjlvezo000504jpd4kqepjy	cmqjlvezk000404jpi582pjka	2026-06-18 14:39:05.888
cmqjmz0bp000104l4myn8h15z	cmqjmz0ba000004l4133jkklx	2026-06-18 15:09:53.11
cmqjo4ppp000104l72gnqovq5	cmqjo4ppb000004l7jzqlb2o1	2026-06-18 15:42:18.911
cmqjpf8xf000104jv83wdfzz8	cmqjpf8x1000004jv5mfwi8ci	2026-06-18 16:18:29.99
cmqjply8o000104jsgk98qjnt	cmqjply8e000004js8i5o3mhw	2026-06-18 16:23:42.734
cmqjrdhps000104jvdyeurfw5	cmqjrdhpd000004jv6cgs9aw9	2026-06-18 17:13:07.298
cmqjrvg7u000104i5at0o693c	cmqjrvg7k000004i5sxnpv9r2	2026-06-18 17:27:05.168
cmqjwpk1k000104kye52xtxmo	cmqjwpk16000004kydtgd3hxq	2026-06-18 19:42:28.266
cmqjxwvm1000504kypooq8jpb	cmqjxwvlq000404kybs366h86	2026-06-18 20:16:09.47
cmqjyvzcs000904kyjlthahr7	cmqjyvzcd000804kyqmjycah7	2026-06-18 20:43:27.277
cmqjz8y66000104jj58vsd9lm	cmqjz8y60000004jjtacmeyo2	2026-06-18 20:53:32.281
cmqjznts4000504jje0lqgljy	cmqjzntrx000404jjp08l8xyb	2026-06-18 21:05:06.429
cmqjzr34y000104jpbppu9t30	cmqjzr34s000004jpt47ocl2p	2026-06-18 21:07:38.525
cmqk0s2fd000104l5ncv7oqrl	cmqk0s2f8000004l5ibsuitun	2026-06-18 21:36:23.876
cmqk5plqn000104l0ooo52h5j	cmqk5plq5000004l044h0kz47	2026-06-18 23:54:27.005
cmqkcgnkz000104l1b6bborjw	cmqkcgnkq000004l1732k7k1h	2026-06-19 03:03:26.81
cmqkraahb000104l1abmqcfy7	cmqkraagz000004l1vp6a90nk	2026-06-19 09:58:24.131
cmqkyoh16000104l1bxrkb646	cmqkyoh0u000004l1w2wnx1fq	2026-06-19 13:25:23.118
cmql0skeo000104l1o0pp5ym6	cmql0skeh000004l1uy8ngvre	2026-06-19 14:24:33.353
cmql303c0000104lbxlf6bm2b	cmql303bs000004lby838azbl	2026-06-19 15:26:23.704
cmql3clui000504lbb3v5y8oi	cmql3clua000404lb17o23afm	2026-06-19 15:36:07.57
cmql8fxqu000104lbahi18fd1	cmql8fxqj000004lbpnll7hbv	2026-06-19 17:58:41.035
cmqlce6dr000104l80tyztzdn	cmqlce6df000004l8z67gbcvj	2026-06-19 19:49:17.379
cmqmf61m6000104juzgasbznt	cmqmf61lt000004ju3al1fnzd	2026-06-20 13:54:42.977
cmqmi6rah000104l2gnrzd53h	cmqmi6ra1000004l2mw67823n	2026-06-20 15:19:15.097
cmqmvftzk000404jx78a73vzk	cmqmvftz6000304jxm441kpeg	2026-06-20 21:30:13.506
cmqmxx8rn000104lgp56bt8rx	cmqmxx8r8000004lgn5feflb6	2026-06-20 22:39:45.045
cmqna76ja000104jx2zcv0q7h	cmqna76iv000004jxqktkxab5	2026-06-21 04:23:24.103
cmqnkd6g6000104jvwvsrkro9	cmqnkd6fu000004jvb313k6kh	2026-06-21 09:08:00.09
cmqnojisx000104l4glaculhg	cmqnojisi000004l4vyamzrfz	2026-06-21 11:04:54.498
cmqo0vd37000104l4nn248s4l	cmqo0vd2p000004l4gh8c8yxn	2026-06-21 16:50:02.353
cmqpmax02000104jmy6kxm8yx	cmqpmawzl000004jmlne1m13l	2026-06-22 19:37:46.113
\.


--
-- Data for Name: WishlistItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."WishlistItem" ("id", "wishlistId", "productId", "createdAt") FROM stdin;
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_prisma_migrations" ("id", "checksum", "finished_at", "migration_name", "logs", "rolled_back_at", "started_at", "applied_steps_count") FROM stdin;
8a636358-88d2-48ab-be7f-1eeeea632a2c	0accbfd7cbb923b80f13b1e670b77c52dac2c675fabce8dbe512f096f2bee03a	2026-06-22 20:47:57.037739+00	20260621120000_unaccent_extension	\N	\N	2026-06-22 20:47:56.481546+00	1
7fa31433-27f3-4c65-83bd-69a503e5a6cd	7c756883e66142b795bdd97b8f4f0bcd359eed00d78b481bb449701410be5c06	2026-05-31 19:53:46.391159+00	20260521100408_init	\N	\N	2026-05-31 19:53:42.282451+00	1
5f280a9f-3978-4168-9644-c5c4cf7cb3cd	d8a3f6eb97e776f4028baef7816857be8ae9e6e8746c46a8bb47066656fbe1b0	2026-05-31 19:53:53.560682+00	20260529170000_shipping_invoice_idempotency	\N	\N	2026-05-31 19:53:53.356984+00	1
dc770741-2b17-4046-8360-528ad716bb52	54c10a91167f6bdfbe3a3da21b9e6b7617ddd97e3704c57d3c1b25ac7197f9e4	2026-05-31 19:53:46.676065+00	20260521151848_cart_saved_for_later	\N	\N	2026-05-31 19:53:46.47254+00	1
c71569d4-a2ec-4a23-8390-447b506476d4	3dea8c428c922af11087e01fb6752f9d306ac3f1a2c44b534a8af54150857c25	2026-05-31 19:53:47.550609+00	20260522105104_shipping_strategy	\N	\N	2026-05-31 19:53:46.775609+00	1
0b81ea4a-fde8-4cfe-a769-028a835544bf	24d8b629ee4b9f33212247e09b7b4fa99324d42bcb18280c5d88a5f1d78133a4	2026-06-17 18:07:10.415888+00	20260612200000_consent_records	\N	\N	2026-06-17 18:07:09.653336+00	1
9306798f-80f4-4149-927d-16e05a0a2390	0fc10d22ad3370ed06a98471399c4fbb92e4a890875323e3eecb8d7776c23610	2026-05-31 19:53:48.075471+00	20260524074119_seller_shipping_methods	\N	\N	2026-05-31 19:53:47.631249+00	1
c5003554-b954-4374-8cc4-0f1335c27529	87a12960ec6b0613b5772e2596f1fae495099c9169202eb428048294cc5493a3	2026-05-31 19:53:54.141184+00	20260529180000_rectifications	\N	\N	2026-05-31 19:53:53.640456+00	1
f6891a59-428f-4b33-93ea-5c629f28b84b	4baa01a2b5d5e9108cf0cdfc51324a3fd60581b485c4ec094bd5ff640505da05	2026-05-31 19:53:48.502347+00	20260524082910_contact_messages	\N	\N	2026-05-31 19:53:48.156439+00	1
367aae97-2b6d-4885-b1e2-4fc4d47d75f1	a9f7535c449ebd1402f742a23f94ef1ffebba8bdab07353a709f95a8ab441b8a	2026-05-31 19:53:48.981753+00	20260524182110_add_search_query_log	\N	\N	2026-05-31 19:53:48.587048+00	1
97d0cbb6-bde4-4938-8046-524e85a56ff6	b4e4bddcea282cdfb271e11999cc5f84e8c4c36f2c214b5fa5174f26fc2d9113	2026-05-31 19:53:49.386304+00	20260525063430_add_product_origin	\N	\N	2026-05-31 19:53:49.081103+00	1
c03f73ef-7c5e-4a3b-b240-971ed7a303e4	6ae810e4343a8185d779db99925a931e9352fdcd0050650d41401b81f5b4eed0	2026-05-31 19:53:55.450251+00	20260531092325_third_party_invoicing	\N	\N	2026-05-31 19:53:54.223234+00	1
36f84888-3083-47ca-a7c5-cb1e2764c59f	896e0b7f89ff03e61f9948c9ce3b550e289d7f5db11de598c4d7590c97856f26	2026-05-31 19:53:49.704862+00	20260525120000_add_product_unlimited_stock	\N	\N	2026-05-31 19:53:49.481869+00	1
7084f554-f381-4c75-94cb-66dbd1e3b99d	400a53b9819937713d474ff9e9264d7d4b4890d2188e4e2887f4bcafafdc0652	2026-05-31 19:53:50.506113+00	20260525130000_add_product_variants	\N	\N	2026-05-31 19:53:49.787191+00	1
e813d3fe-c2ca-48e9-a6d2-045bfcc48eed	a02310d7cccd95b24216f3c5d2e33420ada8a2f8ccbe8e0e32c34229190f80fd	2026-05-31 19:53:51.130514+00	20260527120000_fiscal_foundations	\N	\N	2026-05-31 19:53:50.587284+00	1
902f1ee9-f8fa-4e10-9bb7-6f2ba60d7cc6	f7b1270fcc6ac17c0a9f32ee0b933f69efcb5eeef3aff99a6ab32d02756bc6a7	2026-05-31 19:53:55.82021+00	20260531093000_sale_invoice_idempotency_key	\N	\N	2026-05-31 19:53:55.53175+00	1
171b816b-2aa6-4625-b54c-062e176fa932	49df6da3251bd15c6ce184a0f0849ed640a2a8c69cde7f92bb01113d2bf20834	2026-05-31 19:53:52.137362+00	20260527150559_invoice_request_flow	\N	\N	2026-05-31 19:53:51.211518+00	1
e6d25b98-20a4-4488-8053-837eb276632a	666a07fe134fd7c1d1fb90230d57bb61db9a04adb6bbbbe97339bf606f712ab6	2026-05-31 19:53:52.963013+00	20260527154630_platform_invoices	\N	\N	2026-05-31 19:53:52.218574+00	1
af84425a-3213-4aa0-a77f-d81d47a584f5	8f0a4292cb7f74c585c75ed225a58104e2765bf25341ef2ba26c5a4bc3ab1cd6	2026-06-17 18:07:12.905245+00	20260613084543_returns_and_moderation	\N	\N	2026-06-17 18:07:10.604236+00	1
dbdd70d7-de31-474e-87e6-07ec8bdfecd7	3af88576ee848d49f5005473405252e6630d1b564c52cb89cdfcdcf3d80296a8	2026-05-31 19:53:53.275985+00	20260529115730_seller_phone	\N	\N	2026-05-31 19:53:53.047175+00	1
384f7c32-bc45-4f7c-b0b1-4ce764246d5f	0bdc1ec2ffeeaba193736a7d91e67436a57112e76eedba1b73ad632309f72fc2	2026-05-31 19:53:56.15303+00	20260531120000_stripe_fee	\N	\N	2026-05-31 19:53:55.927466+00	1
37cace2a-e636-491c-b78b-89e6b1abe868	9e5812a6009eddfeec895ce07ac8bf41d76ff46851160c49942facb9c649d818	2026-06-03 17:04:20.22005+00	20260603131429_mejoras_sales_unit_shipping	\N	\N	2026-06-03 17:04:19.524316+00	1
662f6791-0763-4ac5-8c96-7cd40f290a9a	9f0c1af4a9501cfc7e0f70a51caaa0546460d1a9b443b6ceeca724be569fc029	2026-06-17 18:07:08.705918+00	20260612173810_notifications_account_deletion_per_order_commissions	\N	\N	2026-06-17 18:07:06.885632+00	1
346a4a47-1a26-4355-bdf9-415b93f24264	6e06146aefb1deb0c91113e5e4864cc70779eff4d1d7e13b212f35692e36c43c	2026-06-17 19:33:38.215675+00	20260613105113_legal_p0_a_d	\N	\N	2026-06-17 19:33:34.818864+00	1
971308be-db3a-4467-8ed7-b9ab116410e4	9f3271d56b2998ee90defbea483526f3a370ec57660b6f4525315a2b4684a699	2026-06-17 18:07:09.464848+00	20260612180721_taxprofile_holded_contact	\N	\N	2026-06-17 18:07:08.894139+00	1
e507028a-2b8e-4abf-99ca-81ee94e85cec	bc8d92fab29c87fcfe44de797a526fb543f5be4822c6afa4b864b7ed568e56ba	2026-06-17 19:33:38.970803+00	20260613110225_ebook_consent	\N	\N	2026-06-17 19:33:38.402904+00	1
025262ed-0e4c-40d4-9383-194e42e520f4	ed843cc9549981e36855e81fcd907aa523f3b1a0b22d65c8177eaa1893f19d5c	2026-06-22 20:47:56.293021+00	20260621000000_product_slug_history	\N	\N	2026-06-22 20:47:55.416052+00	1
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict mwp3U3zZ2bCcUv3x3RMtaXgSbtffuSg09v6ZgHfTlUrVpsEOWIxXPQoSTbRolIa

RESET ALL;
