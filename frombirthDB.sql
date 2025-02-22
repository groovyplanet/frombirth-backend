PGDMP      0                }         	   frombirth    16.3    16.4 ;               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16446 	   frombirth    DATABASE     u   CREATE DATABASE frombirth WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'ko_KR.UTF-8';
    DROP DATABASE frombirth;
                root    false            �            1259    16855    age_gender_statistics    TABLE     �   CREATE TABLE public.age_gender_statistics (
    age_gender_statistics_id integer NOT NULL,
    gender character varying(10) NOT NULL,
    age integer NOT NULL,
    avg_height double precision NOT NULL,
    avg_weight double precision NOT NULL
);
 )   DROP TABLE public.age_gender_statistics;
       public         heap    root    false            �            1259    16854    age_gender_statistics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.age_gender_statistics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.age_gender_statistics_id_seq;
       public          root    false    227                       0    0    age_gender_statistics_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.age_gender_statistics_id_seq OWNED BY public.age_gender_statistics.age_gender_statistics_id;
          public          root    false    226            �            1259    16687    children    TABLE     �  CREATE TABLE public.children (
    child_id integer NOT NULL,
    user_id integer NOT NULL,
    name character varying(50) NOT NULL,
    birth_date date,
    gender character varying(10),
    blood_type character varying(10),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    birth_weight numeric(4,1),
    birth_time time without time zone,
    profile_picture character varying(500),
    birth_height numeric(4,1)
);
    DROP TABLE public.children;
       public         heap    root    false            �            1259    16686    children_child_id_seq    SEQUENCE     �   CREATE SEQUENCE public.children_child_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.children_child_id_seq;
       public          root    false    218                       0    0    children_child_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.children_child_id_seq OWNED BY public.children.child_id;
          public          root    false    217            �            1259    16715    photo    TABLE     �   CREATE TABLE public.photo (
    photo_id integer NOT NULL,
    record_id integer NOT NULL,
    url character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.photo;
       public         heap    root    false            �            1259    16714    photo_photo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.photo_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.photo_photo_id_seq;
       public          root    false    222                       0    0    photo_photo_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.photo_photo_id_seq OWNED BY public.photo.photo_id;
          public          root    false    221            �            1259    16700    record    TABLE     ]  CREATE TABLE public.record (
    record_id integer NOT NULL,
    child_id integer NOT NULL,
    record_date date NOT NULL,
    height numeric(4,1),
    weight numeric(4,1),
    content text,
    video_result integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    title text
);
    DROP TABLE public.record;
       public         heap    root    false            �            1259    16699    record_record_id_seq    SEQUENCE     �   CREATE SEQUENCE public.record_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.record_record_id_seq;
       public          root    false    220                       0    0    record_record_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.record_record_id_seq OWNED BY public.record.record_id;
          public          root    false    219            �            1259    16815    refresh_tokens    TABLE     �   CREATE TABLE public.refresh_tokens (
    user_id integer NOT NULL,
    token text NOT NULL,
    expiry_date timestamp without time zone NOT NULL
);
 "   DROP TABLE public.refresh_tokens;
       public         heap    root    false            �            1259    16661    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    kakao_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    email character varying(255)
);
    DROP TABLE public.users;
       public         heap    root    false            �            1259    16660    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          root    false    216                       0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          root    false    215            �            1259    16728    weekly_report    TABLE     "  CREATE TABLE public.weekly_report (
    report_id integer NOT NULL,
    child_id integer NOT NULL,
    risk_level integer,
    feedback text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    is_read boolean NOT NULL,
    video_result_count numeric(4,4)
);
 !   DROP TABLE public.weekly_report;
       public         heap    root    false            �            1259    16727    weekly_report_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.weekly_report_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.weekly_report_report_id_seq;
       public          root    false    224                       0    0    weekly_report_report_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.weekly_report_report_id_seq OWNED BY public.weekly_report.report_id;
          public          root    false    223            S           2604    16877 .   age_gender_statistics age_gender_statistics_id    DEFAULT     �   ALTER TABLE ONLY public.age_gender_statistics ALTER COLUMN age_gender_statistics_id SET DEFAULT nextval('public.age_gender_statistics_id_seq'::regclass);
 ]   ALTER TABLE public.age_gender_statistics ALTER COLUMN age_gender_statistics_id DROP DEFAULT;
       public          root    false    227    226    227            K           2604    16690    children child_id    DEFAULT     v   ALTER TABLE ONLY public.children ALTER COLUMN child_id SET DEFAULT nextval('public.children_child_id_seq'::regclass);
 @   ALTER TABLE public.children ALTER COLUMN child_id DROP DEFAULT;
       public          root    false    217    218    218            O           2604    16718    photo photo_id    DEFAULT     p   ALTER TABLE ONLY public.photo ALTER COLUMN photo_id SET DEFAULT nextval('public.photo_photo_id_seq'::regclass);
 =   ALTER TABLE public.photo ALTER COLUMN photo_id DROP DEFAULT;
       public          root    false    222    221    222            M           2604    16703    record record_id    DEFAULT     t   ALTER TABLE ONLY public.record ALTER COLUMN record_id SET DEFAULT nextval('public.record_record_id_seq'::regclass);
 ?   ALTER TABLE public.record ALTER COLUMN record_id DROP DEFAULT;
       public          root    false    219    220    220            I           2604    16781    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          root    false    215    216    216            Q           2604    16731    weekly_report report_id    DEFAULT     �   ALTER TABLE ONLY public.weekly_report ALTER COLUMN report_id SET DEFAULT nextval('public.weekly_report_report_id_seq'::regclass);
 F   ALTER TABLE public.weekly_report ALTER COLUMN report_id DROP DEFAULT;
       public          root    false    223    224    224            
          0    16855    age_gender_statistics 
   TABLE DATA           n   COPY public.age_gender_statistics (age_gender_statistics_id, gender, age, avg_height, avg_weight) FROM stdin;
    public          root    false    227   NG                 0    16687    children 
   TABLE DATA           �   COPY public.children (child_id, user_id, name, birth_date, gender, blood_type, created_at, updated_at, birth_weight, birth_time, profile_picture, birth_height) FROM stdin;
    public          root    false    218   ^K                 0    16715    photo 
   TABLE DATA           E   COPY public.photo (photo_id, record_id, url, created_at) FROM stdin;
    public          root    false    222   PO                 0    16700    record 
   TABLE DATA           �   COPY public.record (record_id, child_id, record_date, height, weight, content, video_result, created_at, updated_at, title) FROM stdin;
    public          root    false    220   dR                 0    16815    refresh_tokens 
   TABLE DATA           E   COPY public.refresh_tokens (user_id, token, expiry_date) FROM stdin;
    public          root    false    225   rj       �          0    16661    users 
   TABLE DATA           Q   COPY public.users (user_id, kakao_id, created_at, updated_at, email) FROM stdin;
    public          root    false    216   +m                 0    16728    weekly_report 
   TABLE DATA           {   COPY public.weekly_report (report_id, child_id, risk_level, feedback, created_at, is_read, video_result_count) FROM stdin;
    public          root    false    224   Wn                  0    0    age_gender_statistics_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.age_gender_statistics_id_seq', 512, true);
          public          root    false    226                       0    0    children_child_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.children_child_id_seq', 110, true);
          public          root    false    217                       0    0    photo_photo_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.photo_photo_id_seq', 255, true);
          public          root    false    221                       0    0    record_record_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.record_record_id_seq', 308, true);
          public          root    false    219                       0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);
          public          root    false    215                       0    0    weekly_report_report_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.weekly_report_report_id_seq', 57, true);
          public          root    false    223            i           2606    16876 0   age_gender_statistics age_gender_statistics_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.age_gender_statistics
    ADD CONSTRAINT age_gender_statistics_pkey PRIMARY KEY (age_gender_statistics_id);
 Z   ALTER TABLE ONLY public.age_gender_statistics DROP CONSTRAINT age_gender_statistics_pkey;
       public            root    false    227            Y           2606    16693    children children_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.children
    ADD CONSTRAINT children_pkey PRIMARY KEY (child_id);
 @   ALTER TABLE ONLY public.children DROP CONSTRAINT children_pkey;
       public            root    false    218            [           2606    16862    record idx_record 
   CONSTRAINT     [   ALTER TABLE ONLY public.record
    ADD CONSTRAINT idx_record UNIQUE (child_id, record_id);
 ;   ALTER TABLE ONLY public.record DROP CONSTRAINT idx_record;
       public            root    false    220    220            a           2606    16721    photo photo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (photo_id);
 :   ALTER TABLE ONLY public.photo DROP CONSTRAINT photo_pkey;
       public            root    false    222            e           2606    16821     refresh_tokens pk_refresh_tokens 
   CONSTRAINT     c   ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT pk_refresh_tokens PRIMARY KEY (user_id);
 J   ALTER TABLE ONLY public.refresh_tokens DROP CONSTRAINT pk_refresh_tokens;
       public            root    false    225            ^           2606    16708    record record_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_pkey PRIMARY KEY (record_id);
 <   ALTER TABLE ONLY public.record DROP CONSTRAINT record_pkey;
       public            root    false    220            g           2606    16823 '   refresh_tokens refresh_tokens_token_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_key UNIQUE (token);
 Q   ALTER TABLE ONLY public.refresh_tokens DROP CONSTRAINT refresh_tokens_token_key;
       public            root    false    225            U           2606    16669    users users_kakao_id_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_kakao_id_key UNIQUE (kakao_id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_kakao_id_key;
       public            root    false    216            W           2606    16783    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            root    false    216            c           2606    16734     weekly_report weekly_report_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.weekly_report
    ADD CONSTRAINT weekly_report_pkey PRIMARY KEY (report_id);
 J   ALTER TABLE ONLY public.weekly_report DROP CONSTRAINT weekly_report_pkey;
       public            root    false    224            _           1259    16880    idx_photo_record_id    INDEX     J   CREATE INDEX idx_photo_record_id ON public.photo USING btree (record_id);
 '   DROP INDEX public.idx_photo_record_id;
       public            root    false    222            \           1259    16879    idx_record_child_id_date    INDEX     \   CREATE INDEX idx_record_child_id_date ON public.record USING btree (child_id, record_date);
 ,   DROP INDEX public.idx_record_child_id_date;
       public            root    false    220    220            k           2606    16709    record fk_child_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.record
    ADD CONSTRAINT fk_child_id FOREIGN KEY (child_id) REFERENCES public.children(child_id) ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.record DROP CONSTRAINT fk_child_id;
       public          root    false    220    218    4185            m           2606    16735    weekly_report fk_child_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.weekly_report
    ADD CONSTRAINT fk_child_id FOREIGN KEY (child_id) REFERENCES public.children(child_id) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.weekly_report DROP CONSTRAINT fk_child_id;
       public          root    false    4185    224    218            l           2606    16722    photo fk_record_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.photo
    ADD CONSTRAINT fk_record_id FOREIGN KEY (record_id) REFERENCES public.record(record_id) ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.photo DROP CONSTRAINT fk_record_id;
       public          root    false    4190    222    220            n           2606    16824 %   refresh_tokens fk_refresh_tokens_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT fk_refresh_tokens_user FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.refresh_tokens DROP CONSTRAINT fk_refresh_tokens_user;
       public          root    false    4183    216    225            j           2606    16784    children fk_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.children
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.children DROP CONSTRAINT fk_user_id;
       public          root    false    4183    216    218            
      x�]�I�D'��axb:������p��_7bYQ�3������I%��w��>����T�.�4��1rO��9"b�����jLK㤑w�����ێ~���ly��wY!R%3sg��Ks��^�ƈty[��;�k�>1��.24f0k1K_���i����w+n�-�����[/�D���w�18�H�'�\��p��54ƶ�OZ]�d�VǱH�v��N�q-iY�45�c��פ߽�5��h-!/����M�U�YZ~-�h�#sM��E
VT)��̽�d��X�
��D0/���(��,9�34blF�Vd^��v��k��a'2l�ؤ̭,����;�y@Kd�\�؃E����*&�%DZV���0�ԛѫ�.X�(�`#277#sw+2��#�x
�Ͷ�C¾��n܄¹�/񲭛�T��%���~	�zI�mQ-ey�I�%0�[`��iFںE�>��
o����L���ݛ�н��O=����=���4�ڵJu�Ŋ�[����#������{+��{��?�ڷu���X���ތ�{3����H �7s��a3�e����ȁYd�@�S`~��:5չS�f��t)�Ξ��h��:�"������3[��vHe]�����/h���/��N�{A͋���o�����1E�!�h7����|-+2/�~*�O�F$�f����:�����%���Ww<�T��@b�>Br1�	�8�.�#t�^��x �u�R_W�!v����<�_��`i-�s�R��"�y���i$�s<�����vL|�����ߐ,��ɵ���L#��>�gu���U�r��$d��}8B��2B����W]m������?HB~�� 	�Q����t������E�Ma��?��h���5B�f�~٭�@���i� zC�q���$��oHB\��$��oHB\���z�5�M�3��<$!�<����@��I���W�=��ci�B��n�<�ظ��tA�����[�!�pK���|���2{         �  x��U�jG]�|��@5u��]��J��a�~Y��6� ['�@p�B����I6�����_Ҵ�!��穑�0����s�=������y��iv�� i0��L}�Yh�S��|��@=�\aaP	�4FqWG����i���X��1��s���i�iz������re㍟�|���/_<Q�
3�
��9�/�^�o>,Q�6�Q=Z�B3,�E4��eXT�2���<[�k�QDjqyڿ����oj�N�vj|��d.,�h�X�*��$%MT�#���_W��w#R���B���$,�08V%%�V@M���::<n������7��)�9W2��3��Pe��_�����t�Ns�^��Tڒ7�9pa�{/�=�G'qh|܎]̲�ffb�V�
��L��2�����9W�nb�5���E�޲o��bs��We+'���yu���{g�[*QΑ��­�["F�"���#+3K{QX�:`G]5�?�������/��Y䒁(F�Li��P ��K���!W�\�w�����_�]�����)) !�������X͜�� ���X�ʵ�R��G#u�ӹ����������E���V���@����{p�g�>�8���t�@E����2�WlC��o]�O:Ȃth+�t�]S�� ���8�w��?��e��9!~(�"� g�e�D.٦���bC�
B1���f�)�2s�^,����8]�Sj[!
��`���mR�,+wb�"�Kb '*�X򜧔��zG������ Bd(<�|��n�;���%%�m�	���M����čX.��L�:1qbkSg���h�i%b��������E��v f�@ {�Bc�}:a5C��|lDS!v�졺�)�x��,���p�Kd�Uw{Lu�bGފ�Y4�U��J4n+��7T�7v�1�p����t�����B�T��ڤ��������ˋ�NuJ�A��0켳���mqr�����d�?x�	�           x�u�Mn�6��z�x�p�H^jfÉ��?1�Q@ )*M��C��Y�Y�Qt�Ag]T�=�>�a���܏���8u������].
N@�e�谶)ת�La��˯���_�����?�$�!.Q�ˋ��_��KH���Lʴ 	�T����h��Zm)`7+�*#Lm��V��{���LK��@��$.�s��T|ҩ���j͕V�MQ��3`f�OT����'��K���@�3��+X	Ih��8L����B�<j�ܞ�����)�P;b{�̦�\�U;���Ӝ)�[H~�7��mW���n�އÓ�Z�o������[7]�l]���ͭ���JC���Z��_����q��a��1��[��8�j+�:��ݛ��sw7o���ӓ��Ϋz��=~>*S�����yu�1��������/��O���O�U�j��)Yh!�9zo�	X�҉���T��NN��eӲ��$_!����u��3���yߧ�-o�h}(`~����]a�f6� \�i���U����:����
D�O#X!Ѻ/�y�,A�E����Rbp�7z���@ϵ>X�~�I���8R�m*U9bbg"�%�4!$�fY[�4�D2�֛�&��Ԙ���dSAKsQr1ڬ.CR�E9N�r�� �[?9���N�n}��:f��8YN�w�3h�[��_��:�bd5-u�܎Ħ
9�d�DP\����TGy��2i�iԑR�VP]�);I�Mm�.h�C	dT�K4�|�H���_,� �z-�            x��\�R[�㯐=��TU1�����3�q�nQpd$�K ���0��	���sg������zȎ���Aگ��+3W��K�-�I�<����g뷿�6�d�����l5k���?��Mm=��5v�;L��e-kͳ�9KG���^����\���{�a��z�c��#|�qΆMv:g��;K����Z�n�˔^�x1_ g���{���e?{?���k�/j��[v��.�56d7�kM��v8�>��mvư��i[�����=�Sc�C���p�eǩ�}m5;�At��t�����.�l<s�Y��p�w�)��4��)��3}G������t��c��i�&	۠�+���~�].i����lw�i�^�R0f�K�5)U�95��q��Ы��1�/w��荿��6�x+t��VX��m�����z �i�Y����ǃ��Yk���I���j��:k7n�	v�h�M��DA(vc���V��]�O��d=81't���'�G~�7|�p�<��d�5�'�e/c����K��g������Q�%aDs�z0�8֬��"���T:�����D	~��,i�&���S�[qP����gq.���zǞ����p����{������;��[����a�F���[qd��_�w�b�nq?�	�z���X߅�­�Q�L�$ю��݆ﻤ7�����Q=I�F���5��8�u�{bh�iy�[���hN=,"k6]���>W��h��'5e 貏��h� ��^f7p�oN��d= ��/��5v݃�!
ٙ��_v���
T���;]=tk��3B��;�	�ö�iq �!B�O�բMP���>}?3��V��	�^������rv��gS6N�Wm8Y���`7M8�6m��Ҕ��j�� �����D��8y�'�����Ms� �8u���@�ۈ� y������{�r��������~�''hÀ�Zs`\�e\�F�B@	BqC��b�2/שrګǔ	;a���8\�HkHjᰝM������!�8�g�\�h���>�<ܞ��1{B���Se�.Ms|�F.3xl������[n	\�f�����^�p/�f����ׂ1r��{ή��@(hidM�O�5����r�
wSm��Ϯd>CsE�E1�Q���4p3e�69OԲ�#<*���-�n�N*,,D';���4�4u̗4�m4�"��4��㏦��^Q���n�>�M�t�.��m�XU\���[�d�7)�pQ���ⰹ�?�HB�<8b{���
%���l�eL��:k���{c�F����?3��kC{�Cй�m�����a+��Z���&��|�dG YG�B$�6��t�B����V��7��=��$��g���@T[^��j;qw�ވ�@DCBk/�s��qk#�m#��eyh$�m$����i�q��"%�|��0�M�v�O��_:N)ix�=)m53�{+�9��U�_�d�)] m[�Qi<(+��/����1�AL����G����yL��Vn�[8j2�zն�z��7���ܨۅTd�VX;���z5̾~�z�7��&<YL�]wgRf.�`.��ss�"�S�[	m[	6�7� ht��/\��Wt��ڲ��������^�P��ՓBC�9�,h&5i�Y\M
*p����X,0�g�.�[�-������N^��sPwH�O��H��?]���(��#��"���p�`���=�P���"$Oxꇦ�K櫓B�����xq=HpW*��f,oh޳5�+A�B�4���{#�0 @4C7�O���U��җ*�^n��!tB��/�s���v�}�-k��y�W-{ �-P
����t4<>	����ᎂ�)��}��kl	��ba��I3{I��m��gP'`f���թX��$l�$�k�Fه; �₠��GF�����8�s�Ft�aS��:I�GaW�#���ۼ�Cq
4������G�lT���}����x�2�:��X����v�ex`��p�W8�Ĉu��X7�9�N �{\w��	D�����89��T���j�����������<�d(,YK���!���w���Q��
ܟ�O��dך$���`<�s#����ի��I��XI��Vg�����'��f�����8�χD�M8�g���x�G�Aa�cM�i���D%]�'���`9�-�~*�u`n�h��އ�Ϣ{�<y|RL��&F<��L�n#ڔ�f�$|R�j���F���S���>}$|�.��t�%Nոr�a���!%['8�f	6��O\D��gpO��T�F>e����I��3��Zd�c̊�y���g:�1��t=l����0sj�q��ȳ�g8QN&��2���^.(0��������}�/��Cb�E�
�?o�δЁvڥ�g]�c���Fع�؃s��8R�$KV�U{�˹䥄m��e��#���Q�*U��&{�z�GA#�����9y�9�S�q~Hy�}̴��)Ri`���o�:#�:4��W�_� Y(�"�و���!����z9~���\"�e��ww��A�G�Ad=�f��r�Ķ�F�i�l�����?�D{��st�V·��O7/c����8	����m��fM�'dB��l����CVǍ��r�7�j0�A�vr���y���X!/9�3�L,7\?�O	'Uͩ�0F�M�r6a�Ƈ������sBF]'��U���Û]�ٔMeG#z6%�V���@�P����.���e�����LN`"+����+��;��Ygv3!8Q�
�`�0�ٳ�`zf	E�ݸ{P�ǆD3�0%�"?hp�֟ҽ� ������)��ϲݹ��>�e}FFw�7'�H����l>�z��⼰^Ė��~��$�^�iUp/��O���^�p.��4*�h@���@�6̊��6�u �沰 u8�[��z�������̶��0�7��x���n1�����K���MH�IV���u^n���ce�4��Φ(���a�X^�*-3h�~��E�˓O�@#�@�A���� nv	��.m�˒�8��6�,�%�&:��&��RQr"��[X��uOLYZ}�Qͣ��f_���ʉ� }�n�*D�������T�$s�Afe�gp+�a	E�p����eGN�	%s4��A�%�/��O��=	+`3��֐��G��Mz�y�[S�%�CޣATr����!��UM:hf_��d�Ѻ�h
��M����Pso�*$��47U�%�f=,���2e"S�8�B��>ҘC����i:�t��܍�g��b��)��*������a�U�^M!h��i�@�f��Yv������i�R�o��	cQ�����%d��1UR��D&�'sJ$�K���pS�ȏ���,�}���6�XU%U�\�ID�da�K������p�i,R���D�ͥ5�X@D8��W{���O��ROE���.P�%e�bFM"X�/��J��%]=�D���xئ��٘����&ͺr)��ka�G�O�t��&�@Ŀ\=���������0<��H0�#��(�ٱ��E��E�x���Bj\�4iM��3w&�9���t��4��$�7���7seSr,�7�)0���e�@����U�gt�xRrӅ��<1�P�KU\�� q�'ټ'�m�]�J̲�ߚ��Dg�e���'N�Ӹ|�C�U~0;r#�M@�����h�3��
$TD���o_��R �7��Cn�\q�PD�y�	f��A\�s��w�bF��f�^a�!`��	᝗��՘b�3��y�Gзkw)j�xn�{R��'l{Y�"ל��(�űLp��yJTҶ�UD�'��!'��N���,	��)�)v۩�n����k�#��C}��f+e�(��Ǉ���/��z貣[*\�D�:��4ћ&��qY�<\WM H���r|�� �``�.�r�]��ubH,�[U�@�'25��KWVEʘ�N �Z56�@P��>������/ܕ<�_l�!1�m�
v���&���Q��QO� �  �o�%Wēp�,l'�m�+L8�qW��	-/�P*ǻP�숇����'eE$^qՎ�*QZ{0�8����`}��oƝ��ti�>&�֤�����y�&@"�sI�2�V+�&��4�E�@�����˷$ ���L���eF�S*���@��p�����i�^=�NeW����&ͱwq��K�&�
<�~��y��xi�#R-��7s��E�$�⹺62�	>W=��R���=\I57����`��俴� W!\�S��)R��RP�ܫ�'�NO�S@D��S��͋�:<W�5N'�mN|c|,:��8�
S��7]'llt+�k�A	�,���S
���O6#��3/�&���I�A�Ō3����#v�~W%�?�.kU;���d�
��/�hN��'}%�{�D�k��B��a��;�*��B� K��@$@F�CA�-E��*5)���J5{N="��΀d 
�l�U�5�4�&�u
��D�����]D�����/#"8�p�u�:t]�r�H������]��7���	9D��iq�5��,\��Ҫ��R�h�{a)�d��ȷ��޳��\���~�^�N=
C�o��謠���zT��"�[��ѐ���g��S硐&v�:�,֤͹�{d8��n�v�d{U��%e��&w�t1Oz9٫
ze�[�H٦ݞ�Ch-��`=@B�gw��?2y�_Uzփ�ş����ƓJb�R�Y�е�K����e�����b�����M#��R��.3�3Q�� �5���������T��>�7Vٔ7�ҙ�&�����^�8��r�˛����f��Ț�fY��DLI,k�a�`�$N�a�����f5��;���dA�W�¹�E1�_l%���v�8��{.7?2��S
8�["�4Ր�|� z#��l#�Ya�}z��r��y%�[���
�E
~�[�x�	���҅Nx���~߱Cwׯ���Ȯ1�x��o��`Z���-���,��V�2���.-S� Q��O�$Iل���^�)�Y!].]��%O����B���y_<Lt��*l�;�U��A�O����h�go!���fM�.^5dMp&�t:Ͼ��%�)�h���c?�0�����&V,}���O����R�^�E�W�p��>�po�fV7F~������cJi:Ps���<7&�%�P�o������$�ߗ�uk���q�.Hߙ��k�.����ꇣﲛT��Ƶ������Bk1)G���f?��=�aj�ח����U]x5.�&A�z�9��l�n��5,N��X�Q(�k�j���h�-���/;$@��9>g�[��Rt6^��-r^I�J��x3���/���.��!�����PT�A3�W���V�PJ��\F{���n6�&�q���X�g���/e�.�pϪ�K��HK������$�ܺ�YN��x>dv#/��|^�/�b6N86N��Q�+��3�ٻ��������Y�!�n��l��&�b4*��J�2�)�<�� �%���F~P��H�eK4Fz��9�cY5�p��@sm��r��� �VE,���V_�J�?���~�����F<�j���6�_ �Ŀ&��a�\���3��SA�QG�V��!���$S��WP�z�,�{��b��~S����P�a����x��~�SX����G{��1iUZ�4�5�)���+�\�(�Ɖ�J�0�w}�׆����Z�	[d;������^�?�Mz~��<�b�XO_�p���Q09�����x��HL�|�e�}�]xc�ц��a0'�K�RUߔ�?��iy���mݐ�8黭Y�~��Mh_����Bզx#Ay}�t����Σ~�78Ь?�$�n �R�M�<0�Vv�K�^�_:���y��ai�H���0��]�����P�)�A�?Ŧ��誘^���+����o�хll9��/v�"�Ud��UD�!j���zE�+<]���A,�������|z����O�C�f�^7'��Q,#�W�x��/ya�s|�H�MG��_�z�_.b�O         �  x����n�@�uy
_@2w.�
�ce[�IH���[��?��6���L2��/������K3X�{�u��Xr(�KW�2{��������v�9���B�E}w#�u�N�V/���n��,C}߿G�|���ےq�ǑL_�����de��?�ָ w ҆�X`�6E:��TC����k�}#ܐ目�J���d&ZuO<���s�Η�SUNa��#������{�?l#ւئ�&D��X��arS'��]'
OI�*��Cj�JN�n>I�-�5��E���@X�t�Y���q�7;�m�s�wm؆����L�!���^V�ED��ʎ��~�g��j˧f��A/^���(���H�$�ڛ��g\}�0lAbcÆ*;� @4L�ݕ.p�%�1��ܘ�n�.8sf���(k'���!��7��i~?���N��@�_�1w�و؀�Q���m����͠_x׭P3� �hE��d�=7���<N�O������b���t�K�V����O�-�lJm�t�U+��/+~�B͝;k��VHNU��sי�:�FDa����z�.4fE�a�k拈+Q<��W+�4l�mb�a�j�vg����uyD\�(~�e�H�r콮i���L��q�I����kΥי�l���(���Y6a:3���G�4�/%���      �     x�]�Kn�0D��)|��I"��	z�l����Dm�ܾR
4B���`���1CG@�A܀��Ps����[�^��]�������VZ	���=&��b��u:Nˁ}��qO�_?���H�1	8�Up9/�m|,tР��E���%1;����_���cc`��&�&�2�|L�ɇ�/&\��m�<"��Z�b֗�к �c����~<@1��t��kQȳ��@��D�@!@�����O{��73��0`H$u*��Η��ym�����z�         Z  x��UmR�X�W��P! "����Y�,@4me �X�v�c50EW�/;Tc�~ro�0羄 =:����q�9���J�8���s?�vT�]�M@є����P{P2,Ӫ�V.�Q��0�xJ�j������j������J�:)�Ԭ�|�����<n���Q�T��k���qR�����Q���*r�,��;�e�2���$���+�jO���C�{����M���{��
���V�����.��[ʷ$δ�$n����:�m@z�/�Po����vh�P�t�BX��)nha�?u��Vt���Z�pi�'�l�+?�Ft����{��>��V��
fn-=?�ݩ�P�mM�ہ�	!=~t`-l��َw*�=�8�\ڲ���rnId��� O�w?FI�pw�>.��lw��]���5��/{��*=���F�-�7����}};��gP���m��ACW �_68�Ԟ��$��S9Q���f�(��<��|�`I� l:�n�L��t�e��S�M��;l��i3Ҥ����[( �Y]ٵ,����x��Ro-56�p�7J~����+B�Q`����U������hq)��Q��Xq4���	�*�:4�A�0�E��J7�U�����cp�c�ݛ<F�0N�����I�eW�_ه;!I�c��P`��=<�
Z��Z;zi��2���_�B��m��͹������c���S�l��rw#
~jv�t�H���1��p��M���A�lB�kQ2Y�r{=�N���U�@�p�Rcv��)��F�;����6�O�˙�p Z�Ͼ���h��<P}'�ikEs[�ߋ!�fo"�:�}zl�ĭ�,��;q��S��qz��BB����[f��Kz�g��Ih�h�V_4ڻ	�ҳ��G�Eu�?$o�rx�н�i�.m&~�;1v��#8<�E���S��0ƙ�ge�l'���t.:<�ւ:�g��;� "�կ���l���%�^s��>~����f��ܿF2�t���(�
�?��)����_�g^ApҳANiH
�"[�C/dN�fB�\ʪ���R��E���H�1t�w�P�5��#o�lj��Y��I>�%����9u��{.���I��7cd��Y�>���S��     