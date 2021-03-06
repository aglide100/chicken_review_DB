--CREATE ROLE review_admin LOGIN CREATEDB PASSWORD POSTGRES_PASSWORD;
GRANT ALL PRIVILEGES ON DATABASE chicken_review TO review_admin;

--ALTER USER review_admin WITH SUPERUSER;

--CREATE EXTENSION pgcrypto;

CREATE TABLE review (
    ID      serial PRIMARY KEY,
    Title   varchar(200),
    Author  varchar(200),
    DefaultPictureURL   varchar(200),
    PictureURLS     text[],
    StoreName       text,
    Date            text,
    PhoneNumber     text,
    Comment         text,
    Score           varchar(2),
    Addr            text,
    Lat             float,
    Lng             float
);

CREATE TABLE account (
    UserID varchar(80),
    UserPWD varchar(200),
    Num serial,
    Name text,
    PhoneNumber text,
    Language text,
    SubscriptionDate DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE provider_account (
    Provider text,
    Email text,
    Name text,
    FirstName text,
    LastEName text,
    NickName text,
    Description text,
    UserID text,
    AvatarURL text,
    Location text,
    CREATED_ON TIMESTAMP NOT NULL,
	LAST_LOGIN TIMESTAMP
);
