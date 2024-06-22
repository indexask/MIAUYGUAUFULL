PGDMP         3            	    {           petshop    14.8    14.8 -               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    33420    petshop    DATABASE     c   CREATE DATABASE petshop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE petshop;
                postgres    false            �            1259    33460    cart    TABLE     �   CREATE TABLE public.cart (
    cart_id integer NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL
);
    DROP TABLE public.cart;
       public         heap    postgres    false            �            1259    33459    cart_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public          postgres    false    214            "           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart.cart_id;
          public          postgres    false    213            �            1259    33498    favorite_products    TABLE     �   CREATE TABLE public.favorite_products (
    id integer NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.favorite_products;
       public         heap    postgres    false            �            1259    33497    favorite_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.favorite_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.favorite_products_id_seq;
       public          postgres    false    216            #           0    0    favorite_products_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.favorite_products_id_seq OWNED BY public.favorite_products.id;
          public          postgres    false    215            �            1259    33422 	   productos    TABLE     �   CREATE TABLE public.productos (
    id integer NOT NULL,
    img text,
    name text,
    description text,
    price numeric,
    categoria text,
    stock integer
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    33421    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public          postgres    false    210            $           0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public          postgres    false    209            �            1259    33531    user_products    TABLE     �   CREATE TABLE public.user_products (
    id integer NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.user_products;
       public         heap    postgres    false            �            1259    33530    user_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.user_products_id_seq;
       public          postgres    false    218            %           0    0    user_products_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.user_products_id_seq OWNED BY public.user_products.id;
          public          postgres    false    217            �            1259    33440    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(60) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    33439    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    212            &           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    211            r           2604    33463    cart cart_id    DEFAULT     l   ALTER TABLE ONLY public.cart ALTER COLUMN cart_id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart ALTER COLUMN cart_id DROP DEFAULT;
       public          postgres    false    214    213    214            s           2604    33501    favorite_products id    DEFAULT     |   ALTER TABLE ONLY public.favorite_products ALTER COLUMN id SET DEFAULT nextval('public.favorite_products_id_seq'::regclass);
 C   ALTER TABLE public.favorite_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            p           2604    33425    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            u           2604    33534    user_products id    DEFAULT     t   ALTER TABLE ONLY public.user_products ALTER COLUMN id SET DEFAULT nextval('public.user_products_id_seq'::regclass);
 ?   ALTER TABLE public.user_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            q           2604    33443    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    212    211    212                      0    33460    cart 
   TABLE DATA           F   COPY public.cart (cart_id, user_id, product_id, quantity) FROM stdin;
    public          postgres    false    214   �3                 0    33498    favorite_products 
   TABLE DATA           P   COPY public.favorite_products (id, user_id, product_id, created_at) FROM stdin;
    public          postgres    false    216   �3                 0    33422 	   productos 
   TABLE DATA           X   COPY public.productos (id, img, name, description, price, categoria, stock) FROM stdin;
    public          postgres    false    210   �3                 0    33531    user_products 
   TABLE DATA           L   COPY public.user_products (id, product_id, user_id, created_at) FROM stdin;
    public          postgres    false    218   �7                 0    33440    users 
   TABLE DATA           C   COPY public.users (user_id, username, email, password) FROM stdin;
    public          postgres    false    212   �7       '           0    0    cart_cart_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cart_cart_id_seq', 1, false);
          public          postgres    false    213            (           0    0    favorite_products_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.favorite_products_id_seq', 1, false);
          public          postgres    false    215            )           0    0    productos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.productos_id_seq', 12, true);
          public          postgres    false    209            *           0    0    user_products_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.user_products_id_seq', 1, false);
          public          postgres    false    217            +           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);
          public          postgres    false    211            |           2606    33465    cart cart_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cart_id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    214            ~           2606    33504 (   favorite_products favorite_products_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.favorite_products
    ADD CONSTRAINT favorite_products_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.favorite_products DROP CONSTRAINT favorite_products_pkey;
       public            postgres    false    216            x           2606    33429    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    210            �           2606    33537     user_products user_products_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.user_products
    ADD CONSTRAINT user_products_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.user_products DROP CONSTRAINT user_products_pkey;
       public            postgres    false    218            z           2606    33445    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    212            �           2606    33471    cart cart_product_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.productos(id);
 C   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_product_id_fkey;
       public          postgres    false    3192    214    210            �           2606    33466    cart cart_user_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 @   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_user_id_fkey;
       public          postgres    false    212    214    3194            �           2606    33510 3   favorite_products favorite_products_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.favorite_products
    ADD CONSTRAINT favorite_products_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.productos(id);
 ]   ALTER TABLE ONLY public.favorite_products DROP CONSTRAINT favorite_products_product_id_fkey;
       public          postgres    false    3192    216    210            �           2606    33505 0   favorite_products favorite_products_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.favorite_products
    ADD CONSTRAINT favorite_products_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 Z   ALTER TABLE ONLY public.favorite_products DROP CONSTRAINT favorite_products_user_id_fkey;
       public          postgres    false    212    3194    216            �           2606    33538 +   user_products user_products_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_products
    ADD CONSTRAINT user_products_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.productos(id);
 U   ALTER TABLE ONLY public.user_products DROP CONSTRAINT user_products_product_id_fkey;
       public          postgres    false    3192    218    210            �           2606    33543 (   user_products user_products_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_products
    ADD CONSTRAINT user_products_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 R   ALTER TABLE ONLY public.user_products DROP CONSTRAINT user_products_user_id_fkey;
       public          postgres    false    3194    212    218                  x������ � �            x������ � �         �  x��U�n�F�^���^��� [��l��%��UUB�p�be��o��E�G���xw!u�\�a眙���}��V[k;�3!��.�4(��mX(��B�ZK�NiY�)��1r����ep����ep��77�AB���V�u�ѫ3U7xX��d[�,���^���6~	�ե4��JY���}+���6�(���\�JP�/�jؔ0]t_I���ӌ|��6x+�R��B+%�����#�ig�7�wؑ���r��ǫ�B6�l�</^��jze�z��n�K]}#4%�cR��][�^� �,!J[�Ȫt#�Lm�Mˬ��UD�x����-�UShGn[��b����(H�l����.�q�� � U+�4��<�Ś���L���6!��0NhB.t߃�a�QS��X�`.�b>�E�߀uΛ2�|��;���Øz�oQ���vh:�;�B7MPJg��t�ԍ��p1�#J�F@DL��%�(�Ӕ��k�`��",do�����m�f܀^bcd'b����'���$a�Hq��r(0�`70���&y���@�T5PB�}9X�<~�u����)��z����!Zh:����U4�#^���x�Ak�P���d��=��g��$ �k&x�?j`UXSPH��[�OrP����H��|�Ԑ�Z��.#E��U
K�%�l�Θ6�`ڐ��)�A`p;���vr�uI�c]n�a��
F�����������<C��4x��"��X�1�(�w��zRA6����N���Ka�u��8"��K��DG��=����~%Z�����0����G�,O9ݻy������:��q8խsaa�;=��۩��g2���Ê��1k<8Ҹ�Sʣ���i�oP>�F����V�����o�S\�`��-�A����Za�f����ԉОkeF{�:��\XZ[��,�}���W�y���g            x������ � �         �  x���Ɏ�H�y�:'�Yo�j�`��F��I�`0k��O��3�Hu�[|�P��&�Ǥ+���n�i�����uRV k�������H���7���e��c1Ց_�
V.�<���Ԃ{$e��[�I��|�30L&�*��Ю��vB#.=w�ƂL����sN��qQ�%!n��=s�9���r>mYJ�琊��º>OC;�7�[���=Q��|��#�cHH_o�E~ָv������l�Iw�S>$�4���0�[:�%X�x��M��7�|!T�����b���V$�	h�Ss�h��n�
��O��4�sAZR���W��s��;)��)��c�쬤�%#��Lvse��n�:0?�Ù�p�l��&A��i�S���9ͨ�飗�ʸWa�<	z���~�]�i��X#i��h���X����e�J#��F깭�����k%�,�K����^P�"�v�rŰ����� ��w��fm��{A���آ��@~Ǐ��\���%��\H�ܙ�hi���)�9�=��5��Rw"�z���w��,4�#�\�����YA�KwUPM�����(C��r�3�ddY�W��eM����6ly�9��3��{��&�8��r�[ |pMU���P�0w�h�����;F�
\�?���>P���:�����;��A�<֕�ДV!׆s6��B�Ula�*�� A� �x��     