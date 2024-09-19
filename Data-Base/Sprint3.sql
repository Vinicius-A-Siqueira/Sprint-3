CREATE TABLE tbl_endereco__cliente (
    id_endereco              NUMBER(9) NOT NULL,
    cep                      NUMBER(8) NOT NULL,
    numero                   NUMBER(4) NOT NULL,
    complemento              VARCHAR2(40) NOT NULL,
    cidade                   VARCHAR2(20) NOT NULL,
    bairro                   VARCHAR2(20) NOT NULL,
    estado                   CHAR(2) NOT NULL,
    rua                      VARCHAR2(80) NOT NULL,
    tbl_usuariov1_id_usuario NUMBER(9) NOT NULL
);

ALTER TABLE tbl_endereco__cliente ADD CONSTRAINT tbl_endereco__cliente_pk PRIMARY KEY ( id_endereco,
                                                                                        tbl_usuariov1_id_usuario );

CREATE TABLE tbl_endereco__mecanica (
    id_endereco_mecanica     NUMBER(9) NOT NULL,
    cep                      NUMBER(8) NOT NULL,
    numero                   NUMBER(4) NOT NULL,
    complemento              VARCHAR2(40) NOT NULL,
    cidade                   VARCHAR2(20) NOT NULL,
    bairro                   VARCHAR2(20) NOT NULL,
    estado                   CHAR(2) NOT NULL,
    rua                      VARCHAR2(80) NOT NULL,
    tbl_mecanica_id_mecanica NUMBER(9) NOT NULL
);

ALTER TABLE tbl_endereco__mecanica ADD CONSTRAINT tbl_endereco__mecanica_pk PRIMARY KEY ( id_endereco_mecanica,
                                                                                          tbl_mecanica_id_mecanica );

CREATE TABLE tbl_mecanica (
    id_mecanica   NUMBER(9) NOT NULL,
    razao_social  VARCHAR2(70) NOT NULL,
    nome_fantasia VARCHAR2(70),
    cnpj          NUMBER(14) NOT NULL,
    telefone      NUMBER(13) NOT NULL
);

ALTER TABLE tbl_mecanica ADD CONSTRAINT tbl_mecanica_pk PRIMARY KEY ( id_mecanica );

ALTER TABLE tbl_mecanica ADD CONSTRAINT tbl_mecanica_cnpj_un UNIQUE ( cnpj );

CREATE TABLE tbl_ocorrencia (
    id_ocorrencia                        NUMBER(9) NOT NULL,
    tipo                                 VARCHAR2(20) NOT NULL,
    data_inicio                          DATE NOT NULL,
    data_final                           DATE NOT NULL,
    orcamento                            NUMBER(6, 2) NOT NULL,
    tbl_veiculo_id_veiculo               NUMBER(9) NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
    tbl_veiculo_tbl_usuariov1_id_usuario NUMBER(9) NOT NULL,
    tbl_mecanica_id_mecanica             NUMBER(9) NOT NULL
);

ALTER TABLE tbl_ocorrencia
    ADD CONSTRAINT tbl_ocorrencia_pk PRIMARY KEY ( tbl_veiculo_id_veiculo,
                                                   tbl_veiculo_tbl_usuariov1_id_usuario,
                                                   tbl_mecanica_id_mecanica );

CREATE TABLE tbl_plano_seguro (
    id_plano                 NUMBER(9) NOT NULL,
    tipo                     VARCHAR2(20) NOT NULL,
    data_inicio              DATE NOT NULL,
    data_vencimento          DATE NOT NULL,
    valor                    NUMBER(5, 2) NOT NULL,
    tbl_usuariov1_id_usuario NUMBER(9) NOT NULL
);

ALTER TABLE tbl_plano_seguro ADD CONSTRAINT tbl_plano_seguro_pk PRIMARY KEY ( id_plano,
                                                                              tbl_usuariov1_id_usuario );

CREATE TABLE tbl_telefone (
    id_telefone              NUMBER(9) NOT NULL,
    nr_ddi                   NUMBER(3) NOT NULL,
    nr_ddd                   NUMBER(3) NOT NULL,
    nr_telefone              NUMBER(10) NOT NULL,
    tp_telefone              VARCHAR2(20) NOT NULL,
    st_telefone              CHAR(1) NOT NULL,
    tbl_usuariov1_id_usuario NUMBER(9) NOT NULL
);

ALTER TABLE tbl_telefone ADD CONSTRAINT tbl_telefone_pk PRIMARY KEY ( id_telefone,
                                                                      tbl_usuariov1_id_usuario );

CREATE TABLE tbl_usuariov1 (
    id_usuario        NUMBER(9) NOT NULL,
    nome_usuario      VARCHAR2(40) NOT NULL,
    cpf               NUMBER(11) NOT NULL,
    data_nascimento   DATE NOT NULL,
    fl_sexo_biologico CHAR(1) NOT NULL,
    ds_estado_civil   VARCHAR2(10) NOT NULL
);

ALTER TABLE tbl_usuariov1 ADD CONSTRAINT tbl_usuariov1_pk PRIMARY KEY ( id_usuario );

ALTER TABLE tbl_usuariov1 ADD CONSTRAINT tbl_usuariov1_cpf_un UNIQUE ( cpf );

CREATE TABLE tbl_veiculo (
    id_veiculo               NUMBER(9) NOT NULL,
    placa                    VARCHAR2(7) NOT NULL,
    modelo                   VARCHAR2(15) NOT NULL,
    data_fabricacao          DATE NOT NULL,
    cor                      VARCHAR2(15) NOT NULL,
    tipo                     VARCHAR2(15) NOT NULL,
    tbl_usuariov1_id_usuario NUMBER(9) NOT NULL
);

ALTER TABLE tbl_veiculo ADD CONSTRAINT tbl_veiculo_pk PRIMARY KEY ( id_veiculo,
                                                                    tbl_usuariov1_id_usuario );

ALTER TABLE tbl_endereco__cliente
    ADD CONSTRAINT tbl_endereco__cliente_tbl_usuariov1_fk FOREIGN KEY ( tbl_usuariov1_id_usuario )
        REFERENCES tbl_usuariov1 ( id_usuario );

ALTER TABLE tbl_endereco__mecanica
    ADD CONSTRAINT tbl_endereco__mecanica_tbl_mecanica_fk FOREIGN KEY ( tbl_mecanica_id_mecanica )
        REFERENCES tbl_mecanica ( id_mecanica );

ALTER TABLE tbl_ocorrencia
    ADD CONSTRAINT tbl_ocorrencia_tbl_mecanica_fk FOREIGN KEY ( tbl_mecanica_id_mecanica )
        REFERENCES tbl_mecanica ( id_mecanica );

ALTER TABLE tbl_ocorrencia
    ADD CONSTRAINT tbl_ocorrencia_tbl_veiculo_fk FOREIGN KEY ( tbl_veiculo_id_veiculo,
                                                               tbl_veiculo_tbl_usuariov1_id_usuario )
        REFERENCES tbl_veiculo ( id_veiculo,
                                 tbl_usuariov1_id_usuario );

ALTER TABLE tbl_plano_seguro
    ADD CONSTRAINT tbl_plano_seguro_tbl_usuariov1_fk FOREIGN KEY ( tbl_usuariov1_id_usuario )
        REFERENCES tbl_usuariov1 ( id_usuario );

ALTER TABLE tbl_telefone
    ADD CONSTRAINT tbl_telefone_tbl_usuariov1_fk FOREIGN KEY ( tbl_usuariov1_id_usuario )
        REFERENCES tbl_usuariov1 ( id_usuario );

ALTER TABLE tbl_veiculo
    ADD CONSTRAINT tbl_veiculo_tbl_usuariov1_fk FOREIGN KEY ( tbl_usuariov1_id_usuario )
        REFERENCES tbl_usuariov1 ( id_usuario );
