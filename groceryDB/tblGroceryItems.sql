CREATE TABLE tblGroceryItems
(
    ItemID      VARCHAR(6)      NOT NULL,
    Description VARCHAR(100)    NOT NULL,
    Price       DECIMAL(10,2)   NOT NULL,
    Image       VARCHAR(255)    NULL,
    Available   CHAR(1)         NULL,

    CONSTRAINT PK_tblGroceryItems PRIMARY KEY (ItemID)
);
