-- Fix May dates to align with May Fridays (01, 08, 15, 22, 29)
UPDATE tblMemberOrders 
SET OrderDate = '2026-05-01' 
WHERE OrderDate BETWEEN '2026-05-01' AND '2026-05-04';

UPDATE tblMemberOrders 
SET OrderDate = '2026-05-08' 
WHERE OrderDate BETWEEN '2026-05-05' AND '2026-05-10';

UPDATE tblMemberOrders 
SET OrderDate = '2026-05-15' 
WHERE OrderDate BETWEEN '2026-05-11' AND '2026-05-17';

UPDATE tblMemberOrders 
SET OrderDate = '2026-05-22' 
WHERE OrderDate BETWEEN '2026-05-18' AND '2026-05-24';

UPDATE tblMemberOrders 
SET OrderDate = '2026-05-29' 
WHERE OrderDate BETWEEN '2026-05-25' AND '2026-05-31';

-- Fix June dates to align with June Fridays (05, 12, 19, 26)
UPDATE tblMemberOrders 
SET OrderDate = '2026-06-05' 
WHERE OrderDate BETWEEN '2026-06-01' AND '2026-06-07';

UPDATE tblMemberOrders 
SET OrderDate = '2026-06-12' 
WHERE OrderDate BETWEEN '2026-06-08' AND '2026-06-14';

UPDATE tblMemberOrders 
SET OrderDate = '2026-06-19' 
WHERE OrderDate BETWEEN '2026-06-15' AND '2026-06-21';

UPDATE tblMemberOrders 
SET OrderDate = '2026-06-26' 
WHERE OrderDate BETWEEN '2026-06-22' AND '2026-06-30';