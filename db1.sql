CREATE TABLE ucenik (
    id      NUMBER NOT NULL,
    ime     VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL,
    prezime VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL
);

ALTER TABLE ucenik ADD CONSTRAINT ucenik_pk PRIMARY KEY ( id );

CREATE TABLE ucenik_sekcija (
    id         NUMBER NOT NULL,
    ucenik_id  NUMBER NOT NULL,
    sekcija_id NUMBER NOT NULL
);

ALTER TABLE ucenik_sekcija
    ADD CONSTRAINT ucenik_sekcija_pk PRIMARY KEY ( id,
                                                   ucenik_id,
                                                   sekcija_id );

CREATE TABLE umetnik (
    id      NUMBER NOT NULL,
    ime     VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL,
    prezime VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL
);

ALTER TABLE umetnik ADD CONSTRAINT umetnik_pk PRIMARY KEY ( id );

ALTER TABLE slika
    ADD CONSTRAINT slika_umetnik_fk FOREIGN KEY ( umetnik_id )
        REFERENCES umetnik ( id );

ALTER TABLE ucenik_sekcija
    ADD CONSTRAINT ucenik_sekcija_sekcija_fk FOREIGN KEY ( sekcija_id )
        REFERENCES sekcija ( id );

ALTER TABLE ucenik_sekcija
    ADD CONSTRAINT ucenik_sekcija_ucenik_fk FOREIGN KEY ( ucenik_id )
        REFERENCES ucenik ( id );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              8
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   7
-- WARNINGS                                 0