ALTER USER heejun WITH SUPERUSER;

--CREATE EXTENSION pgcrypto;

CREATE TABLE review (
    ID      serial,
    Title   varchar(80),
    Author  varchar(30),
    DefaultPictureURL   varchar(200),
    PictureURLS     text[],
    StoreName       text,
    Date            text,
    PhoneNumber     text,
    Comment         text,
    Score           int,
    Addr            text
);

CREATE TABLE account (
    ID varchar(80),
    PASSWORD varchar(200),
    Num serial,
    SubscriptionDate DATE NOT NULL DEFAULT CURRENT_DATE
)