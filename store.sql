PGDMP                         u           siteframework    9.5.7    9.5.5 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16385    siteframework    DATABASE        CREATE DATABASE siteframework WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE siteframework;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12395    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16386    article    TABLE     l   CREATE TABLE article (
    id integer NOT NULL,
    image character varying(255),
    created_at integer
);
    DROP TABLE public.article;
       public         postgres    false    6            �            1259    16389    article_id_seq    SEQUENCE     p   CREATE SEQUENCE article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.article_id_seq;
       public       postgres    false    6    181            �           0    0    article_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE article_id_seq OWNED BY article.id;
            public       postgres    false    182            �            1259    16391    article_lang    TABLE     �  CREATE TABLE article_lang (
    article_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    meta_title character varying(255),
    meta_keywords character varying(255),
    meta_description character varying(255),
    seo_text text,
    h1 character varying(255),
    body_preview text,
    alias character varying(255)
);
     DROP TABLE public.article_lang;
       public         postgres    false    6            �            1259    16397    auth_assignment    TABLE     �   CREATE TABLE auth_assignment (
    item_name character varying(64) NOT NULL,
    user_id character varying(64) NOT NULL,
    created_at integer
);
 #   DROP TABLE public.auth_assignment;
       public         postgres    false    6            �            1259    16400 	   auth_item    TABLE     �   CREATE TABLE auth_item (
    name character varying(64) NOT NULL,
    type integer NOT NULL,
    description text,
    rule_name character varying(64),
    data text,
    created_at integer,
    updated_at integer
);
    DROP TABLE public.auth_item;
       public         postgres    false    6            �            1259    16406    auth_item_child    TABLE     v   CREATE TABLE auth_item_child (
    parent character varying(64) NOT NULL,
    child character varying(64) NOT NULL
);
 #   DROP TABLE public.auth_item_child;
       public         postgres    false    6            �            1259    16409 	   auth_rule    TABLE     �   CREATE TABLE auth_rule (
    name character varying(64) NOT NULL,
    data text,
    created_at integer,
    updated_at integer
);
    DROP TABLE public.auth_rule;
       public         postgres    false    6            �            1259    16415    banner    TABLE     f   CREATE TABLE banner (
    id integer NOT NULL,
    url character varying(255),
    status smallint
);
    DROP TABLE public.banner;
       public         postgres    false    6            �            1259    16418    banner_banner_id_seq    SEQUENCE     v   CREATE SEQUENCE banner_banner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.banner_banner_id_seq;
       public       postgres    false    6    188            �           0    0    banner_banner_id_seq    SEQUENCE OWNED BY     8   ALTER SEQUENCE banner_banner_id_seq OWNED BY banner.id;
            public       postgres    false    189            �            1259    16420    banner_lang    TABLE     �   CREATE TABLE banner_lang (
    banner_id integer NOT NULL,
    language_id integer NOT NULL,
    alt character varying(255),
    title character varying(255),
    image character varying(255)
);
    DROP TABLE public.banner_lang;
       public         postgres    false    6            �            1259    16426    bg    TABLE     �   CREATE TABLE bg (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    image character varying(250) NOT NULL
);
    DROP TABLE public.bg;
       public         postgres    false    6            �            1259    16432 	   bg_id_seq    SEQUENCE     k   CREATE SEQUENCE bg_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.bg_id_seq;
       public       postgres    false    6    191            �           0    0 	   bg_id_seq    SEQUENCE OWNED BY     )   ALTER SEQUENCE bg_id_seq OWNED BY bg.id;
            public       postgres    false    192            �            1259    16434    bg_lang    TABLE     �   CREATE TABLE bg_lang (
    bg_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL
);
    DROP TABLE public.bg_lang;
       public         postgres    false    6            �            1259    16437    brand    TABLE     �   CREATE TABLE brand (
    id integer NOT NULL,
    image character varying(255),
    in_menu boolean,
    remote_id character varying(255)
);
    DROP TABLE public.brand;
       public         postgres    false    6            �            1259    16443    brand_brand_id_seq    SEQUENCE     t   CREATE SEQUENCE brand_brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.brand_brand_id_seq;
       public       postgres    false    6    194            �           0    0    brand_brand_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE brand_brand_id_seq OWNED BY brand.id;
            public       postgres    false    195            �            1259    16445 
   brand_lang    TABLE     9  CREATE TABLE brand_lang (
    brand_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    meta_title character varying(255),
    meta_robots character varying(255),
    meta_description character varying(255),
    seo_text text,
    alias character varying(255)
);
    DROP TABLE public.brand_lang;
       public         postgres    false    6                       1259    17408 
   brand_size    TABLE     m   CREATE TABLE brand_size (
    id integer NOT NULL,
    brand_id integer,
    image character varying(255)
);
    DROP TABLE public.brand_size;
       public         postgres    false    6                       1259    17406    brand_size_id_seq    SEQUENCE     s   CREATE SEQUENCE brand_size_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.brand_size_id_seq;
       public       postgres    false    6    283            �           0    0    brand_size_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE brand_size_id_seq OWNED BY brand_size.id;
            public       postgres    false    282                       1259    17421    brand_size_to_category    TABLE     u   CREATE TABLE brand_size_to_category (
    id integer NOT NULL,
    brand_size_id integer,
    category_id integer
);
 *   DROP TABLE public.brand_size_to_category;
       public         postgres    false    6                       1259    17419    brand_size_to_category_id_seq    SEQUENCE        CREATE SEQUENCE brand_size_to_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.brand_size_to_category_id_seq;
       public       postgres    false    6    285            �           0    0    brand_size_to_category_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE brand_size_to_category_id_seq OWNED BY brand_size_to_category.id;
            public       postgres    false    284            �            1259    16451    category    TABLE     5  CREATE TABLE category (
    id integer NOT NULL,
    parent_id integer DEFAULT 0 NOT NULL,
    path integer[],
    depth integer DEFAULT 0 NOT NULL,
    image character varying(255),
    product_unit_id integer,
    remote_id character varying(255),
    sort2 integer,
    sort integer,
    status boolean
);
    DROP TABLE public.category;
       public         postgres    false    6            �            1259    16459    category_category_id_seq    SEQUENCE     z   CREATE SEQUENCE category_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_category_id_seq;
       public       postgres    false    6    197            �           0    0    category_category_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE category_category_id_seq OWNED BY category.id;
            public       postgres    false    198            �            1259    16461    category_lang    TABLE     �  CREATE TABLE category_lang (
    category_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    meta_title character varying(255),
    meta_robots character varying(255),
    meta_description character varying(255),
    seo_text text,
    h1 character varying(255),
    alias character varying(255),
    category_synonym character varying
);
 !   DROP TABLE public.category_lang;
       public         postgres    false    6            �            1259    16467    customer    TABLE     �  CREATE TABLE customer (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password_hash character varying(255) NOT NULL,
    name character varying(255),
    surname character varying(255),
    phone character varying(255),
    gender character varying(32),
    birth_day integer,
    birth_month integer,
    birth_year integer,
    body text,
    group_id integer,
    email character varying(255),
    auth_key character varying(32),
    password_reset_token character varying(255),
    status smallint,
    created_at integer,
    updated_at integer,
    role character varying(255),
    birthday character varying
);
    DROP TABLE public.customer;
       public         postgres    false    6            �            1259    16473    customer_id_seq    SEQUENCE     q   CREATE SEQUENCE customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public       postgres    false    200    6            �           0    0    customer_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE customer_id_seq OWNED BY customer.id;
            public       postgres    false    201            �            1259    16475    event    TABLE     �   CREATE TABLE event (
    id integer NOT NULL,
    image character varying(255),
    created_at integer,
    updated_at integer,
    end_at integer
);
    DROP TABLE public.event;
       public         postgres    false    6            �            1259    16478    event_event_id_seq    SEQUENCE     t   CREATE SEQUENCE event_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.event_event_id_seq;
       public       postgres    false    6    202            �           0    0    event_event_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE event_event_id_seq OWNED BY event.id;
            public       postgres    false    203            �            1259    16480 
   event_lang    TABLE     H  CREATE TABLE event_lang (
    event_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    meta_title character varying(255),
    meta_description character varying(255),
    seo_text text,
    h1 character varying(255),
    alias character varying(255)
);
    DROP TABLE public.event_lang;
       public         postgres    false    6            �            1259    16486    feedback    TABLE     �   CREATE TABLE feedback (
    id integer NOT NULL,
    name character varying(255),
    phone character varying(255) NOT NULL,
    created_at integer,
    ip character varying(255)
);
    DROP TABLE public.feedback;
       public         postgres    false    6            �            1259    16492    feedback_feedback_id_seq    SEQUENCE     z   CREATE SEQUENCE feedback_feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.feedback_feedback_id_seq;
       public       postgres    false    205    6            �           0    0    feedback_feedback_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE feedback_feedback_id_seq OWNED BY feedback.id;
            public       postgres    false    206            �            1259    16494    language    TABLE     L  CREATE TABLE language (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    local character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "default" boolean DEFAULT false NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    status boolean DEFAULT false NOT NULL
);
    DROP TABLE public.language;
       public         postgres    false    6            �            1259    16502    language_language_id_seq    SEQUENCE     z   CREATE SEQUENCE language_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.language_language_id_seq;
       public       postgres    false    207    6            �           0    0    language_language_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE language_language_id_seq OWNED BY language.id;
            public       postgres    false    208            �            1259    16504 	   migration    TABLE     `   CREATE TABLE migration (
    version character varying(180) NOT NULL,
    apply_time integer
);
    DROP TABLE public.migration;
       public         postgres    false    6            �            1259    16507    order    TABLE     �  CREATE TABLE "order" (
    id integer NOT NULL,
    user_id integer,
    name character varying(255) NOT NULL,
    phone character varying(255),
    phone2 character varying(255),
    email character varying(255),
    adress character varying(255),
    body text,
    total double precision,
    date_time timestamp(0) without time zone,
    date_dedline date,
    reserve character varying(255),
    status character varying(255),
    comment text,
    label integer,
    pay integer,
    numbercard integer,
    delivery integer,
    declaration character varying(255),
    stock character varying(255),
    consignment character varying(255),
    payment character varying(255),
    insurance character varying(255),
    amount_imposed double precision,
    shipping_by character varying(255),
    city character varying(255),
    created_at integer,
    updated_at integer,
    deleted_at integer,
    deadline integer,
    reason integer,
    sms character varying(255),
    "check" character varying(255),
    manager_id integer,
    edit_time integer DEFAULT 0,
    edit_id integer DEFAULT 0,
    credit_sum double precision,
    credit_month integer
);
    DROP TABLE public."order";
       public         postgres    false    6            �            1259    16513    order_delivery    TABLE     u   CREATE TABLE order_delivery (
    id integer NOT NULL,
    parent_id integer,
    value integer,
    sort integer
);
 "   DROP TABLE public.order_delivery;
       public         postgres    false    6            �            1259    16516    order_delivery_lang    TABLE     �   CREATE TABLE order_delivery_lang (
    order_delivery_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    text text NOT NULL
);
 '   DROP TABLE public.order_delivery_lang;
       public         postgres    false    6            �            1259    16522    order_label    TABLE     X   CREATE TABLE order_label (
    id integer NOT NULL,
    label character varying(255)
);
    DROP TABLE public.order_label;
       public         postgres    false    6                       1259    17440    order_label_history    TABLE     �   CREATE TABLE order_label_history (
    id integer NOT NULL,
    label_id integer,
    order_id integer,
    user_id integer,
    created_at integer
);
 '   DROP TABLE public.order_label_history;
       public         postgres    false    6                       1259    17438    order_label_history_id_seq    SEQUENCE     |   CREATE SEQUENCE order_label_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.order_label_history_id_seq;
       public       postgres    false    287    6            �           0    0    order_label_history_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE order_label_history_id_seq OWNED BY order_label_history.id;
            public       postgres    false    286            �            1259    16525    order_label_lang    TABLE     �   CREATE TABLE order_label_lang (
    order_label_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL
);
 $   DROP TABLE public.order_label_lang;
       public         postgres    false    6            !           1259    17463 	   order_log    TABLE     �   CREATE TABLE order_log (
    id integer NOT NULL,
    order_id integer,
    created_at integer,
    user_id integer,
    data json
);
    DROP TABLE public.order_log;
       public         postgres    false    6                        1259    17461    order_log_id_seq    SEQUENCE     r   CREATE SEQUENCE order_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.order_log_id_seq;
       public       postgres    false    289    6            �           0    0    order_log_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE order_log_id_seq OWNED BY order_log.id;
            public       postgres    false    288            �            1259    16528    order_product    TABLE     �  CREATE TABLE order_product (
    id integer NOT NULL,
    order_id integer NOT NULL,
    product_variant_id integer,
    product_name character varying(255),
    name character varying(255),
    sku character varying(255),
    price double precision,
    count integer,
    sum_cost double precision,
    status character varying(255),
    booking character varying(255),
    return boolean
);
 !   DROP TABLE public.order_product;
       public         postgres    false    6            %           1259    17495    order_product_log    TABLE     �   CREATE TABLE order_product_log (
    id integer NOT NULL,
    order_product_id integer,
    created_at integer,
    user_id integer,
    order_id integer,
    data json
);
 %   DROP TABLE public.order_product_log;
       public         postgres    false    6            $           1259    17493    order_product_log_id_seq    SEQUENCE     z   CREATE SEQUENCE order_product_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.order_product_log_id_seq;
       public       postgres    false    6    293            �           0    0    order_product_log_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE order_product_log_id_seq OWNED BY order_product_log.id;
            public       postgres    false    292            �            1259    16534    orders_delivery_id_seq    SEQUENCE     x   CREATE SEQUENCE orders_delivery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.orders_delivery_id_seq;
       public       postgres    false    211    6            �           0    0    orders_delivery_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE orders_delivery_id_seq OWNED BY order_delivery.id;
            public       postgres    false    216            �            1259    16536    orders_id_seq1    SEQUENCE     p   CREATE SEQUENCE orders_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.orders_id_seq1;
       public       postgres    false    6    210            �           0    0    orders_id_seq1    SEQUENCE OWNED BY     3   ALTER SEQUENCE orders_id_seq1 OWNED BY "order".id;
            public       postgres    false    217            �            1259    16538    orders_label_id_seq    SEQUENCE     u   CREATE SEQUENCE orders_label_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_label_id_seq;
       public       postgres    false    6    213            �           0    0    orders_label_id_seq    SEQUENCE OWNED BY     <   ALTER SEQUENCE orders_label_id_seq OWNED BY order_label.id;
            public       postgres    false    218            �            1259    16540    orders_products_id_seq    SEQUENCE     x   CREATE SEQUENCE orders_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.orders_products_id_seq;
       public       postgres    false    6    215            �           0    0    orders_products_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE orders_products_id_seq OWNED BY order_product.id;
            public       postgres    false    219            �            1259    16542    page    TABLE     [   CREATE TABLE page (
    id integer NOT NULL,
    in_menu boolean DEFAULT false NOT NULL
);
    DROP TABLE public.page;
       public         postgres    false    6            �            1259    16546    page_id_seq    SEQUENCE     m   CREATE SEQUENCE page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.page_id_seq;
       public       postgres    false    6    220            �           0    0    page_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE page_id_seq OWNED BY page.id;
            public       postgres    false    221            �            1259    16548 	   page_lang    TABLE     p  CREATE TABLE page_lang (
    page_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    meta_title character varying(255),
    meta_keywords character varying(255),
    meta_description character varying(255),
    seo_text text,
    h1 character varying(255),
    alias character varying(255)
);
    DROP TABLE public.page_lang;
       public         postgres    false    6            �            1259    16554    product    TABLE       CREATE TABLE product (
    id integer NOT NULL,
    brand_id integer,
    video text,
    is_top boolean DEFAULT false,
    is_discount boolean DEFAULT false,
    is_new boolean DEFAULT false,
    remote_id character varying(255),
    size_image character varying(255)
);
    DROP TABLE public.product;
       public         postgres    false    6            �            1259    16563    product_category    TABLE     e   CREATE TABLE product_category (
    product_id integer NOT NULL,
    category_id integer NOT NULL
);
 $   DROP TABLE public.product_category;
       public         postgres    false    6            �            1259    16566    product_image    TABLE     �   CREATE TABLE product_image (
    product_variant_id integer,
    image character varying(255),
    alt character varying(255),
    title character varying(255),
    product_id integer NOT NULL,
    id integer NOT NULL
);
 !   DROP TABLE public.product_image;
       public         postgres    false    6            �            1259    16572 "   product_image_product_image_id_seq    SEQUENCE     �   CREATE SEQUENCE product_image_product_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.product_image_product_image_id_seq;
       public       postgres    false    6    225            �           0    0 "   product_image_product_image_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE product_image_product_image_id_seq OWNED BY product_image.id;
            public       postgres    false    226            �            1259    16574    product_lang    TABLE     �   CREATE TABLE product_lang (
    product_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    alias character varying(255),
    meta_title character varying
);
     DROP TABLE public.product_lang;
       public         postgres    false    6            �            1259    16580    product_option    TABLE     a   CREATE TABLE product_option (
    product_id integer NOT NULL,
    option_id integer NOT NULL
);
 "   DROP TABLE public.product_option;
       public         postgres    false    6            �            1259    16583    product_product_id_seq    SEQUENCE     x   CREATE SEQUENCE product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public       postgres    false    6    223            �           0    0    product_product_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE product_product_id_seq OWNED BY product.id;
            public       postgres    false    229            �            1259    16585    product_stock    TABLE     �   CREATE TABLE product_stock (
    stock_id integer NOT NULL,
    quantity integer NOT NULL,
    product_variant_id integer NOT NULL
);
 !   DROP TABLE public.product_stock;
       public         postgres    false    6            �            1259    16588    stock    TABLE     V   CREATE TABLE stock (
    id integer NOT NULL,
    remote_id character varying(255)
);
    DROP TABLE public.stock;
       public         postgres    false    6            �            1259    16591 "   product_stock_product_stock_id_seq    SEQUENCE     �   CREATE SEQUENCE product_stock_product_stock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.product_stock_product_stock_id_seq;
       public       postgres    false    6    231            �           0    0 "   product_stock_product_stock_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE product_stock_product_stock_id_seq OWNED BY stock.id;
            public       postgres    false    232            �            1259    16593    product_unit    TABLE     O   CREATE TABLE product_unit (
    id integer NOT NULL,
    is_default boolean
);
     DROP TABLE public.product_unit;
       public         postgres    false    6            �            1259    16596    product_unit_lang    TABLE     �   CREATE TABLE product_unit_lang (
    product_unit_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    short character varying(255)
);
 %   DROP TABLE public.product_unit_lang;
       public         postgres    false    6            �            1259    16602     product_unit_product_unit_id_seq    SEQUENCE     �   CREATE SEQUENCE product_unit_product_unit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.product_unit_product_unit_id_seq;
       public       postgres    false    233    6            �           0    0     product_unit_product_unit_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE product_unit_product_unit_id_seq OWNED BY product_unit.id;
            public       postgres    false    235            �            1259    16604    product_variant    TABLE     =  CREATE TABLE product_variant (
    id integer NOT NULL,
    product_id integer NOT NULL,
    sku character varying(255) NOT NULL,
    price double precision,
    price_old double precision,
    stock double precision,
    product_unit_id integer,
    remote_id character varying(255),
    status integer DEFAULT 0
);
 #   DROP TABLE public.product_variant;
       public         postgres    false    6            �            1259    16610    product_variant_lang    TABLE     �   CREATE TABLE product_variant_lang (
    product_variant_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL
);
 (   DROP TABLE public.product_variant_lang;
       public         postgres    false    6            �            1259    16613    product_variant_option    TABLE     q   CREATE TABLE product_variant_option (
    product_variant_id integer NOT NULL,
    option_id integer NOT NULL
);
 *   DROP TABLE public.product_variant_option;
       public         postgres    false    6            �            1259    16616 &   product_variant_product_variant_id_seq    SEQUENCE     �   CREATE SEQUENCE product_variant_product_variant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.product_variant_product_variant_id_seq;
       public       postgres    false    6    236            �           0    0 &   product_variant_product_variant_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE product_variant_product_variant_id_seq OWNED BY product_variant.id;
            public       postgres    false    239                       1259    17349    product_video    TABLE     �   CREATE TABLE product_video (
    id integer NOT NULL,
    product_id integer,
    url character varying(255),
    title character varying(255),
    is_main boolean DEFAULT false NOT NULL,
    is_display boolean DEFAULT false NOT NULL
);
 !   DROP TABLE public.product_video;
       public         postgres    false    6                       1259    17347    product_video_id_seq    SEQUENCE     v   CREATE SEQUENCE product_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_video_id_seq;
       public       postgres    false    6    279            �           0    0    product_video_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE product_video_id_seq OWNED BY product_video.id;
            public       postgres    false    278            �            1259    16618    seo    TABLE     W   CREATE TABLE seo (
    id integer NOT NULL,
    url character varying(255) NOT NULL
);
    DROP TABLE public.seo;
       public         postgres    false    6            �            1259    16621    seo_category    TABLE     s   CREATE TABLE seo_category (
    id integer NOT NULL,
    controller character varying(100),
    status smallint
);
     DROP TABLE public.seo_category;
       public         postgres    false    6            �            1259    16624    seo_category_lang    TABLE     �   CREATE TABLE seo_category_lang (
    seo_category_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255)
);
 %   DROP TABLE public.seo_category_lang;
       public         postgres    false    6            �            1259    16627     seo_category_seo_category_id_seq    SEQUENCE     �   CREATE SEQUENCE seo_category_seo_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.seo_category_seo_category_id_seq;
       public       postgres    false    241    6            �           0    0     seo_category_seo_category_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE seo_category_seo_category_id_seq OWNED BY seo_category.id;
            public       postgres    false    243            �            1259    16629    seo_dynamic    TABLE     �   CREATE TABLE seo_dynamic (
    id integer NOT NULL,
    seo_category_id integer,
    action character varying(200),
    fields character varying(255),
    status smallint,
    param character varying(255)
);
    DROP TABLE public.seo_dynamic;
       public         postgres    false    6            �            1259    16635    seo_dynamic_lang    TABLE     .  CREATE TABLE seo_dynamic_lang (
    seo_dynamic_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255),
    meta_title text,
    h1 character varying(255),
    key character varying(255),
    meta character varying(255),
    meta_description text,
    seo_text text
);
 $   DROP TABLE public.seo_dynamic_lang;
       public         postgres    false    6            �            1259    16641    seo_dynamic_seo_dynamic_id_seq    SEQUENCE     �   CREATE SEQUENCE seo_dynamic_seo_dynamic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.seo_dynamic_seo_dynamic_id_seq;
       public       postgres    false    244    6            �           0    0    seo_dynamic_seo_dynamic_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE seo_dynamic_seo_dynamic_id_seq OWNED BY seo_dynamic.id;
            public       postgres    false    246            �            1259    16643    seo_lang    TABLE     �   CREATE TABLE seo_lang (
    seo_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255),
    meta_description text,
    h1 character varying(255),
    meta character varying(255),
    seo_text text
);
    DROP TABLE public.seo_lang;
       public         postgres    false    6            �            1259    16649    seo_seo_id_seq    SEQUENCE     p   CREATE SEQUENCE seo_seo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.seo_seo_id_seq;
       public       postgres    false    6    240            �           0    0    seo_seo_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE seo_seo_id_seq OWNED BY seo.id;
            public       postgres    false    248            �            1259    16651    service    TABLE     �   CREATE TABLE service (
    id integer NOT NULL,
    image character varying(255),
    created_at integer,
    updated_at integer
);
    DROP TABLE public.service;
       public         postgres    false    6            �            1259    16654    service_lang    TABLE     L  CREATE TABLE service_lang (
    service_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    seo_text text,
    meta_title character varying(255),
    meta_description character varying(255),
    h1 character varying(255),
    alias character varying(255)
);
     DROP TABLE public.service_lang;
       public         postgres    false    6            �            1259    16660    service_service_id_seq    SEQUENCE     x   CREATE SEQUENCE service_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.service_service_id_seq;
       public       postgres    false    249    6            �           0    0    service_service_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE service_service_id_seq OWNED BY service.id;
            public       postgres    false    251            #           1259    17484    setting    TABLE     u   CREATE TABLE setting (
    id integer NOT NULL,
    name character varying(255),
    value character varying(255)
);
    DROP TABLE public.setting;
       public         postgres    false    6            "           1259    17482    setting_id_seq    SEQUENCE     p   CREATE SEQUENCE setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.setting_id_seq;
       public       postgres    false    6    291            �           0    0    setting_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE setting_id_seq OWNED BY setting.id;
            public       postgres    false    290            �            1259    16662    slider    TABLE     �   CREATE TABLE slider (
    id integer NOT NULL,
    speed integer,
    duration integer,
    title character varying(200),
    status smallint,
    width integer,
    height integer
);
    DROP TABLE public.slider;
       public         postgres    false    6            �            1259    16665    slider_image    TABLE     �   CREATE TABLE slider_image (
    id integer NOT NULL,
    slider_id integer NOT NULL,
    image character varying(255),
    url character varying(255),
    status smallint,
    sort integer
);
     DROP TABLE public.slider_image;
       public         postgres    false    6            �            1259    16671    slider_image_lang    TABLE     �   CREATE TABLE slider_image_lang (
    slider_image_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255),
    alt character varying(255)
);
 %   DROP TABLE public.slider_image_lang;
       public         postgres    false    6            �            1259    16677     slider_image_slider_image_id_seq    SEQUENCE     �   CREATE SEQUENCE slider_image_slider_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.slider_image_slider_image_id_seq;
       public       postgres    false    6    253            �           0    0     slider_image_slider_image_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE slider_image_slider_image_id_seq OWNED BY slider_image.id;
            public       postgres    false    255                        1259    16679    slider_slider_id_seq    SEQUENCE     v   CREATE SEQUENCE slider_slider_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.slider_slider_id_seq;
       public       postgres    false    6    252            �           0    0    slider_slider_id_seq    SEQUENCE OWNED BY     8   ALTER SEQUENCE slider_slider_id_seq OWNED BY slider.id;
            public       postgres    false    256                       1259    17365    sms_template    TABLE     h   CREATE TABLE sms_template (
    id integer NOT NULL,
    text text,
    title character varying(255)
);
     DROP TABLE public.sms_template;
       public         postgres    false    6                       1259    17363    sms_template_id_seq    SEQUENCE     u   CREATE SEQUENCE sms_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.sms_template_id_seq;
       public       postgres    false    6    281            �           0    0    sms_template_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE sms_template_id_seq OWNED BY sms_template.id;
            public       postgres    false    280                       1259    16681 
   stock_lang    TABLE     �   CREATE TABLE stock_lang (
    stock_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL
);
    DROP TABLE public.stock_lang;
       public         postgres    false    6                       1259    16684 	   tax_group    TABLE     �   CREATE TABLE tax_group (
    id integer NOT NULL,
    is_filter boolean DEFAULT false,
    sort integer DEFAULT 0,
    display boolean DEFAULT true,
    is_menu boolean,
    remote_id character varying(255),
    "position" integer DEFAULT 0
);
    DROP TABLE public.tax_group;
       public         postgres    false    6                       1259    16690    tax_group_lang    TABLE     �   CREATE TABLE tax_group_lang (
    tax_group_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    alias character varying(255)
);
 "   DROP TABLE public.tax_group_lang;
       public         postgres    false    6                       1259    16696    tax_group_tax_group_id_seq    SEQUENCE     |   CREATE SEQUENCE tax_group_tax_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tax_group_tax_group_id_seq;
       public       postgres    false    258    6            �           0    0    tax_group_tax_group_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE tax_group_tax_group_id_seq OWNED BY tax_group.id;
            public       postgres    false    260                       1259    16698    tax_group_to_category    TABLE     �   CREATE TABLE tax_group_to_category (
    tax_group_to_category_id integer NOT NULL,
    tax_group_id integer NOT NULL,
    category_id integer NOT NULL
);
 )   DROP TABLE public.tax_group_to_category;
       public         postgres    false    6                       1259    16701 2   tax_group_to_category_tax_group_to_category_id_seq    SEQUENCE     �   CREATE SEQUENCE tax_group_to_category_tax_group_to_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.tax_group_to_category_tax_group_to_category_id_seq;
       public       postgres    false    6    261            �           0    0 2   tax_group_to_category_tax_group_to_category_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE tax_group_to_category_tax_group_to_category_id_seq OWNED BY tax_group_to_category.tax_group_to_category_id;
            public       postgres    false    262                       1259    16703 
   tax_option    TABLE     �   CREATE TABLE tax_option (
    id bigint NOT NULL,
    tax_group_id integer NOT NULL,
    sort integer DEFAULT 0,
    image character varying(255),
    remote_id character varying(255)
);
    DROP TABLE public.tax_option;
       public         postgres    false    6                       1259    16710    tax_option_lang    TABLE     �   CREATE TABLE tax_option_lang (
    tax_option_id integer NOT NULL,
    language_id integer NOT NULL,
    value character varying(255) NOT NULL,
    alias character varying(255)
);
 #   DROP TABLE public.tax_option_lang;
       public         postgres    false    6            	           1259    16716    tax_option_tax_option_id_seq    SEQUENCE     ~   CREATE SEQUENCE tax_option_tax_option_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tax_option_tax_option_id_seq;
       public       postgres    false    263    6            �           0    0    tax_option_tax_option_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE tax_option_tax_option_id_seq OWNED BY tax_option.id;
            public       postgres    false    265                       1259    17235    tax_variant_group    TABLE     �   CREATE TABLE tax_variant_group (
    id integer NOT NULL,
    is_filter boolean,
    sort integer,
    display boolean,
    is_menu boolean,
    remote_id character varying(255),
    "position" integer DEFAULT 0
);
 %   DROP TABLE public.tax_variant_group;
       public         postgres    false    6                       1259    17233    tax_variant_group_id_seq    SEQUENCE     z   CREATE SEQUENCE tax_variant_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tax_variant_group_id_seq;
       public       postgres    false    6    269            �           0    0    tax_variant_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE tax_variant_group_id_seq OWNED BY tax_variant_group.id;
            public       postgres    false    268                       1259    17244    tax_variant_group_lang    TABLE     �   CREATE TABLE tax_variant_group_lang (
    id integer NOT NULL,
    tax_variant_group_id integer NOT NULL,
    language_id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    alias character varying(255)
);
 *   DROP TABLE public.tax_variant_group_lang;
       public         postgres    false    6                       1259    17242    tax_variant_group_lang_id_seq    SEQUENCE        CREATE SEQUENCE tax_variant_group_lang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tax_variant_group_lang_id_seq;
       public       postgres    false    271    6            �           0    0    tax_variant_group_lang_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE tax_variant_group_lang_id_seq OWNED BY tax_variant_group_lang.id;
            public       postgres    false    270                       1259    17303    tax_variant_group_to_category    TABLE     �   CREATE TABLE tax_variant_group_to_category (
    id integer NOT NULL,
    tax_variant_group_id integer NOT NULL,
    category_id integer NOT NULL
);
 1   DROP TABLE public.tax_variant_group_to_category;
       public         postgres    false    6                       1259    17301 $   tax_variant_group_to_category_id_seq    SEQUENCE     �   CREATE SEQUENCE tax_variant_group_to_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tax_variant_group_to_category_id_seq;
       public       postgres    false    6    277            �           0    0 $   tax_variant_group_to_category_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE tax_variant_group_to_category_id_seq OWNED BY tax_variant_group_to_category.id;
            public       postgres    false    276                       1259    17268    tax_variant_option    TABLE     �   CREATE TABLE tax_variant_option (
    id integer NOT NULL,
    tax_variant_group_id integer NOT NULL,
    sort integer,
    image character varying(255),
    remote_id character varying(255)
);
 &   DROP TABLE public.tax_variant_option;
       public         postgres    false    6                       1259    17266    tax_variant_option_id_seq    SEQUENCE     {   CREATE SEQUENCE tax_variant_option_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tax_variant_option_id_seq;
       public       postgres    false    6    273            �           0    0    tax_variant_option_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE tax_variant_option_id_seq OWNED BY tax_variant_option.id;
            public       postgres    false    272                       1259    17279    tax_variant_option_lang    TABLE     �   CREATE TABLE tax_variant_option_lang (
    id integer NOT NULL,
    tax_variant_option_id integer NOT NULL,
    language_id integer NOT NULL,
    value character varying(255) NOT NULL,
    alias character varying(255)
);
 +   DROP TABLE public.tax_variant_option_lang;
       public         postgres    false    6                       1259    17277    tax_variant_option_lang_id_seq    SEQUENCE     �   CREATE SEQUENCE tax_variant_option_lang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tax_variant_option_lang_id_seq;
       public       postgres    false    6    275            �           0    0    tax_variant_option_lang_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE tax_variant_option_lang_id_seq OWNED BY tax_variant_option_lang.id;
            public       postgres    false    274            
           1259    16718    user    TABLE     �  CREATE TABLE "user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    auth_key character varying(32) NOT NULL,
    password_hash character varying(255) NOT NULL,
    password_reset_token character varying(255),
    email character varying(255) NOT NULL,
    status smallint DEFAULT 10 NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);
    DROP TABLE public."user";
       public         postgres    false    6                       1259    16725    user_id_seq    SEQUENCE     m   CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public       postgres    false    6    266            �           0    0    user_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE user_id_seq OWNED BY "user".id;
            public       postgres    false    267            u	           2604    16727    id    DEFAULT     Z   ALTER TABLE ONLY article ALTER COLUMN id SET DEFAULT nextval('article_id_seq'::regclass);
 9   ALTER TABLE public.article ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    182    181            v	           2604    16728    id    DEFAULT     _   ALTER TABLE ONLY banner ALTER COLUMN id SET DEFAULT nextval('banner_banner_id_seq'::regclass);
 8   ALTER TABLE public.banner ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    189    188            w	           2604    16729    id    DEFAULT     P   ALTER TABLE ONLY bg ALTER COLUMN id SET DEFAULT nextval('bg_id_seq'::regclass);
 4   ALTER TABLE public.bg ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191            x	           2604    16730    id    DEFAULT     \   ALTER TABLE ONLY brand ALTER COLUMN id SET DEFAULT nextval('brand_brand_id_seq'::regclass);
 7   ALTER TABLE public.brand ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    195    194            �	           2604    17411    id    DEFAULT     `   ALTER TABLE ONLY brand_size ALTER COLUMN id SET DEFAULT nextval('brand_size_id_seq'::regclass);
 <   ALTER TABLE public.brand_size ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    283    282    283            �	           2604    17424    id    DEFAULT     x   ALTER TABLE ONLY brand_size_to_category ALTER COLUMN id SET DEFAULT nextval('brand_size_to_category_id_seq'::regclass);
 H   ALTER TABLE public.brand_size_to_category ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    285    284    285            {	           2604    16731    id    DEFAULT     e   ALTER TABLE ONLY category ALTER COLUMN id SET DEFAULT nextval('category_category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197            |	           2604    16732    id    DEFAULT     \   ALTER TABLE ONLY customer ALTER COLUMN id SET DEFAULT nextval('customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            }	           2604    16733    id    DEFAULT     \   ALTER TABLE ONLY event ALTER COLUMN id SET DEFAULT nextval('event_event_id_seq'::regclass);
 7   ALTER TABLE public.event ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202            ~	           2604    16734    id    DEFAULT     e   ALTER TABLE ONLY feedback ALTER COLUMN id SET DEFAULT nextval('feedback_feedback_id_seq'::regclass);
 :   ALTER TABLE public.feedback ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205            �	           2604    16735    id    DEFAULT     e   ALTER TABLE ONLY language ALTER COLUMN id SET DEFAULT nextval('language_language_id_seq'::regclass);
 :   ALTER TABLE public.language ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    207            �	           2604    16736    id    DEFAULT     Z   ALTER TABLE ONLY "order" ALTER COLUMN id SET DEFAULT nextval('orders_id_seq1'::regclass);
 9   ALTER TABLE public."order" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    210            �	           2604    16737    id    DEFAULT     i   ALTER TABLE ONLY order_delivery ALTER COLUMN id SET DEFAULT nextval('orders_delivery_id_seq'::regclass);
 @   ALTER TABLE public.order_delivery ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    211            �	           2604    16738    id    DEFAULT     c   ALTER TABLE ONLY order_label ALTER COLUMN id SET DEFAULT nextval('orders_label_id_seq'::regclass);
 =   ALTER TABLE public.order_label ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    213            �	           2604    17443    id    DEFAULT     r   ALTER TABLE ONLY order_label_history ALTER COLUMN id SET DEFAULT nextval('order_label_history_id_seq'::regclass);
 E   ALTER TABLE public.order_label_history ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    286    287    287            �	           2604    17466    id    DEFAULT     ^   ALTER TABLE ONLY order_log ALTER COLUMN id SET DEFAULT nextval('order_log_id_seq'::regclass);
 ;   ALTER TABLE public.order_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    289    288    289            �	           2604    16739    id    DEFAULT     h   ALTER TABLE ONLY order_product ALTER COLUMN id SET DEFAULT nextval('orders_products_id_seq'::regclass);
 ?   ALTER TABLE public.order_product ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    215            �	           2604    17498    id    DEFAULT     n   ALTER TABLE ONLY order_product_log ALTER COLUMN id SET DEFAULT nextval('order_product_log_id_seq'::regclass);
 C   ALTER TABLE public.order_product_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    292    293    293            �	           2604    16740    id    DEFAULT     T   ALTER TABLE ONLY page ALTER COLUMN id SET DEFAULT nextval('page_id_seq'::regclass);
 6   ALTER TABLE public.page ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220            �	           2604    16741    id    DEFAULT     b   ALTER TABLE ONLY product ALTER COLUMN id SET DEFAULT nextval('product_product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    223            �	           2604    16742    id    DEFAULT     t   ALTER TABLE ONLY product_image ALTER COLUMN id SET DEFAULT nextval('product_image_product_image_id_seq'::regclass);
 ?   ALTER TABLE public.product_image ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225            �	           2604    16743    id    DEFAULT     q   ALTER TABLE ONLY product_unit ALTER COLUMN id SET DEFAULT nextval('product_unit_product_unit_id_seq'::regclass);
 >   ALTER TABLE public.product_unit ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    233            �	           2604    16744    id    DEFAULT     z   ALTER TABLE ONLY product_variant ALTER COLUMN id SET DEFAULT nextval('product_variant_product_variant_id_seq'::regclass);
 A   ALTER TABLE public.product_variant ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    236            �	           2604    17352    id    DEFAULT     f   ALTER TABLE ONLY product_video ALTER COLUMN id SET DEFAULT nextval('product_video_id_seq'::regclass);
 ?   ALTER TABLE public.product_video ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    278    279    279            �	           2604    16745    id    DEFAULT     V   ALTER TABLE ONLY seo ALTER COLUMN id SET DEFAULT nextval('seo_seo_id_seq'::regclass);
 5   ALTER TABLE public.seo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    240            �	           2604    16746    id    DEFAULT     q   ALTER TABLE ONLY seo_category ALTER COLUMN id SET DEFAULT nextval('seo_category_seo_category_id_seq'::regclass);
 >   ALTER TABLE public.seo_category ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    241            �	           2604    16747    id    DEFAULT     n   ALTER TABLE ONLY seo_dynamic ALTER COLUMN id SET DEFAULT nextval('seo_dynamic_seo_dynamic_id_seq'::regclass);
 =   ALTER TABLE public.seo_dynamic ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    244            �	           2604    16748    id    DEFAULT     b   ALTER TABLE ONLY service ALTER COLUMN id SET DEFAULT nextval('service_service_id_seq'::regclass);
 9   ALTER TABLE public.service ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    249            �	           2604    17487    id    DEFAULT     Z   ALTER TABLE ONLY setting ALTER COLUMN id SET DEFAULT nextval('setting_id_seq'::regclass);
 9   ALTER TABLE public.setting ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    290    291    291            �	           2604    16749    id    DEFAULT     _   ALTER TABLE ONLY slider ALTER COLUMN id SET DEFAULT nextval('slider_slider_id_seq'::regclass);
 8   ALTER TABLE public.slider ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    256    252            �	           2604    16750    id    DEFAULT     q   ALTER TABLE ONLY slider_image ALTER COLUMN id SET DEFAULT nextval('slider_image_slider_image_id_seq'::regclass);
 >   ALTER TABLE public.slider_image ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    255    253            �	           2604    17368    id    DEFAULT     d   ALTER TABLE ONLY sms_template ALTER COLUMN id SET DEFAULT nextval('sms_template_id_seq'::regclass);
 >   ALTER TABLE public.sms_template ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    281    280    281            �	           2604    16751    id    DEFAULT     l   ALTER TABLE ONLY stock ALTER COLUMN id SET DEFAULT nextval('product_stock_product_stock_id_seq'::regclass);
 7   ALTER TABLE public.stock ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    231            �	           2604    16752    id    DEFAULT     h   ALTER TABLE ONLY tax_group ALTER COLUMN id SET DEFAULT nextval('tax_group_tax_group_id_seq'::regclass);
 ;   ALTER TABLE public.tax_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    260    258            �	           2604    16753    tax_group_to_category_id    DEFAULT     �   ALTER TABLE ONLY tax_group_to_category ALTER COLUMN tax_group_to_category_id SET DEFAULT nextval('tax_group_to_category_tax_group_to_category_id_seq'::regclass);
 ]   ALTER TABLE public.tax_group_to_category ALTER COLUMN tax_group_to_category_id DROP DEFAULT;
       public       postgres    false    262    261            �	           2604    16754    id    DEFAULT     k   ALTER TABLE ONLY tax_option ALTER COLUMN id SET DEFAULT nextval('tax_option_tax_option_id_seq'::regclass);
 <   ALTER TABLE public.tax_option ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    265    263            �	           2604    17238    id    DEFAULT     n   ALTER TABLE ONLY tax_variant_group ALTER COLUMN id SET DEFAULT nextval('tax_variant_group_id_seq'::regclass);
 C   ALTER TABLE public.tax_variant_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    268    269    269            �	           2604    17247    id    DEFAULT     x   ALTER TABLE ONLY tax_variant_group_lang ALTER COLUMN id SET DEFAULT nextval('tax_variant_group_lang_id_seq'::regclass);
 H   ALTER TABLE public.tax_variant_group_lang ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    270    271    271            �	           2604    17306    id    DEFAULT     �   ALTER TABLE ONLY tax_variant_group_to_category ALTER COLUMN id SET DEFAULT nextval('tax_variant_group_to_category_id_seq'::regclass);
 O   ALTER TABLE public.tax_variant_group_to_category ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    276    277    277            �	           2604    17271    id    DEFAULT     p   ALTER TABLE ONLY tax_variant_option ALTER COLUMN id SET DEFAULT nextval('tax_variant_option_id_seq'::regclass);
 D   ALTER TABLE public.tax_variant_option ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    273    272    273            �	           2604    17282    id    DEFAULT     z   ALTER TABLE ONLY tax_variant_option_lang ALTER COLUMN id SET DEFAULT nextval('tax_variant_option_lang_id_seq'::regclass);
 I   ALTER TABLE public.tax_variant_option_lang ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    274    275    275            �	           2604    16755    id    DEFAULT     V   ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    267    266                      0    16386    article 
   TABLE DATA               1   COPY article (id, image, created_at) FROM stdin;
    public       postgres    false    181   =b      �           0    0    article_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('article_id_seq', 1, true);
            public       postgres    false    182                      0    16391    article_lang 
   TABLE DATA               �   COPY article_lang (article_id, language_id, title, body, meta_title, meta_keywords, meta_description, seo_text, h1, body_preview, alias) FROM stdin;
    public       postgres    false    183   rb                0    16397    auth_assignment 
   TABLE DATA               B   COPY auth_assignment (item_name, user_id, created_at) FROM stdin;
    public       postgres    false    184   �e                0    16400 	   auth_item 
   TABLE DATA               ^   COPY auth_item (name, type, description, rule_name, data, created_at, updated_at) FROM stdin;
    public       postgres    false    185   �e                0    16406    auth_item_child 
   TABLE DATA               1   COPY auth_item_child (parent, child) FROM stdin;
    public       postgres    false    186   �h                 0    16409 	   auth_rule 
   TABLE DATA               @   COPY auth_rule (name, data, created_at, updated_at) FROM stdin;
    public       postgres    false    187   �i      !          0    16415    banner 
   TABLE DATA               *   COPY banner (id, url, status) FROM stdin;
    public       postgres    false    188   �i      �           0    0    banner_banner_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('banner_banner_id_seq', 1, true);
            public       postgres    false    189            #          0    16420    banner_lang 
   TABLE DATA               I   COPY banner_lang (banner_id, language_id, alt, title, image) FROM stdin;
    public       postgres    false    190   j      $          0    16426    bg 
   TABLE DATA               %   COPY bg (id, url, image) FROM stdin;
    public       postgres    false    191   ,j      �           0    0 	   bg_id_seq    SEQUENCE SET     1   SELECT pg_catalog.setval('bg_id_seq', 1, false);
            public       postgres    false    192            &          0    16434    bg_lang 
   TABLE DATA               5   COPY bg_lang (bg_id, language_id, title) FROM stdin;
    public       postgres    false    193   Ij      '          0    16437    brand 
   TABLE DATA               7   COPY brand (id, image, in_menu, remote_id) FROM stdin;
    public       postgres    false    194   fj      �           0    0    brand_brand_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('brand_brand_id_seq', 4, true);
            public       postgres    false    195            )          0    16445 
   brand_lang 
   TABLE DATA               w   COPY brand_lang (brand_id, language_id, title, meta_title, meta_robots, meta_description, seo_text, alias) FROM stdin;
    public       postgres    false    196   �j      �          0    17408 
   brand_size 
   TABLE DATA               2   COPY brand_size (id, brand_id, image) FROM stdin;
    public       postgres    false    283   �j      �           0    0    brand_size_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('brand_size_id_seq', 1, false);
            public       postgres    false    282            �          0    17421    brand_size_to_category 
   TABLE DATA               I   COPY brand_size_to_category (id, brand_size_id, category_id) FROM stdin;
    public       postgres    false    285   �j      �           0    0    brand_size_to_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('brand_size_to_category_id_seq', 1, false);
            public       postgres    false    284            *          0    16451    category 
   TABLE DATA               o   COPY category (id, parent_id, path, depth, image, product_unit_id, remote_id, sort2, sort, status) FROM stdin;
    public       postgres    false    197   k      �           0    0    category_category_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('category_category_id_seq', 7, true);
            public       postgres    false    198            ,          0    16461    category_lang 
   TABLE DATA               �   COPY category_lang (category_id, language_id, title, meta_title, meta_robots, meta_description, seo_text, h1, alias, category_synonym) FROM stdin;
    public       postgres    false    199   �k      -          0    16467    customer 
   TABLE DATA               �   COPY customer (id, username, password_hash, name, surname, phone, gender, birth_day, birth_month, birth_year, body, group_id, email, auth_key, password_reset_token, status, created_at, updated_at, role, birthday) FROM stdin;
    public       postgres    false    200   vl      �           0    0    customer_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('customer_id_seq', 1, false);
            public       postgres    false    201            /          0    16475    event 
   TABLE DATA               C   COPY event (id, image, created_at, updated_at, end_at) FROM stdin;
    public       postgres    false    202   �l      �           0    0    event_event_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('event_event_id_seq', 1, false);
            public       postgres    false    203            1          0    16480 
   event_lang 
   TABLE DATA               t   COPY event_lang (event_id, language_id, title, body, meta_title, meta_description, seo_text, h1, alias) FROM stdin;
    public       postgres    false    204   �l      2          0    16486    feedback 
   TABLE DATA               <   COPY feedback (id, name, phone, created_at, ip) FROM stdin;
    public       postgres    false    205   �l      �           0    0    feedback_feedback_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('feedback_feedback_id_seq', 1, false);
            public       postgres    false    206            4          0    16494    language 
   TABLE DATA               \   COPY language (id, url, local, name, "default", created_at, updated_at, status) FROM stdin;
    public       postgres    false    207   �l      �           0    0    language_language_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('language_language_id_seq', 1, false);
            public       postgres    false    208            6          0    16504 	   migration 
   TABLE DATA               1   COPY migration (version, apply_time) FROM stdin;
    public       postgres    false    209   gm      7          0    16507    order 
   TABLE DATA               �  COPY "order" (id, user_id, name, phone, phone2, email, adress, body, total, date_time, date_dedline, reserve, status, comment, label, pay, numbercard, delivery, declaration, stock, consignment, payment, insurance, amount_imposed, shipping_by, city, created_at, updated_at, deleted_at, deadline, reason, sms, "check", manager_id, edit_time, edit_id, credit_sum, credit_month) FROM stdin;
    public       postgres    false    210   p      8          0    16513    order_delivery 
   TABLE DATA               =   COPY order_delivery (id, parent_id, value, sort) FROM stdin;
    public       postgres    false    211   9p      9          0    16516    order_delivery_lang 
   TABLE DATA               S   COPY order_delivery_lang (order_delivery_id, language_id, title, text) FROM stdin;
    public       postgres    false    212   Vp      :          0    16522    order_label 
   TABLE DATA               )   COPY order_label (id, label) FROM stdin;
    public       postgres    false    213   sp      �          0    17440    order_label_history 
   TABLE DATA               S   COPY order_label_history (id, label_id, order_id, user_id, created_at) FROM stdin;
    public       postgres    false    287   �p      �           0    0    order_label_history_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('order_label_history_id_seq', 1, false);
            public       postgres    false    286            ;          0    16525    order_label_lang 
   TABLE DATA               G   COPY order_label_lang (order_label_id, language_id, title) FROM stdin;
    public       postgres    false    214   �p      �          0    17463 	   order_log 
   TABLE DATA               E   COPY order_log (id, order_id, created_at, user_id, data) FROM stdin;
    public       postgres    false    289   �p      �           0    0    order_log_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('order_log_id_seq', 1, false);
            public       postgres    false    288            <          0    16528    order_product 
   TABLE DATA               �   COPY order_product (id, order_id, product_variant_id, product_name, name, sku, price, count, sum_cost, status, booking, return) FROM stdin;
    public       postgres    false    215   �p      �          0    17495    order_product_log 
   TABLE DATA               _   COPY order_product_log (id, order_product_id, created_at, user_id, order_id, data) FROM stdin;
    public       postgres    false    293   q      �           0    0    order_product_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('order_product_log_id_seq', 1, false);
            public       postgres    false    292            �           0    0    orders_delivery_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('orders_delivery_id_seq', 1, false);
            public       postgres    false    216            �           0    0    orders_id_seq1    SEQUENCE SET     6   SELECT pg_catalog.setval('orders_id_seq1', 1, false);
            public       postgres    false    217            �           0    0    orders_label_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('orders_label_id_seq', 1, false);
            public       postgres    false    218            �           0    0    orders_products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('orders_products_id_seq', 1, false);
            public       postgres    false    219            A          0    16542    page 
   TABLE DATA               $   COPY page (id, in_menu) FROM stdin;
    public       postgres    false    220   !q      �           0    0    page_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('page_id_seq', 1, false);
            public       postgres    false    221            C          0    16548 	   page_lang 
   TABLE DATA               �   COPY page_lang (page_id, language_id, title, body, meta_title, meta_keywords, meta_description, seo_text, h1, alias) FROM stdin;
    public       postgres    false    222   >q      D          0    16554    product 
   TABLE DATA               c   COPY product (id, brand_id, video, is_top, is_discount, is_new, remote_id, size_image) FROM stdin;
    public       postgres    false    223   [q      E          0    16563    product_category 
   TABLE DATA               <   COPY product_category (product_id, category_id) FROM stdin;
    public       postgres    false    224   �q      F          0    16566    product_image 
   TABLE DATA               W   COPY product_image (product_variant_id, image, alt, title, product_id, id) FROM stdin;
    public       postgres    false    225   �q      �           0    0 "   product_image_product_image_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('product_image_product_image_id_seq', 6, true);
            public       postgres    false    226            H          0    16574    product_lang 
   TABLE DATA               _   COPY product_lang (product_id, language_id, title, description, alias, meta_title) FROM stdin;
    public       postgres    false    227   �q      I          0    16580    product_option 
   TABLE DATA               8   COPY product_option (product_id, option_id) FROM stdin;
    public       postgres    false    228   Qr      �           0    0    product_product_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('product_product_id_seq', 19, true);
            public       postgres    false    229            K          0    16585    product_stock 
   TABLE DATA               H   COPY product_stock (stock_id, quantity, product_variant_id) FROM stdin;
    public       postgres    false    230   nr      �           0    0 "   product_stock_product_stock_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('product_stock_product_stock_id_seq', 1, true);
            public       postgres    false    232            N          0    16593    product_unit 
   TABLE DATA               /   COPY product_unit (id, is_default) FROM stdin;
    public       postgres    false    233   �r      O          0    16596    product_unit_lang 
   TABLE DATA               P   COPY product_unit_lang (product_unit_id, language_id, title, short) FROM stdin;
    public       postgres    false    234   �r      �           0    0     product_unit_product_unit_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('product_unit_product_unit_id_seq', 1, false);
            public       postgres    false    235            Q          0    16604    product_variant 
   TABLE DATA               t   COPY product_variant (id, product_id, sku, price, price_old, stock, product_unit_id, remote_id, status) FROM stdin;
    public       postgres    false    236   �r      R          0    16610    product_variant_lang 
   TABLE DATA               O   COPY product_variant_lang (product_variant_id, language_id, title) FROM stdin;
    public       postgres    false    237   �r      S          0    16613    product_variant_option 
   TABLE DATA               H   COPY product_variant_option (product_variant_id, option_id) FROM stdin;
    public       postgres    false    238   �r      �           0    0 &   product_variant_product_variant_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('product_variant_product_variant_id_seq', 2, true);
            public       postgres    false    239            |          0    17349    product_video 
   TABLE DATA               Q   COPY product_video (id, product_id, url, title, is_main, is_display) FROM stdin;
    public       postgres    false    279   s      �           0    0    product_video_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('product_video_id_seq', 1, false);
            public       postgres    false    278            U          0    16618    seo 
   TABLE DATA                  COPY seo (id, url) FROM stdin;
    public       postgres    false    240   9s      V          0    16621    seo_category 
   TABLE DATA               7   COPY seo_category (id, controller, status) FROM stdin;
    public       postgres    false    241   Vs      W          0    16624    seo_category_lang 
   TABLE DATA               I   COPY seo_category_lang (seo_category_id, language_id, title) FROM stdin;
    public       postgres    false    242   ss      �           0    0     seo_category_seo_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('seo_category_seo_category_id_seq', 1, false);
            public       postgres    false    243            Y          0    16629    seo_dynamic 
   TABLE DATA               R   COPY seo_dynamic (id, seo_category_id, action, fields, status, param) FROM stdin;
    public       postgres    false    244   �s      Z          0    16635    seo_dynamic_lang 
   TABLE DATA               ~   COPY seo_dynamic_lang (seo_dynamic_id, language_id, title, meta_title, h1, key, meta, meta_description, seo_text) FROM stdin;
    public       postgres    false    245   �s      �           0    0    seo_dynamic_seo_dynamic_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('seo_dynamic_seo_dynamic_id_seq', 1, false);
            public       postgres    false    246            \          0    16643    seo_lang 
   TABLE DATA               ]   COPY seo_lang (seo_id, language_id, title, meta_description, h1, meta, seo_text) FROM stdin;
    public       postgres    false    247   �s      �           0    0    seo_seo_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('seo_seo_id_seq', 1, false);
            public       postgres    false    248            ^          0    16651    service 
   TABLE DATA               =   COPY service (id, image, created_at, updated_at) FROM stdin;
    public       postgres    false    249   �s      _          0    16654    service_lang 
   TABLE DATA               x   COPY service_lang (service_id, language_id, title, body, seo_text, meta_title, meta_description, h1, alias) FROM stdin;
    public       postgres    false    250   t      �           0    0    service_service_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('service_service_id_seq', 1, false);
            public       postgres    false    251            �          0    17484    setting 
   TABLE DATA               +   COPY setting (id, name, value) FROM stdin;
    public       postgres    false    291   !t      �           0    0    setting_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('setting_id_seq', 1, false);
            public       postgres    false    290            a          0    16662    slider 
   TABLE DATA               L   COPY slider (id, speed, duration, title, status, width, height) FROM stdin;
    public       postgres    false    252   >t      b          0    16665    slider_image 
   TABLE DATA               H   COPY slider_image (id, slider_id, image, url, status, sort) FROM stdin;
    public       postgres    false    253   [t      c          0    16671    slider_image_lang 
   TABLE DATA               N   COPY slider_image_lang (slider_image_id, language_id, title, alt) FROM stdin;
    public       postgres    false    254   xt      �           0    0     slider_image_slider_image_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('slider_image_slider_image_id_seq', 1, false);
            public       postgres    false    255            �           0    0    slider_slider_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('slider_slider_id_seq', 1, false);
            public       postgres    false    256            ~          0    17365    sms_template 
   TABLE DATA               0   COPY sms_template (id, text, title) FROM stdin;
    public       postgres    false    281   �t      �           0    0    sms_template_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('sms_template_id_seq', 1, false);
            public       postgres    false    280            L          0    16588    stock 
   TABLE DATA               '   COPY stock (id, remote_id) FROM stdin;
    public       postgres    false    231   �t      f          0    16681 
   stock_lang 
   TABLE DATA               ;   COPY stock_lang (stock_id, language_id, title) FROM stdin;
    public       postgres    false    257   �t      g          0    16684 	   tax_group 
   TABLE DATA               Z   COPY tax_group (id, is_filter, sort, display, is_menu, remote_id, "position") FROM stdin;
    public       postgres    false    258   �t      h          0    16690    tax_group_lang 
   TABLE DATA               W   COPY tax_group_lang (tax_group_id, language_id, title, description, alias) FROM stdin;
    public       postgres    false    259   	u      �           0    0    tax_group_tax_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('tax_group_tax_group_id_seq', 1, false);
            public       postgres    false    260            j          0    16698    tax_group_to_category 
   TABLE DATA               ]   COPY tax_group_to_category (tax_group_to_category_id, tax_group_id, category_id) FROM stdin;
    public       postgres    false    261   &u      �           0    0 2   tax_group_to_category_tax_group_to_category_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('tax_group_to_category_tax_group_to_category_id_seq', 1, false);
            public       postgres    false    262            l          0    16703 
   tax_option 
   TABLE DATA               G   COPY tax_option (id, tax_group_id, sort, image, remote_id) FROM stdin;
    public       postgres    false    263   Cu      m          0    16710    tax_option_lang 
   TABLE DATA               L   COPY tax_option_lang (tax_option_id, language_id, value, alias) FROM stdin;
    public       postgres    false    264   `u      �           0    0    tax_option_tax_option_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('tax_option_tax_option_id_seq', 1, false);
            public       postgres    false    265            r          0    17235    tax_variant_group 
   TABLE DATA               b   COPY tax_variant_group (id, is_filter, sort, display, is_menu, remote_id, "position") FROM stdin;
    public       postgres    false    269   }u      �           0    0    tax_variant_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('tax_variant_group_id_seq', 1, false);
            public       postgres    false    268            t          0    17244    tax_variant_group_lang 
   TABLE DATA               k   COPY tax_variant_group_lang (id, tax_variant_group_id, language_id, title, description, alias) FROM stdin;
    public       postgres    false    271   �u      �           0    0    tax_variant_group_lang_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('tax_variant_group_lang_id_seq', 1, false);
            public       postgres    false    270            z          0    17303    tax_variant_group_to_category 
   TABLE DATA               W   COPY tax_variant_group_to_category (id, tax_variant_group_id, category_id) FROM stdin;
    public       postgres    false    277   �u      �           0    0 $   tax_variant_group_to_category_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('tax_variant_group_to_category_id_seq', 1, false);
            public       postgres    false    276            v          0    17268    tax_variant_option 
   TABLE DATA               W   COPY tax_variant_option (id, tax_variant_group_id, sort, image, remote_id) FROM stdin;
    public       postgres    false    273   �u      �           0    0    tax_variant_option_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tax_variant_option_id_seq', 1, false);
            public       postgres    false    272            x          0    17279    tax_variant_option_lang 
   TABLE DATA               `   COPY tax_variant_option_lang (id, tax_variant_option_id, language_id, value, alias) FROM stdin;
    public       postgres    false    275   �u      �           0    0    tax_variant_option_lang_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tax_variant_option_lang_id_seq', 1, false);
            public       postgres    false    274            o          0    16718    user 
   TABLE DATA               }   COPY "user" (id, username, auth_key, password_hash, password_reset_token, email, status, created_at, updated_at) FROM stdin;
    public       postgres    false    266   v      �           0    0    user_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('user_id_seq', 1, true);
            public       postgres    false    267            �	           2606    16757    article_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.article DROP CONSTRAINT article_pkey;
       public         postgres    false    181    181            �	           2606    16759    auth_assignment_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY auth_assignment
    ADD CONSTRAINT auth_assignment_pkey PRIMARY KEY (item_name, user_id);
 N   ALTER TABLE ONLY public.auth_assignment DROP CONSTRAINT auth_assignment_pkey;
       public         postgres    false    184    184    184            �	           2606    16761    auth_item_child_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY auth_item_child
    ADD CONSTRAINT auth_item_child_pkey PRIMARY KEY (parent, child);
 N   ALTER TABLE ONLY public.auth_item_child DROP CONSTRAINT auth_item_child_pkey;
       public         postgres    false    186    186    186            �	           2606    16763    auth_item_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_item
    ADD CONSTRAINT auth_item_pkey PRIMARY KEY (name);
 B   ALTER TABLE ONLY public.auth_item DROP CONSTRAINT auth_item_pkey;
       public         postgres    false    185    185            �	           2606    16765    auth_rule_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_rule
    ADD CONSTRAINT auth_rule_pkey PRIMARY KEY (name);
 B   ALTER TABLE ONLY public.auth_rule DROP CONSTRAINT auth_rule_pkey;
       public         postgres    false    187    187            �	           2606    16767    banner_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY banner
    ADD CONSTRAINT banner_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.banner DROP CONSTRAINT banner_pkey;
       public         postgres    false    188    188            �	           2606    16769    bg_pkey 
   CONSTRAINT     A   ALTER TABLE ONLY bg
    ADD CONSTRAINT bg_pkey PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.bg DROP CONSTRAINT bg_pkey;
       public         postgres    false    191    191            �	           2606    16771 
   brand_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public         postgres    false    194    194            G
           2606    17413    brand_size_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY brand_size
    ADD CONSTRAINT brand_size_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.brand_size DROP CONSTRAINT brand_size_pkey;
       public         postgres    false    283    283            I
           2606    17426    brand_size_to_category_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY brand_size_to_category
    ADD CONSTRAINT brand_size_to_category_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.brand_size_to_category DROP CONSTRAINT brand_size_to_category_pkey;
       public         postgres    false    285    285            �	           2606    16773    category_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public         postgres    false    197    197            �	           2606    16775    customer_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public         postgres    false    200    200            �	           2606    16777 
   event_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.event DROP CONSTRAINT event_pkey;
       public         postgres    false    202    202            �	           2606    16779    feedback_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_pkey;
       public         postgres    false    205    205            �	           2606    16781    language_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY language
    ADD CONSTRAINT language_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.language DROP CONSTRAINT language_pkey;
       public         postgres    false    207    207            �	           2606    16783    migration_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY migration
    ADD CONSTRAINT migration_pkey PRIMARY KEY (version);
 B   ALTER TABLE ONLY public.migration DROP CONSTRAINT migration_pkey;
       public         postgres    false    209    209            L
           2606    17445    order_label_history_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY order_label_history
    ADD CONSTRAINT order_label_history_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.order_label_history DROP CONSTRAINT order_label_history_pkey;
       public         postgres    false    287    287            N
           2606    17471    order_log_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY order_log
    ADD CONSTRAINT order_log_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.order_log DROP CONSTRAINT order_log_pkey;
       public         postgres    false    289    289            R
           2606    17503    order_product_log_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY order_product_log
    ADD CONSTRAINT order_product_log_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.order_product_log DROP CONSTRAINT order_product_log_pkey;
       public         postgres    false    293    293            �	           2606    16785    orders_delivery_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY order_delivery
    ADD CONSTRAINT orders_delivery_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.order_delivery DROP CONSTRAINT orders_delivery_pkey;
       public         postgres    false    211    211            �	           2606    16787    orders_label_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY order_label
    ADD CONSTRAINT orders_label_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.order_label DROP CONSTRAINT orders_label_pkey;
       public         postgres    false    213    213            �	           2606    16789    orders_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY "order"
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public."order" DROP CONSTRAINT orders_pkey;
       public         postgres    false    210    210            �	           2606    16791    orders_products_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY order_product
    ADD CONSTRAINT orders_products_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.order_product DROP CONSTRAINT orders_products_pkey;
       public         postgres    false    215    215            �	           2606    16793 	   page_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY page
    ADD CONSTRAINT page_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.page DROP CONSTRAINT page_pkey;
       public         postgres    false    220    220            �	           2606    16795    product_image_id_pk 
   CONSTRAINT     X   ALTER TABLE ONLY product_image
    ADD CONSTRAINT product_image_id_pk PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_image_id_pk;
       public         postgres    false    225    225            �	           2606    16797    product_option_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY product_option
    ADD CONSTRAINT product_option_pkey PRIMARY KEY (product_id, option_id);
 L   ALTER TABLE ONLY public.product_option DROP CONSTRAINT product_option_pkey;
       public         postgres    false    228    228    228            �	           2606    16799    product_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public         postgres    false    223    223            �	           2606    16801    product_unit_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY product_unit
    ADD CONSTRAINT product_unit_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_unit DROP CONSTRAINT product_unit_pkey;
       public         postgres    false    233    233            
           2606    17328    product_variant_option_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY product_variant_option
    ADD CONSTRAINT product_variant_option_pkey PRIMARY KEY (product_variant_id, option_id);
 \   ALTER TABLE ONLY public.product_variant_option DROP CONSTRAINT product_variant_option_pkey;
       public         postgres    false    238    238    238            �	           2606    16805    product_variant_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY product_variant
    ADD CONSTRAINT product_variant_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT product_variant_pkey;
       public         postgres    false    236    236            C
           2606    17354    product_video_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY product_video
    ADD CONSTRAINT product_video_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_video DROP CONSTRAINT product_video_pkey;
       public         postgres    false    279    279            	
           2606    16807    seo_category_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY seo_category
    ADD CONSTRAINT seo_category_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.seo_category DROP CONSTRAINT seo_category_pkey;
       public         postgres    false    241    241            
           2606    16809    seo_dynamic_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY seo_dynamic
    ADD CONSTRAINT seo_dynamic_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.seo_dynamic DROP CONSTRAINT seo_dynamic_pkey;
       public         postgres    false    244    244            
           2606    16811    seo_pkey 
   CONSTRAINT     C   ALTER TABLE ONLY seo
    ADD CONSTRAINT seo_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.seo DROP CONSTRAINT seo_pkey;
       public         postgres    false    240    240            
           2606    16813    service_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public         postgres    false    249    249            P
           2606    17492    setting_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY setting
    ADD CONSTRAINT setting_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.setting DROP CONSTRAINT setting_pkey;
       public         postgres    false    291    291            
           2606    16815    slider_image_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY slider_image
    ADD CONSTRAINT slider_image_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.slider_image DROP CONSTRAINT slider_image_pkey;
       public         postgres    false    253    253            
           2606    16817    slider_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY slider
    ADD CONSTRAINT slider_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.slider DROP CONSTRAINT slider_pkey;
       public         postgres    false    252    252            E
           2606    17373    sms_template_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY sms_template
    ADD CONSTRAINT sms_template_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.sms_template DROP CONSTRAINT sms_template_pkey;
       public         postgres    false    281    281            �	           2606    16819 
   stock_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public         postgres    false    231    231            
           2606    16821    tax_group_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY tax_group
    ADD CONSTRAINT tax_group_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tax_group DROP CONSTRAINT tax_group_pkey;
       public         postgres    false    258    258            !
           2606    16823    tax_group_to_category_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY tax_group_to_category
    ADD CONSTRAINT tax_group_to_category_pkey PRIMARY KEY (tax_group_to_category_id);
 Z   ALTER TABLE ONLY public.tax_group_to_category DROP CONSTRAINT tax_group_to_category_pkey;
       public         postgres    false    261    261            #
           2606    16825    tax_option_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY tax_option
    ADD CONSTRAINT tax_option_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tax_option DROP CONSTRAINT tax_option_pkey;
       public         postgres    false    263    263            5
           2606    17254     tax_variant_group_lang_alias_key 
   CONSTRAINT     l   ALTER TABLE ONLY tax_variant_group_lang
    ADD CONSTRAINT tax_variant_group_lang_alias_key UNIQUE (alias);
 a   ALTER TABLE ONLY public.tax_variant_group_lang DROP CONSTRAINT tax_variant_group_lang_alias_key;
       public         postgres    false    271    271            7
           2606    17252    tax_variant_group_lang_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY tax_variant_group_lang
    ADD CONSTRAINT tax_variant_group_lang_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.tax_variant_group_lang DROP CONSTRAINT tax_variant_group_lang_pkey;
       public         postgres    false    271    271            2
           2606    17241    tax_variant_group_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY tax_variant_group
    ADD CONSTRAINT tax_variant_group_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.tax_variant_group DROP CONSTRAINT tax_variant_group_pkey;
       public         postgres    false    269    269            A
           2606    17308 "   tax_variant_group_to_category_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY tax_variant_group_to_category
    ADD CONSTRAINT tax_variant_group_to_category_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.tax_variant_group_to_category DROP CONSTRAINT tax_variant_group_to_category_pkey;
       public         postgres    false    277    277            <
           2606    17289 !   tax_variant_option_lang_alias_key 
   CONSTRAINT     n   ALTER TABLE ONLY tax_variant_option_lang
    ADD CONSTRAINT tax_variant_option_lang_alias_key UNIQUE (alias);
 c   ALTER TABLE ONLY public.tax_variant_option_lang DROP CONSTRAINT tax_variant_option_lang_alias_key;
       public         postgres    false    275    275            >
           2606    17287    tax_variant_option_lang_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY tax_variant_option_lang
    ADD CONSTRAINT tax_variant_option_lang_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.tax_variant_option_lang DROP CONSTRAINT tax_variant_option_lang_pkey;
       public         postgres    false    275    275            9
           2606    17276    tax_variant_option_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY tax_variant_option
    ADD CONSTRAINT tax_variant_option_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.tax_variant_option DROP CONSTRAINT tax_variant_option_pkey;
       public         postgres    false    273    273            *
           2606    16827    user_email_key 
   CONSTRAINT     J   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_email_key;
       public         postgres    false    266    266            ,
           2606    16829    user_password_reset_token_key 
   CONSTRAINT     h   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_password_reset_token_key UNIQUE (password_reset_token);
 N   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_password_reset_token_key;
       public         postgres    false    266    266            .
           2606    16831 	   user_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         postgres    false    266    266            0
           2606    16833    user_username_key 
   CONSTRAINT     P   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_username_key;
       public         postgres    false    266    266            �	           1259    16834    articles_lang_alias    INDEX     M   CREATE UNIQUE INDEX articles_lang_alias ON article_lang USING btree (alias);
 '   DROP INDEX public.articles_lang_alias;
       public         postgres    false    183            �	           1259    16835 "   articles_lang_article_language_key    INDEX     n   CREATE UNIQUE INDEX articles_lang_article_language_key ON article_lang USING btree (article_id, language_id);
 6   DROP INDEX public.articles_lang_article_language_key;
       public         postgres    false    183    183            �	           1259    16836    banner_lang_banner_language_key    INDEX     i   CREATE UNIQUE INDEX banner_lang_banner_language_key ON banner_lang USING btree (banner_id, language_id);
 3   DROP INDEX public.banner_lang_banner_language_key;
       public         postgres    false    190    190            �	           1259    16837    bg_lang_bg_language_key    INDEX     Y   CREATE UNIQUE INDEX bg_lang_bg_language_key ON bg_lang USING btree (bg_id, language_id);
 +   DROP INDEX public.bg_lang_bg_language_key;
       public         postgres    false    193    193            �	           1259    16838    brand_lang_alias    INDEX     H   CREATE UNIQUE INDEX brand_lang_alias ON brand_lang USING btree (alias);
 $   DROP INDEX public.brand_lang_alias;
       public         postgres    false    196            �	           1259    16839    brand_lang_brand_language_key    INDEX     e   CREATE UNIQUE INDEX brand_lang_brand_language_key ON brand_lang USING btree (brand_id, language_id);
 1   DROP INDEX public.brand_lang_brand_language_key;
       public         postgres    false    196    196            �	           1259    16840    brand_remote_id_uindex    INDEX     M   CREATE UNIQUE INDEX brand_remote_id_uindex ON brand USING btree (remote_id);
 *   DROP INDEX public.brand_remote_id_uindex;
       public         postgres    false    194            J
           1259    17437    brand_size_uk    INDEX     f   CREATE UNIQUE INDEX brand_size_uk ON brand_size_to_category USING btree (brand_size_id, category_id);
 !   DROP INDEX public.brand_size_uk;
       public         postgres    false    285    285            �	           1259    16841    category_lang_alias    INDEX     N   CREATE UNIQUE INDEX category_lang_alias ON category_lang USING btree (alias);
 '   DROP INDEX public.category_lang_alias;
       public         postgres    false    199            �	           1259    16842 #   category_lang_category_language_key    INDEX     q   CREATE UNIQUE INDEX category_lang_category_language_key ON category_lang USING btree (category_id, language_id);
 7   DROP INDEX public.category_lang_category_language_key;
       public         postgres    false    199    199            �	           1259    16843    category_remote_id_uindex    INDEX     S   CREATE UNIQUE INDEX category_remote_id_uindex ON category USING btree (remote_id);
 -   DROP INDEX public.category_remote_id_uindex;
       public         postgres    false    197            �	           1259    16844    event_lang_alias    INDEX     H   CREATE UNIQUE INDEX event_lang_alias ON event_lang USING btree (alias);
 $   DROP INDEX public.event_lang_alias;
       public         postgres    false    204            �	           1259    16845    event_lang_event_language_key    INDEX     e   CREATE UNIQUE INDEX event_lang_event_language_key ON event_lang USING btree (event_id, language_id);
 1   DROP INDEX public.event_lang_event_language_key;
       public         postgres    false    204    204            �	           1259    16846 9   fki_orders_products_product_variant_product_variant_id_fk    INDEX     z   CREATE INDEX fki_orders_products_product_variant_product_variant_id_fk ON order_product USING btree (product_variant_id);
 M   DROP INDEX public.fki_orders_products_product_variant_product_variant_id_fk;
       public         postgres    false    215            �	           1259    16847    fki_product_brand_fk    INDEX     E   CREATE INDEX fki_product_brand_fk ON product USING btree (brand_id);
 (   DROP INDEX public.fki_product_brand_fk;
       public         postgres    false    223            �	           1259    16848    fki_product_id_fk    INDEX     J   CREATE INDEX fki_product_id_fk ON product_image USING btree (product_id);
 %   DROP INDEX public.fki_product_id_fk;
       public         postgres    false    225            �	           1259    16849 )   fki_product_stock_product_variant_id_fkey    INDEX     j   CREATE INDEX fki_product_stock_product_variant_id_fkey ON product_stock USING btree (product_variant_id);
 =   DROP INDEX public.fki_product_stock_product_variant_id_fkey;
       public         postgres    false    230            �	           1259    16850    fki_product_stock_stock_id_fkey    INDEX     V   CREATE INDEX fki_product_stock_stock_id_fkey ON product_stock USING btree (stock_id);
 3   DROP INDEX public.fki_product_stock_stock_id_fkey;
       public         postgres    false    230            �	           1259    16851    fki_product_variant_id_fkey    INDEX     \   CREATE INDEX fki_product_variant_id_fkey ON product_image USING btree (product_variant_id);
 /   DROP INDEX public.fki_product_variant_id_fkey;
       public         postgres    false    225            
           1259    16852    fki_product_variant_option_id    INDEX     ^   CREATE INDEX fki_product_variant_option_id ON product_variant_option USING btree (option_id);
 1   DROP INDEX public.fki_product_variant_option_id;
       public         postgres    false    238            �	           1259    16853    idx-auth_item-type    INDEX     C   CREATE INDEX "idx-auth_item-type" ON auth_item USING btree (type);
 (   DROP INDEX public."idx-auth_item-type";
       public         postgres    false    185            �	           1259    16854 1   orders_delivery_lang_orders_delivery_language_key    INDEX     �   CREATE UNIQUE INDEX orders_delivery_lang_orders_delivery_language_key ON order_delivery_lang USING btree (order_delivery_id, language_id);
 E   DROP INDEX public.orders_delivery_lang_orders_delivery_language_key;
       public         postgres    false    212    212            �	           1259    16855 +   orders_label_lang_orders_label_language_key    INDEX        CREATE UNIQUE INDEX orders_label_lang_orders_label_language_key ON order_label_lang USING btree (order_label_id, language_id);
 ?   DROP INDEX public.orders_label_lang_orders_label_language_key;
       public         postgres    false    214    214            �	           1259    16856    page_lang_alias    INDEX     F   CREATE UNIQUE INDEX page_lang_alias ON page_lang USING btree (alias);
 #   DROP INDEX public.page_lang_alias;
       public         postgres    false    222            �	           1259    16857    page_lang_page_language_key    INDEX     a   CREATE UNIQUE INDEX page_lang_page_language_key ON page_lang USING btree (page_id, language_id);
 /   DROP INDEX public.page_lang_page_language_key;
       public         postgres    false    222    222            �	           1259    16858    product_lang_alias    INDEX     L   CREATE UNIQUE INDEX product_lang_alias ON product_lang USING btree (alias);
 &   DROP INDEX public.product_lang_alias;
       public         postgres    false    227            �	           1259    16859 !   product_lang_product_language_key    INDEX     m   CREATE UNIQUE INDEX product_lang_product_language_key ON product_lang USING btree (product_id, language_id);
 5   DROP INDEX public.product_lang_product_language_key;
       public         postgres    false    227    227            �	           1259    16860    product_remote_id_uindex    INDEX     Q   CREATE UNIQUE INDEX product_remote_id_uindex ON product USING btree (remote_id);
 ,   DROP INDEX public.product_remote_id_uindex;
       public         postgres    false    223            �	           1259    16861 +   product_unit_lang_product_unit_language_key    INDEX     �   CREATE UNIQUE INDEX product_unit_lang_product_unit_language_key ON product_unit_lang USING btree (product_unit_id, language_id);
 ?   DROP INDEX public.product_unit_lang_product_unit_language_key;
       public         postgres    false    234    234            
           1259    16862 1   product_variant_lang_product_variant_language_key    INDEX     �   CREATE UNIQUE INDEX product_variant_lang_product_variant_language_key ON product_variant_lang USING btree (product_variant_id, language_id);
 E   DROP INDEX public.product_variant_lang_product_variant_language_key;
       public         postgres    false    237    237             
           1259    16863     product_variant_product_id_index    INDEX     [   CREATE INDEX product_variant_product_id_index ON product_variant USING btree (product_id);
 4   DROP INDEX public.product_variant_product_id_index;
       public         postgres    false    236            
           1259    16864     product_variant_remote_id_uindex    INDEX     a   CREATE UNIQUE INDEX product_variant_remote_id_uindex ON product_variant USING btree (remote_id);
 4   DROP INDEX public.product_variant_remote_id_uindex;
       public         postgres    false    236            

           1259    16865 +   seo_category_lang_seo_category_language_key    INDEX     �   CREATE UNIQUE INDEX seo_category_lang_seo_category_language_key ON seo_category_lang USING btree (seo_category_id, language_id);
 ?   DROP INDEX public.seo_category_lang_seo_category_language_key;
       public         postgres    false    242    242            
           1259    16866 )   seo_dynamic_lang_seo_dynamic_language_key    INDEX     }   CREATE UNIQUE INDEX seo_dynamic_lang_seo_dynamic_language_key ON seo_dynamic_lang USING btree (seo_dynamic_id, language_id);
 =   DROP INDEX public.seo_dynamic_lang_seo_dynamic_language_key;
       public         postgres    false    245    245            
           1259    16867    seo_lang_seo_language_key    INDEX     ]   CREATE UNIQUE INDEX seo_lang_seo_language_key ON seo_lang USING btree (seo_id, language_id);
 -   DROP INDEX public.seo_lang_seo_language_key;
       public         postgres    false    247    247            
           1259    16868    service_lang_alias    INDEX     L   CREATE UNIQUE INDEX service_lang_alias ON service_lang USING btree (alias);
 &   DROP INDEX public.service_lang_alias;
       public         postgres    false    250            
           1259    16869 !   service_lang_service_language_key    INDEX     m   CREATE UNIQUE INDEX service_lang_service_language_key ON service_lang USING btree (service_id, language_id);
 5   DROP INDEX public.service_lang_service_language_key;
       public         postgres    false    250    250            
           1259    16870 +   slider_image_lang_slider_image_language_key    INDEX     �   CREATE UNIQUE INDEX slider_image_lang_slider_image_language_key ON slider_image_lang USING btree (slider_image_id, language_id);
 ?   DROP INDEX public.slider_image_lang_slider_image_language_key;
       public         postgres    false    254    254            
           1259    16871    stock_lang_stock_language_key    INDEX     e   CREATE UNIQUE INDEX stock_lang_stock_language_key ON stock_lang USING btree (stock_id, language_id);
 1   DROP INDEX public.stock_lang_stock_language_key;
       public         postgres    false    257    257            
           1259    16872    tax_group_is_filter_index    INDEX     M   CREATE INDEX tax_group_is_filter_index ON tax_group USING btree (is_filter);
 -   DROP INDEX public.tax_group_is_filter_index;
       public         postgres    false    258            
           1259    16873    tax_group_lang_alias    INDEX     P   CREATE UNIQUE INDEX tax_group_lang_alias ON tax_group_lang USING btree (alias);
 (   DROP INDEX public.tax_group_lang_alias;
       public         postgres    false    259            
           1259    16874 %   tax_group_lang_tax_group_language_key    INDEX     u   CREATE UNIQUE INDEX tax_group_lang_tax_group_language_key ON tax_group_lang USING btree (tax_group_id, language_id);
 9   DROP INDEX public.tax_group_lang_tax_group_language_key;
       public         postgres    false    259    259            
           1259    16875    tax_group_remote_id_uindex    INDEX     U   CREATE UNIQUE INDEX tax_group_remote_id_uindex ON tax_group USING btree (remote_id);
 .   DROP INDEX public.tax_group_remote_id_uindex;
       public         postgres    false    258            
           1259    16876    tax_group_sort_index    INDEX     C   CREATE INDEX tax_group_sort_index ON tax_group USING btree (sort);
 (   DROP INDEX public.tax_group_sort_index;
       public         postgres    false    258            '
           1259    16877    tax_option_lang_alias    INDEX     R   CREATE UNIQUE INDEX tax_option_lang_alias ON tax_option_lang USING btree (alias);
 )   DROP INDEX public.tax_option_lang_alias;
       public         postgres    false    264            (
           1259    16878 '   tax_option_lang_tax_option_language_key    INDEX     y   CREATE UNIQUE INDEX tax_option_lang_tax_option_language_key ON tax_option_lang USING btree (tax_option_id, language_id);
 ;   DROP INDEX public.tax_option_lang_tax_option_language_key;
       public         postgres    false    264    264            $
           1259    16879    tax_option_remote_id_uindex    INDEX     W   CREATE UNIQUE INDEX tax_option_remote_id_uindex ON tax_option USING btree (remote_id);
 /   DROP INDEX public.tax_option_remote_id_uindex;
       public         postgres    false    263            %
           1259    16880    tax_option_sort_index    INDEX     E   CREATE INDEX tax_option_sort_index ON tax_option USING btree (sort);
 )   DROP INDEX public.tax_option_sort_index;
       public         postgres    false    263            &
           1259    16881    tax_option_tax_group_id_index    INDEX     U   CREATE INDEX tax_option_tax_group_id_index ON tax_option USING btree (tax_group_id);
 1   DROP INDEX public.tax_option_tax_group_id_index;
       public         postgres    false    263            ?
           1259    17319 %   tax_variant_group_id_category_id_ukey    INDEX     �   CREATE UNIQUE INDEX tax_variant_group_id_category_id_ukey ON tax_variant_group_to_category USING btree (tax_variant_group_id, category_id);
 9   DROP INDEX public.tax_variant_group_id_category_id_ukey;
       public         postgres    false    277    277            3
           1259    17265 %   tax_variant_group_id_language_id_ukey    INDEX     �   CREATE UNIQUE INDEX tax_variant_group_id_language_id_ukey ON tax_variant_group_lang USING btree (tax_variant_group_id, language_id);
 9   DROP INDEX public.tax_variant_group_id_language_id_ukey;
       public         postgres    false    271    271            :
           1259    17300 &   tax_variant_option_id_language_id_ukey    INDEX     �   CREATE UNIQUE INDEX tax_variant_option_id_language_id_ukey ON tax_variant_option_lang USING btree (tax_variant_option_id, language_id);
 :   DROP INDEX public.tax_variant_option_id_language_id_ukey;
       public         postgres    false    275    275            S
           2606    16882 
   article_fk    FK CONSTRAINT     m   ALTER TABLE ONLY article_lang
    ADD CONSTRAINT article_fk FOREIGN KEY (article_id) REFERENCES article(id);
 A   ALTER TABLE ONLY public.article_lang DROP CONSTRAINT article_fk;
       public       postgres    false    2484    183    181            U
           2606    16887    auth_assignment_item_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth_assignment
    ADD CONSTRAINT auth_assignment_item_name_fkey FOREIGN KEY (item_name) REFERENCES auth_item(name) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.auth_assignment DROP CONSTRAINT auth_assignment_item_name_fkey;
       public       postgres    false    185    184    2490            W
           2606    16892    auth_item_child_child_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth_item_child
    ADD CONSTRAINT auth_item_child_child_fkey FOREIGN KEY (child) REFERENCES auth_item(name) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.auth_item_child DROP CONSTRAINT auth_item_child_child_fkey;
       public       postgres    false    186    2490    185            X
           2606    16897    auth_item_child_parent_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth_item_child
    ADD CONSTRAINT auth_item_child_parent_fkey FOREIGN KEY (parent) REFERENCES auth_item(name) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.auth_item_child DROP CONSTRAINT auth_item_child_parent_fkey;
       public       postgres    false    186    2490    185            V
           2606    16902    auth_item_rule_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth_item
    ADD CONSTRAINT auth_item_rule_name_fkey FOREIGN KEY (rule_name) REFERENCES auth_rule(name) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.auth_item DROP CONSTRAINT auth_item_rule_name_fkey;
       public       postgres    false    185    187    2495            Y
           2606    16907 	   banner_fk    FK CONSTRAINT     �   ALTER TABLE ONLY banner_lang
    ADD CONSTRAINT banner_fk FOREIGN KEY (banner_id) REFERENCES banner(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.banner_lang DROP CONSTRAINT banner_fk;
       public       postgres    false    2497    188    190            [
           2606    16912    bg_fk    FK CONSTRAINT     }   ALTER TABLE ONLY bg_lang
    ADD CONSTRAINT bg_fk FOREIGN KEY (bg_id) REFERENCES bg(id) ON UPDATE CASCADE ON DELETE CASCADE;
 7   ALTER TABLE ONLY public.bg_lang DROP CONSTRAINT bg_fk;
       public       postgres    false    2500    193    191            ]
           2606    16917    brand_fk    FK CONSTRAINT     �   ALTER TABLE ONLY brand_lang
    ADD CONSTRAINT brand_fk FOREIGN KEY (brand_id) REFERENCES brand(id) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.brand_lang DROP CONSTRAINT brand_fk;
       public       postgres    false    2503    196    194            �
           2606    17414    brand_size_fk    FK CONSTRAINT     �   ALTER TABLE ONLY brand_size
    ADD CONSTRAINT brand_size_fk FOREIGN KEY (brand_id) REFERENCES brand(id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.brand_size DROP CONSTRAINT brand_size_fk;
       public       postgres    false    283    194    2503            �
           2606    17427    brand_size_fk    FK CONSTRAINT     �   ALTER TABLE ONLY brand_size_to_category
    ADD CONSTRAINT brand_size_fk FOREIGN KEY (brand_size_id) REFERENCES brand_size(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.brand_size_to_category DROP CONSTRAINT brand_size_fk;
       public       postgres    false    2631    283    285            �
           2606    16922    category_fk    FK CONSTRAINT     �   ALTER TABLE ONLY tax_group_to_category
    ADD CONSTRAINT category_fk FOREIGN KEY (category_id) REFERENCES category(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.tax_group_to_category DROP CONSTRAINT category_fk;
       public       postgres    false    261    197    2508            `
           2606    16927    category_fk    FK CONSTRAINT     �   ALTER TABLE ONLY category_lang
    ADD CONSTRAINT category_fk FOREIGN KEY (category_id) REFERENCES category(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.category_lang DROP CONSTRAINT category_fk;
       public       postgres    false    2508    199    197            �
           2606    17432    category_fk    FK CONSTRAINT     �   ALTER TABLE ONLY brand_size_to_category
    ADD CONSTRAINT category_fk FOREIGN KEY (category_id) REFERENCES category(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.brand_size_to_category DROP CONSTRAINT category_fk;
       public       postgres    false    2508    197    285            _
           2606    16932    category_product_unit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY category
    ADD CONSTRAINT category_product_unit_fkey FOREIGN KEY (product_unit_id) REFERENCES product_unit(id);
 M   ALTER TABLE ONLY public.category DROP CONSTRAINT category_product_unit_fkey;
       public       postgres    false    2556    233    197            b
           2606    16937    event_fk    FK CONSTRAINT     �   ALTER TABLE ONLY event_lang
    ADD CONSTRAINT event_fk FOREIGN KEY (event_id) REFERENCES event(id) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.event_lang DROP CONSTRAINT event_fk;
       public       postgres    false    2515    204    202            o
           2606    16942    fki_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY product_category
    ADD CONSTRAINT fki_category_id FOREIGN KEY (category_id) REFERENCES category(id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.product_category DROP CONSTRAINT fki_category_id;
       public       postgres    false    2508    224    197            p
           2606    16947    fki_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY product_category
    ADD CONSTRAINT fki_product_id FOREIGN KEY (product_id) REFERENCES product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.product_category DROP CONSTRAINT fki_product_id;
       public       postgres    false    2541    224    223            �
           2606    16952    fki_tax_option_tax_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY tax_option
    ADD CONSTRAINT fki_tax_option_tax_group_id FOREIGN KEY (tax_group_id) REFERENCES tax_group(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.tax_option DROP CONSTRAINT fki_tax_option_tax_group_id;
       public       postgres    false    2587    263    258            �
           2606    17446    label_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_label_history
    ADD CONSTRAINT label_fk FOREIGN KEY (label_id) REFERENCES order_label(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.order_label_history DROP CONSTRAINT label_fk;
       public       postgres    false    287    2530    213            T
           2606    16957    language_fk    FK CONSTRAINT     p   ALTER TABLE ONLY article_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id);
 B   ALTER TABLE ONLY public.article_lang DROP CONSTRAINT language_fk;
       public       postgres    false    183    207    2521            l
           2606    16962    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY page_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ?   ALTER TABLE ONLY public.page_lang DROP CONSTRAINT language_fk;
       public       postgres    false    222    207    2521            Z
           2606    16967    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY banner_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 A   ALTER TABLE ONLY public.banner_lang DROP CONSTRAINT language_fk;
       public       postgres    false    190    2521    207            \
           2606    16972    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY bg_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 =   ALTER TABLE ONLY public.bg_lang DROP CONSTRAINT language_fk;
       public       postgres    false    207    2521    193            ^
           2606    16977    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY brand_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 @   ALTER TABLE ONLY public.brand_lang DROP CONSTRAINT language_fk;
       public       postgres    false    2521    196    207            a
           2606    16982    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY category_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 C   ALTER TABLE ONLY public.category_lang DROP CONSTRAINT language_fk;
       public       postgres    false    2521    199    207            c
           2606    16987    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY event_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 @   ALTER TABLE ONLY public.event_lang DROP CONSTRAINT language_fk;
       public       postgres    false    2521    204    207            f
           2606    16992    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_delivery_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.order_delivery_lang DROP CONSTRAINT language_fk;
       public       postgres    false    212    207    2521            h
           2606    16997    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_label_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.order_label_lang DROP CONSTRAINT language_fk;
       public       postgres    false    2521    214    207            s
           2606    17002    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.product_lang DROP CONSTRAINT language_fk;
       public       postgres    false    2521    227    207            y
           2606    17007    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_unit_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.product_unit_lang DROP CONSTRAINT language_fk;
       public       postgres    false    207    2521    234            }
           2606    17012    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_variant_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.product_variant_lang DROP CONSTRAINT language_fk;
       public       postgres    false    2521    237    207            �
           2606    17017    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY seo_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 >   ALTER TABLE ONLY public.seo_lang DROP CONSTRAINT language_fk;
       public       postgres    false    2521    207    247            �
           2606    17022    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY seo_category_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.seo_category_lang DROP CONSTRAINT language_fk;
       public       postgres    false    242    207    2521            �
           2606    17027    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY seo_dynamic_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.seo_dynamic_lang DROP CONSTRAINT language_fk;
       public       postgres    false    207    2521    245            �
           2606    17032    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY service_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.service_lang DROP CONSTRAINT language_fk;
       public       postgres    false    250    2521    207            �
           2606    17037    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY slider_image_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.slider_image_lang DROP CONSTRAINT language_fk;
       public       postgres    false    2521    207    254            �
           2606    17042    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY tax_group_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.tax_group_lang DROP CONSTRAINT language_fk;
       public       postgres    false    259    207    2521            �
           2606    17047    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY tax_option_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.tax_option_lang DROP CONSTRAINT language_fk;
       public       postgres    false    264    2521    207            �
           2606    17052    language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY stock_lang
    ADD CONSTRAINT language_fk FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 @   ALTER TABLE ONLY public.stock_lang DROP CONSTRAINT language_fk;
       public       postgres    false    257    2521    207            �
           2606    17451    order_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_label_history
    ADD CONSTRAINT order_fk FOREIGN KEY (order_id) REFERENCES "order"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.order_label_history DROP CONSTRAINT order_fk;
       public       postgres    false    287    210    2525            �
           2606    17472    order_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_log
    ADD CONSTRAINT order_fk FOREIGN KEY (order_id) REFERENCES "order"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.order_log DROP CONSTRAINT order_fk;
       public       postgres    false    210    2525    289            �
           2606    17514    order_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_product_log
    ADD CONSTRAINT order_fk FOREIGN KEY (order_id) REFERENCES "order"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.order_product_log DROP CONSTRAINT order_fk;
       public       postgres    false    293    210    2525            �
           2606    17504    order_product_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_product_log
    ADD CONSTRAINT order_product_fk FOREIGN KEY (order_product_id) REFERENCES order_product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.order_product_log DROP CONSTRAINT order_product_fk;
       public       postgres    false    215    2534    293            g
           2606    17057    orders_delivery_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_delivery_lang
    ADD CONSTRAINT orders_delivery_fk FOREIGN KEY (order_delivery_id) REFERENCES order_delivery(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.order_delivery_lang DROP CONSTRAINT orders_delivery_fk;
       public       postgres    false    2527    212    211            i
           2606    17062    orders_label_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_label_lang
    ADD CONSTRAINT orders_label_fk FOREIGN KEY (order_label_id) REFERENCES order_label(id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.order_label_lang DROP CONSTRAINT orders_label_fk;
       public       postgres    false    214    213    2530            d
           2606    17067    orders_orders_delivery_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "order"
    ADD CONSTRAINT orders_orders_delivery_id_fk FOREIGN KEY (delivery) REFERENCES order_delivery(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."order" DROP CONSTRAINT orders_orders_delivery_id_fk;
       public       postgres    false    211    210    2527            e
           2606    17072    orders_orders_label_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY "order"
    ADD CONSTRAINT orders_orders_label_id_fk FOREIGN KEY (label) REFERENCES order_label(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public."order" DROP CONSTRAINT orders_orders_label_id_fk;
       public       postgres    false    210    213    2530            j
           2606    17077    orders_products_orders_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_product
    ADD CONSTRAINT orders_products_orders_id_fk FOREIGN KEY (order_id) REFERENCES "order"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.order_product DROP CONSTRAINT orders_products_orders_id_fk;
       public       postgres    false    215    210    2525            k
           2606    17082 5   orders_products_product_variant_product_variant_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_product
    ADD CONSTRAINT orders_products_product_variant_product_variant_id_fk FOREIGN KEY (product_variant_id) REFERENCES product_variant(id) ON UPDATE CASCADE ON DELETE SET NULL;
 m   ALTER TABLE ONLY public.order_product DROP CONSTRAINT orders_products_product_variant_product_variant_id_fk;
       public       postgres    false    215    236    2559            m
           2606    17087    page_fk    FK CONSTRAINT     �   ALTER TABLE ONLY page_lang
    ADD CONSTRAINT page_fk FOREIGN KEY (page_id) REFERENCES page(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ;   ALTER TABLE ONLY public.page_lang DROP CONSTRAINT page_fk;
       public       postgres    false    222    2536    220            n
           2606    17092    product_brand_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product
    ADD CONSTRAINT product_brand_fk FOREIGN KEY (brand_id) REFERENCES brand(id) ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY public.product DROP CONSTRAINT product_brand_fk;
       public       postgres    false    223    194    2503            t
           2606    17097 
   product_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_lang
    ADD CONSTRAINT product_fk FOREIGN KEY (product_id) REFERENCES product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.product_lang DROP CONSTRAINT product_fk;
       public       postgres    false    2541    223    227            q
           2606    17102    product_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_image
    ADD CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_id_fk;
       public       postgres    false    2541    223    225            u
           2606    17107 $   product_option_product_product_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_option
    ADD CONSTRAINT product_option_product_product_id_fk FOREIGN KEY (product_id) REFERENCES product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.product_option DROP CONSTRAINT product_option_product_product_id_fk;
       public       postgres    false    223    228    2541            v
           2606    17112 *   product_option_tax_option_tax_option_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_option
    ADD CONSTRAINT product_option_tax_option_tax_option_id_fk FOREIGN KEY (option_id) REFERENCES tax_option(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.product_option DROP CONSTRAINT product_option_tax_option_tax_option_id_fk;
       public       postgres    false    228    2595    263            w
           2606    17117 3   product_stock_product_variant_product_variant_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_stock
    ADD CONSTRAINT product_stock_product_variant_product_variant_id_fk FOREIGN KEY (product_variant_id) REFERENCES product_variant(id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.product_stock DROP CONSTRAINT product_stock_product_variant_product_variant_id_fk;
       public       postgres    false    2559    230    236            x
           2606    17122    product_stock_stock_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY product_stock
    ADD CONSTRAINT product_stock_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES stock(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.product_stock DROP CONSTRAINT product_stock_stock_id_fkey;
       public       postgres    false    2554    231    230            z
           2606    17127    product_unit_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_unit_lang
    ADD CONSTRAINT product_unit_fk FOREIGN KEY (product_unit_id) REFERENCES product_unit(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.product_unit_lang DROP CONSTRAINT product_unit_fk;
       public       postgres    false    234    233    2556            ~
           2606    17132    product_variant_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_variant_lang
    ADD CONSTRAINT product_variant_fk FOREIGN KEY (product_variant_id) REFERENCES product_variant(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.product_variant_lang DROP CONSTRAINT product_variant_fk;
       public       postgres    false    236    2559    237            r
           2606    17137    product_variant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY product_image
    ADD CONSTRAINT product_variant_id_fkey FOREIGN KEY (product_variant_id) REFERENCES product_variant(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_variant_id_fkey;
       public       postgres    false    225    236    2559            
           2606    17142 <   product_variant_option_product_variant_product_variant_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_variant_option
    ADD CONSTRAINT product_variant_option_product_variant_product_variant_id_fk FOREIGN KEY (product_variant_id) REFERENCES product_variant(id) ON UPDATE CASCADE ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.product_variant_option DROP CONSTRAINT product_variant_option_product_variant_product_variant_id_fk;
       public       postgres    false    236    2559    238            �
           2606    17322 ?   product_variant_option_tax_variant_option_tax_variant_option_id    FK CONSTRAINT     �   ALTER TABLE ONLY product_variant_option
    ADD CONSTRAINT product_variant_option_tax_variant_option_tax_variant_option_id FOREIGN KEY (option_id) REFERENCES tax_variant_option(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.product_variant_option DROP CONSTRAINT product_variant_option_tax_variant_option_tax_variant_option_id;
       public       postgres    false    273    238    2617            {
           2606    17152 %   product_variant_product_product_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_variant
    ADD CONSTRAINT product_variant_product_product_id_fk FOREIGN KEY (product_id) REFERENCES product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT product_variant_product_product_id_fk;
       public       postgres    false    223    2541    236            |
           2606    17157 !   product_variant_product_unit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY product_variant
    ADD CONSTRAINT product_variant_product_unit_fkey FOREIGN KEY (product_unit_id) REFERENCES product_unit(id) ON UPDATE CASCADE ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT product_variant_product_unit_fkey;
       public       postgres    false    236    2556    233            �
           2606    17355    product_video_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product_video
    ADD CONSTRAINT product_video_fk FOREIGN KEY (product_id) REFERENCES product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.product_video DROP CONSTRAINT product_video_fk;
       public       postgres    false    223    279    2541            �
           2606    17162    seo_category_fk    FK CONSTRAINT     �   ALTER TABLE ONLY seo_category_lang
    ADD CONSTRAINT seo_category_fk FOREIGN KEY (seo_category_id) REFERENCES seo_category(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.seo_category_lang DROP CONSTRAINT seo_category_fk;
       public       postgres    false    241    2569    242            �
           2606    17167    seo_category_seo_dynamic_fk    FK CONSTRAINT     �   ALTER TABLE ONLY seo_dynamic
    ADD CONSTRAINT seo_category_seo_dynamic_fk FOREIGN KEY (seo_category_id) REFERENCES seo_category(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.seo_dynamic DROP CONSTRAINT seo_category_seo_dynamic_fk;
       public       postgres    false    241    244    2569            �
           2606    17172    seo_dynamic_fk    FK CONSTRAINT     �   ALTER TABLE ONLY seo_dynamic_lang
    ADD CONSTRAINT seo_dynamic_fk FOREIGN KEY (seo_dynamic_id) REFERENCES seo_dynamic(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.seo_dynamic_lang DROP CONSTRAINT seo_dynamic_fk;
       public       postgres    false    244    245    2572            �
           2606    17177    seo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY seo_lang
    ADD CONSTRAINT seo_fk FOREIGN KEY (seo_id) REFERENCES seo(id) ON UPDATE CASCADE ON DELETE CASCADE;
 9   ALTER TABLE ONLY public.seo_lang DROP CONSTRAINT seo_fk;
       public       postgres    false    240    2567    247            �
           2606    17182 
   service_fk    FK CONSTRAINT     �   ALTER TABLE ONLY service_lang
    ADD CONSTRAINT service_fk FOREIGN KEY (service_id) REFERENCES service(id) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.service_lang DROP CONSTRAINT service_fk;
       public       postgres    false    249    2576    250            �
           2606    17187    slider_image_fk    FK CONSTRAINT     �   ALTER TABLE ONLY slider_image_lang
    ADD CONSTRAINT slider_image_fk FOREIGN KEY (slider_image_id) REFERENCES slider_image(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.slider_image_lang DROP CONSTRAINT slider_image_fk;
       public       postgres    false    254    2582    253            �
           2606    17192    slider_slider_image_fk    FK CONSTRAINT     �   ALTER TABLE ONLY slider_image
    ADD CONSTRAINT slider_slider_image_fk FOREIGN KEY (slider_id) REFERENCES slider(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.slider_image DROP CONSTRAINT slider_slider_image_fk;
       public       postgres    false    2580    252    253            �
           2606    17197    stock_fk    FK CONSTRAINT     �   ALTER TABLE ONLY stock_lang
    ADD CONSTRAINT stock_fk FOREIGN KEY (stock_id) REFERENCES stock(id) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.stock_lang DROP CONSTRAINT stock_fk;
       public       postgres    false    231    257    2554            �
           2606    17202    tax_group_fk    FK CONSTRAINT     �   ALTER TABLE ONLY tax_group_to_category
    ADD CONSTRAINT tax_group_fk FOREIGN KEY (tax_group_id) REFERENCES tax_group(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.tax_group_to_category DROP CONSTRAINT tax_group_fk;
       public       postgres    false    258    2587    261            �
           2606    17207    tax_group_fk    FK CONSTRAINT     �   ALTER TABLE ONLY tax_group_lang
    ADD CONSTRAINT tax_group_fk FOREIGN KEY (tax_group_id) REFERENCES tax_group(id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.tax_group_lang DROP CONSTRAINT tax_group_fk;
       public       postgres    false    258    259    2587            �
           2606    17212    tax_option_fk    FK CONSTRAINT     �   ALTER TABLE ONLY tax_option_lang
    ADD CONSTRAINT tax_option_fk FOREIGN KEY (tax_option_id) REFERENCES tax_option(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.tax_option_lang DROP CONSTRAINT tax_option_fk;
       public       postgres    false    264    263    2595            �
           2606    17260 $   tax_variant_group_lang_language_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY tax_variant_group_lang
    ADD CONSTRAINT tax_variant_group_lang_language_fkey FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.tax_variant_group_lang DROP CONSTRAINT tax_variant_group_lang_language_fkey;
       public       postgres    false    207    2521    271            �
           2606    17255 -   tax_variant_group_lang_tax_variant_group_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY tax_variant_group_lang
    ADD CONSTRAINT tax_variant_group_lang_tax_variant_group_fkey FOREIGN KEY (tax_variant_group_id) REFERENCES tax_variant_group(id) ON UPDATE CASCADE ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.tax_variant_group_lang DROP CONSTRAINT tax_variant_group_lang_tax_variant_group_fkey;
       public       postgres    false    269    2610    271            �
           2606    17314 +   tax_variant_group_to_category_category_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY tax_variant_group_to_category
    ADD CONSTRAINT tax_variant_group_to_category_category_fkey FOREIGN KEY (category_id) REFERENCES category(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.tax_variant_group_to_category DROP CONSTRAINT tax_variant_group_to_category_category_fkey;
       public       postgres    false    197    277    2508            �
           2606    17309 4   tax_variant_group_to_category_tax_variant_group_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY tax_variant_group_to_category
    ADD CONSTRAINT tax_variant_group_to_category_tax_variant_group_fkey FOREIGN KEY (tax_variant_group_id) REFERENCES tax_variant_group(id) ON UPDATE CASCADE ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.tax_variant_group_to_category DROP CONSTRAINT tax_variant_group_to_category_tax_variant_group_fkey;
       public       postgres    false    277    2610    269            �
           2606    17295 %   tax_variant_option_lang_language_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY tax_variant_option_lang
    ADD CONSTRAINT tax_variant_option_lang_language_fkey FOREIGN KEY (language_id) REFERENCES language(id) ON UPDATE CASCADE ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.tax_variant_option_lang DROP CONSTRAINT tax_variant_option_lang_language_fkey;
       public       postgres    false    2521    275    207            �
           2606    17290 /   tax_variant_option_lang_tax_variant_option_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY tax_variant_option_lang
    ADD CONSTRAINT tax_variant_option_lang_tax_variant_option_fkey FOREIGN KEY (tax_variant_option_id) REFERENCES tax_variant_option(id) ON UPDATE CASCADE ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.tax_variant_option_lang DROP CONSTRAINT tax_variant_option_lang_tax_variant_option_fkey;
       public       postgres    false    273    2617    275            �
           2606    17456    user_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_label_history
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES "user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.order_label_history DROP CONSTRAINT user_fk;
       public       postgres    false    2606    287    266            �
           2606    17477    user_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_log
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES "user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ;   ALTER TABLE ONLY public.order_log DROP CONSTRAINT user_fk;
       public       postgres    false    2606    289    266            �
           2606    17509    user_fk    FK CONSTRAINT     �   ALTER TABLE ONLY order_product_log
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES "user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.order_product_log DROP CONSTRAINT user_fk;
       public       postgres    false    293    2606    266               %   x�3�,�L6�7��*H�44177�0�00������ n�g           x��TK�7]K���;{k�^����M�]��`�=�h�s��``�l�3�7�#�-�o��F�fU��n�rs������?���������������s~޼���⃌�S�#��@Q�(�#�]�$e	ăN�����ӽ8a�C��OV�2�ARkt91r���[L�ިFr��c��t�#�h�û��C�A��wIb��h $P�AM��s�_�4�ypL�y'�3��B�d���a��R��ђ� HR�z��t���_��J�R�^�8Ł6e�A�s��w��DK�IlGl�Sy�vʉ�T]�2���Ϯ6[��w|2�8I��j�W�t��ҵ�5�
ƩIy�f��m�9�,S@J���·�!8Oł�~���+#t*vI�C�E/n�(Yѽ���-�V�4@bR҄X���΄.-b5��~�dk0��"��(z�x6m/��\՚Q����ȱ>��jo���sP���Y=>�g	G�)�fBSzz��V��4�w�|�RBx�%���C���Hz���u�9�`���A "��S��V
-�}�kk���������-wz}��Y'�n��m���6p����eLI-�6�"ڔ�I���p.H�{�fXO���A}����k�f>�e�Y���o�U���M���zK�E�?�6}��Z���R����	���wd��xm�tw\ F?��}��
����u����ɯ�w�����ja��QtD{�C�*q�{�����?yy��ˉ���n���=�����}�߷�}�߷��C�on�{��o���|=�             x�KL����4�445026��4������ K�           x��U�n�@>w��/���x}!� q��q��!�+'�譡�Z�EBBB���B�А�y��1�N�qzAJ�/�|;3�|�΋�-�����n���xc�9~�E$���jn���_=}Q��2�bT#M���U������;7q�n^����� �l��[�t���C��]��nV�[+O+Ȋa�� s����H�}6�<z�U)M +lg�EE.ܴ�jA���HȚI�g�~�k���l7i[����|���(��d@�x̴<�#��ٰ_�=�My���7�����&��=��2�A�B�@�,�^��'��JD22�'KH�	�=����ZU?����P�'�K7zȚm���ޭ�IN K��A���b����l��leF�Ř�+Ș�E/��[��{� �㜹)L��H��Q�
��}�d����F���0�e�CԤz��cib��1���h���n�b��|mcp��� iFP�|X�t��À@�Mz�c��}!���ӟ�ऎ��@��f�����.د_i4��xHm�#.���ܗ��X�j&��}��s���S���<�����hC ��:�2��&М�!��V��������%�ܓ<VR��Y�϶�H�Q�$����s/�FGa�	d�-�^p�Z�Ie���⊫	'E�t�=�F^]jh��`��@��ZA�X'iڎO�HsX�6a�/����[B�v�Vr/�'kg���D!��Zo��K~��Cp.�
b�V7�[r�E;�`����N�J�3#���1����         �   x�]�Ar!E��.����H�P�fn�{:��(�pG����&�퓡a}��!\��j�_���j[c^�]%��&i�J�	[�;z`�f�0���U���y�S�3����������P�tlTNۈ����ⓡP����)eD�s����mH�=(%��F_�nP��t��t��,��l�42PXW¿d:o�ι�ӴA             x������ � �      !      x������ � �      #      x������ � �      $      x������ � �      &      x������ � �      '      x�3����4� #S.d��W� xM$      )   <   x�3�4�tq��p
	��C��ļ̂Ģ�b.�G� � W?��EiE�y\1z\\\ ���      �      x������ � �      �      x������ � �      *   �   x���1� @�ٜ%Dv���DO��
�ԩ{���,��,yy�d@���w�6��D�6"Q�h�)&�����b������(�x>#�tt:|��(=�����Ȇ�a�޳�t��"-I@�h�)�mb��-��C?C�      ,   �   x�e�K
�0���)z�T���;�P���^�uE�s�֫̑�iua%a���oV����bEs�;/��\�"�r�(�����G�/|���dB��_�2v�hno�ݓ�'1��I�R�NϚ�k�6y�'��\b�����rH���:�1'%ck"���Y�eq;�.�mfK̙��cb?d����      -      x������ � �      /      x������ � �      1      x������ � �      2      x������ � �      4   m   x�3�L�"]W?N׼�����4NCssC3cs3df�gQ)��r^Xp��b����.츰����.c��D �u估�®�6\�~a/PoP�<���qqq �K3�      6   �  x���In�0E��a��$ݥ��&�!�� ��(j����߯�ܰ�e�����Aq�� g�AB�q����)��X��&��&�K�K�mV���mu��Np�6���ۢ0E�j�_��ȧ�x:����R��L��6�$���[L����ݳ�I����3�o�Բ� �Q2a���������ֻ�zɐ�D���R� �J������	b	�����Ԓ��]�\�r@��λ�]���M~�ZC]�ə�G������b���C���wi\CKy�"�f|v��Ɨ�{�X�AnX*�!c�͜n���(�k%}%1��g�ڵ�b'Ls5���a��SR�s���5O����N�ƶ4�޸�Y�$�A�w�����jhJ�cqXY��od�_R"�Ǜ����)���{d�_K�Ԝ6^u�ͧ�xp����@r��z�N�ە��ó'�[>�jFG-OMw��Y8���ɓ2��
��6+k���:Ox��s�]u%H�AR4����3$�RH�!�}?ͧ��r.¾+c{���������Ɠ������C���ư�~
��+`��U��=��mu��<]�C�-��)�eTA��D�ƻS��6���`:�	�\� g�'��i�vU2��|��BS���yue]+�.,�?��E�؇�� ���v��Z�z_      7      x������ � �      8      x������ � �      9      x������ � �      :      x������ � �      �      x������ � �      ;      x������ � �      �      x������ � �      <      x������ � �      �      x������ � �      A      x������ � �      C      x������ � �      D   *   x�3��4���LC 05453
qZr�`J���b���� SY      E      x������ � �      F      x������ � �      H   r   x�3��4⼰�[.N���bӅ}�u]�,MMt9c�8�SRSK�tAR)i).CK�	s.�R�0����,��L�LM��s�u�Ku,���A�=... ��**      I      x������ � �      K      x������ � �      N      x������ � �      O      x������ � �      Q      x������ � �      R      x������ � �      S      x������ � �      |      x������ � �      U      x������ � �      V      x������ � �      W      x������ � �      Y      x������ � �      Z      x������ � �      \      x������ � �      ^      x������ � �      _      x������ � �      �      x������ � �      a      x������ � �      b      x������ � �      c      x������ � �      ~      x������ � �      L      x������ � �      f      x������ � �      g      x������ � �      h      x������ � �      j      x������ � �      l      x������ � �      m      x������ � �      r      x������ � �      t      x������ � �      z      x������ � �      v      x������ � �      x      x������ � �      o   �   x�M��
�0  ���^���ѭJ�J$�6Epf;4z�]�}����&rOu=�T�-a�i�z�j%ow�1��O�iR!�k�Q7ep�]�&�Z�����Ͱ��'�.1�K�ӯَ�Ns�?=�`&��G�e�/qw*F     