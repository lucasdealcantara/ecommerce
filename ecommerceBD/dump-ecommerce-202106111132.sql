toc.dat                                                                                             0000600 0004000 0002000 00000036742 14060672033 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       ;                     y         	   ecommerce    9.6.21    9.6.21 7    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3         ?            1259    41216 	   categoria    TABLE     ?   CREATE TABLE public.categoria (
    categoria_id integer NOT NULL,
    nome_categoria character varying(50) NOT NULL,
    descricao_categoria text NOT NULL
);
    DROP TABLE public.categoria;
       public         postgres    false    3         ?            1259    41222    categoria_categoria_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.categoria_categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categoria_categoria_id_seq;
       public       postgres    false    185    3         ?           0    0    categoria_categoria_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categoria_categoria_id_seq OWNED BY public.categoria.categoria_id;
            public       postgres    false    186         ?            1259    41224    cliente    TABLE     ?  CREATE TABLE public.cliente (
    cliente_id integer NOT NULL,
    email character varying(100) NOT NULL,
    username character varying(50) NOT NULL,
    senha character varying(20) NOT NULL,
    nome_cliente character varying(50) NOT NULL,
    cpf character varying(11) NOT NULL,
    telefone character varying(20) NOT NULL,
    data_nascimento date NOT NULL,
    endereco_id integer
);
    DROP TABLE public.cliente;
       public         postgres    false    3         ?            1259    41227    cliente_cliente_id_seq    SEQUENCE        CREATE SEQUENCE public.cliente_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_cliente_id_seq;
       public       postgres    false    3    187         ?           0    0    cliente_cliente_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_cliente_id_seq OWNED BY public.cliente.cliente_id;
            public       postgres    false    188         ?            1259    41229    endereco    TABLE     b  CREATE TABLE public.endereco (
    endereco_id integer NOT NULL,
    cep character varying(8) NOT NULL,
    rua character varying(100) NOT NULL,
    bairro character varying(50) NOT NULL,
    cidade character varying(50) NOT NULL,
    numero integer NOT NULL,
    complemento character varying(100) NOT NULL,
    estado character varying(50) NOT NULL
);
    DROP TABLE public.endereco;
       public         postgres    false    3         ?            1259    41232    endereco_endereco_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.endereco_endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.endereco_endereco_id_seq;
       public       postgres    false    189    3         ?           0    0    endereco_endereco_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.endereco_endereco_id_seq OWNED BY public.endereco.endereco_id;
            public       postgres    false    190         ?            1259    41234    pedido    TABLE     =  CREATE TABLE public.pedido (
    pedido_id integer NOT NULL,
    numero_pedido integer NOT NULL,
    lista_de_produtos_do_pedido character varying NOT NULL,
    valor_total_pedido numeric NOT NULL,
    data_pedido date DEFAULT now() NOT NULL,
    status character varying NOT NULL,
    cliente_id integer NOT NULL
);
    DROP TABLE public.pedido;
       public         postgres    false    3         ?            1259    41241    pedido_pedido_id_seq    SEQUENCE     }   CREATE SEQUENCE public.pedido_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pedido_pedido_id_seq;
       public       postgres    false    191    3         ?           0    0    pedido_pedido_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.pedido_pedido_id_seq OWNED BY public.pedido.pedido_id;
            public       postgres    false    192         ?            1259    41243    produto    TABLE     2  CREATE TABLE public.produto (
    produto_id integer NOT NULL,
    nome_produto character varying(50) NOT NULL,
    descricao_produto text NOT NULL,
    preco_produto numeric NOT NULL,
    qtd_estoque integer,
    data_cadastro_produto date NOT NULL,
    imagem bytea NOT NULL,
    categoria_id integer
);
    DROP TABLE public.produto;
       public         postgres    false    3         ?            1259    41249    produto_pedido    TABLE     ?   CREATE TABLE public.produto_pedido (
    produto_pedido_id integer NOT NULL,
    produto_id integer NOT NULL,
    pedido_id integer NOT NULL,
    quantidade integer NOT NULL,
    preco numeric NOT NULL
);
 "   DROP TABLE public.produto_pedido;
       public         postgres    false    3         ?            1259    41255 $   produto_pedido_produto_pedido_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.produto_pedido_produto_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.produto_pedido_produto_pedido_id_seq;
       public       postgres    false    194    3         ?           0    0 $   produto_pedido_produto_pedido_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.produto_pedido_produto_pedido_id_seq OWNED BY public.produto_pedido.produto_pedido_id;
            public       postgres    false    195         ?            1259    41257    produto_produto_id_seq    SEQUENCE        CREATE SEQUENCE public.produto_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produto_produto_id_seq;
       public       postgres    false    3    193         ?           0    0    produto_produto_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.produto_produto_id_seq OWNED BY public.produto.produto_id;
            public       postgres    false    196         ?           2604    41259    categoria categoria_id    DEFAULT     ?   ALTER TABLE ONLY public.categoria ALTER COLUMN categoria_id SET DEFAULT nextval('public.categoria_categoria_id_seq'::regclass);
 E   ALTER TABLE public.categoria ALTER COLUMN categoria_id DROP DEFAULT;
       public       postgres    false    186    185         ?           2604    41260    cliente cliente_id    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN cliente_id SET DEFAULT nextval('public.cliente_cliente_id_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN cliente_id DROP DEFAULT;
       public       postgres    false    188    187         ?           2604    41261    endereco endereco_id    DEFAULT     |   ALTER TABLE ONLY public.endereco ALTER COLUMN endereco_id SET DEFAULT nextval('public.endereco_endereco_id_seq'::regclass);
 C   ALTER TABLE public.endereco ALTER COLUMN endereco_id DROP DEFAULT;
       public       postgres    false    190    189         ?           2604    41262    pedido pedido_id    DEFAULT     t   ALTER TABLE ONLY public.pedido ALTER COLUMN pedido_id SET DEFAULT nextval('public.pedido_pedido_id_seq'::regclass);
 ?   ALTER TABLE public.pedido ALTER COLUMN pedido_id DROP DEFAULT;
       public       postgres    false    192    191         ?           2604    41263    produto produto_id    DEFAULT     x   ALTER TABLE ONLY public.produto ALTER COLUMN produto_id SET DEFAULT nextval('public.produto_produto_id_seq'::regclass);
 A   ALTER TABLE public.produto ALTER COLUMN produto_id DROP DEFAULT;
       public       postgres    false    196    193         ?           2604    41264     produto_pedido produto_pedido_id    DEFAULT     ?   ALTER TABLE ONLY public.produto_pedido ALTER COLUMN produto_pedido_id SET DEFAULT nextval('public.produto_pedido_produto_pedido_id_seq'::regclass);
 O   ALTER TABLE public.produto_pedido ALTER COLUMN produto_pedido_id DROP DEFAULT;
       public       postgres    false    195    194         ?          0    41216 	   categoria 
   TABLE DATA                     public       postgres    false    185       2182.dat ?           0    0    categoria_categoria_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categoria_categoria_id_seq', 5, true);
            public       postgres    false    186         ?          0    41224    cliente 
   TABLE DATA                     public       postgres    false    187       2184.dat ?           0    0    cliente_cliente_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cliente_cliente_id_seq', 17, true);
            public       postgres    false    188         ?          0    41229    endereco 
   TABLE DATA                     public       postgres    false    189       2186.dat ?           0    0    endereco_endereco_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.endereco_endereco_id_seq', 3, true);
            public       postgres    false    190         ?          0    41234    pedido 
   TABLE DATA                     public       postgres    false    191       2188.dat ?           0    0    pedido_pedido_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pedido_pedido_id_seq', 1, false);
            public       postgres    false    192         ?          0    41243    produto 
   TABLE DATA                     public       postgres    false    193       2190.dat ?          0    41249    produto_pedido 
   TABLE DATA                     public       postgres    false    194       2191.dat ?           0    0 $   produto_pedido_produto_pedido_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.produto_pedido_produto_pedido_id_seq', 1, false);
            public       postgres    false    195         ?           0    0    produto_produto_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.produto_produto_id_seq', 9, true);
            public       postgres    false    196         ?           2606    41266    categoria categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (categoria_id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public         postgres    false    185    185         ?           2606    41268    cliente cliente_cpf_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cpf_key UNIQUE (cpf);
 A   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_cpf_key;
       public         postgres    false    187    187         ?           2606    41270    cliente cliente_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_email_key;
       public         postgres    false    187    187                    2606    41272    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cliente_id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    187    187                    2606    41274    cliente cliente_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_username_key;
       public         postgres    false    187    187                    2606    41276    endereco endereco_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (endereco_id);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public         postgres    false    189    189                    2606    41278    pedido pedido_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (pedido_id);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public         postgres    false    191    191                    2606    41280 "   produto_pedido produto_pedido_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.produto_pedido
    ADD CONSTRAINT produto_pedido_pkey PRIMARY KEY (produto_pedido_id);
 L   ALTER TABLE ONLY public.produto_pedido DROP CONSTRAINT produto_pedido_pkey;
       public         postgres    false    194    194         	           2606    41282    produto produto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (produto_id);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public         postgres    false    193    193                    2606    41283    produto categoria_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT categoria_fkey FOREIGN KEY (categoria_id) REFERENCES public.categoria(categoria_id);
 @   ALTER TABLE ONLY public.produto DROP CONSTRAINT categoria_fkey;
       public       postgres    false    2043    185    193                    2606    41288    pedido cliente_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT cliente_fkey FOREIGN KEY (cliente_id) REFERENCES public.cliente(cliente_id);
 =   ALTER TABLE ONLY public.pedido DROP CONSTRAINT cliente_fkey;
       public       postgres    false    191    2049    187                    2606    41293    cliente endereco_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT endereco_fkey FOREIGN KEY (endereco_id) REFERENCES public.endereco(endereco_id);
 ?   ALTER TABLE ONLY public.cliente DROP CONSTRAINT endereco_fkey;
       public       postgres    false    187    2053    189                    2606    41298    produto_pedido pedido_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.produto_pedido
    ADD CONSTRAINT pedido_fkey FOREIGN KEY (pedido_id) REFERENCES public.pedido(pedido_id);
 D   ALTER TABLE ONLY public.produto_pedido DROP CONSTRAINT pedido_fkey;
       public       postgres    false    194    191    2055                    2606    41303    produto_pedido produto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.produto_pedido
    ADD CONSTRAINT produto_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(produto_id);
 E   ALTER TABLE ONLY public.produto_pedido DROP CONSTRAINT produto_fkey;
       public       postgres    false    194    2057    193                                      2182.dat                                                                                            0000600 0004000 0002000 00000000725 14060672033 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.categoria VALUES (1, ' videogame ', ' consoles, acessorios e jogos ');
INSERT INTO public.categoria VALUES (2, ' bebidas ', ' vinho, cerveja, refrigerante, uísque, vodka ');
INSERT INTO public.categoria VALUES (3, ' pet shop ', ' racao, brinquedos e roupas ');
INSERT INTO public.categoria VALUES (4, ' eletroportáteis ', ' automotivo, brinquedos, moveis ');
INSERT INTO public.categoria VALUES (5, ' automotivo ', ' oficina, pneus e fluidos ');


                                           2184.dat                                                                                            0000600 0004000 0002000 00000002257 14060672033 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.cliente VALUES (10, 'lucio25@gmail.com', 'lucio25', '90909090', 'Lucimar Macedo', '13515795216', '24988547687', '1978-05-23', 1);
INSERT INTO public.cliente VALUES (11, 'ladisVal@gmail.com', 'ladisVal', '89898989', 'Valdemar Ladislau', '12266654898', '2165789829', '1932-06-24', 2);
INSERT INTO public.cliente VALUES (12, 'robertinho@gmail.com', 'robertinho', '56765678', 'Roberto', '13256789122', '24981726357', '2002-04-28', 3);
INSERT INTO public.cliente VALUES (13, 'femonomeno9@gmail.com', 'femonomeno', 'jisajiodjwek', 'Ronaldo Nazario', '19942002062', '24988653727', '1976-09-22', 2);
INSERT INTO public.cliente VALUES (14, 'pelé10@gmail.com', 'pelé', 'dretdjds', 'Edison Arantes', '19701346420', '2499887687', '1948-10-23', 3);
INSERT INTO public.cliente VALUES (15, 'julioRica@gmail.com', 'julioRica', '2134355hf', 'Julio', '13515765789', '24988549999', '1954-01-22', 2);
INSERT INTO public.cliente VALUES (16, 'JaiminFadi@gmail.com', 'JaiminFadi', 'dkkiji231', 'Jaime Costa', '56798742336', '24992547457', '1945-06-25', 1);
INSERT INTO public.cliente VALUES (17, 'zezinho5@gmail.com', 'zezinho', '5142635799', 'Jose', '14747355987', '24988969587', '1984-10-09', 1);


                                                                                                                                                                                                                                                                                                                                                 2186.dat                                                                                            0000600 0004000 0002000 00000000533 14060672033 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.endereco VALUES (1, '25675160', 'Rua Bataillard', 'Mosela', 'Petrópolis', 1179, 'A', 'RJ');
INSERT INTO public.endereco VALUES (2, '30620690', 'Rua Mosela', 'Milionários', 'Belo Horizonte', 153, 'A', 'MG');
INSERT INTO public.endereco VALUES (3, '25640020', 'Avenida Dom Pedro I', 'Centro', 'Petrópolis', 1650, 'A', 'RJ');


                                                                                                                                                                     2188.dat                                                                                            0000600 0004000 0002000 00000000002 14060672033 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2190.dat                                                                                            0000600 0004000 0002000 00000002436 14060672033 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.produto VALUES (2, ' Coleira ', ' Coleira Raças Pequenas ', 10, 57, '2020-01-15', '\x', 3);
INSERT INTO public.produto VALUES (5, ' pneu careca ', ' Peneu de fusca, já no arame. Ótimo pra fazer um chinelo ', 150, 10, '2014-06-25', '\x6e756c6c', 5);
INSERT INTO public.produto VALUES (6, ' Vodka ', ' Pioneira na categoria de Vodka, sendo a principal referência no mundo ', 7, 600, '2020-12-30', '\x6e756c6c', 2);
INSERT INTO public.produto VALUES (7, ' Osso Roído ', ' Osso roído por, nada mais nada menos que um vira lata caramelo. Item extremamente valioso ', 5, 1, '1980-04-10', '\x6e756c6c', 3);
INSERT INTO public.produto VALUES (8, ' Oficina ', ' O Jogo oficina mestre 5000R possui AMPLO misturar de Chaves, soquetes e Acessórios, Diversos Perfis Essenciais para o dia-a-dia ', 10000, 1, '2021-02-22', '\x6e756c6c', 5);
INSERT INTO public.produto VALUES (9, ' Vinho ', ' Tinto Seco ', 10, 2580, '2021-03-28', '\x6e756c6c', 2);
INSERT INTO public.produto VALUES (4, ' Playstation5 ', ' Console de jogos eletrônicos de nona geração e sucessor do PlayStation 4, desenvolvido pela Sony Interactive Entertainment ', 5000, 4, '2020-10-01', '\x', 1);
INSERT INTO public.produto VALUES (3, ' Vinho Tinto ', ' Vinho top. Tão bom que bebi Metade ', 246, 10, '1999-05-23', '\x', 2);


                                                                                                                                                                                                                                  2191.dat                                                                                            0000600 0004000 0002000 00000000002 14060672033 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000033032 14060672033 0015366 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.21
-- Dumped by pg_dump version 9.6.21

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

ALTER TABLE ONLY public.produto_pedido DROP CONSTRAINT produto_fkey;
ALTER TABLE ONLY public.produto_pedido DROP CONSTRAINT pedido_fkey;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT endereco_fkey;
ALTER TABLE ONLY public.pedido DROP CONSTRAINT cliente_fkey;
ALTER TABLE ONLY public.produto DROP CONSTRAINT categoria_fkey;
ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
ALTER TABLE ONLY public.produto_pedido DROP CONSTRAINT produto_pedido_pkey;
ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_username_key;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_email_key;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_cpf_key;
ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
ALTER TABLE public.produto_pedido ALTER COLUMN produto_pedido_id DROP DEFAULT;
ALTER TABLE public.produto ALTER COLUMN produto_id DROP DEFAULT;
ALTER TABLE public.pedido ALTER COLUMN pedido_id DROP DEFAULT;
ALTER TABLE public.endereco ALTER COLUMN endereco_id DROP DEFAULT;
ALTER TABLE public.cliente ALTER COLUMN cliente_id DROP DEFAULT;
ALTER TABLE public.categoria ALTER COLUMN categoria_id DROP DEFAULT;
DROP SEQUENCE public.produto_produto_id_seq;
DROP SEQUENCE public.produto_pedido_produto_pedido_id_seq;
DROP TABLE public.produto_pedido;
DROP TABLE public.produto;
DROP SEQUENCE public.pedido_pedido_id_seq;
DROP TABLE public.pedido;
DROP SEQUENCE public.endereco_endereco_id_seq;
DROP TABLE public.endereco;
DROP SEQUENCE public.cliente_cliente_id_seq;
DROP TABLE public.cliente;
DROP SEQUENCE public.categoria_categoria_id_seq;
DROP TABLE public.categoria;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    categoria_id integer NOT NULL,
    nome_categoria character varying(50) NOT NULL,
    descricao_categoria text NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: categoria_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_categoria_id_seq OWNER TO postgres;

--
-- Name: categoria_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_categoria_id_seq OWNED BY public.categoria.categoria_id;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    cliente_id integer NOT NULL,
    email character varying(100) NOT NULL,
    username character varying(50) NOT NULL,
    senha character varying(20) NOT NULL,
    nome_cliente character varying(50) NOT NULL,
    cpf character varying(11) NOT NULL,
    telefone character varying(20) NOT NULL,
    data_nascimento date NOT NULL,
    endereco_id integer
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_cliente_id_seq OWNER TO postgres;

--
-- Name: cliente_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_cliente_id_seq OWNED BY public.cliente.cliente_id;


--
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco (
    endereco_id integer NOT NULL,
    cep character varying(8) NOT NULL,
    rua character varying(100) NOT NULL,
    bairro character varying(50) NOT NULL,
    cidade character varying(50) NOT NULL,
    numero integer NOT NULL,
    complemento character varying(100) NOT NULL,
    estado character varying(50) NOT NULL
);


ALTER TABLE public.endereco OWNER TO postgres;

--
-- Name: endereco_endereco_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.endereco_endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.endereco_endereco_id_seq OWNER TO postgres;

--
-- Name: endereco_endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.endereco_endereco_id_seq OWNED BY public.endereco.endereco_id;


--
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido (
    pedido_id integer NOT NULL,
    numero_pedido integer NOT NULL,
    lista_de_produtos_do_pedido character varying NOT NULL,
    valor_total_pedido numeric NOT NULL,
    data_pedido date DEFAULT now() NOT NULL,
    status character varying NOT NULL,
    cliente_id integer NOT NULL
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- Name: pedido_pedido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedido_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pedido_pedido_id_seq OWNER TO postgres;

--
-- Name: pedido_pedido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedido_pedido_id_seq OWNED BY public.pedido.pedido_id;


--
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    produto_id integer NOT NULL,
    nome_produto character varying(50) NOT NULL,
    descricao_produto text NOT NULL,
    preco_produto numeric NOT NULL,
    qtd_estoque integer,
    data_cadastro_produto date NOT NULL,
    imagem bytea NOT NULL,
    categoria_id integer
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- Name: produto_pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto_pedido (
    produto_pedido_id integer NOT NULL,
    produto_id integer NOT NULL,
    pedido_id integer NOT NULL,
    quantidade integer NOT NULL,
    preco numeric NOT NULL
);


ALTER TABLE public.produto_pedido OWNER TO postgres;

--
-- Name: produto_pedido_produto_pedido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_pedido_produto_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_pedido_produto_pedido_id_seq OWNER TO postgres;

--
-- Name: produto_pedido_produto_pedido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_pedido_produto_pedido_id_seq OWNED BY public.produto_pedido.produto_pedido_id;


--
-- Name: produto_produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_produto_id_seq OWNER TO postgres;

--
-- Name: produto_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_produto_id_seq OWNED BY public.produto.produto_id;


--
-- Name: categoria categoria_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN categoria_id SET DEFAULT nextval('public.categoria_categoria_id_seq'::regclass);


--
-- Name: cliente cliente_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN cliente_id SET DEFAULT nextval('public.cliente_cliente_id_seq'::regclass);


--
-- Name: endereco endereco_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco ALTER COLUMN endereco_id SET DEFAULT nextval('public.endereco_endereco_id_seq'::regclass);


--
-- Name: pedido pedido_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido ALTER COLUMN pedido_id SET DEFAULT nextval('public.pedido_pedido_id_seq'::regclass);


--
-- Name: produto produto_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN produto_id SET DEFAULT nextval('public.produto_produto_id_seq'::regclass);


--
-- Name: produto_pedido produto_pedido_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto_pedido ALTER COLUMN produto_pedido_id SET DEFAULT nextval('public.produto_pedido_produto_pedido_id_seq'::regclass);


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2182.dat

--
-- Name: categoria_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_categoria_id_seq', 5, true);


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2184.dat

--
-- Name: cliente_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_cliente_id_seq', 17, true);


--
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2186.dat

--
-- Name: endereco_endereco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_endereco_id_seq', 3, true);


--
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2188.dat

--
-- Name: pedido_pedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedido_pedido_id_seq', 1, false);


--
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2190.dat

--
-- Data for Name: produto_pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2191.dat

--
-- Name: produto_pedido_produto_pedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_pedido_produto_pedido_id_seq', 1, false);


--
-- Name: produto_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_produto_id_seq', 9, true);


--
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (categoria_id);


--
-- Name: cliente cliente_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cpf_key UNIQUE (cpf);


--
-- Name: cliente cliente_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_email_key UNIQUE (email);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cliente_id);


--
-- Name: cliente cliente_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_username_key UNIQUE (username);


--
-- Name: endereco endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (endereco_id);


--
-- Name: pedido pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (pedido_id);


--
-- Name: produto_pedido produto_pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto_pedido
    ADD CONSTRAINT produto_pedido_pkey PRIMARY KEY (produto_pedido_id);


--
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (produto_id);


--
-- Name: produto categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT categoria_fkey FOREIGN KEY (categoria_id) REFERENCES public.categoria(categoria_id);


--
-- Name: pedido cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT cliente_fkey FOREIGN KEY (cliente_id) REFERENCES public.cliente(cliente_id);


--
-- Name: cliente endereco_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT endereco_fkey FOREIGN KEY (endereco_id) REFERENCES public.endereco(endereco_id);


--
-- Name: produto_pedido pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto_pedido
    ADD CONSTRAINT pedido_fkey FOREIGN KEY (pedido_id) REFERENCES public.pedido(pedido_id);


--
-- Name: produto_pedido produto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto_pedido
    ADD CONSTRAINT produto_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(produto_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      