CREATE TABLE tblUsers
(
    Username    VARCHAR(50)     NOT NULL,
    Password    VARCHAR(64)     NOT NULL,

    CONSTRAINT PK_tblUsers PRIMARY KEY (Username)
);
