CREATE TABLE public.pessoas (
    nome character varying(100) NOT NULL,
    id numeric NOT NULL
);


ALTER TABLE public.pessoas OWNER TO postgres;

COPY public.pessoas (nome, id) FROM stdin;
Julierme	1
Fernanda	2
Winner	3
Amanda	4
\.

ALTER TABLE ONLY public.pessoas
    ADD CONSTRAINT pessoas_nome_key UNIQUE (nome);

ALTER TABLE ONLY public.pessoas
    ADD CONSTRAINT pessoas_pkey PRIMARY KEY (id);