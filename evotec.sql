PGDMP         .                y            evotec    12.6    12.6 '    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    16393    evotec    DATABASE     �   CREATE DATABASE evotec WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE evotec;
                postgres    false            �            1259    24689    achievements    TABLE     �   CREATE TABLE public.achievements (
    id smallint NOT NULL,
    achievement character varying(100) NOT NULL,
    candidate_id smallint NOT NULL
);
     DROP TABLE public.achievements;
       public         heap    postgres    false            �            1259    24687    achievements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achievements_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.achievements_id_seq;
       public          postgres    false    207            /           0    0    achievements_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.achievements_id_seq OWNED BY public.achievements.id;
          public          postgres    false    206            �            1259    24666 
   candidates    TABLE     �   CREATE TABLE public.candidates (
    id smallint NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(150) NOT NULL,
    value character varying(10) NOT NULL,
    picture character varying(50) NOT NULL
);
    DROP TABLE public.candidates;
       public         heap    postgres    false            0           0    0    TABLE candidates    COMMENT     S   COMMENT ON TABLE public.candidates IS 'Contains listed candidates'' information.';
          public          postgres    false    203            �            1259    24664    candidates_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.candidates_id_seq;
       public          postgres    false    203            1           0    0    candidates_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.candidates_id_seq OWNED BY public.candidates.id;
          public          postgres    false    202            �            1259    24675    programs    TABLE     �   CREATE TABLE public.programs (
    id smallint NOT NULL,
    program character varying(50) NOT NULL,
    candidate_id smallint NOT NULL
);
    DROP TABLE public.programs;
       public         heap    postgres    false            2           0    0    TABLE programs    COMMENT     L   COMMENT ON TABLE public.programs IS 'Contains each candidate''s programs.';
          public          postgres    false    205            �            1259    24673    programs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programs_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.programs_id_seq;
       public          postgres    false    205            3           0    0    programs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.programs_id_seq OWNED BY public.programs.id;
          public          postgres    false    204            �            1259    24716    voterdb    TABLE     �   CREATE TABLE public.voterdb (
    id integer NOT NULL,
    college_mail character varying(50) NOT NULL,
    complete_name character varying(100) NOT NULL,
    pin_number character varying(1000) NOT NULL,
    vote character varying(10)
);
    DROP TABLE public.voterdb;
       public         heap    postgres    false            4           0    0    TABLE voterdb    COMMENT     B   COMMENT ON TABLE public.voterdb IS 'Store voters'' information.';
          public          postgres    false    209            �            1259    24714    voterdb_id_seq    SEQUENCE     �   CREATE SEQUENCE public.voterdb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.voterdb_id_seq;
       public          postgres    false    209            5           0    0    voterdb_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.voterdb_id_seq OWNED BY public.voterdb.id;
          public          postgres    false    208            �
           2604    24692    achievements id    DEFAULT     r   ALTER TABLE ONLY public.achievements ALTER COLUMN id SET DEFAULT nextval('public.achievements_id_seq'::regclass);
 >   ALTER TABLE public.achievements ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    24669    candidates id    DEFAULT     n   ALTER TABLE ONLY public.candidates ALTER COLUMN id SET DEFAULT nextval('public.candidates_id_seq'::regclass);
 <   ALTER TABLE public.candidates ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    24678    programs id    DEFAULT     j   ALTER TABLE ONLY public.programs ALTER COLUMN id SET DEFAULT nextval('public.programs_id_seq'::regclass);
 :   ALTER TABLE public.programs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    24719 
   voterdb id    DEFAULT     h   ALTER TABLE ONLY public.voterdb ALTER COLUMN id SET DEFAULT nextval('public.voterdb_id_seq'::regclass);
 9   ALTER TABLE public.voterdb ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            &          0    24689    achievements 
   TABLE DATA           E   COPY public.achievements (id, achievement, candidate_id) FROM stdin;
    public          postgres    false    207   �)       "          0    24666 
   candidates 
   TABLE DATA           K   COPY public.candidates (id, name, description, value, picture) FROM stdin;
    public          postgres    false    203    +       $          0    24675    programs 
   TABLE DATA           =   COPY public.programs (id, program, candidate_id) FROM stdin;
    public          postgres    false    205   ,       (          0    24716    voterdb 
   TABLE DATA           T   COPY public.voterdb (id, college_mail, complete_name, pin_number, vote) FROM stdin;
    public          postgres    false    209   �,       6           0    0    achievements_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.achievements_id_seq', 1, false);
          public          postgres    false    206            7           0    0    candidates_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.candidates_id_seq', 1, false);
          public          postgres    false    202            8           0    0    programs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.programs_id_seq', 1, false);
          public          postgres    false    204            9           0    0    voterdb_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.voterdb_id_seq', 5, true);
          public          postgres    false    208            �
           2606    24694    achievements achievements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_pkey;
       public            postgres    false    207            �
           2606    24671    candidates candidates_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT candidates_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.candidates DROP CONSTRAINT candidates_pkey;
       public            postgres    false    203            �
           2606    24726    voterdb college_mail 
   CONSTRAINT     W   ALTER TABLE ONLY public.voterdb
    ADD CONSTRAINT college_mail UNIQUE (college_mail);
 >   ALTER TABLE ONLY public.voterdb DROP CONSTRAINT college_mail;
       public            postgres    false    209            �
           2606    24680    programs programs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.programs DROP CONSTRAINT programs_pkey;
       public            postgres    false    205            �
           2606    24724    voterdb voterdb_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.voterdb
    ADD CONSTRAINT voterdb_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.voterdb DROP CONSTRAINT voterdb_pkey;
       public            postgres    false    209            �
           1259    24686    fki_candidate_fkey    INDEX     O   CREATE INDEX fki_candidate_fkey ON public.programs USING btree (candidate_id);
 &   DROP INDEX public.fki_candidate_fkey;
       public            postgres    false    205            �
           2606    24681    programs candidate_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.programs
    ADD CONSTRAINT candidate_fkey FOREIGN KEY (candidate_id) REFERENCES public.candidates(id);
 A   ALTER TABLE ONLY public.programs DROP CONSTRAINT candidate_fkey;
       public          postgres    false    203    2711    205            �
           2606    24695    achievements candidate_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT candidate_fkey FOREIGN KEY (candidate_id) REFERENCES public.candidates(id);
 E   ALTER TABLE ONLY public.achievements DROP CONSTRAINT candidate_fkey;
       public          postgres    false    203    207    2711            &   \  x���AO1���_1GM��k@9�z%`��tgw+�C�]��iX	A0��v��y��X��J�0uX��oA�I:�Sc�j�wa9����N�B�Q"�d0�L��(���"�&˧3Z�g��~WL}��0�V�����
��.�.w��f�1R!h�׷AҴ=� ��rRZo��`�u����Rc���*�Պ��s_�`���҆��=�}~j4�t�Wx�j�J2T�D�������Q�q�������x���2 C\�R��Q��p
RS/�O��w���s/&�И��q99��r-m���@F��Pou�V�1X <��X�`�w�7�Xh���^�[�~��qE�7�+ܥ      "   �   x�u��N�@Dϻ_�HT�TU)*����ͺ��w�^��=���͛�����vL�`B�nխ�H	��0�r�d��p�}��s�.��FN��IE8�YX��T�*����}p�JĊ� ����6���rj�f��"X���vY<R@Q�o���=�qN(p��U�Y��ν��m�sWˣ�F��u[�3�����k�"^m���:��:��z�?��r�      $   �   x�%��j�@Eך���:�>���HH!�n��=d<c4r _9]	.���ڒ:p+
(J�R���j�&�%�������	/|J�a�����aM�K_�h�������s.7y0�n����[���Z�z�Bm*�c���^�,V4J�}6h����v�]{�Y�y�C�蝷j���ߋ�=H-      (   o  x�M�Ao�0 ��s�<#0@���,"�h@Gv�H�V
¯�Ɛx}ߓ|
 =�=j�'���"��`���᫃�ڍyd�Wsʿw^�����ƙr�y&��{��'�����$j�⋩�r\�
n�&9������D�b:�T�X�x���کΧr(�?~���6�'c�)��*:1g�x��������#�;^34�!�Bo{ϭ%]/�Ɗ�9/��#-��L�����Q�k�C�!������I]�����)&0V	�n�S��L���7:��ׄ!���8iJf�Jb����1���'��#���c��(FD�U���+9�l�M�y�lW0ZK�nR��kU�n���.N���Ń~M�8���+	��\ףR     