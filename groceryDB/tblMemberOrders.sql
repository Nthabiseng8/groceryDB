CREATE TABLE tblMemberOrders
(
    MemberID    VARCHAR(5)      NOT NULL,
    OrderDate   DATE            NOT NULL,
    ItemID      VARCHAR(6)      NOT NULL,
    Quantity    INT             NOT NULL,
    TotalPrice  DECIMAL(10,2)   NOT NULL,
    CONSTRAINT PK_tblMemberOrders PRIMARY KEY (MemberID, OrderDate, ItemID),
    CONSTRAINT FK_tblMemberOrders_Member 
        FOREIGN KEY (MemberID) REFERENCES tblMembers(MemberID),

    CONSTRAINT FK_tblMemberOrders_Item
        FOREIGN KEY (ItemID) REFERENCES tblGroceryItems(ItemID)
);
