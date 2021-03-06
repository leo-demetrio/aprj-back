PGDMP     7    
                y            doadores_rj    13.2    13.2 3    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394    doadores_rj    DATABASE     k   CREATE DATABASE doadores_rj WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE doadores_rj;
                postgres    false            ?            1259    16395    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            ?            1259    16470    accesses    TABLE     ?   CREATE TABLE public.accesses (
    id integer NOT NULL,
    fk_tables_id uuid,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.accesses;
       public         heap    postgres    false            ?            1259    16468    accesses_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.accesses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.accesses_id_seq;
       public          postgres    false    213            ?           0    0    accesses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.accesses_id_seq OWNED BY public.accesses.id;
          public          postgres    false    212            ?            1259    16452    admingenerals    TABLE     :  CREATE TABLE public.admingenerals (
    id uuid NOT NULL,
    cpf character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    level integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 !   DROP TABLE public.admingenerals;
       public         heap    postgres    false            ?            1259    16460    admininstituts    TABLE     Z  CREATE TABLE public.admininstituts (
    id uuid NOT NULL,
    fk_institut uuid NOT NULL,
    cpf character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    level integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 "   DROP TABLE public.admininstituts;
       public         heap    postgres    false            ?            1259    16421    adresses    TABLE     ?  CREATE TABLE public.adresses (
    id integer NOT NULL,
    fk_tables_id uuid NOT NULL,
    zip_code integer NOT NULL,
    city character varying(255) NOT NULL,
    street character varying(255) NOT NULL,
    number integer NOT NULL,
    complement character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.adresses;
       public         heap    postgres    false            ?            1259    16419    adresses_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.adresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.adresses_id_seq;
       public          postgres    false    205            ?           0    0    adresses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.adresses_id_seq OWNED BY public.adresses.id;
          public          postgres    false    204            ?            1259    16432    donors    TABLE     Q  CREATE TABLE public.donors (
    id integer NOT NULL,
    fk_institut uuid NOT NULL,
    fk_representative uuid,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    value double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.donors;
       public         heap    postgres    false            ?            1259    16430    donors_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.donors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.donors_id_seq;
       public          postgres    false    207                        0    0    donors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.donors_id_seq OWNED BY public.donors.id;
          public          postgres    false    206            ?            1259    16400 	   instituts    TABLE       CREATE TABLE public.instituts (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    cnpj character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.instituts;
       public         heap    postgres    false            ?            1259    16443    phones    TABLE     S  CREATE TABLE public.phones (
    id integer NOT NULL,
    fk_tables_id uuid NOT NULL,
    residential_phone character varying(255) NOT NULL,
    celphone_1 character varying(255) NOT NULL,
    celphone_2 character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.phones;
       public         heap    postgres    false            ?            1259    16441    phones_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.phones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.phones_id_seq;
       public          postgres    false    209                       0    0    phones_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.phones_id_seq OWNED BY public.phones.id;
          public          postgres    false    208            ?            1259    16410    representatives    TABLE     u  CREATE TABLE public.representatives (
    id integer NOT NULL,
    fk_institut uuid NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    cpf character varying(255) NOT NULL,
    number_social character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 #   DROP TABLE public.representatives;
       public         heap    postgres    false            ?            1259    16408    representatives_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.representatives_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.representatives_id_seq;
       public          postgres    false    203                       0    0    representatives_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.representatives_id_seq OWNED BY public.representatives.id;
          public          postgres    false    202            U           2604    16473    accesses id    DEFAULT     j   ALTER TABLE ONLY public.accesses ALTER COLUMN id SET DEFAULT nextval('public.accesses_id_seq'::regclass);
 :   ALTER TABLE public.accesses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            R           2604    16424    adresses id    DEFAULT     j   ALTER TABLE ONLY public.adresses ALTER COLUMN id SET DEFAULT nextval('public.adresses_id_seq'::regclass);
 :   ALTER TABLE public.adresses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            S           2604    16435 	   donors id    DEFAULT     f   ALTER TABLE ONLY public.donors ALTER COLUMN id SET DEFAULT nextval('public.donors_id_seq'::regclass);
 8   ALTER TABLE public.donors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            T           2604    16446 	   phones id    DEFAULT     f   ALTER TABLE ONLY public.phones ALTER COLUMN id SET DEFAULT nextval('public.phones_id_seq'::regclass);
 8   ALTER TABLE public.phones ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            Q           2604    16413    representatives id    DEFAULT     x   ALTER TABLE ONLY public.representatives ALTER COLUMN id SET DEFAULT nextval('public.representatives_id_seq'::regclass);
 A   ALTER TABLE public.representatives ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?          0    16395    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    200    <       ?          0    16470    accesses 
   TABLE DATA           L   COPY public.accesses (id, fk_tables_id, created_at, updated_at) FROM stdin;
    public          postgres    false    213   ?<       ?          0    16452    admingenerals 
   TABLE DATA           \   COPY public.admingenerals (id, cpf, name, email, level, created_at, updated_at) FROM stdin;
    public          postgres    false    210   ?<       ?          0    16460    admininstituts 
   TABLE DATA           j   COPY public.admininstituts (id, fk_institut, cpf, name, email, level, created_at, updated_at) FROM stdin;
    public          postgres    false    211   ?<       ?          0    16421    adresses 
   TABLE DATA           x   COPY public.adresses (id, fk_tables_id, zip_code, city, street, number, complement, created_at, updated_at) FROM stdin;
    public          postgres    false    205   ?<       ?          0    16432    donors 
   TABLE DATA           p   COPY public.donors (id, fk_institut, fk_representative, name, email, value, created_at, updated_at) FROM stdin;
    public          postgres    false    207   =       ?          0    16400 	   instituts 
   TABLE DATA           R   COPY public.instituts (id, name, email, cnpj, created_at, updated_at) FROM stdin;
    public          postgres    false    201   2=       ?          0    16443    phones 
   TABLE DATA           u   COPY public.phones (id, fk_tables_id, residential_phone, celphone_1, celphone_2, created_at, updated_at) FROM stdin;
    public          postgres    false    209   ?=       ?          0    16410    representatives 
   TABLE DATA           s   COPY public.representatives (id, fk_institut, name, email, cpf, number_social, created_at, updated_at) FROM stdin;
    public          postgres    false    203   ">                  0    0    accesses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.accesses_id_seq', 1, false);
          public          postgres    false    212                       0    0    adresses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.adresses_id_seq', 1, false);
          public          postgres    false    204                       0    0    donors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.donors_id_seq', 1, false);
          public          postgres    false    206                       0    0    phones_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.phones_id_seq', 1, true);
          public          postgres    false    208                       0    0    representatives_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.representatives_id_seq', 1, false);
          public          postgres    false    202            W           2606    16399     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    200            g           2606    16475    accesses accesses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.accesses
    ADD CONSTRAINT accesses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.accesses DROP CONSTRAINT accesses_pkey;
       public            postgres    false    213            c           2606    16459     admingenerals admingenerals_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.admingenerals
    ADD CONSTRAINT admingenerals_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.admingenerals DROP CONSTRAINT admingenerals_pkey;
       public            postgres    false    210            e           2606    16467 "   admininstituts admininstituts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.admininstituts
    ADD CONSTRAINT admininstituts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.admininstituts DROP CONSTRAINT admininstituts_pkey;
       public            postgres    false    211            ]           2606    16429    adresses adresses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.adresses
    ADD CONSTRAINT adresses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.adresses DROP CONSTRAINT adresses_pkey;
       public            postgres    false    205            _           2606    16440    donors donors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.donors
    ADD CONSTRAINT donors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.donors DROP CONSTRAINT donors_pkey;
       public            postgres    false    207            Y           2606    16407    instituts instituts_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.instituts
    ADD CONSTRAINT instituts_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.instituts DROP CONSTRAINT instituts_pkey;
       public            postgres    false    201            a           2606    16451    phones phones_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.phones
    ADD CONSTRAINT phones_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.phones DROP CONSTRAINT phones_pkey;
       public            postgres    false    209            [           2606    16418 $   representatives representatives_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.representatives
    ADD CONSTRAINT representatives_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.representatives DROP CONSTRAINT representatives_pkey;
       public            postgres    false    203            ?   ?   x?U??? ??{?e??tʻ,1D??e??Y??????'F?p???,??)????=???!?TI?5J?mv9?{h??.??wL????5 " ???G𒚮Y?9???Ow???a\$??~?q2\w7?嵿{?N)?v?Vy      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   x   x?}???0 ?w2Epd;I?Bb>&?(RK??c!a16??W˝?(F=?H6?Q?VO֒?????4?c????`c?o??C?????t????+?eD?9;F&?$?҂?P??0?)?????%V      ?   X   x?}???  ?w??B???????t??n:Uk?q?D???e?I??f?௺?-?\??T$?HF?A=?;??????q?      ?      x?????? ? ?     