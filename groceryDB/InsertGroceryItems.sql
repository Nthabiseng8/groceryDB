USE groceryDB
GO

MERGE INTO tblGroceryItems AS Target
USING (VALUES
    ('BR0001', 'White Bread Loaf',          16.94, 'C:\images\br0001.jpg',   'Y'),
    ('BR0002', 'Brown Bread Loaf',          17.47, 'C:\images\br0002.jpg',   'Y'),
    ('BR0003', 'Whole Wheat Bread',         19.06, 'C:\images\default.jpg',  'Y'),
    ('CF0001', 'Coffee Beans 500g',         52.98, 'C:\images\default.jpg',  'Y'),
    ('CF0002', 'Instant Coffee 200g',       42.94, 'C:\images\default.jpg',  'Y'),
    ('CH0001', 'Cheddar Cheese 400g',       68.84, 'C:\images\default.jpg',  'Y'),
    ('CH0002', 'Gouda Cheese 400g',         70.96, 'C:\images\default.jpg',  'N'),
    ('CH0003', 'Processed Cheese Slices',   34.96, 'C:\images\default.jpg',  'Y'),
    ('CL0001', 'Dishwashing Liquid 750ml',  23.30, 'C:\images\default.jpg',  'N'),
    ('CL0002', 'Laundry Powder 2kg',        74.18, 'C:\images\default.jpg',  'Y'),
    ('CL0003', 'Fabric Softener 2L',        47.68, 'C:\images\default.jpg',  'N'),
    ('DR0001', 'Bottled Water 2L',          13.76, 'C:\images\default.jpg',  'Y'),
    ('DR0002', 'Orange Juice 1L',           19.06, 'C:\images\default.jpg',  'Y'),
    ('DR0003', 'Cola Soft Drink 2L',        21.18, 'C:\images\default.jpg',  'Y'),
    ('DR0004', 'Apple Flavoured Drink',     24.91, 'C:\images\dr0004.jpg',   'Y'),
    ('DR0005', 'Lemon Juice 1liter',        42.51, 'C:\images\dr0005.jpg',   'Y'),
    ('FL0001', 'All Purpose Flour 2kg',     30.72, 'C:\images\default.jpg',  'Y'),
    ('FL0002', 'Self Raising Flour 2kg',    33.90, 'C:\images\default.jpg',  'N'),
    ('ML0001', 'Full Cream Milk 1L',        15.88, 'C:\images\default.jpg',  'Y'),
    ('ML0002', 'Low Fat Milk 1L',           15.35, 'C:\images\default.jpg',  'Y'),
    ('OL0001', 'Cooking Oil 2L',            68.88, 'C:\images\default.jpg',  'Y'),
    ('OT0001', 'Eggs 18 Pack',              52.98, 'C:\images\default.jpg',  'Y'),
    ('OT0002', 'Butter 500g',               56.16, 'C:\images\default.jpg',  'Y'),
    ('OT0003', 'Salt 1kg',                  10.58, 'C:\images\default.jpg',  'Y'),
    ('OT0004', 'Black Pepper 100g',         24.36, 'C:\images\default.jpg',  'N'),
    ('RI0001', 'Rice 5kg',                  79.48, 'C:\images\default.jpg',  'Y'),
    ('RI0002', 'Basmati Rice 2kg',          58.28, 'C:\images\default.jpg',  'Y'),
    ('SN0001', 'Biscuits Assorted',         24.36, 'C:\images\default.jpg',  'Y'),
    ('SN0002', 'Chocolate Slab 100g',       18.00, 'C:\images\default.jpg',  'N'),
    ('SP0001', 'Peanut Butter 400g',        31.78, 'C:\images\default.jpg',  'Y'),
    ('SP0002', 'Strawberry Jam 450g',       29.66, 'C:\images\default.jpg',  'Y'),
    ('SU0001', 'White Sugar 2kg',           37.08, 'C:\images\default.jpg',  'Y'),
    ('SU0002', 'Brown Sugar 2kg',           39.20, 'C:\images\default.jpg',  'N'),
    ('TE0001', 'Tea Bags 100 Pack',         31.27, 'C:\images\default.jpg',  'Y'),
    ('TP0001', 'Toilet Paper 18 Roll',      95.38, 'C:\images\default.jpg',  'Y'),
    ('TP0002', 'Toothpaste 125g',           21.18, 'C:\images\default.jpg',  'Y'),
    ('TP0003', 'Hand Soap 500ml',           20.12, 'C:\images\default.jpg',  'Y'),
    ('TP0004', 'Shampoo 400ml',             37.08, 'C:\images\default.jpg',  'Y'),
    ('TP0005', 'Conditioner 400ml',         39.20, 'C:\images\default.jpg',  'N'),
    ('BR0004', 'Rye Bread Loaf',            20.45, 'C:\images\default.jpg',  'Y'),
    ('CF0003', 'Ground Coffee 250g',        38.75, 'C:\images\default.jpg',  'Y'),
    ('CH0004', 'Mozzarella Cheese 200g',    45.60, 'C:\images\default.jpg',  'Y'),
    ('CL0004', 'Bleach 750ml',              18.90, 'C:\images\default.jpg',  'Y'),
    ('DR0006', 'Iced Tea 1.5L',             22.40, 'C:\images\default.jpg',  'N'),
    ('FL0003', 'Cake Flour 2kg',            31.85, 'C:\images\default.jpg',  'N'),
    ('ML0003', 'UHT Milk 1L',               17.20, 'C:\images\default.jpg',  'Y'),
    ('OLOOO2', 'Sunflower Oil 1L',          36.50, 'C:\images\default.jpg',  'Y'),
    ('SN0003', 'Potato Chips 150g',         19.75, 'C:\images\default.jpg',  'Y'),
    ('TP0006', 'Body Lotion 400ml',         42.10, 'C:\images\default.jpg',  'Y')
) AS Source (ItemID, Description, Price, Image, Available)
ON Target.ItemID = Source.ItemID

WHEN NOT MATCHED BY TARGET THEN
    INSERT (ItemID, Description, Price, Image, Available)
    VALUES (Source.ItemID, Source.Description, Source.Price,
            Source.Image, Source.Available);