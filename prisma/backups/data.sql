SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict BpmmsucnMgHuDwQ0fQHLGWCPmV6aWu6TgWfBlgeTcJCmKBpTTz5L6BwHB7HLCSf

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

COPY "public"."User" ("id", "email", "passwordHash", "name", "role", "preferredLocale", "emailVerified", "emailVerifyToken", "passwordResetToken", "passwordResetExpires", "suspended", "createdAt", "updatedAt") FROM stdin;
cmpu7a2oe0000l8t232dsj2jq	admin@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Gerard · Admin	ADMIN	ca	2026-05-31 19:56:21.074	\N	\N	\N	f	2026-05-31 19:56:21.134	2026-05-31 19:56:21.134
cmpu7a31d0005l8t2bcdsydsr	calforner@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Roser Vilanova	SELLER	ca	2026-05-31 19:56:21.556	\N	\N	\N	f	2026-05-31 19:56:21.601	2026-05-31 19:56:21.601
cmpu7a3er000al8t2r270jifo	masdeloli@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Pere Gibert	SELLER	ca	2026-05-31 19:56:22.043	\N	\N	\N	f	2026-05-31 19:56:22.083	2026-05-31 19:56:22.083
cmpu7a3rz000fl8t2gpop3t7w	lacadernera@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Jaume Oller	SELLER	ca	2026-05-31 19:56:22.517	\N	\N	\N	f	2026-05-31 19:56:22.559	2026-05-31 19:56:22.559
cmpu7a45l000kl8t250r3mgr9	tramuntana@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Anna Costa	SELLER	ca	2026-05-31 19:56:23.006	\N	\N	\N	f	2026-05-31 19:56:23.049	2026-05-31 19:56:23.049
cmpu7a4jb000pl8t2z99dv0ay	ceramica@cangerard.cat	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Núria Sentís	SELLER	ca	2026-05-31 19:56:23.49	\N	\N	\N	f	2026-05-31 19:56:23.543	2026-05-31 19:56:23.543
cmpu7a4vf000tl8t2u8t7462k	marta@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Marta Puig	BUYER	ca	2026-05-31 19:56:23.934	\N	\N	\N	f	2026-05-31 19:56:23.984	2026-05-31 19:56:23.984
cmpu7a51x000vl8t233b55u1x	jordi@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Jordi Soler	BUYER	ca	2026-05-31 19:56:24.172	\N	\N	\N	f	2026-05-31 19:56:24.213	2026-05-31 19:56:24.213
cmpu7a58c000xl8t2htaj0e0v	laia@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Laia Ferrer	BUYER	ca	2026-05-31 19:56:24.375	\N	\N	\N	f	2026-05-31 19:56:24.444	2026-05-31 19:56:24.444
cmpu7a5e1000zl8t2wn4lmvys	pol@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Pol Mas	BUYER	ca	2026-05-31 19:56:24.609	\N	\N	\N	f	2026-05-31 19:56:24.649	2026-05-31 19:56:24.649
cmpu7a5kk0011l8t2mjyz3q0t	carla@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Carla Roig	BUYER	ca	2026-05-31 19:56:24.822	\N	\N	\N	f	2026-05-31 19:56:24.884	2026-05-31 19:56:24.884
cmpu7a5qq0013l8t23hutiwoy	marc@example.com	$2b$12$Ty4Cdu9WbvFSTw1p90Xwj.I/ynrno3Ih/jwmk59X0V0XdKlsPQFbm	Marc Soldevila	BUYER	ca	2026-05-31 19:56:25.05	\N	\N	\N	f	2026-05-31 19:56:25.106	2026-05-31 19:56:25.106
cmpvchf4w0004yjt2isrskbox	gcsaperas@gmail.com	$2b$12$qRhD7H6/5aerD8Usx.uBJeXKWYOB7c95W0.CEBhDnEmOB5UWf67sW	Gerard Castrelo Saperas	BUYER	ca	\N	f9bb1e8f40fbaef5456d3ea6b6f8210357c0840f3b880b67d3ccafd5b78c0591	\N	\N	f	2026-06-01 15:09:48.128	2026-06-01 15:09:48.128
cmpvp44yn0000l0t23ohg1rsd	gerard@recomposicioncorporal.es	$2b$12$fujMhnYWmA98nVohWXYYp.uOXYG1faiOvDarknojS5sVjKsMElhPi	Gerard Castrelo Saperas	BUYER	ca	2026-06-01 21:04:06.05	\N	\N	\N	f	2026-06-01 21:03:23.423	2026-06-01 21:05:03.684
cmpxq12g7000004la5bg7k22q	josep.f@lamant.cat	$2b$12$stB62CAHFQ6smlPaiMhdI.e31tkRFml7YLE/pzZhCfNeu03/s5ngW	Josep Fortunet	BUYER	ca	\N	538e1a62f2a67e0560fd90f271ddae2587ba9f74941fd3b903589be2864b8eb7	\N	\N	f	2026-06-03 07:04:32.167	2026-06-03 07:04:32.167
cmpy85uvo000004jojvlenfsq	hi@quotavita.com	$2b$12$mzc1pMXCuvQUeehigbcp4OLDZjaFL1Jkjs.1ilTUgrhV9S.93qzWy	Gerard Rosell	BUYER	ca	\N	40f84f6d214d2b374cfec01c6f1ec2efb91d63c3236a33fbe8dbb5a0160d5bfe	\N	\N	f	2026-06-03 15:32:08.724	2026-06-03 15:32:08.724
cmpy87vzd000004l1nekjm03g	gerardrosell@quotavita.com	$2b$12$i2X16BkjpXZHqCOymN1ScO/YaisfOewHJgKDS2qYNoHlnP7RchIoK	Gerard Rosell	SELLER	ca	\N	bf3a4d6c5d63d30082921a876480deb92c60be3a0bbe9ca59c9ed0393495428e	\N	\N	f	2026-06-03 15:33:43.465	2026-06-03 15:33:43.465
cmpyhlf4w000004l4f8q7ljyu	martasgrr@gmail.com	$2b$12$EpPfs0ohZneXPzlJUtrK6.r.hxTATJjC4CozewJOpW6B.C/ophXca	Marta Segarra Corcobado	SELLER	ca	2026-06-03 20:04:10.504	\N	\N	\N	f	2026-06-03 19:56:11.36	2026-06-03 20:04:10.506
cmpyick4e000004jlpb1optdv	esteveayma@gmail.com	$2b$12$F7hOyyG.cNL0xLRD8mDGV.wlB9xUrFXzFYW8uFHz6LxWwQauMl0Sq	Esteve Aymà Tintó	BUYER	ca	\N	6b21deb0994b12d9eb6a725fbe0f9cee6a8fbe2887f7cd3f6195ba5b1cc23bac	\N	\N	f	2026-06-03 20:17:17.534	2026-06-03 20:17:17.534
cmpzapzbe000004ieeqx3bi85	info@closdebasella.com	$2b$12$YEqKY/yqglVE5Eak/ddzOOnlE8qN4n4NeDixb2bzYLlw49./tDox2	Clos de Basella	BUYER	ca	2026-06-04 10:02:35.764	\N	\N	\N	f	2026-06-04 09:31:33.002	2026-06-04 10:02:35.771
cmq0mzkv4000104jrs8isx6ym	alejandrapbanca@gmail.com	$2b$12$kW2MF5wqJbp0Y5l.F2boIus.ki0T.Da/o2E0YL2zFsWhT9SgCfxV.	Alejandra Banca	BUYER	ca	2026-06-05 08:32:40.023	\N	\N	\N	f	2026-06-05 08:02:42.4	2026-06-05 08:32:40.03
cmq0qwn5n000004l1b0zd7m8o	verorio85@gmail.com	$2b$12$2I9Mcmz6uVG0M96V6G312em.Qj8cKoHEA8FSfDnr6xap4pmTNsfC6	Verónica Rio	BUYER	ca	2026-06-05 10:25:02.872	\N	\N	\N	f	2026-06-05 09:52:23.867	2026-06-05 10:25:02.881
cmq24otby000004kzyfgzs554	aaxeel93@hotmail.com	$2b$12$hHqneWcLvY0PkjXLbMakoOVjYnq7.o41F0mw5cQaykqGFJSnXrZSG	Axel Dagá Canudas	BUYER	ca	2026-06-07 10:06:08.054	\N	\N	\N	f	2026-06-06 09:05:59.422	2026-06-07 10:06:08.063
cmq709p73000004l7e26w0dst	david121cc@proton.me	$2b$12$2YdiXRBGVJS4RMyar73Y/OV0QaLeL5HINsVsvfT2k/X9J4lzcORiC	David Camacho	BUYER	ca	2026-06-09 19:02:25.881	\N	\N	\N	f	2026-06-09 19:01:06.639	2026-06-09 19:02:25.887
cmpvaoc350000yjt2w4ur6be3	test@cangerard.cat	$2b$12$J9y1LY3XEOEy8WoYGeBq9uYK.nClRP5yYKxV6W354ejlN0FRPYF1W	Venedor Demo	SELLER	ca	\N	a81ca51def852ec88d23936b710dd440d39b617fb02edc39db52408af51767d8	\N	\N	f	2026-06-01 14:19:11.537	2026-06-09 19:08:50.489
cmq723oae000004joi3yp01p0	jordi@racodepensar.com	$2b$12$bIn7kOqjxOyd0itJ5cLOl.R3DfrrpQ4EQjRICU72x9MftUM52rrrq	JORDI TARRAGÓ ROCA	BUYER	ca	2026-06-10 05:44:50.374	\N	\N	\N	f	2026-06-09 19:52:24.758	2026-06-10 05:44:50.382
cmq7pl9hy000004jz8jufbmlo	gonzalezjodarlaura@gmail.com	$2b$12$NjVj4kTURgZEM72SO/fUj.1Ym6X/mjj3OZG/gN2IC1hRGtuV8F2wu	Laura Gonzalez	BUYER	ca	2026-06-10 07:02:18.029	\N	\N	\N	f	2026-06-10 06:49:56.566	2026-06-10 07:02:18.036
cmq8er2lj000004jumh7n0q0j	janimarti@gmail.com	$2b$12$FRW3vMW2Q7oJP8S78HErpOmyZyFAP8YmjogRZxc6P0Xcc6NJZJtHO	Èlia Casanovas Hernàndez	BUYER	ca	2026-06-10 18:35:15.715	\N	\N	\N	f	2026-06-10 18:34:17.959	2026-06-10 18:36:01.927
cmq8cnzjc000004l8utnoryka	albaauledasc@gmail.com	$2b$12$m11Gftn0Mz9ct4CeSjP1refUHmfycsmfRvluC0pb9Z5MKonHAxGra	Alba Auledas Costa	BUYER	ca	2026-06-11 05:48:29.177	\N	\N	\N	f	2026-06-10 17:35:54.792	2026-06-11 05:48:29.186
\.


--
-- Data for Name: Address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Address" ("id", "userId", "recipient", "street", "city", "postalCode", "province", "country", "phone", "isDefault", "createdAt", "updatedAt") FROM stdin;
cmpvcikg10007yjt26wuequhw	cmpu7a2oe0000l8t232dsj2jq	test	test	test	08520	test	ES	667717567	t	2026-06-01 15:10:41.665	2026-06-01 15:10:41.665
cmq8ewu3z000004le4z00vp0p	cmq8er2lj000004jumh7n0q0j	Èlia Casanovas Hernàndez	C/ Gran Via de Lluís Companys, 204 3r 2a	Premià de Mar	08330	El Maresme	ES	618038622	t	2026-06-10 18:38:46.895	2026-06-10 18:38:46.895
\.


--
-- Data for Name: SellerProfile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."SellerProfile" ("id", "userId", "storeName", "slug", "bioCa", "bioEs", "bioEn", "logoUrl", "region", "status", "rejectionReason", "commissionRate", "stripeAccountId", "stripeChargesEnabled", "stripePayoutsEnabled", "stripeDetailsSubmitted", "stripeOnboardingComplete", "approvedAt", "createdAt", "updatedAt", "originCity", "originCountry", "originPostalCode", "originProvince", "originStreet", "fiscalAddressLine1", "fiscalAddressLine2", "fiscalCity", "fiscalCountry", "fiscalPostalCode", "fiscalProvince", "fiscalResidenceCountry", "holdedContactId", "legalName", "payoutIban", "taxId", "vatExemptionLegalBasis", "vatRegime", "phone", "fiscalEmail", "saleInvoiceNextNumber", "saleInvoiceSeriesPrefix") FROM stdin;
cmpu7a2qp0002l8t2jom93w15	cmpu7a2oe0000l8t232dsj2jq	Demo CanGerard	demo-cangerard	Botiga de demostració del personal de CanGerard. Productes amb variants per provar el flux de compra.	Tienda de demostración del personal de CanGerard. Productos con variantes para probar el flujo de compra.	A demo storefront run by the CanGerard team. Products carry variants so the buying flow can be exercised end-to-end.	\N	Barcelonès	APPROVED	\N	10.00	\N	f	f	f	f	2026-05-31 19:56:21.074	2026-05-31 19:56:21.134	2026-05-31 19:56:21.134	Barcelona	ES	08036	Barcelonès	Carrer de Mallorca, 100	Carrer de Mallorca, 100	\N	Barcelona	ES	08036	Barcelonès	ES	\N	CanGerard Demo SL	\N	A12345674	\N	GENERAL	+34 932 000 100	admin@cangerard.cat	1	CG-A12345674
cmpu7a3h7000cl8t27muo350k	cmpu7a3er000al8t2r270jifo	Mas de l'Oli	mas-de-l-oli	Mas familiar de Les Garrigues: oli d'oliva verge extra, vins, mel i productes ecològics de proximitat.	Mas familiar de Les Garrigues: aceite de oliva virgen extra, vinos, miel y productos ecológicos de proximidad.	A family farm in Les Garrigues: extra-virgin olive oil, wines, honey and local organic products.	\N	Les Garrigues	APPROVED	\N	10.00	\N	f	f	f	f	2026-05-31 19:56:22.043	2026-05-31 19:56:22.083	2026-05-31 19:56:22.083	Les Borges Blanques	ES	25400	Les Garrigues	Camí de l'Oli, 4	Camí de l'Oli, 4	\N	Les Borges Blanques	ES	25400	Les Garrigues	ES	\N	Pere Gibert Sentís	\N	12345678Z	\N	GENERAL	+34 973 142 200	masdeloli@cangerard.cat	1	CG-12345678Z
cmpu7a3uq000hl8t2izdspdci	cmpu7a3rz000fl8t2gpop3t7w	La Cadernera	la-cadernera	Llibreria i editorial independent: literatura catalana, llibres infantils, disseny, regals i papereria.	Librería y editorial independiente: literatura catalana, libros infantiles, diseño, regalos y papelería.	An independent bookshop and publisher: Catalan literature, children’s books, design, gifts and stationery.	\N	Barcelonès	APPROVED	\N	10.00	\N	f	f	f	f	2026-05-31 19:56:22.517	2026-05-31 19:56:22.559	2026-05-31 19:56:22.559	Barcelona	ES	08002	Barcelonès	Carrer dels Llibreters, 7	Carrer dels Llibreters, 7	\N	Barcelona	ES	08002	Barcelonès	ES	\N	Edicions La Cadernera SL	\N	B62345673	\N	GENERAL	+34 933 015 588	lacadernera@cangerard.cat	1	CG-B62345673
cmpu7a47u000ml8t2rpsunk86	cmpu7a45l000kl8t250r3mgr9	Tramuntana	tramuntana	Taller de disseny i artesania de l'Empordà: ceràmica, tèxtil de la llar, espardenyes i material de muntanya.	Taller de diseño y artesanía del Empordà: cerámica, textil del hogar, alpargatas y material de montaña.	An Empordà design and craft workshop: pottery, home textiles, espadrilles and mountain gear.	\N	Alt Empordà	APPROVED	\N	10.00	\N	f	f	f	f	2026-05-31 19:56:23.006	2026-05-31 19:56:23.049	2026-05-31 19:56:23.049	Figueres	ES	17600	Alt Empordà	Carrer de la Tramuntana, 23	Carrer de la Tramuntana, 23	\N	Figueres	ES	17600	Alt Empordà	ES	\N	Tramuntana Disseny SL	\N	B98765431	\N	GENERAL	+34 972 503 144	tramuntana@cangerard.cat	1	CG-B98765431
cmpu7a4lj000rl8t22nheyztj	cmpu7a4jb000pl8t2z99dv0ay	Ceràmica Montsant	ceramica-montsant	Ceràmica feta a mà al Priorat: terrissa, plats i gerres amb esmalts tradicionals.	Cerámica hecha a mano en el Priorat: alfarería, platos y jarras con esmaltes tradicionales.	Handmade pottery from Priorat: earthenware, plates and jugs with traditional glazes.	\N	Priorat	PENDING	\N	10.00	\N	f	f	f	f	\N	2026-05-31 19:56:23.543	2026-05-31 19:56:23.543	Falset	ES	43730	Priorat	Carrer del Forn, 9	\N	\N	\N	ES	\N	\N	ES	\N	\N	\N	\N	\N	GENERAL	\N	\N	1	\N
cmpvaoc650002yjt2cim935ix	cmpvaoc350000yjt2w4ur6be3	Test	test	test	test	test	\N	Test	APPROVED	\N	10.00	\N	f	f	f	f	2026-06-01 15:06:24.796	2026-06-01 14:19:11.537	2026-06-01 15:06:24.8	\N	ES	\N	\N	\N	c/ Test 1-3	\N	Granollers	ES	08502	Barcelona	ES	6a1d9540ee7a73ecb103debf	TEST, S.L.	\N	47920372X	\N	GENERAL	667717567	test@cangerard.cat	1	CG-B1213141516
cmpu7a33m0007l8t2zwqbkwf7	cmpu7a31d0005l8t2bcdsydsr	Cal Forner	cal-forner	Forn de pa i botiga de gust del Bages: embotits, formatges, torrons, conserves i caves de tota la vida.	Horno de pan y tienda gourmet del Bages: embutidos, quesos, turrones, conservas y cavas de toda la vida.	A bakery and gourmet shop from Bages: cured meats, cheeses, nougat, preserves and cava.	\N	Bages	APPROVED	\N	10.00	\N	f	f	f	f	2026-05-31 19:56:21.556	2026-05-31 19:56:21.601	2026-06-01 15:10:57.163	Manresa	ES	08241	Bages	Carrer del Born, 12	Carrer del Born, 12	\N	Manresa	ES	08241	Bages	ES	\N	Cal Forner SL	\N	B12345674	\N	GENERAL	+34 938 720 011	calforner@cangerard.cat	2	CG-B12345674
cmpy87w4o000204l1twrbo7ye	cmpy87vzd000004l1nekjm03g	Quota Vita	quota-vita	Whey protein amb gustos locals de crema catalana i orxata	Whey protein amb gustos locals de crema catalana i orxata	Whey protein amb gustos locals de crema catalana i orxata	\N	Premià de Mar	PENDING	\N	10.00	\N	f	f	f	f	\N	2026-06-03 15:33:43.465	2026-06-03 15:33:43.465	\N	ES	\N	\N	\N	\N	\N	\N	ES	\N	\N	ES	\N	\N	\N	\N	\N	GENERAL	683338038	\N	1	\N
cmpyhlfag000204l428x8he27	cmpyhlf4w000004l4f8q7ljyu	Marta Segarra	marta-segarra	Les Franqueses del Vallès Les Franqueses del Vallès Les Franqueses del Vallès	Les Franqueses del Vallès Les Franqueses del Vallès Les Franqueses del Vallès	Les Franqueses del Vallès Les Franqueses del Vallès Les Franqueses del Vallès	\N	Les Franqueses del Vallès	PENDING	\N	10.00	\N	f	f	f	f	\N	2026-06-03 19:56:11.36	2026-06-03 19:56:11.36	\N	ES	\N	\N	\N	\N	\N	\N	ES	\N	\N	ES	\N	\N	\N	\N	\N	GENERAL	667717567	\N	1	\N
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

COPY "public"."Category" ("id", "parentId", "nameCa", "nameEs", "nameEn", "slug", "iconName", "imageUrl", "sortOrder", "createdAt", "updatedAt", "sendcloudEnabled") FROM stdin;
cmpu7a5vj0015l8t2pvwyxect	\N	Alimentació i Begudes	Alimentación y Bebidas	Food & Drink	alimentacio-i-begudes	UtensilsCrossed	\N	0	2026-05-31 19:56:25.279	2026-05-31 19:56:25.279	t
cmpu7a5ww0016l8t25emkzqx4	cmpu7a5vj0015l8t2pvwyxect	Caves	Cavas	Cava	caves	\N	\N	0	2026-05-31 19:56:25.328	2026-05-31 19:56:25.328	t
cmpu7a5y60017l8t2fwpd1gm0	cmpu7a5vj0015l8t2pvwyxect	Vins DO Catalunya	Vinos DO Cataluña	Wines DO Catalonia	vins-do-catalunya	\N	\N	1	2026-05-31 19:56:25.374	2026-05-31 19:56:25.374	t
cmpu7a5zg0018l8t2bbcpif6c	cmpu7a5vj0015l8t2pvwyxect	Oli d'oliva	Aceite de oliva	Olive oil	oli-doliva	\N	\N	2	2026-05-31 19:56:25.42	2026-05-31 19:56:25.42	t
cmpu7a60o0019l8t23h4fmyrn	cmpu7a5vj0015l8t2pvwyxect	Embotits i fuet	Embutidos y fuet	Cured meats & fuet	embotits-i-fuet	\N	\N	3	2026-05-31 19:56:25.464	2026-05-31 19:56:25.464	t
cmpu7a61w001al8t218acf7c1	cmpu7a5vj0015l8t2pvwyxect	Formatges	Quesos	Cheeses	formatges	\N	\N	4	2026-05-31 19:56:25.508	2026-05-31 19:56:25.508	t
cmpu7a636001bl8t2qsqskc8s	cmpu7a5vj0015l8t2pvwyxect	Torrons i dolços	Turrones y dulces	Nougat & sweets	torrons-i-dolcos	\N	\N	5	2026-05-31 19:56:25.554	2026-05-31 19:56:25.554	t
cmpu7a64c001cl8t2eom88xbr	cmpu7a5vj0015l8t2pvwyxect	Conserves	Conservas	Preserves	conserves	\N	\N	6	2026-05-31 19:56:25.596	2026-05-31 19:56:25.596	t
cmpu7a65k001dl8t2l97zcsft	\N	Llar i Artesania	Hogar y Artesanía	Home & Crafts	llar-i-artesania	Armchair	\N	1	2026-05-31 19:56:25.64	2026-05-31 19:56:25.64	t
cmpu7a66q001el8t2qc3yi0dz	cmpu7a65k001dl8t2l97zcsft	Ceràmica	Cerámica	Pottery	ceramica	\N	\N	0	2026-05-31 19:56:25.682	2026-05-31 19:56:25.682	t
cmpu7a67x001fl8t2j5ik7hrj	cmpu7a65k001dl8t2l97zcsft	Espardenyes	Alpargatas	Espadrilles	espardenyes	\N	\N	1	2026-05-31 19:56:25.725	2026-05-31 19:56:25.725	t
cmpu7a694001gl8t231nis4zu	cmpu7a65k001dl8t2l97zcsft	Tèxtil de la llar	Textil del hogar	Home textiles	textil-de-la-llar	\N	\N	2	2026-05-31 19:56:25.768	2026-05-31 19:56:25.768	t
cmpu7a6ac001hl8t2m8uwlsjh	\N	Llibres en català	Libros en catalán	Catalan books	llibres-en-catala	BookOpen	\N	2	2026-05-31 19:56:25.812	2026-05-31 19:56:25.812	t
cmpu7a6bk001il8t2f0mbx80l	cmpu7a6ac001hl8t2m8uwlsjh	Novel·la	Novela	Fiction	novella-catalana	\N	\N	0	2026-05-31 19:56:25.856	2026-05-31 19:56:25.856	t
cmpu7a6ct001jl8t2oezg7wtg	cmpu7a6ac001hl8t2m8uwlsjh	Llibres de cuina	Libros de cocina	Cookbooks	llibres-de-cuina	\N	\N	1	2026-05-31 19:56:25.901	2026-05-31 19:56:25.901	t
cmpu7a6e1001kl8t2lntgim52	cmpu7a6ac001hl8t2m8uwlsjh	Llibres infantils	Libros infantiles	Children's books	llibres-infantils	\N	\N	2	2026-05-31 19:56:25.945	2026-05-31 19:56:25.945	t
cmpu7a6f8001ll8t2m4nwf9dz	\N	Disseny i Regals	Diseño y Regalos	Design & Gifts	disseny-i-regals	Gift	\N	3	2026-05-31 19:56:25.988	2026-05-31 19:56:25.988	t
cmpu7a6gf001ml8t2fz5vlh51	cmpu7a6f8001ll8t2m4nwf9dz	Decoració	Decoración	Decor	decoracio	\N	\N	0	2026-05-31 19:56:26.031	2026-05-31 19:56:26.031	t
cmpu7a6hl001nl8t2n79nbfnm	cmpu7a6f8001ll8t2m4nwf9dz	Papereria	Papelería	Stationery	papereria	\N	\N	1	2026-05-31 19:56:26.073	2026-05-31 19:56:26.073	t
cmpu7a6ir001ol8t2120cnq5p	cmpu7a6f8001ll8t2m4nwf9dz	Jocs i regals	Juegos y regalos	Games & gifts	jocs-i-regals	\N	\N	2	2026-05-31 19:56:26.115	2026-05-31 19:56:26.115	t
cmpu7a6jy001pl8t2r6j1vpw5	\N	Productes Ecològics Locals	Productos Ecológicos Locales	Local Organic Products	productes-ecologics	Sprout	\N	4	2026-05-31 19:56:26.158	2026-05-31 19:56:26.158	t
cmpu7a6l7001ql8t2ra3ydbfu	cmpu7a6jy001pl8t2r6j1vpw5	Alimentació ecològica	Alimentación ecológica	Organic food	alimentacio-ecologica	\N	\N	0	2026-05-31 19:56:26.203	2026-05-31 19:56:26.203	t
cmpu7a6me001rl8t2y0zjekcp	cmpu7a6jy001pl8t2r6j1vpw5	Cosmètica natural	Cosmética natural	Natural cosmetics	cosmetica-natural	\N	\N	1	2026-05-31 19:56:26.247	2026-05-31 19:56:26.247	t
cmpu7a6nm001sl8t2eiz0djgj	\N	Esport	Deporte	Sport	esport	Dumbbell	\N	5	2026-05-31 19:56:26.29	2026-05-31 19:56:26.29	t
cmpu7a6ot001tl8t23ysjdo2d	cmpu7a6nm001sl8t2eiz0djgj	Muntanya i senderisme	Montaña y senderismo	Hiking & outdoors	muntanya-i-senderisme	\N	\N	0	2026-05-31 19:56:26.333	2026-05-31 19:56:26.333	t
cmpu7a6pz001ul8t2d44i5jud	\N	Infància	Infancia	Childhood	infancia	Baby	\N	6	2026-05-31 19:56:26.376	2026-05-31 19:56:26.376	t
cmpu7a6r5001vl8t2roldrply	cmpu7a6pz001ul8t2d44i5jud	Joguines	Juguetes	Toys	joguines	\N	\N	0	2026-05-31 19:56:26.417	2026-05-31 19:56:26.417	t
\.


--
-- Data for Name: Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Product" ("id", "sellerId", "categoryId", "titleCa", "titleEs", "titleEn", "slug", "descriptionCa", "descriptionEs", "descriptionEn", "brand", "basePrice", "originalPrice", "vatRate", "totalPrice", "currency", "stock", "condition", "status", "attributes", "ratingAvg", "ratingCount", "createdAt", "updatedAt", "heightCm", "lengthCm", "weightGrams", "widthCm", "origin", "originVerifiedAt", "unlimitedStock", "netContentUnit", "netContentValue", "salesCount") FROM stdin;
cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a5ww0016l8t25emkzqx4	Cava Brut Nature Gran Reserva	Cava Brut Nature Gran Reserva	Cava Brut Nature Gran Reserva	cava-brut-nature-gran-reserva	Cava elaborat amb el mètode tradicional i criat més de 30 mesos. Bombolla fina i final sec.	Cava elaborado con el método tradicional y criado más de 30 meses. Burbuja fina y final seco.	Cava made with the traditional method and aged over 30 months. Fine bubbles and a dry finish.	Cal Forner	15.62	\N	21.00	18.90	EUR	40	NEW	ACTIVE	{"do": "Cava", "year": 2019, "grape": "Macabeu, Xarel·lo", "volume": "75 cl"}	4.2	5	2026-05-31 19:56:26.465	2026-05-31 19:56:32.222	35	12	1400	12	FET_A_CATALUNYA	\N	f	\N	\N	0
cmpu7ab9q0025l8t2qauh9733	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a5ww0016l8t25emkzqx4	Cava Rosat Brut	Cava Rosado Brut	Rosé Cava Brut	rose-cava-brut	Cava rosat de garnatja amb aromes de fruita vermella, ideal per a celebracions.	Cava rosado de garnacha con aromas de fruta roja, ideal para celebraciones.	Garnatxa rosé cava with red-fruit aromas — perfect for celebrations.	Cal Forner	11.98	\N	21.00	14.50	EUR	32	NEW	ACTIVE	{"do": "Cava", "year": 2021, "grape": "Garnatxa", "volume": "75 cl"}	4	4	2026-05-31 19:56:32.27	2026-05-31 19:56:36.033	35	12	1400	12	FET_A_CATALUNYA	\N	f	\N	\N	0
cmpu7ae7j002cl8t25myc6ukc	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a5ww0016l8t25emkzqx4	Cava Reserva Semisec	Cava Reserva Semiseco	Cava Reserva Semi-dry	cava-reserva-semi-dry	Un cava reserva suau i afruitat, perfecte per acompanyar les postres.	Un cava reserva suave y afrutado, perfecto para acompañar los postres.	A smooth, fruity reserva cava — a great match for desserts.	Cal Forner	9.88	13.95	21.00	11.95	EUR	26	NEW	ACTIVE	{"do": "Cava", "year": 2020, "grape": "Parellada", "volume": "75 cl"}	4.33	3	2026-05-31 19:56:36.079	2026-05-31 19:56:39.883	35	12	1400	12	FET_A_CATALUNYA	\N	f	\N	\N	0
cmpu7ah6y002il8t2w5hp0t4k	cmpu7a3h7000cl8t27muo350k	cmpu7a5y60017l8t2fwpd1gm0	Vi Negre DO Priorat	Vino Tinto DO Priorat	Red Wine DO Priorat	red-wine-do-priorat	Vi negre potent del Priorat, criat en bóta de roure. Notes de fruita madura i mineralitat.	Vino tinto potente del Priorat, criado en barrica de roble. Notas de fruta madura y mineralidad.	A powerful Priorat red, oak-aged. Ripe-fruit notes and a mineral edge.	Mas de l'Oli	19.83	\N	21.00	24.00	EUR	22	NEW	ACTIVE	{"do": "Priorat", "year": 2020, "grape": "Garnatxa, Carinyena", "volume": "75 cl"}	4.17	6	2026-05-31 19:56:39.946	2026-05-31 19:56:45.534	33	10	1300	10	FET_A_CATALUNYA	2026-05-31 19:56:39.944	f	\N	\N	0
cmpu7alji002sl8t2nllk5q6w	cmpu7a3h7000cl8t27muo350k	cmpu7a5y60017l8t2fwpd1gm0	Vi Blanc DO Penedès	Vino Blanco DO Penedès	White Wine DO Penedès	white-wine-do-penedes	Vi blanc fresc i aromàtic del Penedès, amb notes cítriques i floral.	Vino blanco fresco y aromático del Penedès, con notas cítricas y florales.	A fresh, aromatic Penedès white with citrus and floral notes.	Mas de l'Oli	10.33	\N	21.00	12.50	EUR	38	NEW	ACTIVE	{"do": "Penedès", "year": 2022, "grape": "Xarel·lo", "volume": "75 cl"}	4.5	4	2026-05-31 19:56:45.582	2026-05-31 19:56:49.481	33	10	1300	10	FET_A_CATALUNYA	2026-05-31 19:56:45.578	f	\N	\N	0
cmpu7aol1002zl8t2p63c2ruk	cmpu7a3h7000cl8t27muo350k	cmpu7a5y60017l8t2fwpd1gm0	Vi Negre DO Montsant	Vino Tinto DO Montsant	Red Wine DO Montsant	red-wine-do-montsant	Vi negre jove del Montsant, fresc i afruitat, fàcil de beure.	Vino tinto joven del Montsant, fresco y afrutado, fácil de beber.	A young Montsant red — fresh, fruity and easy-drinking.	Mas de l'Oli	8.18	\N	21.00	9.90	EUR	45	NEW	ACTIVE	{"do": "Montsant", "year": 2022, "grape": "Samsó", "volume": "75 cl"}	4.33	3	2026-05-31 19:56:49.525	2026-05-31 19:56:53.674	33	10	1300	10	FET_A_CATALUNYA	2026-05-31 19:56:49.523	f	\N	\N	0
cmpu7arti0035l8t20w56me5d	cmpu7a3h7000cl8t27muo350k	cmpu7a5y60017l8t2fwpd1gm0	Vi Rosat DO Empordà	Vino Rosado DO Empordà	Rosé Wine DO Empordà	rose-wine-do-emporda	Rosat de l'Empordà, lleuger i refrescant, perfecte per a l'estiu.	Rosado del Empordà, ligero y refrescante, perfecto para el verano.	A light, refreshing Empordà rosé — made for summer.	Mas de l'Oli	8.68	\N	21.00	10.50	EUR	30	NEW	ACTIVE	{"do": "Empordà", "year": 2023, "grape": "Garnatxa", "volume": "75 cl"}	4.5	2	2026-05-31 19:56:53.718	2026-05-31 19:56:57.372	33	10	1300	10	FET_A_CATALUNYA	2026-05-31 19:56:53.717	f	\N	\N	0
cmpu7auo8003al8t2xp5d91ps	cmpu7a3h7000cl8t27muo350k	cmpu7a5zg0018l8t2bbcpif6c	Oli d'oliva verge extra DOP Les Garrigues 500 ml	Aceite de oliva virgen extra DOP Les Garrigues 500 ml	Extra-virgin olive oil DOP Les Garrigues 500 ml	extra-virgin-olive-oil-dop-les-garrigues-500-ml	Oli verge extra de varietat arbequina, premsat en fred. Fruitat suau amb un lleuger toc amarg.	Aceite virgen extra de variedad arbequina, prensado en frío. Frutado suave con un ligero toque amargo.	Cold-pressed arbequina extra-virgin oil — a mild fruitiness with a gentle bitter note.	Mas de l'Oli	11.73	\N	10.00	12.90	EUR	60	NEW	ACTIVE	{"volume": "500 ml", "variety": "Arbequina", "designation": "DOP Les Garrigues"}	4.17	6	2026-05-31 19:56:57.416	2026-05-31 19:57:02.72	30	10	1100	10	FET_A_CATALUNYA	2026-05-31 19:56:57.415	f	\N	\N	0
cmpu7ayt7003kl8t22wbz04wy	cmpu7a3h7000cl8t27muo350k	cmpu7a5zg0018l8t2bbcpif6c	Oli d'oliva verge extra Arbequina 1 L	Aceite de oliva virgen extra Arbequina 1 L	Extra-virgin olive oil Arbequina 1 L	extra-virgin-olive-oil-arbequina-1-l	Ampolla d'1 litre d'oli verge extra arbequí, ideal per a l'ús diari a la cuina.	Botella de 1 litro de aceite virgen extra arbequino, ideal para el uso diario en la cocina.	A one-litre bottle of arbequina extra-virgin oil for everyday cooking.	Mas de l'Oli	16.82	\N	10.00	18.50	EUR	48	NEW	ACTIVE	{"volume": "1 L", "variety": "Arbequina", "designation": "Verge extra"}	4.75	4	2026-05-31 19:57:02.779	2026-05-31 19:57:06.261	30	10	1100	10	FET_A_CATALUNYA	2026-05-31 19:57:02.775	f	\N	\N	0
cmpu7b1j6003rl8t25slacz2s	cmpu7a3h7000cl8t27muo350k	cmpu7a5zg0018l8t2bbcpif6c	Oli d'oliva ecològic 250 ml	Aceite de oliva ecológico 250 ml	Organic olive oil 250 ml	organic-olive-oil-250-ml	Oli d'oliva ecològic certificat, de collita primerenca. Intens i herbaci.	Aceite de oliva ecológico certificado, de cosecha temprana. Intenso y herbáceo.	Certified organic olive oil from an early harvest — intense and grassy.	Mas de l'Oli	8.64	\N	10.00	9.50	EUR	35	NEW	ACTIVE	{"volume": "250 ml", "variety": "Picual", "designation": "Ecològic"}	4.67	3	2026-05-31 19:57:06.306	2026-05-31 19:57:09.994	30	10	1100	10	FET_A_CATALUNYA	2026-05-31 19:57:06.305	f	\N	\N	0
cmpu7b4fo003xl8t2f78go8ap	cmpu7a3h7000cl8t27muo350k	cmpu7a5zg0018l8t2bbcpif6c	Llauna d'oli d'oliva verge extra 3 L	Lata de aceite de oliva virgen extra 3 L	Extra-virgin olive oil tin 3 L	extra-virgin-olive-oil-tin-3-l	Llauna de 3 litres per a les famílies que cuinen amb bon oli cada dia.	Lata de 3 litros para las familias que cocinan con buen aceite cada día.	A 3-litre tin for families who cook with good oil every day.	Mas de l'Oli	29.09	36.00	10.00	32.00	EUR	18	NEW	ACTIVE	{"volume": "3 L", "variety": "Arbequina", "designation": "Verge extra"}	4.5	2	2026-05-31 19:57:10.068	2026-05-31 19:57:13.821	30	10	1100	10	FET_A_CATALUNYA	2026-05-31 19:57:10.065	f	\N	\N	0
cmpu7b7d30042l8t25wrp8xyn	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a60o0019l8t23h4fmyrn	Fuet extra de pagès	Fuet extra de payés	Farmhouse extra fuet	farmhouse-extra-fuet	Fuet artesà curat lentament, amb la flor blanca natural. Sabor intens i textura ferma.	Fuet artesano curado lentamente, con la flor blanca natural. Sabor intenso y textura firme.	Slow-cured artisan fuet with its natural white bloom — intense flavour, firm texture.	Cal Forner	6.27	\N	10.00	6.90	EUR	70	NEW	ACTIVE	{"curing": "5 setmanes", "weight": "170 g", "allergens": "Cap"}	4.6	5	2026-05-31 19:57:13.863	2026-05-31 19:57:17.395	8	25	450	8	FET_A_CATALUNYA	2026-05-31 19:57:13.862	f	\N	\N	0
cmpu7ba4c004al8t2a3igvfl3	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a60o0019l8t23h4fmyrn	Llonganissa de Vic IGP	Longaniza de Vic IGP	Llonganissa de Vic IGP	llonganissa-de-vic-igp	Llonganissa curada de la Plana de Vic, amb Indicació Geogràfica Protegida.	Longaniza curada de la Plana de Vic, con Indicación Geográfica Protegida.	Cured llonganissa from the Plana de Vic, with Protected Geographical Indication.	Cal Forner	12.27	\N	10.00	13.50	EUR	40	NEW	ACTIVE	{"weight": "300 g", "allergens": "Cap", "designation": "IGP Vic"}	5	4	2026-05-31 19:57:17.437	2026-05-31 19:57:21.205	8	25	450	8	FET_A_CATALUNYA	2026-05-31 19:57:17.435	f	\N	\N	0
cmpu7bd2b004hl8t26sodk0rf	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a60o0019l8t23h4fmyrn	Secallona artesana	Secallona artesana	Artisan secallona	artisan-secallona	Embotit prim i sec, perfecte per a un esmorzar de pa amb tomàquet.	Embutido fino y seco, perfecto para un desayuno de pan con tomate.	A thin, dry cured sausage — perfect with pa amb tomàquet.	Cal Forner	5.00	\N	10.00	5.50	EUR	55	NEW	ACTIVE	{"curing": "3 setmanes", "weight": "120 g", "allergens": "Cap"}	4	2	2026-05-31 19:57:21.251	2026-05-31 19:57:23.054	8	25	450	8	FET_A_CATALUNYA	2026-05-31 19:57:21.247	f	\N	\N	0
cmpu7bei2004ll8t25uarqwe2	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a61w001al8t218acf7c1	Formatge de cabra curat	Queso de cabra curado	Cured goat cheese	cured-goat-cheese	Formatge de cabra curat sis mesos, cremós i intens, elaborat amb llet crua.	Queso de cabra curado seis meses, cremoso e intenso, elaborado con leche cruda.	Six-month cured goat cheese — creamy and intense, made with raw milk.	Cal Forner	8.91	\N	10.00	9.80	EUR	34	NEW	ACTIVE	{"milk": "Cabra", "weight": "250 g", "allergens": "Llet"}	4.2	5	2026-05-31 19:57:23.114	2026-05-31 19:57:26.933	10	18	700	18	FET_A_CATALUNYA	2026-05-31 19:57:23.11	f	\N	\N	0
cmpu7bhhr004tl8t22m4mkvkn	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a61w001al8t218acf7c1	Tupí del Pallars	Tupí del Pallars	Tupí cheese from Pallars	tupi-cheese-from-pallars	Formatge fermentat tradicional del Pallars, fort i untuós, presentat en got de vidre.	Queso fermentado tradicional del Pallars, fuerte y untuoso, presentado en vaso de cristal.	A traditional fermented Pallars cheese — strong and spreadable, in a glass jar.	Cal Forner	6.59	\N	10.00	7.25	EUR	20	NEW	ACTIVE	{"milk": "Vaca", "weight": "180 g", "allergens": "Llet"}	4.67	3	2026-05-31 19:57:26.991	2026-05-31 19:57:28.835	10	18	700	18	FET_A_CATALUNYA	2026-05-31 19:57:26.99	f	\N	\N	0
cmpu7biy7004yl8t2836hqou6	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a61w001al8t218acf7c1	Formatge de l'Alt Urgell i la Cerdanya DOP	Queso del Alt Urgell y la Cerdanya DOP	Alt Urgell & Cerdanya cheese DOP	alt-urgell-cerdanya-cheese-dop	Formatge tendre de pasta semitova, suau i mantegós, amb Denominació d'Origen Protegida.	Queso tierno de pasta semiblanda, suave y mantecoso, con Denominación de Origen Protegida.	A tender semi-soft cheese — mild and buttery, with Protected Designation of Origin.	Cal Forner	10.36	\N	10.00	11.40	EUR	28	NEW	ACTIVE	{"milk": "Vaca", "weight": "300 g", "allergens": "Llet"}	4.25	4	2026-05-31 19:57:28.879	2026-05-31 19:57:32.175	10	18	700	18	FET_A_CATALUNYA	2026-05-31 19:57:28.877	f	\N	\N	0
cmpu7bo6g005el8t2ksigbaq3	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a636001bl8t2qsqskc8s	Torró de xocolata amb ametlles	Turrón de chocolate con almendras	Chocolate nougat with almonds	chocolate-nougat-with-almonds	Torró de xocolata negra amb ametlla marcona, elaborat de manera artesana.	Turrón de chocolate negro con almendra marcona, elaborado de manera artesana.	Dark-chocolate nougat with marcona almonds, handmade in small batches.	Cal Forner	7.73	\N	10.00	8.50	EUR	50	NEW	ACTIVE	{"weight": "250 g", "allergens": "Fruits secs, llet, soja"}	4.33	3	2026-05-31 19:57:35.656	2026-05-31 19:57:39.307	4	22	400	12	FET_A_CATALUNYA	2026-05-31 19:57:35.652	f	\N	\N	0
cmpu7br1b005kl8t2rzxiksmh	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a636001bl8t2qsqskc8s	Neules de Catalunya	Neules de Cataluña	Catalan neules wafers	catalan-neules-wafers	Neules fines i cruixents, el complement clàssic del cava per festes.	Neules finas y crujientes, el complemento clásico del cava en fiestas.	Thin, crisp neules wafers — the classic festive companion to cava.	Cal Forner	5.64	\N	10.00	6.20	EUR	64	NEW	ACTIVE	{"weight": "150 g", "allergens": "Gluten, ou"}	4	2	2026-05-31 19:57:39.359	2026-05-31 19:57:41.624	4	22	400	12	FET_A_CATALUNYA	2026-05-31 19:57:39.354	f	\N	\N	0
cmpu7bsti005ol8t2yo9g3lu6	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a64c001cl8t2eom88xbr	Anxoves de l'Escala	Anchoas de l'Escala	Anchovies from L'Escala	anchovies-from-l-escala	Anxoves curades en sal seguint la tradició de l'Escala, en oli d'oliva.	Anchoas curadas en sal siguiendo la tradición de l'Escala, en aceite de oliva.	Salt-cured anchovies in olive oil, following the L'Escala tradition.	Cal Forner	8.09	\N	10.00	8.90	EUR	38	NEW	ACTIVE	{"weight": "95 g", "allergens": "Peix"}	4.5	4	2026-05-31 19:57:41.67	2026-05-31 19:57:45.507	14	12	600	12	FET_A_CATALUNYA	2026-05-31 19:57:41.667	f	\N	\N	0
cmpu7bvzt005vl8t21o1ga9ty	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a64c001cl8t2eom88xbr	Melmelada de figa artesana	Mermelada de higo artesana	Artisan fig jam	artisan-fig-jam	Melmelada de figa feta a foc lent amb fruita de proximitat i poc sucre.	Mermelada de higo hecha a fuego lento con fruta de proximidad y poco azúcar.	Slow-cooked fig jam made with local fruit and little added sugar.	Cal Forner	4.91	\N	10.00	5.40	EUR	46	NEW	ACTIVE	{"weight": "240 g", "allergens": "Cap"}	4.67	3	2026-05-31 19:57:45.785	2026-05-31 19:57:47.737	14	12	600	12	FET_A_CATALUNYA	2026-05-31 19:57:45.783	f	\N	\N	0
cmpu7bxjb0060l8t226ep4ocm	cmpu7a47u000ml8t2rpsunk86	cmpu7a66q001el8t2qc3yi0dz	Bol de ceràmica esmaltada	Bol de cerámica esmaltada	Glazed ceramic bowl	glazed-ceramic-bowl	Bol fet a torn i esmaltat a mà, apte per al microones i el rentaplats.	Bol hecho a torno y esmaltado a mano, apto para microondas y lavavajillas.	A wheel-thrown, hand-glazed bowl — microwave and dishwasher safe.	Tramuntana	13.64	\N	21.00	16.50	EUR	24	NEW	ACTIVE	{"care": "Apte rentaplats", "diameter": "14 cm", "material": "Ceràmica"}	4.75	4	2026-05-31 19:57:47.783	2026-05-31 19:57:54.053	20	28	1800	28	FET_A_CATALUNYA	2026-05-31 19:57:47.779	f	\N	\N	0
cmpu7c2et0068l8t2fnbe7zpm	cmpu7a47u000ml8t2rpsunk86	cmpu7a66q001el8t2qc3yi0dz	Plat de terrissa pintat a mà	Plato de barro pintado a mano	Hand-painted earthenware plate	hand-painted-earthenware-plate	Plat decoratiu de terrissa amb motius tradicionals catalans pintats a mà.	Plato decorativo de barro con motivos tradicionales catalanes pintados a mano.	A decorative earthenware plate with hand-painted traditional Catalan motifs.	Tramuntana	18.18	\N	21.00	22.00	EUR	16	NEW	ACTIVE	{"style": "Tradicional", "diameter": "22 cm", "material": "Terrissa"}	5	3	2026-05-31 19:57:54.101	2026-05-31 19:57:57.902	20	28	1800	28	FET_A_CATALUNYA	2026-05-31 19:57:54.097	f	\N	\N	0
cmpu7c5do006el8t2sdubxltt	cmpu7a47u000ml8t2rpsunk86	cmpu7a66q001el8t2qc3yi0dz	Gerro de ceràmica blau	Jarrón de cerámica azul	Blue ceramic vase	blue-ceramic-vase	Gerro de ceràmica amb esmalt blau mediterrani, peça única feta a mà.	Jarrón de cerámica con esmalte azul mediterráneo, pieza única hecha a mano.	A ceramic vase with a Mediterranean-blue glaze — a unique handmade piece.	Tramuntana	28.84	\N	21.00	34.90	EUR	9	NEW	ACTIVE	{"style": "Mediterrani", "height": "26 cm", "material": "Ceràmica"}	4.5	2	2026-05-31 19:57:57.948	2026-05-31 19:58:01.669	20	28	1800	28	FET_A_CATALUNYA	2026-05-31 19:57:57.945	f	\N	\N	0
cmpu7bljf0055l8t280uw0rqw	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a636001bl8t2qsqskc8s	Torró d'Agramunt IGP	Turrón de Agramunt IGP	Agramunt nougat IGP	agramunt-nougat-igp	Torró cruixent d'ametlla i mel d'Agramunt, amb Indicació Geogràfica Protegida.	Turrón crujiente de almendra y miel de Agramunt, con Indicación Geográfica Protegida.	Crunchy almond-and-honey nougat from Agramunt, with Protected Geographical Indication.	Cal Forner	11.73	\N	10.00	12.90	EUR	32	NEW	ACTIVE	{"weight": "300 g", "allergens": "Fruits secs, mel"}	4.33	6	2026-05-31 19:57:32.235	2026-06-01 15:10:56.154	4	22	400	12	FET_A_CATALUNYA	2026-05-31 19:57:32.232	f	\N	\N	0
cmpu7c8ad006jl8t23i1d4afk	cmpu7a47u000ml8t2rpsunk86	cmpu7a67x001fl8t2j5ik7hrj	Espardenyes catalanes de set vetes	Alpargatas catalanas de siete cintas	Catalan seven-ribbon espadrilles	catalan-seven-ribbon-espadrilles	Espardenyes tradicionals de set vetes, fetes a mà amb sola de espart.	Alpargatas tradicionales de siete cintas, hechas a mano con suela de esparto.	Traditional seven-ribbon espadrilles, handmade with an esparto sole.	Tramuntana	23.14	\N	21.00	28.00	EUR	30	NEW	ACTIVE	{"sizes": "36-45", "style": "Tradicional", "material": "Espart i cotó"}	4.67	3	2026-05-31 19:58:01.717	2026-05-31 19:58:05.593	12	30	500	20	FET_A_CATALUNYA	2026-05-31 19:58:01.713	f	\N	\N	0
cmpu7cbbc006pl8t28vnq7yqz	cmpu7a47u000ml8t2rpsunk86	cmpu7a694001gl8t231nis4zu	Joc de tovalloles de lli	Juego de toallas de lino	Linen towel set	linen-towel-set	Joc de dues tovalloles de lli català, suaus i absorbents.	Juego de dos toallas de lino catalán, suaves y absorbentes.	A set of two Catalan-linen towels — soft and absorbent.	Tramuntana	20.25	\N	21.00	24.50	EUR	22	NEW	ACTIVE	{"care": "Rentadora 40°", "pieces": 2, "material": "100% lli"}	4.5	2	2026-05-31 19:58:05.641	2026-05-31 19:58:09.264	8	30	600	24	FET_A_CATALUNYA	2026-05-31 19:58:05.637	f	\N	\N	0
cmpu7ce5b006ul8t21xfh6ehf	cmpu7a47u000ml8t2rpsunk86	cmpu7a694001gl8t231nis4zu	Coixí teixit a mà	Cojín tejido a mano	Hand-woven cushion	hand-woven-cushion	Coixí decoratiu teixit a mà amb cotó natural i motius geomètrics.	Cojín decorativo tejido a mano con algodón natural y motivos geométricos.	A decorative hand-woven cushion in natural cotton with geometric motifs.	Tramuntana	16.45	\N	21.00	19.90	EUR	27	NEW	ACTIVE	{"size": "45 × 45 cm", "style": "Geomètric", "material": "Cotó"}	4	3	2026-05-31 19:58:09.311	2026-05-31 19:58:13.482	8	30	600	24	FET_A_CATALUNYA	2026-05-31 19:58:09.307	f	\N	\N	0
cmpu7cheh0070l8t2edtzrzyi	cmpu7a3uq000hl8t2izdspdci	cmpu7a6bk001il8t2f0mbx80l	Terra de cendra — novel·la	Terra de cendra — novela	Terra de cendra — novel	terra-de-cendra-novel	Una novel·la coral ambientada en un poble del Priorat durant la postguerra.	Una novela coral ambientada en un pueblo del Priorat durante la posguerra.	A choral novel set in a Priorat village during the post-war years.	Edicions La Cadernera	18.75	\N	4.00	19.50	EUR	40	NEW	ACTIVE	{"pages": 312, "author": "Aurora Camps", "language": "Català"}	4	5	2026-05-31 19:58:13.529	2026-05-31 19:58:15.635	3	20	350	13	FET_A_CATALUNYA	2026-05-31 19:58:13.525	f	\N	\N	0
cmpu7cj2b0077l8t2940yni61	cmpu7a3uq000hl8t2izdspdci	cmpu7a6ct001jl8t2oezg7wtg	La cuina de l'àvia	La cocina de la abuela	Grandmother's kitchen	grandmother-s-kitchen	Receptari de cuina catalana tradicional amb més de 120 receptes de tota la vida.	Recetario de cocina catalana tradicional con más de 120 recetas de toda la vida.	A traditional Catalan cookbook with over 120 time-honoured recipes.	Edicions La Cadernera	23.08	\N	4.00	24.00	EUR	36	NEW	ACTIVE	{"pages": 248, "author": "Mercè Roig", "language": "Català"}	4.5	4	2026-05-31 19:58:15.683	2026-05-31 19:58:19.319	3	24	900	19	FET_A_CATALUNYA	2026-05-31 19:58:15.678	f	\N	\N	0
cmpu7clwl007el8t2kt9kwe68	cmpu7a3uq000hl8t2izdspdci	cmpu7a6e1001kl8t2lntgim52	El drac de Sant Jordi — conte	El dragón de Sant Jordi — cuento	The Sant Jordi dragon — picture book	the-sant-jordi-dragon-picture-book	Un conte il·lustrat sobre la llegenda de Sant Jordi, per a primers lectors.	Un cuento ilustrado sobre la leyenda de Sant Jordi, para primeros lectores.	An illustrated retelling of the Sant Jordi legend, for early readers.	Edicions La Cadernera	14.33	\N	4.00	14.90	EUR	52	NEW	ACTIVE	{"ages": "3-6 anys", "pages": 36, "author": "Pau Ferrer"}	5	3	2026-05-31 19:58:19.365	2026-05-31 19:58:22.783	2	24	400	22	FET_A_CATALUNYA	2026-05-31 19:58:19.361	f	\N	\N	0
cmpu7cokv007kl8t2gyel7qtu	cmpu7a3uq000hl8t2izdspdci	cmpu7a6bk001il8t2f0mbx80l	Mar endins — poesia	Mar adentro — poesía	Mar endins — poetry	mar-endins-poetry	Un recull de poemes sobre la mar i la memòria, d'una veu jove de la poesia catalana.	Una recopilación de poemas sobre el mar y la memoria, de una voz joven de la poesía catalana.	A collection of poems on the sea and memory, from a young Catalan voice.	Edicions La Cadernera	12.98	\N	4.00	13.50	EUR	28	NEW	ACTIVE	{"pages": 96, "author": "Laia Bonet", "language": "Català"}	5	2	2026-05-31 19:58:22.831	2026-05-31 19:58:25.052	3	20	350	13	FET_A_CATALUNYA	2026-05-31 19:58:22.826	f	\N	\N	0
cmpu7cqbs007ol8t2fwse1yqz	cmpu7a3uq000hl8t2izdspdci	cmpu7a6gf001ml8t2fz5vlh51	Làmina il·lustrada de Barcelona	Lámina ilustrada de Barcelona	Illustrated Barcelona print	illustrated-barcelona-print	Làmina A3 amb una il·lustració original dels terrats de Barcelona.	Lámina A3 con una ilustración original de los tejados de Barcelona.	An A3 print with an original illustration of the rooftops of Barcelona.	Estudi Cadernera	14.88	\N	21.00	18.00	EUR	33	NEW	ACTIVE	{"size": "A3 (29,7 × 42 cm)", "finish": "Mat", "material": "Paper 250 g"}	5	3	2026-05-31 19:58:25.096	2026-05-31 19:58:28.502	15	30	900	25	FET_A_CATALUNYA	2026-05-31 19:58:25.094	f	\N	\N	0
cmpu7cszn007ul8t2vnpp1tpl	cmpu7a3uq000hl8t2izdspdci	cmpu7a6ir001ol8t2120cnq5p	Joc de taula de fusta	Juego de mesa de madera	Wooden board game	wooden-board-game	Joc de taula d'estratègia fet amb fusta de faig de boscos catalans.	Juego de mesa de estrategia hecho con madera de haya de bosques catalanes.	A strategy board game crafted from beech wood from Catalan forests.	Estudi Cadernera	24.71	34.90	21.00	29.90	EUR	19	NEW	ACTIVE	{"ages": "8+ anys", "players": "2-4", "material": "Fusta de faig"}	4.75	4	2026-05-31 19:58:28.547	2026-05-31 19:58:32.647	8	28	700	20	FET_A_CATALUNYA	2026-05-31 19:58:28.544	f	\N	\N	0
cmpu7cw720081l8t2v8wm4u07	cmpu7a3uq000hl8t2izdspdci	cmpu7a6hl001nl8t2n79nbfnm	Llibreta artesana de paper reciclat	Libreta artesana de papel reciclado	Artisan recycled-paper notebook	artisan-recycled-paper-notebook	Llibreta cosida a mà amb tapes de cartró i full de paper 100% reciclat.	Libreta cosida a mano con tapas de cartón y hojas de papel 100% reciclado.	A hand-stitched notebook with cardboard covers and 100% recycled paper.	Estudi Cadernera	7.85	\N	21.00	9.50	EUR	60	NEW	ACTIVE	{"size": "A5", "pages": 120, "paper": "Reciclat"}	4.5	2	2026-05-31 19:58:32.702	2026-05-31 19:58:34.583	3	24	250	17	FET_A_CATALUNYA	2026-05-31 19:58:32.697	f	\N	\N	0
cmpu7cxom0085l8t2h2lz7tnb	cmpu7a3h7000cl8t27muo350k	cmpu7a6l7001ql8t2ra3ydbfu	Mel ecològica de muntanya	Miel ecológica de montaña	Organic mountain honey	organic-mountain-honey	Mel crua ecològica recollida a la muntanya catalana, sense pasteuritzar.	Miel cruda ecológica recogida en la montaña catalana, sin pasteurizar.	Raw organic honey gathered in the Catalan mountains — unpasteurised.	Mas de l'Oli	7.64	\N	10.00	8.40	EUR	44	NEW	ACTIVE	{"weight": "500 g", "allergens": "Cap", "certification": "Ecològic CCPAE"}	4.25	4	2026-05-31 19:58:34.63	2026-05-31 19:58:38.022	12	22	800	16	FET_A_CATALUNYA	2026-05-31 19:58:34.626	f	\N	\N	0
cmpu7d0c3008cl8t20a7iho6c	cmpu7a3h7000cl8t27muo350k	cmpu7a6me001rl8t2y0zjekcp	Sabó natural d'oli d'oliva	Jabón natural de aceite de oliva	Natural olive-oil soap	natural-olive-oil-soap	Sabó fet en fred amb oli d'oliva verge, sense perfums ni colorants.	Jabón hecho en frío con aceite de oliva virgen, sin perfumes ni colorantes.	A cold-process soap made with virgin olive oil — no fragrance or dyes.	Mas de l'Oli	4.88	\N	21.00	5.90	EUR	80	NEW	ACTIVE	{"skin": "Tot tipus", "weight": "100 g", "certification": "Natural"}	4.33	3	2026-05-31 19:58:38.067	2026-05-31 19:58:40.204	8	12	300	10	FET_A_CATALUNYA	2026-05-31 19:58:38.064	f	\N	\N	0
cmpu7d20o008hl8t2hljigjrd	cmpu7a3h7000cl8t27muo350k	cmpu7a6l7001ql8t2ra3ydbfu	Infusió ecològica del Montseny	Infusión ecológica del Montseny	Organic Montseny herbal infusion	organic-montseny-herbal-infusion	Barreja d'herbes remeieres collides al Parc Natural del Montseny.	Mezcla de hierbas medicinales recogidas en el Parque Natural del Montseny.	A blend of medicinal herbs gathered in the Montseny Natural Park.	Mas de l'Oli	5.91	\N	10.00	6.50	EUR	38	NEW	ACTIVE	{"weight": "40 g", "allergens": "Cap", "certification": "Ecològic CCPAE"}	4.5	2	2026-05-31 19:58:40.248	2026-05-31 19:58:44.619	12	22	800	16	FET_A_CATALUNYA	2026-05-31 19:58:40.245	f	\N	\N	0
cmpu7d5fd008ml8t2jvq93fbz	cmpu7a47u000ml8t2rpsunk86	cmpu7a6ot001tl8t23ysjdo2d	Bastons de senderisme dels Pirineus	Bastones de senderismo de los Pirineos	Pyrenees trekking poles	pyrenees-trekking-poles	Parell de bastons telescòpics d'alumini, lleugers i resistents per a la muntanya.	Par de bastones telescópicos de aluminio, ligeros y resistentes para la montaña.	A pair of telescopic aluminium poles — light and tough for the mountains.	Tramuntana	28.10	\N	21.00	34.00	EUR	25	NEW	ACTIVE	{"length": "65-135 cm", "weight": "240 g/parell", "material": "Alumini"}	4.67	3	2026-05-31 19:58:44.665	2026-05-31 19:58:47.919	14	35	900	28	FET_A_CATALUNYA	2026-05-31 19:58:44.661	f	\N	\N	0
cmpu7d7zd008sl8t2uww4uxst	cmpu7a47u000ml8t2rpsunk86	cmpu7a6ot001tl8t23ysjdo2d	Samarreta tècnica de muntanya	Camiseta técnica de montaña	Technical hiking t-shirt	technical-hiking-t-shirt	Samarreta tècnica transpirable per a senderisme, de teixit reciclat.	Camiseta técnica transpirable para senderismo, de tejido reciclado.	A breathable technical hiking t-shirt made from recycled fabric.	Tramuntana	22.73	\N	21.00	27.50	EUR	0	NEW	OUT_OF_STOCK	{"fit": "Regular", "sizes": "XS-XXL", "material": "Polièster reciclat"}	4.5	2	2026-05-31 19:58:47.977	2026-05-31 19:58:51.384	14	35	900	28	FET_A_CATALUNYA	2026-05-31 19:58:47.973	f	\N	\N	0
cmpu7danb008xl8t2n1sctbxm	cmpu7a3uq000hl8t2izdspdci	cmpu7a6r5001vl8t2roldrply	Tren de fusta de colors	Tren de madera de colores	Colourful wooden train	colourful-wooden-train	Tren de fusta amb vagons de colors, pintat amb pintures no tòxiques.	Tren de madera con vagones de colores, pintado con pinturas no tóxicas.	A wooden train with colourful carriages, finished with non-toxic paint.	Estudi Cadernera	18.93	\N	21.00	22.90	EUR	31	NEW	ACTIVE	{"ages": "1-4 anys", "safety": "Pintura no tòxica", "material": "Fusta"}	4.25	4	2026-05-31 19:58:51.431	2026-05-31 19:58:54.705	12	30	600	22	FET_A_CATALUNYA	2026-05-31 19:58:51.427	f	\N	\N	0
cmpu7dd7h0094l8t28p1b078o	cmpu7a3uq000hl8t2izdspdci	cmpu7a6r5001vl8t2roldrply	Conte de roba per a nadons	Cuento de tela para bebés	Soft cloth book for babies	soft-cloth-book-for-babies	Conte de roba suau amb textures i sons, ideal per als més menuts.	Cuento de tela suave con texturas y sonidos, ideal para los más pequeños.	A soft cloth book with textures and sounds — perfect for the littlest ones.	Estudi Cadernera	13.14	\N	21.00	15.90	EUR	40	NEW	ACTIVE	{"ages": "0-2 anys", "care": "Rentadora 30°", "material": "Cotó"}	4.5	2	2026-05-31 19:58:54.749	2026-05-31 19:58:56.575	12	30	600	22	FET_A_CATALUNYA	2026-05-31 19:58:54.747	f	\N	\N	0
cmpu7denf0098l8t2xm12vujb	cmpu7a4lj000rl8t22nheyztj	cmpu7a66q001el8t2qc3yi0dz	Joc de plats de ceràmica	Juego de platos de cerámica	Ceramic plate set	ceramic-plate-set	Joc de quatre plats de ceràmica esmaltada, fets a mà al Priorat.	Juego de cuatro platos de cerámica esmaltada, hechos a mano en el Priorat.	A set of four glazed ceramic plates, handmade in the Priorat.	Ceràmica Montsant	32.23	\N	21.00	39.00	EUR	12	NEW	DRAFT	{"pieces": 4, "diameter": "24 cm", "material": "Ceràmica"}	0	0	2026-05-31 19:58:56.619	2026-05-31 19:58:56.619	20	28	1800	28	FET_A_CATALUNYA	2026-05-31 19:58:56.616	f	\N	\N	0
cmpu7diko009dl8t2xoprra7l	cmpu7a2qp0002l8t2jom93w15	cmpu7a6l7001ql8t2ra3ydbfu	Cafè Aràbica 100% en gra	Café Arábica 100% en grano	100% Arabica coffee beans	100-arabica-coffee-beans	Cafè aràbica de torrefacció artesana, dolç i amb cos. Disponible en diversos formats segons el consum.	Café arábica de tueste artesanal, dulce y con cuerpo. Disponible en varios formatos según el consumo.	Artisan-roasted Arabica coffee — sweet and full-bodied. Available in several sizes to fit your usage.	Demo CanGerard	5.91	\N	10.00	6.50	EUR	52	NEW	ACTIVE	{"grind": "En gra", "roast": "Mitjana", "origin": "Colòmbia"}	4	3	2026-05-31 19:59:01.704	2026-05-31 19:59:05.2	12	22	800	16	FET_A_CATALUNYA	2026-05-31 19:59:01.702	f	\N	\N	0
cmpu7dlaz009ml8t2m73c1nps	cmpu7a2qp0002l8t2jom93w15	cmpu7a5zg0018l8t2bbcpif6c	Oli d'oliva verge extra Arbequina	Aceite de oliva virgen extra Arbequina	Arbequina extra-virgin olive oil	arbequina-extra-virgin-olive-oil	Oli d'oliva verge extra de la varietat Arbequina, suau i afruitat. Tria el format que millor s'adapti a la teva cuina.	Aceite de oliva virgen extra de la variedad Arbequina, suave y afrutado. Elige el formato que mejor se adapte a tu cocina.	Arbequina extra-virgin olive oil — smooth and fruity. Pick the size that fits your kitchen.	Demo CanGerard	5.36	\N	10.00	5.90	EUR	66	NEW	ACTIVE	{"region": "Les Garrigues", "acidity": "0,2°", "variety": "Arbequina"}	4.5	2	2026-05-31 19:59:05.243	2026-05-31 19:59:09.31	30	10	1100	10	FET_A_CATALUNYA	2026-05-31 19:59:05.242	f	\N	\N	0
cmpu7doh6009ul8t2kayxka2f	cmpu7a2qp0002l8t2jom93w15	cmpu7a6l7001ql8t2ra3ydbfu	Mel artesana de romaní	Miel artesana de romero	Artisan rosemary honey	artisan-rosemary-honey	Mel pura de romaní recollida al Bages, sense pasteuritzar. Triable en tres formats.	Miel pura de romero recogida en el Bages, sin pasteurizar. Disponible en tres formatos.	Pure rosemary honey from the Bages, unpasteurised. Available in three sizes.	Demo CanGerard	6.82	\N	10.00	7.50	EUR	52	NEW	ACTIVE	{"raw": "Sí", "floral": "Romaní", "region": "Bages"}	4.5	2	2026-05-31 19:59:09.354	2026-05-31 19:59:14.319	12	22	800	16	FET_A_CATALUNYA	2026-05-31 19:59:09.351	f	\N	\N	0
cmpu7dh7s009bl8t245ldaxtr	cmpu7a4lj000rl8t22nheyztj	cmpu7a66q001el8t2qc3yi0dz	Gerra d'aigua de terrissa	Jarra de agua de barro	Earthenware water jug	earthenware-water-jug	Gerra d'aigua de terrissa tradicional que manté l'aigua fresca.	Jarra de agua de barro tradicional que mantiene el agua fresca.	A traditional earthenware water jug that keeps water cool.	Ceràmica Montsant	8.26	\N	21.00	10.00	EUR	20	NEW	DRAFT	[{"keyCa": "style", "keyEn": "style", "keyEs": "style", "valueCa": "Tradicional", "valueEn": "Tradicional", "valueEs": "Tradicional"}, {"keyCa": "capacity", "keyEn": "capacity", "keyEs": "capacity", "valueCa": "1,5 L", "valueEn": "1,5 L", "valueEs": "1,5 L"}, {"keyCa": "material", "keyEn": "material", "keyEs": "material", "valueCa": "Terrissa", "valueEn": "Terrissa", "valueEs": "Terrissa"}]	0	0	2026-05-31 19:58:59.944	2026-06-03 19:43:14.84	20	28	1800	28	FET_A_CATALUNYA	2026-05-31 19:58:59.943	f	\N	\N	0
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
\.


--
-- Data for Name: ContactMessage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ContactMessage" ("id", "reason", "name", "email", "subject", "body", "locale", "userId", "handled", "handledAt", "createdAt") FROM stdin;
cmq6zimj3000004gwitzd4sdl	LOGISTICS	Fredrick	fredrick.cohen45@gmail.com	Suggestions to Improve Your Website’s User Experience cangerard.com	Hello,\r\n\r\nI noticed a few design-related issues on your website cangerard.com that could impact its performance and user experience.\r\n\r\nWould you like me to send a screenshot highlighting these errors? I can also prepare a detailed audit report, along with a proposal and pricing to improve your website’s design and optimize its ranking.\r\n\r\nLooking forward to your response.\r\n\r\nKind regard	ca	\N	f	\N	2026-06-09 18:40:03.471
\.


--
-- Data for Name: Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Order" ("id", "orderNumber", "buyerId", "status", "subtotal", "shippingTotal", "grandTotal", "currency", "shippingAddress", "stripePaymentIntentId", "paidAt", "createdAt", "updatedAt", "shippingMarginDelta", "shippingRealCost", "shippingService", "shippingVatBreakdown", "vatBreakdown") FROM stdin;
cmpvcikjr0008yjt2tf4ihh33	CG-20260601-DIMMPF	cmpu7a2oe0000l8t232dsj2jq	PAID	129.00	0.00	129.00	EUR	{"city": "test", "phone": "667717567", "street": "test", "country": "ES", "province": "test", "recipient": "test", "postalCode": "08520"}	pi_3TdXUEGkg0BRtJUg1YCuUeRI	2026-06-01 15:10:56.011	2026-06-01 15:10:41.799	2026-06-01 15:10:56.065	0.00	0.00	custom	{}	[{"base": 117.27, "rate": 10, "cuota": 11.73}]
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
\.


--
-- Data for Name: OrderItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."OrderItem" ("id", "orderId", "productId", "sellerId", "productTitle", "productImageUrl", "unitPrice", "quantity", "lineTotal", "platformFee", "sellerEarnings", "stripeTransferId", "fulfillmentStatus", "createdAt", "updatedAt", "shipmentId", "variantId", "variantLabel", "baseAmount", "vatAmount", "vatRate") FROM stdin;
cmpvcikl40009yjt2au1qm4v5	cmpvcikjr0008yjt2tf4ihh33	cmpu7bljf0055l8t280uw0rqw	cmpu7a33m0007l8t2zwqbkwf7	Torró d'Agramunt IGP	https://res.cloudinary.com/gerardcsaperas/image/upload/v1779701168/cangerard/seed/agramunt-nougat-igp-1.svg	12.90	10	129.00	12.90	113.39	\N	UNFULFILLED	2026-06-01 15:10:41.799	2026-06-01 15:10:42.161	cmpvcikr2000byjt2xzc2tvlw	\N	\N	117.27	11.73	10.00
\.


--
-- Data for Name: Payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Payment" ("id", "orderId", "provider", "method", "status", "amount", "currency", "stripePaymentIntentId", "stripeChargeId", "createdAt", "updatedAt", "stripeBalanceTxId", "stripeFeeAmount") FROM stdin;
cmpvcikmc000ayjt2ourov3zy	cmpvcikjr0008yjt2tf4ihh33	STRIPE	CARD	SUCCEEDED	129.00	EUR	pi_3TdXUEGkg0BRtJUg1YCuUeRI	ch_3TdXUEGkg0BRtJUg1Kmn3Bz8	2026-06-01 15:10:41.799	2026-06-01 15:10:56.111	\N	\N
\.


--
-- Data for Name: PlatformInvoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PlatformInvoice" ("id", "concept", "status", "sellerId", "buyerId", "orderId", "period", "baseAmount", "vatRate", "vatAmount", "totalAmount", "holdedInvoiceId", "holdedInvoiceNum", "holdedSeries", "pdfUrl", "rectifiesId", "lastError", "attemptedAt", "createdAt", "updatedAt", "sourceOrderId") FROM stdin;
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
\.


--
-- Data for Name: Review; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Review" ("id", "productId", "userId", "rating", "title", "body", "verifiedPurchase", "helpfulCount", "createdAt", "updatedAt") FROM stdin;
cmpu7ab5h0020l8t2tkwh03qx	cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a5kk0011l8t2mjyz3q0t	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	3	2026-05-31 19:56:32.117	2026-05-31 19:56:32.117
cmpu7ab5h0021l8t2l7p2i46c	cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a5e1000zl8t2wn4lmvys	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	8	2026-05-31 19:56:32.117	2026-05-31 19:56:32.117
cmpu7ab5h0022l8t2px6juajs	cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a51x000vl8t233b55u1x	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	0	2026-05-31 19:56:32.117	2026-05-31 19:56:32.117
cmpu7ab5h0023l8t24nh6dyxv	cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a5qq0013l8t23hutiwoy	3	Correcte	Compleix, però esperava una mica més per aquest preu.	f	7	2026-05-31 19:56:32.117	2026-05-31 19:56:32.117
cmpu7ab5h0024l8t2qypbkfkv	cmpu7a6sh001wl8t2m4ikuyq1	cmpu7a4vf000tl8t2u8t7462k	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	0	2026-05-31 19:56:32.117	2026-05-31 19:56:32.117
cmpu7ae3x0028l8t2hqwy7h3w	cmpu7ab9q0025l8t2qauh9733	cmpu7a5kk0011l8t2mjyz3q0t	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	4	2026-05-31 19:56:35.949	2026-05-31 19:56:35.949
cmpu7ae3x0029l8t29o7vtea7	cmpu7ab9q0025l8t2qauh9733	cmpu7a5e1000zl8t2wn4lmvys	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	7	2026-05-31 19:56:35.949	2026-05-31 19:56:35.949
cmpu7ae3x002al8t2hw2l5bq6	cmpu7ab9q0025l8t2qauh9733	cmpu7a58c000xl8t2htaj0e0v	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	0	2026-05-31 19:56:35.949	2026-05-31 19:56:35.949
cmpu7ae3x002bl8t2c4ogebir	cmpu7ab9q0025l8t2qauh9733	cmpu7a4vf000tl8t2u8t7462k	3	Correcte	Compleix, però esperava una mica més per aquest preu.	f	10	2026-05-31 19:56:35.949	2026-05-31 19:56:35.949
cmpu7ah2v002fl8t2yawgeget	cmpu7ae7j002cl8t25myc6ukc	cmpu7a58c000xl8t2htaj0e0v	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	13	2026-05-31 19:56:39.799	2026-05-31 19:56:39.799
cmpu7ah2v002gl8t21mf0jhly	cmpu7ae7j002cl8t25myc6ukc	cmpu7a5kk0011l8t2mjyz3q0t	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	8	2026-05-31 19:56:39.799	2026-05-31 19:56:39.799
cmpu7ah2v002hl8t2fvfyvtcy	cmpu7ae7j002cl8t25myc6ukc	cmpu7a5qq0013l8t23hutiwoy	5	Una joia	Producte català de primera. El recomano completament.	t	2	2026-05-31 19:56:39.799	2026-05-31 19:56:39.799
cmpu7alfv002ml8t20hhn8j3q	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a4vf000tl8t2u8t7462k	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	6	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451
cmpu7alfv002nl8t2s6szr9gh	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a5qq0013l8t23hutiwoy	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	11	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451
cmpu7alfv002ol8t2i4rgnx4y	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a5e1000zl8t2wn4lmvys	5	Una joia	Producte català de primera. El recomano completament.	t	4	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451
cmpu7alfv002pl8t27ngw31ky	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a5kk0011l8t2mjyz3q0t	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	6	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451
cmpu7alfv002ql8t2y0w2ll6q	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a58c000xl8t2htaj0e0v	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	0	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451
cmpu7alfv002rl8t2vlk7vqfz	cmpu7ah6y002il8t2w5hp0t4k	cmpu7a51x000vl8t233b55u1x	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	f	4	2026-05-31 19:56:45.451	2026-05-31 19:56:45.451
cmpu7aohj002vl8t2ncbh6t4h	cmpu7alji002sl8t2nllk5q6w	cmpu7a58c000xl8t2htaj0e0v	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	6	2026-05-31 19:56:49.399	2026-05-31 19:56:49.399
cmpu7aohj002wl8t2w4vm8unr	cmpu7alji002sl8t2nllk5q6w	cmpu7a5qq0013l8t23hutiwoy	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	f	12	2026-05-31 19:56:49.399	2026-05-31 19:56:49.399
cmpu7aohj002xl8t2ntjyxb2v	cmpu7alji002sl8t2nllk5q6w	cmpu7a5kk0011l8t2mjyz3q0t	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	8	2026-05-31 19:56:49.399	2026-05-31 19:56:49.399
cmpu7aohj002yl8t2j3hulszn	cmpu7alji002sl8t2nllk5q6w	cmpu7a4vf000tl8t2u8t7462k	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	12	2026-05-31 19:56:49.399	2026-05-31 19:56:49.399
cmpu7arpx0032l8t2y73cjgpj	cmpu7aol1002zl8t2p63c2ruk	cmpu7a4vf000tl8t2u8t7462k	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	11	2026-05-31 19:56:53.589	2026-05-31 19:56:53.589
cmpu7arpx0033l8t243m3u0jv	cmpu7aol1002zl8t2p63c2ruk	cmpu7a5kk0011l8t2mjyz3q0t	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	f	11	2026-05-31 19:56:53.589	2026-05-31 19:56:53.589
cmpu7arpx0034l8t2fukl9git	cmpu7aol1002zl8t2p63c2ruk	cmpu7a5e1000zl8t2wn4lmvys	5	Una joia	Producte català de primera. El recomano completament.	t	1	2026-05-31 19:56:53.589	2026-05-31 19:56:53.589
cmpu7aujx0038l8t2tq4j114m	cmpu7arti0035l8t20w56me5d	cmpu7a51x000vl8t233b55u1x	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	10	2026-05-31 19:56:57.261	2026-05-31 19:56:57.261
cmpu7aujx0039l8t2n3ymb8d8	cmpu7arti0035l8t20w56me5d	cmpu7a5e1000zl8t2wn4lmvys	5	Una joia	Producte català de primera. El recomano completament.	t	2	2026-05-31 19:56:57.261	2026-05-31 19:56:57.261
cmpu7ayp8003el8t246hoebrv	cmpu7auo8003al8t2xp5d91ps	cmpu7a58c000xl8t2htaj0e0v	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	11	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636
cmpu7ayp8003fl8t2y48c7ykz	cmpu7auo8003al8t2xp5d91ps	cmpu7a4vf000tl8t2u8t7462k	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	12	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636
cmpu7ayp8003gl8t2lwlgbehf	cmpu7auo8003al8t2xp5d91ps	cmpu7a5qq0013l8t23hutiwoy	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	f	11	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636
cmpu7ayp8003hl8t2t93rq1ix	cmpu7auo8003al8t2xp5d91ps	cmpu7a51x000vl8t233b55u1x	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	13	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636
cmpu7ayp8003il8t2l95s8qx8	cmpu7auo8003al8t2xp5d91ps	cmpu7a5e1000zl8t2wn4lmvys	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	5	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636
cmpu7ayp8003jl8t2dhrdw4xi	cmpu7auo8003al8t2xp5d91ps	cmpu7a5kk0011l8t2mjyz3q0t	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	6	2026-05-31 19:57:02.636	2026-05-31 19:57:02.636
cmpu7b1fo003nl8t25p2acqq0	cmpu7ayt7003kl8t22wbz04wy	cmpu7a51x000vl8t233b55u1x	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	5	2026-05-31 19:57:06.18	2026-05-31 19:57:06.18
cmpu7b1fo003ol8t2bumsfq8u	cmpu7ayt7003kl8t22wbz04wy	cmpu7a58c000xl8t2htaj0e0v	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	13	2026-05-31 19:57:06.18	2026-05-31 19:57:06.18
cmpu7b1fo003pl8t2tzb7xg1v	cmpu7ayt7003kl8t22wbz04wy	cmpu7a5qq0013l8t23hutiwoy	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	11	2026-05-31 19:57:06.18	2026-05-31 19:57:06.18
cmpu7b1fo003ql8t2qupy9y4j	cmpu7ayt7003kl8t22wbz04wy	cmpu7a5e1000zl8t2wn4lmvys	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	f	9	2026-05-31 19:57:06.18	2026-05-31 19:57:06.18
cmpu7b4b1003ul8t2bs67sjaf	cmpu7b1j6003rl8t25slacz2s	cmpu7a5qq0013l8t23hutiwoy	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	12	2026-05-31 19:57:09.901	2026-05-31 19:57:09.901
cmpu7b4b1003vl8t2mthw19ih	cmpu7b1j6003rl8t25slacz2s	cmpu7a51x000vl8t233b55u1x	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	9	2026-05-31 19:57:09.901	2026-05-31 19:57:09.901
cmpu7b4b1003wl8t2kbbacey1	cmpu7b1j6003rl8t25slacz2s	cmpu7a4vf000tl8t2u8t7462k	5	Una joia	Producte català de primera. El recomano completament.	t	1	2026-05-31 19:57:09.901	2026-05-31 19:57:09.901
cmpu7b79m0040l8t2x5spwpda	cmpu7b4fo003xl8t2f78go8ap	cmpu7a51x000vl8t233b55u1x	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	f	12	2026-05-31 19:57:13.738	2026-05-31 19:57:13.738
cmpu7b79m0041l8t2w3e6vj1f	cmpu7b4fo003xl8t2f78go8ap	cmpu7a5qq0013l8t23hutiwoy	5	Una joia	Producte català de primera. El recomano completament.	f	2	2026-05-31 19:57:13.738	2026-05-31 19:57:13.738
cmpu7ba0a0045l8t2c63ank51	cmpu7b7d30042l8t25wrp8xyn	cmpu7a5e1000zl8t2wn4lmvys	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	13	2026-05-31 19:57:17.29	2026-05-31 19:57:17.29
cmpu7ba0a0046l8t2v3adolxk	cmpu7b7d30042l8t25wrp8xyn	cmpu7a58c000xl8t2htaj0e0v	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	f	13	2026-05-31 19:57:17.29	2026-05-31 19:57:17.29
cmpu7ba0a0047l8t2sd366ico	cmpu7b7d30042l8t25wrp8xyn	cmpu7a51x000vl8t233b55u1x	5	Una joia	Producte català de primera. El recomano completament.	t	13	2026-05-31 19:57:17.29	2026-05-31 19:57:17.29
cmpu7ba0a0048l8t2skvyeflp	cmpu7b7d30042l8t25wrp8xyn	cmpu7a5qq0013l8t23hutiwoy	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	8	2026-05-31 19:57:17.29	2026-05-31 19:57:17.29
cmpu7ba0a0049l8t22rvt42r9	cmpu7b7d30042l8t25wrp8xyn	cmpu7a4vf000tl8t2u8t7462k	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	5	2026-05-31 19:57:17.29	2026-05-31 19:57:17.29
cmpu7bcyp004dl8t2cn9gh6ld	cmpu7ba4c004al8t2a3igvfl3	cmpu7a58c000xl8t2htaj0e0v	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	0	2026-05-31 19:57:21.121	2026-05-31 19:57:21.121
cmpu7bcyp004el8t2xug56nzm	cmpu7ba4c004al8t2a3igvfl3	cmpu7a5e1000zl8t2wn4lmvys	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	8	2026-05-31 19:57:21.121	2026-05-31 19:57:21.121
cmpu7bcyp004fl8t2xibj8y4l	cmpu7ba4c004al8t2a3igvfl3	cmpu7a51x000vl8t233b55u1x	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	f	2	2026-05-31 19:57:21.121	2026-05-31 19:57:21.121
cmpu7bcyp004gl8t2jv022otf	cmpu7ba4c004al8t2a3igvfl3	cmpu7a5qq0013l8t23hutiwoy	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	7	2026-05-31 19:57:21.121	2026-05-31 19:57:21.121
cmpu7bee4004jl8t2bslvje67	cmpu7bd2b004hl8t26sodk0rf	cmpu7a51x000vl8t233b55u1x	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	2	2026-05-31 19:57:22.972	2026-05-31 19:57:22.972
cmpu7bee4004kl8t2zuarjy5s	cmpu7bd2b004hl8t26sodk0rf	cmpu7a4vf000tl8t2u8t7462k	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	f	2	2026-05-31 19:57:22.972	2026-05-31 19:57:22.972
cmpu7bhdv004ol8t23fn0f716	cmpu7bei2004ll8t25uarqwe2	cmpu7a5qq0013l8t23hutiwoy	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	12	2026-05-31 19:57:26.851	2026-05-31 19:57:26.851
cmpu7bhdv004pl8t2145e69rv	cmpu7bei2004ll8t25uarqwe2	cmpu7a5kk0011l8t2mjyz3q0t	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	0	2026-05-31 19:57:26.851	2026-05-31 19:57:26.851
cmpu7bhdv004ql8t2x3b08za4	cmpu7bei2004ll8t25uarqwe2	cmpu7a5e1000zl8t2wn4lmvys	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	7	2026-05-31 19:57:26.851	2026-05-31 19:57:26.851
cmpu7bhdv004rl8t2q016kkh3	cmpu7bei2004ll8t25uarqwe2	cmpu7a4vf000tl8t2u8t7462k	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	f	13	2026-05-31 19:57:26.851	2026-05-31 19:57:26.851
cmpu7bhdv004sl8t2id3n61jk	cmpu7bei2004ll8t25uarqwe2	cmpu7a51x000vl8t233b55u1x	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	f	1	2026-05-31 19:57:26.851	2026-05-31 19:57:26.851
cmpu7biue004vl8t2keja7zg4	cmpu7bhhr004tl8t22m4mkvkn	cmpu7a51x000vl8t233b55u1x	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	11	2026-05-31 19:57:28.742	2026-05-31 19:57:28.742
cmpu7biue004wl8t21mrc5m9i	cmpu7bhhr004tl8t22m4mkvkn	cmpu7a58c000xl8t2htaj0e0v	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	0	2026-05-31 19:57:28.742	2026-05-31 19:57:28.742
cmpu7biue004xl8t2vchpc6qu	cmpu7bhhr004tl8t22m4mkvkn	cmpu7a4vf000tl8t2u8t7462k	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	4	2026-05-31 19:57:28.742	2026-05-31 19:57:28.742
cmpu7blfi0051l8t2yrums1dy	cmpu7biy7004yl8t2836hqou6	cmpu7a5qq0013l8t23hutiwoy	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	6	2026-05-31 19:57:32.094	2026-05-31 19:57:32.094
cmpu7blfi0052l8t2cd1h796q	cmpu7biy7004yl8t2836hqou6	cmpu7a51x000vl8t233b55u1x	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	f	1	2026-05-31 19:57:32.094	2026-05-31 19:57:32.094
cmpu7blfi0053l8t2z08dgqx3	cmpu7biy7004yl8t2836hqou6	cmpu7a4vf000tl8t2u8t7462k	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	9	2026-05-31 19:57:32.094	2026-05-31 19:57:32.094
cmpu7blfi0054l8t23kiv27tn	cmpu7biy7004yl8t2836hqou6	cmpu7a5kk0011l8t2mjyz3q0t	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	8	2026-05-31 19:57:32.094	2026-05-31 19:57:32.094
cmpu7bo2h0058l8t2j7l0vv25	cmpu7bljf0055l8t280uw0rqw	cmpu7a4vf000tl8t2u8t7462k	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	11	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513
cmpu7bo2i0059l8t2ro60l3ry	cmpu7bljf0055l8t280uw0rqw	cmpu7a5kk0011l8t2mjyz3q0t	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	2	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513
cmpu7bo2i005al8t2c8xc9n5p	cmpu7bljf0055l8t280uw0rqw	cmpu7a5e1000zl8t2wn4lmvys	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	f	6	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513
cmpu7bo2i005bl8t2nfis5kou	cmpu7bljf0055l8t280uw0rqw	cmpu7a5qq0013l8t23hutiwoy	5	Una joia	Producte català de primera. El recomano completament.	f	2	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513
cmpu7bo2i005cl8t2452dwnl6	cmpu7bljf0055l8t280uw0rqw	cmpu7a58c000xl8t2htaj0e0v	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	12	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513
cmpu7bo2i005dl8t2l0682j78	cmpu7bljf0055l8t280uw0rqw	cmpu7a51x000vl8t233b55u1x	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	9	2026-05-31 19:57:35.513	2026-05-31 19:57:35.513
cmpu7bqxk005hl8t2xbx16l8h	cmpu7bo6g005el8t2ksigbaq3	cmpu7a58c000xl8t2htaj0e0v	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	13	2026-05-31 19:57:39.224	2026-05-31 19:57:39.224
cmpu7bqxk005il8t2bf3s9w6t	cmpu7bo6g005el8t2ksigbaq3	cmpu7a4vf000tl8t2u8t7462k	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	5	2026-05-31 19:57:39.224	2026-05-31 19:57:39.224
cmpu7bqxk005jl8t28epefrsl	cmpu7bo6g005el8t2ksigbaq3	cmpu7a5e1000zl8t2wn4lmvys	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	0	2026-05-31 19:57:39.224	2026-05-31 19:57:39.224
cmpu7bspx005ml8t26uxn45wy	cmpu7br1b005kl8t2rzxiksmh	cmpu7a5qq0013l8t23hutiwoy	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	4	2026-05-31 19:57:41.541	2026-05-31 19:57:41.541
cmpu7bspx005nl8t27ry1b28q	cmpu7br1b005kl8t2rzxiksmh	cmpu7a4vf000tl8t2u8t7462k	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	5	2026-05-31 19:57:41.541	2026-05-31 19:57:41.541
cmpu7bvmh005rl8t2ij3huhvm	cmpu7bsti005ol8t2yo9g3lu6	cmpu7a5kk0011l8t2mjyz3q0t	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	0	2026-05-31 19:57:45.305	2026-05-31 19:57:45.305
cmpu7bvmh005sl8t2ld3c3vx4	cmpu7bsti005ol8t2yo9g3lu6	cmpu7a5qq0013l8t23hutiwoy	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	5	2026-05-31 19:57:45.305	2026-05-31 19:57:45.305
cmpu7bvmh005tl8t22zbd5k1s	cmpu7bsti005ol8t2yo9g3lu6	cmpu7a4vf000tl8t2u8t7462k	5	Una joia	Producte català de primera. El recomano completament.	t	13	2026-05-31 19:57:45.305	2026-05-31 19:57:45.305
cmpu7bvmh005ul8t2friiaalb	cmpu7bsti005ol8t2yo9g3lu6	cmpu7a51x000vl8t233b55u1x	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	4	2026-05-31 19:57:45.305	2026-05-31 19:57:45.305
cmpu7bxf6005xl8t2y0z5fcp3	cmpu7bvzt005vl8t21o1ga9ty	cmpu7a5qq0013l8t23hutiwoy	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	f	10	2026-05-31 19:57:47.634	2026-05-31 19:57:47.634
cmpu7bxf6005yl8t2tcomdjm6	cmpu7bvzt005vl8t21o1ga9ty	cmpu7a58c000xl8t2htaj0e0v	5	Una joia	Producte català de primera. El recomano completament.	t	1	2026-05-31 19:57:47.634	2026-05-31 19:57:47.634
cmpu7bxf6005zl8t2f3loyejp	cmpu7bvzt005vl8t21o1ga9ty	cmpu7a5kk0011l8t2mjyz3q0t	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	9	2026-05-31 19:57:47.634	2026-05-31 19:57:47.634
cmpu7c2b60064l8t2p9qe4mhp	cmpu7bxjb0060l8t226ep4ocm	cmpu7a58c000xl8t2htaj0e0v	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	f	10	2026-05-31 19:57:53.97	2026-05-31 19:57:53.97
cmpu7c2b60065l8t2gzsvcvzo	cmpu7bxjb0060l8t226ep4ocm	cmpu7a5e1000zl8t2wn4lmvys	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	2	2026-05-31 19:57:53.97	2026-05-31 19:57:53.97
cmpu7c2b60066l8t2n62u6yqc	cmpu7bxjb0060l8t226ep4ocm	cmpu7a51x000vl8t233b55u1x	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	1	2026-05-31 19:57:53.97	2026-05-31 19:57:53.97
cmpu7c2b70067l8t2j2fdmds3	cmpu7bxjb0060l8t226ep4ocm	cmpu7a4vf000tl8t2u8t7462k	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	13	2026-05-31 19:57:53.97	2026-05-31 19:57:53.97
cmpu7c5a1006bl8t2ej1brnqr	cmpu7c2et0068l8t2fnbe7zpm	cmpu7a58c000xl8t2htaj0e0v	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	9	2026-05-31 19:57:57.817	2026-05-31 19:57:57.817
cmpu7c5a1006cl8t2fuul7j17	cmpu7c2et0068l8t2fnbe7zpm	cmpu7a4vf000tl8t2u8t7462k	5	Una joia	Producte català de primera. El recomano completament.	f	4	2026-05-31 19:57:57.817	2026-05-31 19:57:57.817
cmpu7c5a1006dl8t24tgmkfbm	cmpu7c2et0068l8t2fnbe7zpm	cmpu7a51x000vl8t233b55u1x	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	f	6	2026-05-31 19:57:57.817	2026-05-31 19:57:57.817
cmpu7c86q006hl8t2vhe1vjb6	cmpu7c5do006el8t2sdubxltt	cmpu7a51x000vl8t233b55u1x	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	1	2026-05-31 19:58:01.586	2026-05-31 19:58:01.586
cmpu7c86q006il8t28bn5jwty	cmpu7c5do006el8t2sdubxltt	cmpu7a5qq0013l8t23hutiwoy	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	3	2026-05-31 19:58:01.586	2026-05-31 19:58:01.586
cmpu7cb7n006ml8t2118jie1x	cmpu7c8ad006jl8t23i1d4afk	cmpu7a5e1000zl8t2wn4lmvys	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	12	2026-05-31 19:58:05.507	2026-05-31 19:58:05.507
cmpu7cb7n006nl8t2u36ynd0b	cmpu7c8ad006jl8t23i1d4afk	cmpu7a5qq0013l8t23hutiwoy	5	Una joia	Producte català de primera. El recomano completament.	f	6	2026-05-31 19:58:05.507	2026-05-31 19:58:05.507
cmpu7cb7n006ol8t2zqmd1l92	cmpu7c8ad006jl8t23i1d4afk	cmpu7a5kk0011l8t2mjyz3q0t	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	f	6	2026-05-31 19:58:05.507	2026-05-31 19:58:05.507
cmpu7ce1p006sl8t24unwovy2	cmpu7cbbc006pl8t28vnq7yqz	cmpu7a51x000vl8t233b55u1x	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	4	2026-05-31 19:58:09.181	2026-05-31 19:58:09.181
cmpu7ce1p006tl8t2cigw2wdx	cmpu7cbbc006pl8t28vnq7yqz	cmpu7a4vf000tl8t2u8t7462k	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	9	2026-05-31 19:58:09.181	2026-05-31 19:58:09.181
cmpu7chav006xl8t28kuubpts	cmpu7ce5b006ul8t21xfh6ehf	cmpu7a4vf000tl8t2u8t7462k	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	4	2026-05-31 19:58:13.399	2026-05-31 19:58:13.399
cmpu7chav006yl8t22yyk7oq1	cmpu7ce5b006ul8t21xfh6ehf	cmpu7a58c000xl8t2htaj0e0v	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	4	2026-05-31 19:58:13.399	2026-05-31 19:58:13.399
cmpu7chav006zl8t2v0lrep1x	cmpu7ce5b006ul8t21xfh6ehf	cmpu7a5qq0013l8t23hutiwoy	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	6	2026-05-31 19:58:13.399	2026-05-31 19:58:13.399
cmpu7ciym0072l8t2k75spcm8	cmpu7cheh0070l8t2edtzrzyi	cmpu7a5e1000zl8t2wn4lmvys	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	3	2026-05-31 19:58:15.55	2026-05-31 19:58:15.55
cmpu7ciym0073l8t296y4mcjw	cmpu7cheh0070l8t2edtzrzyi	cmpu7a5kk0011l8t2mjyz3q0t	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	7	2026-05-31 19:58:15.55	2026-05-31 19:58:15.55
cmpu7ciym0074l8t2g89zwezy	cmpu7cheh0070l8t2edtzrzyi	cmpu7a4vf000tl8t2u8t7462k	5	Una joia	Producte català de primera. El recomano completament.	f	4	2026-05-31 19:58:15.55	2026-05-31 19:58:15.55
cmpu7ciym0075l8t2hktzfcm1	cmpu7cheh0070l8t2edtzrzyi	cmpu7a5qq0013l8t23hutiwoy	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	f	11	2026-05-31 19:58:15.55	2026-05-31 19:58:15.55
cmpu7ciym0076l8t2jj0cuats	cmpu7cheh0070l8t2edtzrzyi	cmpu7a58c000xl8t2htaj0e0v	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	f	4	2026-05-31 19:58:15.55	2026-05-31 19:58:15.55
cmpu7clt1007al8t2mfz2w670	cmpu7cj2b0077l8t2940yni61	cmpu7a51x000vl8t233b55u1x	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	6	2026-05-31 19:58:19.237	2026-05-31 19:58:19.237
cmpu7clt1007bl8t2mhj0fkib	cmpu7cj2b0077l8t2940yni61	cmpu7a5qq0013l8t23hutiwoy	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	4	2026-05-31 19:58:19.237	2026-05-31 19:58:19.237
cmpu7clt1007cl8t2i3mdhyrq	cmpu7cj2b0077l8t2940yni61	cmpu7a58c000xl8t2htaj0e0v	5	Una joia	Producte català de primera. El recomano completament.	t	1	2026-05-31 19:58:19.237	2026-05-31 19:58:19.237
cmpu7clt1007dl8t2m1jk0t5r	cmpu7cj2b0077l8t2940yni61	cmpu7a5kk0011l8t2mjyz3q0t	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	f	13	2026-05-31 19:58:19.237	2026-05-31 19:58:19.237
cmpu7coh8007hl8t2xzw457uf	cmpu7clwl007el8t2kt9kwe68	cmpu7a5kk0011l8t2mjyz3q0t	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	12	2026-05-31 19:58:22.7	2026-05-31 19:58:22.7
cmpu7coh8007il8t2u7zhivu4	cmpu7clwl007el8t2kt9kwe68	cmpu7a5qq0013l8t23hutiwoy	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	9	2026-05-31 19:58:22.7	2026-05-31 19:58:22.7
cmpu7coh8007jl8t2d41otltx	cmpu7clwl007el8t2kt9kwe68	cmpu7a51x000vl8t233b55u1x	5	Una joia	Producte català de primera. El recomano completament.	t	8	2026-05-31 19:58:22.7	2026-05-31 19:58:22.7
cmpu7cq87007ml8t28byt9dgo	cmpu7cokv007kl8t2gyel7qtu	cmpu7a58c000xl8t2htaj0e0v	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	10	2026-05-31 19:58:24.967	2026-05-31 19:58:24.967
cmpu7cq87007nl8t29b0howcp	cmpu7cokv007kl8t2gyel7qtu	cmpu7a4vf000tl8t2u8t7462k	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	f	12	2026-05-31 19:58:24.967	2026-05-31 19:58:24.967
cmpu7csw1007rl8t2xk9egf5e	cmpu7cqbs007ol8t2fwse1yqz	cmpu7a5qq0013l8t23hutiwoy	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	t	12	2026-05-31 19:58:28.417	2026-05-31 19:58:28.417
cmpu7csw1007sl8t2rr3tbe3s	cmpu7cqbs007ol8t2fwse1yqz	cmpu7a51x000vl8t233b55u1x	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	8	2026-05-31 19:58:28.417	2026-05-31 19:58:28.417
cmpu7csw1007tl8t22y51pda5	cmpu7cqbs007ol8t2fwse1yqz	cmpu7a5e1000zl8t2wn4lmvys	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	f	4	2026-05-31 19:58:28.417	2026-05-31 19:58:28.417
cmpu7cw38007xl8t29gnny8sc	cmpu7cszn007ul8t2vnpp1tpl	cmpu7a58c000xl8t2htaj0e0v	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	1	2026-05-31 19:58:32.564	2026-05-31 19:58:32.564
cmpu7cw38007yl8t2tyqxpbm9	cmpu7cszn007ul8t2vnpp1tpl	cmpu7a5kk0011l8t2mjyz3q0t	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	10	2026-05-31 19:58:32.564	2026-05-31 19:58:32.564
cmpu7cw38007zl8t291eigwpg	cmpu7cszn007ul8t2vnpp1tpl	cmpu7a4vf000tl8t2u8t7462k	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	12	2026-05-31 19:58:32.564	2026-05-31 19:58:32.564
cmpu7cw380080l8t2rhojahqu	cmpu7cszn007ul8t2vnpp1tpl	cmpu7a5qq0013l8t23hutiwoy	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	7	2026-05-31 19:58:32.564	2026-05-31 19:58:32.564
cmpu7cxl00083l8t2qon1ey1i	cmpu7cw720081l8t2v8wm4u07	cmpu7a5qq0013l8t23hutiwoy	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	5	2026-05-31 19:58:34.5	2026-05-31 19:58:34.5
cmpu7cxl00084l8t2lpzrlz3p	cmpu7cw720081l8t2v8wm4u07	cmpu7a5kk0011l8t2mjyz3q0t	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	f	6	2026-05-31 19:58:34.5	2026-05-31 19:58:34.5
cmpu7d08h0088l8t2x955m8jt	cmpu7cxom0085l8t2h2lz7tnb	cmpu7a5kk0011l8t2mjyz3q0t	3	Correcte	Compleix, però esperava una mica més per aquest preu.	t	7	2026-05-31 19:58:37.937	2026-05-31 19:58:37.937
cmpu7d08i0089l8t22x5aq33m	cmpu7cxom0085l8t2h2lz7tnb	cmpu7a4vf000tl8t2u8t7462k	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	f	8	2026-05-31 19:58:37.937	2026-05-31 19:58:37.937
cmpu7d08i008al8t29a1tw1a3	cmpu7cxom0085l8t2h2lz7tnb	cmpu7a5qq0013l8t23hutiwoy	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	12	2026-05-31 19:58:37.937	2026-05-31 19:58:37.937
cmpu7d08i008bl8t2mfdb679y	cmpu7cxom0085l8t2h2lz7tnb	cmpu7a5e1000zl8t2wn4lmvys	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	1	2026-05-31 19:58:37.937	2026-05-31 19:58:37.937
cmpu7d1wp008el8t2eeo3rn73	cmpu7d0c3008cl8t20a7iho6c	cmpu7a5e1000zl8t2wn4lmvys	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	t	10	2026-05-31 19:58:40.105	2026-05-31 19:58:40.105
cmpu7d1wp008fl8t2h23e9b1o	cmpu7d0c3008cl8t20a7iho6c	cmpu7a51x000vl8t233b55u1x	5	Una joia	Producte català de primera. El recomano completament.	t	11	2026-05-31 19:58:40.105	2026-05-31 19:58:40.105
cmpu7d1wp008gl8t2vthgwupn	cmpu7d0c3008cl8t20a7iho6c	cmpu7a4vf000tl8t2u8t7462k	3	Correcte	Compleix, però esperava una mica més per aquest preu.	f	12	2026-05-31 19:58:40.105	2026-05-31 19:58:40.105
cmpu7d5bq008kl8t2kg7rw7uu	cmpu7d20o008hl8t2hljigjrd	cmpu7a5kk0011l8t2mjyz3q0t	5	Perfecte per regalar	Va arribar a temps i molt ben presentat. Un encert total.	f	7	2026-05-31 19:58:44.534	2026-05-31 19:58:44.534
cmpu7d5bq008ll8t25qhlhgmc	cmpu7d20o008hl8t2hljigjrd	cmpu7a4vf000tl8t2u8t7462k	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	11	2026-05-31 19:58:44.534	2026-05-31 19:58:44.534
cmpu7d7vf008pl8t23i9qfyuc	cmpu7d5fd008ml8t2jvq93fbz	cmpu7a58c000xl8t2htaj0e0v	4	Molt bo	La qualitat és molt bona, encara que el preu és una mica alt.	t	4	2026-05-31 19:58:47.836	2026-05-31 19:58:47.836
cmpu7d7vg008ql8t2v752zopz	cmpu7d5fd008ml8t2jvq93fbz	cmpu7a5qq0013l8t23hutiwoy	5	Boníssim	De les millors compres que he fet aquí. Cinc estrelles ben merescudes.	t	8	2026-05-31 19:58:47.836	2026-05-31 19:58:47.836
cmpu7d7vg008rl8t2n3790esf	cmpu7d5fd008ml8t2jvq93fbz	cmpu7a51x000vl8t233b55u1x	5	Una joia	Producte català de primera. El recomano completament.	f	1	2026-05-31 19:58:47.836	2026-05-31 19:58:47.836
cmpu7dajp008vl8t200kp6kdn	cmpu7d7zd008sl8t2uww4uxst	cmpu7a5kk0011l8t2mjyz3q0t	5	Una joia	Producte català de primera. El recomano completament.	t	5	2026-05-31 19:58:51.301	2026-05-31 19:58:51.301
cmpu7dajp008wl8t2coi5rqx9	cmpu7d7zd008sl8t2uww4uxst	cmpu7a5e1000zl8t2wn4lmvys	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	9	2026-05-31 19:58:51.301	2026-05-31 19:58:51.301
cmpu7dd3y0090l8t2d1j3ya8u	cmpu7danb008xl8t2n1sctbxm	cmpu7a5qq0013l8t23hutiwoy	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	3	2026-05-31 19:58:54.622	2026-05-31 19:58:54.622
cmpu7dd3y0091l8t2fon8rzib	cmpu7danb008xl8t2n1sctbxm	cmpu7a51x000vl8t233b55u1x	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	7	2026-05-31 19:58:54.622	2026-05-31 19:58:54.622
cmpu7dd3y0092l8t2fsy9c1jj	cmpu7danb008xl8t2n1sctbxm	cmpu7a4vf000tl8t2u8t7462k	5	Sabor autèntic	De primera. Tota la família ho ha gaudit, repetirem sens dubte.	t	6	2026-05-31 19:58:54.622	2026-05-31 19:58:54.622
cmpu7dd3y0093l8t2t6kbdyjy	cmpu7danb008xl8t2n1sctbxm	cmpu7a58c000xl8t2htaj0e0v	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	8	2026-05-31 19:58:54.622	2026-05-31 19:58:54.622
cmpu7dejy0096l8t285xxl8vj	cmpu7dd7h0094l8t28p1b078o	cmpu7a5e1000zl8t2wn4lmvys	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	13	2026-05-31 19:58:56.494	2026-05-31 19:58:56.494
cmpu7dejy0097l8t2b3do1uua	cmpu7dd7h0094l8t28p1b078o	cmpu7a51x000vl8t233b55u1x	5	Molt recomanable	Just el que buscava. Enviament ràpid i ben embalat.	t	4	2026-05-31 19:58:56.494	2026-05-31 19:58:56.494
cmpu7dl7j009jl8t274rhbl9o	cmpu7diko009dl8t2xoprra7l	cmpu7a58c000xl8t2htaj0e0v	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	f	11	2026-05-31 19:59:05.119	2026-05-31 19:59:05.119
cmpu7dl7j009kl8t29v5cielh	cmpu7diko009dl8t2xoprra7l	cmpu7a5qq0013l8t23hutiwoy	4	Compra encertada	Estem contents amb la compra. Producte autèntic i de proximitat.	t	11	2026-05-31 19:59:05.119	2026-05-31 19:59:05.119
cmpu7dl7j009ll8t2vz4ae8ya	cmpu7diko009dl8t2xoprra7l	cmpu7a51x000vl8t233b55u1x	4	Qualitat artesana	Es nota la feina ben feta. Molt satisfet amb la compra.	t	11	2026-05-31 19:59:05.119	2026-05-31 19:59:05.119
cmpu7dodj009sl8t2rugkrhth	cmpu7dlaz009ml8t2m73c1nps	cmpu7a5qq0013l8t23hutiwoy	5	Una joia	Producte català de primera. El recomano completament.	t	2	2026-05-31 19:59:09.223	2026-05-31 19:59:09.223
cmpu7dodj009tl8t2qiobr5lm	cmpu7dlaz009ml8t2m73c1nps	cmpu7a51x000vl8t233b55u1x	4	Repetirem	Bona relació qualitat-preu i una atenció del venedor immillorable.	t	4	2026-05-31 19:59:09.223	2026-05-31 19:59:09.223
cmpu7ds8s00a0l8t2v2o9ikd7	cmpu7doh6009ul8t2kayxka2f	cmpu7a4vf000tl8t2u8t7462k	4	Molt content	Tal com es descriu. Producte local i de bona qualitat.	t	2	2026-05-31 19:59:14.236	2026-05-31 19:59:14.236
cmpu7ds8s00a1l8t2f6k5trmw	cmpu7doh6009ul8t2kayxka2f	cmpu7a5e1000zl8t2wn4lmvys	5	Excel·lent!	Producte de molta qualitat, tornaré a comprar segur. Es nota que és artesà.	f	4	2026-05-31 19:59:14.236	2026-05-31 19:59:14.236
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
\.


--
-- Data for Name: SellerSaleInvoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."SellerSaleInvoice" ("id", "orderId", "sellerId", "buyerId", "kind", "type", "status", "series", "number", "invoiceNumber", "issueDate", "issuerSnapshot", "recipientSnapshot", "lineItems", "baseAmount", "vatBreakdown", "vatAmount", "totalAmount", "legalMention", "pdfPublicId", "pdfUrl", "rectifiesId", "lastError", "createdAt", "updatedAt", "saleIdempotencyKey") FROM stdin;
cmpvciwfs000cyjt2csq0ofla	cmpvcikjr0008yjt2tf4ihh33	cmpu7a33m0007l8t2zwqbkwf7	cmpu7a2oe0000l8t232dsj2jq	SALE	SIMPLIFIED	ISSUED	CG-B12345674	1	CG-B12345674-000001	2026-06-01 15:10:57.208	{"taxId": "B12345674", "legalName": "Cal Forner SL", "vatRegime": "GENERAL", "fiscalCity": "Manresa", "fiscalCountry": "ES", "fiscalProvince": "Bages", "fiscalPostalCode": "08241", "fiscalAddressLine1": "Carrer del Born, 12", "fiscalAddressLine2": null, "vatExemptionLegalBasis": null}	null	[{"title": "Torró d'Agramunt IGP", "vatRate": 10, "quantity": 10, "lineTotal": 129, "unitPrice": 12.9, "vatAmount": 11.73, "baseAmount": 117.27, "variantLabel": null}]	117.27	[{"base": 117.27, "rate": 10, "cuota": 11.73}]	11.73	129.00	Factura expedida por cangerard.cat en nombre y por cuenta de Cal Forner SL, conforme al art. 5 del RD 1619/2012.	cangerard/fiscal/invoices/cmpvciwfs000cyjt2csq0ofla.pdf	https://res.cloudinary.com/gerardcsaperas/raw/private/s--YzXZN6RL--/v1780326658/cangerard/fiscal/invoices/cmpvciwfs000cyjt2csq0ofla.pdf	\N	\N	2026-06-01 15:10:57.208	2026-06-01 15:10:58.583	cmpvcikjr0008yjt2tf4ihh33:cmpu7a33m0007l8t2zwqbkwf7
\.


--
-- Data for Name: Setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Setting" ("key", "value", "updatedAt") FROM stdin;
defaultCommissionRate	10	2026-05-31 19:56:21.021
\.


--
-- Data for Name: TaxProfile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."TaxProfile" ("id", "userId", "legalName", "taxId", "fiscalAddressLine1", "fiscalAddressLine2", "fiscalCity", "fiscalPostalCode", "fiscalProvince", "fiscalCountry", "createdAt", "updatedAt") FROM stdin;
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
7fa31433-27f3-4c65-83bd-69a503e5a6cd	7c756883e66142b795bdd97b8f4f0bcd359eed00d78b481bb449701410be5c06	2026-05-31 19:53:46.391159+00	20260521100408_init	\N	\N	2026-05-31 19:53:42.282451+00	1
5f280a9f-3978-4168-9644-c5c4cf7cb3cd	d8a3f6eb97e776f4028baef7816857be8ae9e6e8746c46a8bb47066656fbe1b0	2026-05-31 19:53:53.560682+00	20260529170000_shipping_invoice_idempotency	\N	\N	2026-05-31 19:53:53.356984+00	1
dc770741-2b17-4046-8360-528ad716bb52	54c10a91167f6bdfbe3a3da21b9e6b7617ddd97e3704c57d3c1b25ac7197f9e4	2026-05-31 19:53:46.676065+00	20260521151848_cart_saved_for_later	\N	\N	2026-05-31 19:53:46.47254+00	1
c71569d4-a2ec-4a23-8390-447b506476d4	3dea8c428c922af11087e01fb6752f9d306ac3f1a2c44b534a8af54150857c25	2026-05-31 19:53:47.550609+00	20260522105104_shipping_strategy	\N	\N	2026-05-31 19:53:46.775609+00	1
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
dbdd70d7-de31-474e-87e6-07ec8bdfecd7	3af88576ee848d49f5005473405252e6630d1b564c52cb89cdfcdcf3d80296a8	2026-05-31 19:53:53.275985+00	20260529115730_seller_phone	\N	\N	2026-05-31 19:53:53.047175+00	1
384f7c32-bc45-4f7c-b0b1-4ce764246d5f	0bdc1ec2ffeeaba193736a7d91e67436a57112e76eedba1b73ad632309f72fc2	2026-05-31 19:53:56.15303+00	20260531120000_stripe_fee	\N	\N	2026-05-31 19:53:55.927466+00	1
37cace2a-e636-491c-b78b-89e6b1abe868	9e5812a6009eddfeec895ce07ac8bf41d76ff46851160c49942facb9c649d818	2026-06-03 17:04:20.22005+00	20260603131429_mejoras_sales_unit_shipping	\N	\N	2026-06-03 17:04:19.524316+00	1
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

-- \unrestrict BpmmsucnMgHuDwQ0fQHLGWCPmV6aWu6TgWfBlgeTcJCmKBpTTz5L6BwHB7HLCSf

RESET ALL;
