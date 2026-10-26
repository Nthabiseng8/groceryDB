CREATE TABLE tblMembers
(
    MemberID  VARCHAR(5)  NOT NULL,
    Name      VARCHAR(20) NOT NULL,
    Surname   VARCHAR(40) NOT NULL,
    Contact   VARCHAR(20) NULL,
    Email     VARCHAR(40) NULL,
    Active    VARCHAR(1)  NULL,

    CONSTRAINT PK_tblMembers PRIMARY KEY (MemberID)
);
