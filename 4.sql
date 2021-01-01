PGDMP     6                    x            postgres    12.2    12.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13318    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3038                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    1            �            1259    17244    assignments    TABLE     j   CREATE TABLE public.assignments (
    id integer NOT NULL,
    user_id integer,
    assignment integer
);
    DROP TABLE public.assignments;
       public         heap    postgres    false            �            1259    17247    assignments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.assignments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.assignments_id_seq;
       public          postgres    false    203            �           0    0    assignments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.assignments_id_seq OWNED BY public.assignments.id;
          public          postgres    false    204            �            1259    17249    complications    TABLE     �   CREATE TABLE public.complications (
    complication_id integer NOT NULL,
    patient_id integer,
    complication_title text,
    complication_details text,
    disease_id integer
);
 !   DROP TABLE public.complications;
       public         heap    postgres    false            �            1259    17255 !   complications_complication_id_seq    SEQUENCE     �   CREATE SEQUENCE public.complications_complication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.complications_complication_id_seq;
       public          postgres    false    205            �           0    0 !   complications_complication_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.complications_complication_id_seq OWNED BY public.complications.complication_id;
          public          postgres    false    206            �            1259    17257 	   diagnoses    TABLE     �   CREATE TABLE public.diagnoses (
    diagnosis_id integer NOT NULL,
    patient_id integer,
    symptom_id integer,
    disease_id integer,
    doc_notes_on_diagnosis text,
    history integer,
    doctor integer,
    examinations integer
);
    DROP TABLE public.diagnoses;
       public         heap    postgres    false            �            1259    17263    diagnoses_diagnosis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.diagnoses_diagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.diagnoses_diagnosis_id_seq;
       public          postgres    false    207            �           0    0    diagnoses_diagnosis_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.diagnoses_diagnosis_id_seq OWNED BY public.diagnoses.diagnosis_id;
          public          postgres    false    208            �            1259    17265    diseases    TABLE        CREATE TABLE public.diseases (
    disease_id integer NOT NULL,
    disease_name text,
    category text,
    verified text
);
    DROP TABLE public.diseases;
       public         heap    postgres    false            �            1259    17271    diseases_disease_id_seq    SEQUENCE     �   CREATE SEQUENCE public.diseases_disease_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.diseases_disease_id_seq;
       public          postgres    false    209            �           0    0    diseases_disease_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.diseases_disease_id_seq OWNED BY public.diseases.disease_id;
          public          postgres    false    210            �            1259    17273    drugs    TABLE     i   CREATE TABLE public.drugs (
    drug_id integer NOT NULL,
    drug_name text,
    drug_treatment text
);
    DROP TABLE public.drugs;
       public         heap    postgres    false            �            1259    17279    drugs_drug_id_seq    SEQUENCE     �   CREATE SEQUENCE public.drugs_drug_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.drugs_drug_id_seq;
       public          postgres    false    211            �           0    0    drugs_drug_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.drugs_drug_id_seq OWNED BY public.drugs.drug_id;
          public          postgres    false    212            �            1259    17281    examinations    TABLE     �   CREATE TABLE public.examinations (
    exam_id integer NOT NULL,
    patient_id integer,
    physical_examinations integer,
    imaging integer,
    other_examination integer,
    lab_tests integer,
    doc_notes_on_tests text
);
     DROP TABLE public.examinations;
       public         heap    postgres    false            �            1259    17287    examinations_exam_id_seq    SEQUENCE     �   CREATE SEQUENCE public.examinations_exam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.examinations_exam_id_seq;
       public          postgres    false    213            �           0    0    examinations_exam_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.examinations_exam_id_seq OWNED BY public.examinations.exam_id;
          public          postgres    false    214            �            1259    17289 	   histories    TABLE     �  CREATE TABLE public.histories (
    patient_id integer,
    history_id integer NOT NULL,
    general_complaints text,
    past_medical_history text,
    general_pa_ram_eters text,
    respiratory_history text,
    cardiovascular_history text,
    gastrointestinal_history text,
    uri_nary_history text,
    genital_history text,
    haematologic_and_lymphatic_history text,
    neurological_history text,
    muscoskeletal_history text,
    social_and_family_history text,
    doc_notes_on_history text
);
    DROP TABLE public.histories;
       public         heap    postgres    false            �            1259    17295    histories_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.histories_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.histories_history_id_seq;
       public          postgres    false    215            �           0    0    histories_history_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.histories_history_id_seq OWNED BY public.histories.history_id;
          public          postgres    false    216            �            1259    17297    imagings    TABLE       CREATE TABLE public.imagings (
    imaging_exam_id integer NOT NULL,
    patient_id integer,
    ultrasound text,
    ct text,
    mri text,
    position_emission_tomography_pet text,
    endoscopy text,
    special_techniques text,
    doc_notes_imaging text
);
    DROP TABLE public.imagings;
       public         heap    postgres    false            �            1259    17303    imagings_imaging_exam_id_seq    SEQUENCE     �   CREATE SEQUENCE public.imagings_imaging_exam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.imagings_imaging_exam_id_seq;
       public          postgres    false    217            �           0    0    imagings_imaging_exam_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.imagings_imaging_exam_id_seq OWNED BY public.imagings.imaging_exam_id;
          public          postgres    false    218            �            1259    17305 	   lab_tests    TABLE     %  CREATE TABLE public.lab_tests (
    lab_test_id integer NOT NULL,
    patient_id integer,
    cerebrospinal_fl_uid text,
    coagulation text,
    cytogenics text,
    endocrinology text,
    enzymology text,
    fecal_analysis text,
    flow_cytometry text,
    hematology text,
    immunology text,
    microbiology text,
    molecular_testing text,
    serology text,
    serum_tests text,
    toxicology_and_therapeutic_drug_monitoring text,
    tumor_markers text,
    uri_nalysis text,
    special_panels text,
    doc_notes_lab_tests text
);
    DROP TABLE public.lab_tests;
       public         heap    postgres    false            �            1259    17311    lab_tests_lab_test_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lab_tests_lab_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.lab_tests_lab_test_id_seq;
       public          postgres    false    219            �           0    0    lab_tests_lab_test_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.lab_tests_lab_test_id_seq OWNED BY public.lab_tests.lab_test_id;
          public          postgres    false    220            �            1259    17313    other_examinations    TABLE     U  CREATE TABLE public.other_examinations (
    o_exam_id integer NOT NULL,
    patient_id integer,
    biopsy text,
    ecg text,
    gastroentorology text,
    gynaecology text,
    ophtamology text,
    pulmonology text,
    sailometry_test text,
    tensilon_test text,
    tuberclin_skin_test text,
    doc_notes_other_examination text
);
 &   DROP TABLE public.other_examinations;
       public         heap    postgres    false            �            1259    17319     other_examinations_o_exam_id_seq    SEQUENCE     �   CREATE SEQUENCE public.other_examinations_o_exam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.other_examinations_o_exam_id_seq;
       public          postgres    false    221            �           0    0     other_examinations_o_exam_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.other_examinations_o_exam_id_seq OWNED BY public.other_examinations.o_exam_id;
          public          postgres    false    222            �            1259    17321    patient_symptoms    TABLE     �   CREATE TABLE public.patient_symptoms (
    patient_id integer,
    symptom_id integer NOT NULL,
    start_date timestamp with time zone,
    patient_description text
);
 $   DROP TABLE public.patient_symptoms;
       public         heap    postgres    false            �            1259    17327    patient_symptoms_symptom_id_seq    SEQUENCE     �   CREATE SEQUENCE public.patient_symptoms_symptom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.patient_symptoms_symptom_id_seq;
       public          postgres    false    223            �           0    0    patient_symptoms_symptom_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.patient_symptoms_symptom_id_seq OWNED BY public.patient_symptoms.symptom_id;
          public          postgres    false    224            �            1259    17329    patients    TABLE     �   CREATE TABLE public.patients (
    patient_id integer NOT NULL,
    gender text,
    date_of_birth timestamp with time zone,
    subgroup text,
    patient_name text,
    verified text
);
    DROP TABLE public.patients;
       public         heap    postgres    false            �            1259    17335    patients_patient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.patients_patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.patients_patient_id_seq;
       public          postgres    false    225            �           0    0    patients_patient_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.patients_patient_id_seq OWNED BY public.patients.patient_id;
          public          postgres    false    226            �            1259    17337    physical_examinations    TABLE     �  CREATE TABLE public.physical_examinations (
    physical_exam_id integer NOT NULL,
    patient_id integer,
    neurological_exam text,
    general_appearance text,
    vital_signs text,
    respiratory_exam text,
    cardiovascular_exam text,
    abdominal_exam text,
    genital_exam text,
    anorectal_exam text,
    extremities text,
    muscoskeletal_exam text,
    doc_notes_physical_exam text
);
 )   DROP TABLE public.physical_examinations;
       public         heap    postgres    false            �            1259    17343 *   physical_examinations_physical_exam_id_seq    SEQUENCE     �   CREATE SEQUENCE public.physical_examinations_physical_exam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.physical_examinations_physical_exam_id_seq;
       public          postgres    false    227            �           0    0 *   physical_examinations_physical_exam_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.physical_examinations_physical_exam_id_seq OWNED BY public.physical_examinations.physical_exam_id;
          public          postgres    false    228            �            1259    17345 	   prognoses    TABLE     �   CREATE TABLE public.prognoses (
    prognosis_id integer NOT NULL,
    patient integer,
    diagnosis integer,
    treatment integer,
    treatment_given text,
    drug integer,
    prognosis text,
    doctor_comment text,
    history integer
);
    DROP TABLE public.prognoses;
       public         heap    postgres    false            �            1259    17351    prognoses_prognosis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prognoses_prognosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.prognoses_prognosis_id_seq;
       public          postgres    false    229            �           0    0    prognoses_prognosis_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.prognoses_prognosis_id_seq OWNED BY public.prognoses.prognosis_id;
          public          postgres    false    230            �            1259    17353    symptoms    TABLE     Y   CREATE TABLE public.symptoms (
    symptom_id integer NOT NULL,
    symptom_name text
);
    DROP TABLE public.symptoms;
       public         heap    postgres    false            �            1259    17359    symptoms_symptom_id_seq    SEQUENCE     �   CREATE SEQUENCE public.symptoms_symptom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.symptoms_symptom_id_seq;
       public          postgres    false    231            �           0    0    symptoms_symptom_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.symptoms_symptom_id_seq OWNED BY public.symptoms.symptom_id;
          public          postgres    false    232            �            1259    17361 
   treatments    TABLE     =  CREATE TABLE public.treatments (
    treatment_id integer NOT NULL,
    patient integer,
    diagnosis integer,
    drug integer,
    dosage text,
    duration integer,
    start_date timestamp with time zone,
    doc_notes_on_treatment text,
    in_out_patient text,
    complications integer,
    doctor integer
);
    DROP TABLE public.treatments;
       public         heap    postgres    false            �            1259    17367    treatments_treatment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.treatments_treatment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.treatments_treatment_id_seq;
       public          postgres    false    233            �           0    0    treatments_treatment_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.treatments_treatment_id_seq OWNED BY public.treatments.treatment_id;
          public          postgres    false    234            �            1259    17369    users    TABLE     8  CREATE TABLE public.users (
    id integer NOT NULL,
    user_name text,
    email text,
    password text,
    experience text,
    profile_pic_name text,
    role text,
    token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    17375    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    235            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    236            �
           2604    17377    assignments id    DEFAULT     p   ALTER TABLE ONLY public.assignments ALTER COLUMN id SET DEFAULT nextval('public.assignments_id_seq'::regclass);
 =   ALTER TABLE public.assignments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            �
           2604    17378    complications complication_id    DEFAULT     �   ALTER TABLE ONLY public.complications ALTER COLUMN complication_id SET DEFAULT nextval('public.complications_complication_id_seq'::regclass);
 L   ALTER TABLE public.complications ALTER COLUMN complication_id DROP DEFAULT;
       public          postgres    false    206    205            �
           2604    17379    diagnoses diagnosis_id    DEFAULT     �   ALTER TABLE ONLY public.diagnoses ALTER COLUMN diagnosis_id SET DEFAULT nextval('public.diagnoses_diagnosis_id_seq'::regclass);
 E   ALTER TABLE public.diagnoses ALTER COLUMN diagnosis_id DROP DEFAULT;
       public          postgres    false    208    207            �
           2604    17380    diseases disease_id    DEFAULT     z   ALTER TABLE ONLY public.diseases ALTER COLUMN disease_id SET DEFAULT nextval('public.diseases_disease_id_seq'::regclass);
 B   ALTER TABLE public.diseases ALTER COLUMN disease_id DROP DEFAULT;
       public          postgres    false    210    209            �
           2604    17381    drugs drug_id    DEFAULT     n   ALTER TABLE ONLY public.drugs ALTER COLUMN drug_id SET DEFAULT nextval('public.drugs_drug_id_seq'::regclass);
 <   ALTER TABLE public.drugs ALTER COLUMN drug_id DROP DEFAULT;
       public          postgres    false    212    211            �
           2604    17382    examinations exam_id    DEFAULT     |   ALTER TABLE ONLY public.examinations ALTER COLUMN exam_id SET DEFAULT nextval('public.examinations_exam_id_seq'::regclass);
 C   ALTER TABLE public.examinations ALTER COLUMN exam_id DROP DEFAULT;
       public          postgres    false    214    213            �
           2604    17383    histories history_id    DEFAULT     |   ALTER TABLE ONLY public.histories ALTER COLUMN history_id SET DEFAULT nextval('public.histories_history_id_seq'::regclass);
 C   ALTER TABLE public.histories ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    216    215            �
           2604    17384    imagings imaging_exam_id    DEFAULT     �   ALTER TABLE ONLY public.imagings ALTER COLUMN imaging_exam_id SET DEFAULT nextval('public.imagings_imaging_exam_id_seq'::regclass);
 G   ALTER TABLE public.imagings ALTER COLUMN imaging_exam_id DROP DEFAULT;
       public          postgres    false    218    217            �
           2604    17385    lab_tests lab_test_id    DEFAULT     ~   ALTER TABLE ONLY public.lab_tests ALTER COLUMN lab_test_id SET DEFAULT nextval('public.lab_tests_lab_test_id_seq'::regclass);
 D   ALTER TABLE public.lab_tests ALTER COLUMN lab_test_id DROP DEFAULT;
       public          postgres    false    220    219            �
           2604    17386    other_examinations o_exam_id    DEFAULT     �   ALTER TABLE ONLY public.other_examinations ALTER COLUMN o_exam_id SET DEFAULT nextval('public.other_examinations_o_exam_id_seq'::regclass);
 K   ALTER TABLE public.other_examinations ALTER COLUMN o_exam_id DROP DEFAULT;
       public          postgres    false    222    221            �
           2604    17387    patient_symptoms symptom_id    DEFAULT     �   ALTER TABLE ONLY public.patient_symptoms ALTER COLUMN symptom_id SET DEFAULT nextval('public.patient_symptoms_symptom_id_seq'::regclass);
 J   ALTER TABLE public.patient_symptoms ALTER COLUMN symptom_id DROP DEFAULT;
       public          postgres    false    224    223            �
           2604    17388    patients patient_id    DEFAULT     z   ALTER TABLE ONLY public.patients ALTER COLUMN patient_id SET DEFAULT nextval('public.patients_patient_id_seq'::regclass);
 B   ALTER TABLE public.patients ALTER COLUMN patient_id DROP DEFAULT;
       public          postgres    false    226    225            �
           2604    17389 &   physical_examinations physical_exam_id    DEFAULT     �   ALTER TABLE ONLY public.physical_examinations ALTER COLUMN physical_exam_id SET DEFAULT nextval('public.physical_examinations_physical_exam_id_seq'::regclass);
 U   ALTER TABLE public.physical_examinations ALTER COLUMN physical_exam_id DROP DEFAULT;
       public          postgres    false    228    227            �
           2604    17390    prognoses prognosis_id    DEFAULT     �   ALTER TABLE ONLY public.prognoses ALTER COLUMN prognosis_id SET DEFAULT nextval('public.prognoses_prognosis_id_seq'::regclass);
 E   ALTER TABLE public.prognoses ALTER COLUMN prognosis_id DROP DEFAULT;
       public          postgres    false    230    229            �
           2604    17391    symptoms symptom_id    DEFAULT     z   ALTER TABLE ONLY public.symptoms ALTER COLUMN symptom_id SET DEFAULT nextval('public.symptoms_symptom_id_seq'::regclass);
 B   ALTER TABLE public.symptoms ALTER COLUMN symptom_id DROP DEFAULT;
       public          postgres    false    232    231            �
           2604    17392    treatments treatment_id    DEFAULT     �   ALTER TABLE ONLY public.treatments ALTER COLUMN treatment_id SET DEFAULT nextval('public.treatments_treatment_id_seq'::regclass);
 F   ALTER TABLE public.treatments ALTER COLUMN treatment_id DROP DEFAULT;
       public          postgres    false    234    233                        2604    17393    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �          0    17244    assignments 
   TABLE DATA           >   COPY public.assignments (id, user_id, assignment) FROM stdin;
    public          postgres    false    203   A�       �          0    17249    complications 
   TABLE DATA           z   COPY public.complications (complication_id, patient_id, complication_title, complication_details, disease_id) FROM stdin;
    public          postgres    false    205   ^�       �          0    17257 	   diagnoses 
   TABLE DATA           �   COPY public.diagnoses (diagnosis_id, patient_id, symptom_id, disease_id, doc_notes_on_diagnosis, history, doctor, examinations) FROM stdin;
    public          postgres    false    207   {�       �          0    17265    diseases 
   TABLE DATA           P   COPY public.diseases (disease_id, disease_name, category, verified) FROM stdin;
    public          postgres    false    209   ��       �          0    17273    drugs 
   TABLE DATA           C   COPY public.drugs (drug_id, drug_name, drug_treatment) FROM stdin;
    public          postgres    false    211   ��       �          0    17281    examinations 
   TABLE DATA           �   COPY public.examinations (exam_id, patient_id, physical_examinations, imaging, other_examination, lab_tests, doc_notes_on_tests) FROM stdin;
    public          postgres    false    213   �       �          0    17289 	   histories 
   TABLE DATA           g  COPY public.histories (patient_id, history_id, general_complaints, past_medical_history, general_pa_ram_eters, respiratory_history, cardiovascular_history, gastrointestinal_history, uri_nary_history, genital_history, haematologic_and_lymphatic_history, neurological_history, muscoskeletal_history, social_and_family_history, doc_notes_on_history) FROM stdin;
    public          postgres    false    215   �       �          0    17297    imagings 
   TABLE DATA           �   COPY public.imagings (imaging_exam_id, patient_id, ultrasound, ct, mri, position_emission_tomography_pet, endoscopy, special_techniques, doc_notes_imaging) FROM stdin;
    public          postgres    false    217   F�       �          0    17305 	   lab_tests 
   TABLE DATA           c  COPY public.lab_tests (lab_test_id, patient_id, cerebrospinal_fl_uid, coagulation, cytogenics, endocrinology, enzymology, fecal_analysis, flow_cytometry, hematology, immunology, microbiology, molecular_testing, serology, serum_tests, toxicology_and_therapeutic_drug_monitoring, tumor_markers, uri_nalysis, special_panels, doc_notes_lab_tests) FROM stdin;
    public          postgres    false    219   c�       �          0    17313    other_examinations 
   TABLE DATA           �   COPY public.other_examinations (o_exam_id, patient_id, biopsy, ecg, gastroentorology, gynaecology, ophtamology, pulmonology, sailometry_test, tensilon_test, tuberclin_skin_test, doc_notes_other_examination) FROM stdin;
    public          postgres    false    221   ��       �          0    17321    patient_symptoms 
   TABLE DATA           c   COPY public.patient_symptoms (patient_id, symptom_id, start_date, patient_description) FROM stdin;
    public          postgres    false    223   ��       �          0    17329    patients 
   TABLE DATA           g   COPY public.patients (patient_id, gender, date_of_birth, subgroup, patient_name, verified) FROM stdin;
    public          postgres    false    225   ��       �          0    17337    physical_examinations 
   TABLE DATA             COPY public.physical_examinations (physical_exam_id, patient_id, neurological_exam, general_appearance, vital_signs, respiratory_exam, cardiovascular_exam, abdominal_exam, genital_exam, anorectal_exam, extremities, muscoskeletal_exam, doc_notes_physical_exam) FROM stdin;
    public          postgres    false    227   ��       �          0    17345 	   prognoses 
   TABLE DATA           �   COPY public.prognoses (prognosis_id, patient, diagnosis, treatment, treatment_given, drug, prognosis, doctor_comment, history) FROM stdin;
    public          postgres    false    229   �       �          0    17353    symptoms 
   TABLE DATA           <   COPY public.symptoms (symptom_id, symptom_name) FROM stdin;
    public          postgres    false    231   0�       �          0    17361 
   treatments 
   TABLE DATA           �   COPY public.treatments (treatment_id, patient, diagnosis, drug, dosage, duration, start_date, doc_notes_on_treatment, in_out_patient, complications, doctor) FROM stdin;
    public          postgres    false    233   M�       �          0    17369    users 
   TABLE DATA           �   COPY public.users (id, user_name, email, password, experience, profile_pic_name, role, token, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    235   j�       �           0    0    assignments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.assignments_id_seq', 1, false);
          public          postgres    false    204            �           0    0 !   complications_complication_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.complications_complication_id_seq', 1, false);
          public          postgres    false    206            �           0    0    diagnoses_diagnosis_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.diagnoses_diagnosis_id_seq', 1, false);
          public          postgres    false    208            �           0    0    diseases_disease_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.diseases_disease_id_seq', 94, true);
          public          postgres    false    210            �           0    0    drugs_drug_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.drugs_drug_id_seq', 1, false);
          public          postgres    false    212            �           0    0    examinations_exam_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.examinations_exam_id_seq', 1, false);
          public          postgres    false    214            �           0    0    histories_history_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.histories_history_id_seq', 1, true);
          public          postgres    false    216            �           0    0    imagings_imaging_exam_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.imagings_imaging_exam_id_seq', 1, false);
          public          postgres    false    218            �           0    0    lab_tests_lab_test_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.lab_tests_lab_test_id_seq', 1, false);
          public          postgres    false    220            �           0    0     other_examinations_o_exam_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.other_examinations_o_exam_id_seq', 1, false);
          public          postgres    false    222            �           0    0    patient_symptoms_symptom_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.patient_symptoms_symptom_id_seq', 1, false);
          public          postgres    false    224            �           0    0    patients_patient_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.patients_patient_id_seq', 1, true);
          public          postgres    false    226            �           0    0 *   physical_examinations_physical_exam_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.physical_examinations_physical_exam_id_seq', 1, false);
          public          postgres    false    228            �           0    0    prognoses_prognosis_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.prognoses_prognosis_id_seq', 1, false);
          public          postgres    false    230                        0    0    symptoms_symptom_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.symptoms_symptom_id_seq', 1, false);
          public          postgres    false    232                       0    0    treatments_treatment_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.treatments_treatment_id_seq', 1, false);
          public          postgres    false    234                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 15, true);
          public          postgres    false    236                       2606    17395    assignments assignments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.assignments DROP CONSTRAINT assignments_pkey;
       public            postgres    false    203                       2606    17397     complications complications_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.complications
    ADD CONSTRAINT complications_pkey PRIMARY KEY (complication_id);
 J   ALTER TABLE ONLY public.complications DROP CONSTRAINT complications_pkey;
       public            postgres    false    205                       2606    17399    diagnoses diagnoses_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.diagnoses
    ADD CONSTRAINT diagnoses_pkey PRIMARY KEY (diagnosis_id);
 B   ALTER TABLE ONLY public.diagnoses DROP CONSTRAINT diagnoses_pkey;
       public            postgres    false    207                       2606    17401    diseases diseases_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.diseases
    ADD CONSTRAINT diseases_pkey PRIMARY KEY (disease_id);
 @   ALTER TABLE ONLY public.diseases DROP CONSTRAINT diseases_pkey;
       public            postgres    false    209            
           2606    17403    drugs drugs_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.drugs
    ADD CONSTRAINT drugs_pkey PRIMARY KEY (drug_id);
 :   ALTER TABLE ONLY public.drugs DROP CONSTRAINT drugs_pkey;
       public            postgres    false    211                       2606    17405    examinations examinations_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.examinations
    ADD CONSTRAINT examinations_pkey PRIMARY KEY (exam_id);
 H   ALTER TABLE ONLY public.examinations DROP CONSTRAINT examinations_pkey;
       public            postgres    false    213                       2606    17407    histories histories_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.histories
    ADD CONSTRAINT histories_pkey PRIMARY KEY (history_id);
 B   ALTER TABLE ONLY public.histories DROP CONSTRAINT histories_pkey;
       public            postgres    false    215                       2606    17409    imagings imagings_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.imagings
    ADD CONSTRAINT imagings_pkey PRIMARY KEY (imaging_exam_id);
 @   ALTER TABLE ONLY public.imagings DROP CONSTRAINT imagings_pkey;
       public            postgres    false    217                       2606    17411    lab_tests lab_tests_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.lab_tests
    ADD CONSTRAINT lab_tests_pkey PRIMARY KEY (lab_test_id);
 B   ALTER TABLE ONLY public.lab_tests DROP CONSTRAINT lab_tests_pkey;
       public            postgres    false    219                       2606    17413 *   other_examinations other_examinations_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.other_examinations
    ADD CONSTRAINT other_examinations_pkey PRIMARY KEY (o_exam_id);
 T   ALTER TABLE ONLY public.other_examinations DROP CONSTRAINT other_examinations_pkey;
       public            postgres    false    221                       2606    17415 &   patient_symptoms patient_symptoms_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.patient_symptoms
    ADD CONSTRAINT patient_symptoms_pkey PRIMARY KEY (symptom_id);
 P   ALTER TABLE ONLY public.patient_symptoms DROP CONSTRAINT patient_symptoms_pkey;
       public            postgres    false    223                       2606    17417    patients patients_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (patient_id);
 @   ALTER TABLE ONLY public.patients DROP CONSTRAINT patients_pkey;
       public            postgres    false    225                       2606    17419 0   physical_examinations physical_examinations_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.physical_examinations
    ADD CONSTRAINT physical_examinations_pkey PRIMARY KEY (physical_exam_id);
 Z   ALTER TABLE ONLY public.physical_examinations DROP CONSTRAINT physical_examinations_pkey;
       public            postgres    false    227                       2606    17421    prognoses prognoses_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.prognoses
    ADD CONSTRAINT prognoses_pkey PRIMARY KEY (prognosis_id);
 B   ALTER TABLE ONLY public.prognoses DROP CONSTRAINT prognoses_pkey;
       public            postgres    false    229                       2606    17423    symptoms symptoms_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.symptoms
    ADD CONSTRAINT symptoms_pkey PRIMARY KEY (symptom_id);
 @   ALTER TABLE ONLY public.symptoms DROP CONSTRAINT symptoms_pkey;
       public            postgres    false    231                        2606    17425    treatments treatments_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT treatments_pkey PRIMARY KEY (treatment_id);
 D   ALTER TABLE ONLY public.treatments DROP CONSTRAINT treatments_pkey;
       public            postgres    false    233            "           2606    17427    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    235            #           2606    17428 B   complications complications_disease_id_diseases_disease_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.complications
    ADD CONSTRAINT complications_disease_id_diseases_disease_id_foreign FOREIGN KEY (disease_id) REFERENCES public.diseases(disease_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 l   ALTER TABLE ONLY public.complications DROP CONSTRAINT complications_disease_id_diseases_disease_id_foreign;
       public          postgres    false    2824    209    205            $           2606    17433 B   complications complications_patient_id_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.complications
    ADD CONSTRAINT complications_patient_id_patients_patient_id_foreign FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 l   ALTER TABLE ONLY public.complications DROP CONSTRAINT complications_patient_id_patients_patient_id_foreign;
       public          postgres    false    225    205    2840            %           2606    17438 :   diagnoses diagnoses_disease_id_diseases_disease_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.diagnoses
    ADD CONSTRAINT diagnoses_disease_id_diseases_disease_id_foreign FOREIGN KEY (disease_id) REFERENCES public.diseases(disease_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 d   ALTER TABLE ONLY public.diagnoses DROP CONSTRAINT diagnoses_disease_id_diseases_disease_id_foreign;
       public          postgres    false    209    207    2824            &           2606    17443 =   diagnoses diagnoses_examinations_examinations_exam_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.diagnoses
    ADD CONSTRAINT diagnoses_examinations_examinations_exam_id_foreign FOREIGN KEY (examinations) REFERENCES public.examinations(exam_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 g   ALTER TABLE ONLY public.diagnoses DROP CONSTRAINT diagnoses_examinations_examinations_exam_id_foreign;
       public          postgres    false    207    2828    213            '           2606    17448 8   diagnoses diagnoses_history_histories_history_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.diagnoses
    ADD CONSTRAINT diagnoses_history_histories_history_id_foreign FOREIGN KEY (history) REFERENCES public.histories(history_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 b   ALTER TABLE ONLY public.diagnoses DROP CONSTRAINT diagnoses_history_histories_history_id_foreign;
       public          postgres    false    215    207    2830            (           2606    17453 :   diagnoses diagnoses_patient_id_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.diagnoses
    ADD CONSTRAINT diagnoses_patient_id_patients_patient_id_foreign FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 d   ALTER TABLE ONLY public.diagnoses DROP CONSTRAINT diagnoses_patient_id_patients_patient_id_foreign;
       public          postgres    false    225    207    2840            )           2606    17458 A   examinations examinations_lab_tests_lab_tests_lab_test_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.examinations
    ADD CONSTRAINT examinations_lab_tests_lab_tests_lab_test_id_foreign FOREIGN KEY (lab_tests) REFERENCES public.lab_tests(lab_test_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 k   ALTER TABLE ONLY public.examinations DROP CONSTRAINT examinations_lab_tests_lab_tests_lab_test_id_foreign;
       public          postgres    false    219    2834    213            *           2606    17463 @   examinations examinations_patient_id_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.examinations
    ADD CONSTRAINT examinations_patient_id_patients_patient_id_foreign FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 j   ALTER TABLE ONLY public.examinations DROP CONSTRAINT examinations_patient_id_patients_patient_id_foreign;
       public          postgres    false    2840    225    213            +           2606    17468 L   examinations examinations_physical_examinations_physical_examinations_physic    FK CONSTRAINT     �   ALTER TABLE ONLY public.examinations
    ADD CONSTRAINT examinations_physical_examinations_physical_examinations_physic FOREIGN KEY (physical_examinations) REFERENCES public.physical_examinations(physical_exam_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 v   ALTER TABLE ONLY public.examinations DROP CONSTRAINT examinations_physical_examinations_physical_examinations_physic;
       public          postgres    false    2842    227    213            ,           2606    17473 :   histories histories_patient_id_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.histories
    ADD CONSTRAINT histories_patient_id_patients_patient_id_foreign FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 d   ALTER TABLE ONLY public.histories DROP CONSTRAINT histories_patient_id_patients_patient_id_foreign;
       public          postgres    false    215    2840    225            -           2606    17478 8   imagings imagings_patient_id_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.imagings
    ADD CONSTRAINT imagings_patient_id_patients_patient_id_foreign FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 b   ALTER TABLE ONLY public.imagings DROP CONSTRAINT imagings_patient_id_patients_patient_id_foreign;
       public          postgres    false    225    2840    217            .           2606    17483 :   lab_tests lab_tests_patient_id_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lab_tests
    ADD CONSTRAINT lab_tests_patient_id_patients_patient_id_foreign FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 d   ALTER TABLE ONLY public.lab_tests DROP CONSTRAINT lab_tests_patient_id_patients_patient_id_foreign;
       public          postgres    false    219    225    2840            /           2606    17488 L   other_examinations other_examinations_patient_id_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.other_examinations
    ADD CONSTRAINT other_examinations_patient_id_patients_patient_id_foreign FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 v   ALTER TABLE ONLY public.other_examinations DROP CONSTRAINT other_examinations_patient_id_patients_patient_id_foreign;
       public          postgres    false    225    2840    221            0           2606    17493 H   patient_symptoms patient_symptoms_patient_id_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.patient_symptoms
    ADD CONSTRAINT patient_symptoms_patient_id_patients_patient_id_foreign FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 r   ALTER TABLE ONLY public.patient_symptoms DROP CONSTRAINT patient_symptoms_patient_id_patients_patient_id_foreign;
       public          postgres    false    223    225    2840            1           2606    17498 R   physical_examinations physical_examinations_patient_id_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.physical_examinations
    ADD CONSTRAINT physical_examinations_patient_id_patients_patient_id_foreign FOREIGN KEY (patient_id) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 |   ALTER TABLE ONLY public.physical_examinations DROP CONSTRAINT physical_examinations_patient_id_patients_patient_id_foreign;
       public          postgres    false    225    227    2840            2           2606    17503 .   prognoses prognoses_drug_drugs_drug_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.prognoses
    ADD CONSTRAINT prognoses_drug_drugs_drug_id_foreign FOREIGN KEY (drug) REFERENCES public.drugs(drug_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.prognoses DROP CONSTRAINT prognoses_drug_drugs_drug_id_foreign;
       public          postgres    false    229    211    2826            3           2606    17508 8   prognoses prognoses_history_histories_history_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.prognoses
    ADD CONSTRAINT prognoses_history_histories_history_id_foreign FOREIGN KEY (history) REFERENCES public.histories(history_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 b   ALTER TABLE ONLY public.prognoses DROP CONSTRAINT prognoses_history_histories_history_id_foreign;
       public          postgres    false    2830    229    215            4           2606    17513 7   prognoses prognoses_patient_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.prognoses
    ADD CONSTRAINT prognoses_patient_patients_patient_id_foreign FOREIGN KEY (patient) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 a   ALTER TABLE ONLY public.prognoses DROP CONSTRAINT prognoses_patient_patients_patient_id_foreign;
       public          postgres    false    225    2840    229            5           2606    17518 I   treatments treatments_complications_complications_complication_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT treatments_complications_complications_complication_id_foreign FOREIGN KEY (complications) REFERENCES public.complications(complication_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 s   ALTER TABLE ONLY public.treatments DROP CONSTRAINT treatments_complications_complications_complication_id_foreign;
       public          postgres    false    233    205    2820            6           2606    17523 >   treatments treatments_diagnosis_diagnoses_diagnosis_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT treatments_diagnosis_diagnoses_diagnosis_id_foreign FOREIGN KEY (diagnosis) REFERENCES public.diagnoses(diagnosis_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 h   ALTER TABLE ONLY public.treatments DROP CONSTRAINT treatments_diagnosis_diagnoses_diagnosis_id_foreign;
       public          postgres    false    2822    233    207            7           2606    17528 0   treatments treatments_drug_drugs_drug_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT treatments_drug_drugs_drug_id_foreign FOREIGN KEY (drug) REFERENCES public.drugs(drug_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Z   ALTER TABLE ONLY public.treatments DROP CONSTRAINT treatments_drug_drugs_drug_id_foreign;
       public          postgres    false    2826    233    211            8           2606    17533 9   treatments treatments_patient_patients_patient_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.treatments
    ADD CONSTRAINT treatments_patient_patients_patient_id_foreign FOREIGN KEY (patient) REFERENCES public.patients(patient_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 c   ALTER TABLE ONLY public.treatments DROP CONSTRAINT treatments_patient_patients_patient_id_foreign;
       public          postgres    false    233    225    2840            �      x������ � �      �      x������ � �      �      x������ � �      �   =   x��4�t��-��LN,IMQ�M�I,�L��uu�t��s�,�/(�JqY�p��%�4F��� '/w      �      x������ � �      �      x������ � �      �      x�3�4���w�D\1z\\\ "Q      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ,   x�3��M�I�4000�##+#s+C3m���3Ə+F��� ���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�͘Y�����ݿ��ۍ�Z��� �H��T@Q�F�_�����L��['7'�aN&��e�9����)~�� ���˃���$��D�O~�)rk�?��Pu�<���β�*�<�� ���f�K���k��z=/.���#�e0����TH�:L$Z���~2��%�х�y}x�E�ڈ\����Ct)-}]��+����+�m�^�}џ�N5I;:q�hT�ϴ�S����H&#�Ϯ�d������!��b��������Ѻ*�Q+�j�&�8�����ȁ�*�La��x�N�9S�-B����BC�%0���~�u� ٳC�yʫ(��|����Y|ţ_5Xd�4ݓPh���I\sV�dV4w���[S�X�!^�o@���2���K[�2w'�⾵�0�&��A P&󭃚P:'�b������G�I	����8���o"6��̩{J�,D����CID �!�#��ӎ�Ki���#l���3W�����<@�:��9]�Ʊ�m��G�S&Fe��>u/����qm�T��%Z\�m��p~uD��A)8�	�,���b���uΥm�7HƷ���ru�_�7z���B�(S�}���iG��A��S���[M��G�`������W��>�T�i	t#�� xJ�
�N7i��D�i��倫I1<9us��k�f-B%1��</�K��>]k�m�8-�����d��?h��Z4�$�(�B��i4$ߕa�H�$J⧋]��ȱ��!d�u�	6
���z��kP��-K1n���1� ��&܊�3�&�@w��Ade#س}iF_{���W}7��.*�Vt��Y�ਞ�ʚ-������G�xh����$�$0�I@���z�}8��t�v�qo,�X甜�J���Ţ:e�˓[��<�Qwp�����!�LtJѴ2�&��_�w��M�?hmlI����|�\�a�k|�w�D^3��3�0@�gx"L`��ݾ�oy�[\<b�\+|:M����.켹Ln�i�Y�+�6��r�tf�^)��٬A�}����
�2H�!2�/��e��#X!��at��Z���ǔ_L[nT��>�C��G`�1K�M�!�	K�7��	P�x�o\��1��C����[$,=a�b�L�,�`3���b�������t����b�I|��w�^�v����
^J�|N6����y��MʍײMU��y��( \��*,B�������9�E��;�B!p���}W��Zn�g�(&��ho4�5�:^�t_0 �>���5&��}��X�eP��-�qz��z��OQr�#�}i���9���b�ޭe��-G�>�F�͸��w�%.�y|Č6Vz����BW,�R9:��zG��}�����)۟�	�K��iN�bi� A���\�]��9,(���CD1G� 1o��_�HL� ��æ備�Ѥ�[y�Afr��K}l��en̜q�������u�����Dw�%	�d�O��iرb{���T�a�%j����#rQ4VA}u�ˌ
��w�:4��ro^�Q�/x|X��y�՜�2�H�j.�tv���R�������Ro>���2u�����nSp�
�Gs�֤�>�!�] �|�*솘�H�f�ݫ����ӱG��kK�����$O���i�Z�/8\,��UQR�T/��-o{���V���}ǯ��օJ��W~�{�R�;�Ҟu�X��e�,��؋s���9�q*#����㺃�";�������''�}z�w��x�����4O�ޡ���'��2��Q>���v��d�4Idz���:ΣE���b��xsQ�y=���.�������D��'G��:x�������56GL��S#����)5~Ꮧ�D�t�����=qxv���%���S��Ek�u���G���'C�% E�_��'��Ǐ���     