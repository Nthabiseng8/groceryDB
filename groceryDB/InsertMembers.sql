USE groceryDB
GO

MERGE INTO tblMembers AS Target
USING (VALUES
    ('01-01', 'Thabo',     'Mokoena',   '0723457812', 'thabo.mokoena@gmail.com',      'Y'),
    ('01-02', 'Lerato',    'Nkosi',     '0815549021', 'lerato.nkosi@yahoo.com',        'Y'),
    ('01-03', 'Sipho',     'Dlamini',   '0739984410', 'sipho.dlamini@gmail.com',       'N'),
    ('01-04', 'Nomsa',     'Khumalo',   '0746612389', 'nomsa.khumalo@outlook.com',     'Y'),
    ('01-05', 'Kabelo',    'Botha',     '0827705142', 'kabelo.botha@gmail.com',        'Y'),
    ('01-06', 'Zanele',    'Mthembu',   '0783356620', 'zanele.mthembu@yahoo.com',      'Y'),
    ('01-07', 'Pieter',    'van Wyk',   '0833419098', 'pieter.vw@gmail.com',           'N'),
    ('01-08', 'Ayanda',    'Cele',      '0719921184', 'ayanda.cele@gmail.com',         'Y'),
    ('01-09', 'Johan',     'Pretorius', '0845567731', 'johan.pretorius@outlook.com',   'Y'),
    ('01-10', 'Nandi',     'Zulu',      '0768843309', 'nandi.zulu@gmail.com',          'Y'),
    ('02-01', 'Themba',    'Sithole',   '0726119920', 'themba.sithole@gmail.com',      'N'),
    ('02-02', 'Karabo',    'Molefe',    '0813384472', 'karabo.molefe@yahoo.com',       'Y'),
    ('02-03', 'Sibusiso',  'Ngcobo',    '0735501886', 'sibusiso.ngcobo@gmail.com',     'Y'),
    ('02-04', 'Linda',     'Jacobs',    '0827712345', 'linda.jacobs@outlook.com',      'Y'),
    ('02-05', 'Bongani',   'Hadebe',    '0719904561', 'bongani.hadebe@gmail.com',      'N'),
    ('02-06', 'Refilwe',   'Modise',    '0846628099', 'refilwe.modise@gmail.com',      'Y'),
    ('02-07', 'Andile',    'Madonsela', '0765419922', 'andile.m@gmail.com',            'Y'),
    ('02-08', 'Melissa',   'Daniels',   '0833091148', 'melissa.daniels@yahoo.com',     'Y'),
    ('02-09', 'Tshepo',    'Ramokgopa', '0728032277', 'tshepo.r@gmail.com',            'N'),
    ('02-10', 'Shaun',     'Petersen',  '0786617782', 'shaun.petersen@gmail.com',      'Y'),
    ('03-01', 'Naledi',    'Moroka',    '0815409921', 'naledi.moroka@gmail.com',       'Y'),
    ('03-02', 'Vusi',      'Ndlovu',    '0731126609', 'vusi.ndlovu@yahoo.com',         'Y'),
    ('03-03', 'Annelie',   'Kruger',    '0828874419', 'annelie.kruger@outlook.com',    'N'),
    ('03-04', 'Tumelo',    'Phiri',     '0714412208', 'tumelo.phiri@gmail.com',        'Y'),
    ('03-05', 'Wesley',    'Brown',     '0769031175', 'wesley.brown@gmail.com',        'Y'),
    ('03-06', 'Mapule',    'Sehloko',   '0847005539', 'mapule.sehloko@gmail.com',      'Y'),
    ('03-07', 'Musa',      'Shabalala', '0726652204', 'musa.shabalala@gmail.com',      'N'),
    ('03-08', 'Rene',      'Olivier',   '0833389092', 'rene.olivier@outlook.com',      'Y'),
    ('03-09', 'Kagiso',    'Pheto',     '0781124466', 'kagiso.pheto@gmail.com',        'Y'),
    ('03-10', 'Patrick',   'ONeill',    '0819923341', 'patrick.oneill@gmail.com',      'Y'),
    ('04-01', 'Lebo',      'Motsepe',   '0738847760', 'lebo.motsepe@yahoo.com',        'Y'),
    ('04-02', 'Charlene',  'Williams',  '0826641189', 'charlene.williams@gmail.com',   'N'),
    ('04-03', 'Mandla',    'Masinga',   '0719038842', 'mandla.masinga@gmail.com',      'Y'),
    ('04-04', 'Deon',      'Coetzee',   '0765529011', 'deon.coetzee@outlook.com',      'Y'),
    ('04-05', 'Boitumelo', 'Radebe',    '0841196620', 'boitumelo.r@gmail.com',         'Y'),
    ('04-06', 'Grant',     'Stevens',   '0839914478', 'grant.stevens@gmail.com',       'Y'),
    ('04-07', 'Lindiwe',   'Mhlongo',   '0728039902', 'lindiwe.mhlongo@gmail.com',     'N'),
    ('04-08', 'Heinrich',  'Schultz',   '0816601145', 'heinrich.schultz@gmail.com',    'Y'),
    ('04-09', 'Nokuthula', 'Ntuli',     '0734438099', 'nokuthula.ntuli@yahoo.com',     'Y'),
    ('04-10', 'Ryan',      'Adams',     '0782206681', 'ryan.adams@gmail.com',          'Y')
) AS Source (MemberID, Name, Surname, Contact, Email, Active)
ON Target.MemberID = Source.MemberID

WHEN NOT MATCHED BY TARGET THEN
    INSERT (MemberID, Name, Surname, Contact, Email, Active)
    VALUES (Source.MemberID, Source.Name, Source.Surname,
            Source.Contact, Source.Email, Source.Active);