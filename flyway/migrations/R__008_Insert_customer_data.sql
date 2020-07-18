INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "company", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (1, NOW(), NOW(), 'Lus', 'Gonalves', 'Embraer - Empresa Brasileira de Aeronutica S.A.', 'Av. Brigadeiro Faria Lima, 2170', 'So Jos dos Campos', 'SP', 'Brazil', '12227-000', '+55 (12) 3923-5555', '+55 (12) 3923-5566', 'luisg@embraer.com.br', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (2, NOW(), NOW(), 'Leonie', 'Khler', 'Theodor-Heuss-Strae 34', 'Stuttgart', 'Germany', '70174', '+49 0711 2842222', 'leonekohler@surfeu.de', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (3, NOW(), NOW(), 'Franois', 'Tremblay', '1498 rue Blanger', 'Montral', 'QC', 'Canada', 'H2G 1A7', '+1 (514) 721-4711', 'ftremblay@gmail.com', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (4, NOW(), NOW(), 'Bjrn', 'Hansen', 'Ullevlsveien 14', 'Oslo', 'Norway', '0171', '+47 22 44 22 22', 'bjorn.hansen@yahoo.no', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "company", "address", "city", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (5, NOW(), NOW(), 'Frantiek', 'Wichterlov', 'JetBrains s.r.o.', 'Klanova 9/506', 'Prague', 'Czech Republic', '14700', '+420 2 4172 5555', '+420 2 4172 5555', 'frantisekw@jetbrains.com', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (6, NOW(), NOW(), 'Helena', 'Hol', 'Rilsk 3174/6', 'Prague', 'Czech Republic', '14300', '+420 2 4177 0449', 'hholy@gmail.com', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (7, NOW(), NOW(), 'Astrid', 'Gruber', 'Rotenturmstrae 4, 1010 Innere Stadt', 'Vienne', 'Austria', '1010', '+43 01 5134505', 'astrid.gruber@apple.at', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (8, NOW(), NOW(), 'Daan', 'Peeters', 'Grtrystraat 63', 'Brussels', 'Belgium', '1000', '+32 02 219 03 03', 'daan_peeters@apple.be', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (9, NOW(), NOW(), 'Kara', 'Nielsen', 'Snder Boulevard 51', 'Copenhagen', 'Denmark', '1720', '+453 3331 9991', 'kara.nielsen@jubii.dk', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "company", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (10, NOW(), NOW(), 'Eduardo', 'Martins', 'Woodstock Discos', 'Rua Dr. Falco Filho, 155', 'So Paulo', 'SP', 'Brazil', '01007-010', '+55 (11) 3033-5446', '+55 (11) 3033-4564', 'eduardo@woodstock.com.br', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "company", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (11, NOW(), NOW(), 'Alexandre', 'Rocha', 'Banco do Brasil S.A.', 'Av. Paulista, 2022', 'So Paulo', 'SP', 'Brazil', '01310-200', '+55 (11) 3055-3278', '+55 (11) 3055-8131', 'alero@uol.com.br', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "company", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (12, NOW(), NOW(), 'Roberto', 'Almeida', 'Riotur', 'Praa Pio X, 119', 'Rio de Janeiro', 'RJ', 'Brazil', '20040-020', '+55 (21) 2271-7000', '+55 (21) 2271-7070', 'roberto.almeida@riotur.gov.br', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (13, NOW(), NOW(), 'Fernanda', 'Ramos', 'Qe 7 Bloco G', 'Braslia', 'DF', 'Brazil', '71020-677', '+55 (61) 3363-5547', '+55 (61) 3363-7855', 'fernadaramos4@uol.com.br', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "company", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (14, NOW(), NOW(), 'Mark', 'Philips', 'Telus', '8210 111 ST NW', 'Edmonton', 'AB', 'Canada', 'T6G 2C7', '+1 (780) 434-4554', '+1 (780) 434-5565', 'mphilips12@shaw.ca', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "company", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (15, NOW(), NOW(), 'Jennifer', 'Peterson', 'Rogers Canada', '700 W Pender Street', 'Vancouver', 'BC', 'Canada', 'V6C 1G8', '+1 (604) 688-2255', '+1 (604) 688-8756', 'jenniferp@rogers.ca', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "company", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (16, NOW(), NOW(), 'Frank', 'Harris', 'Google Inc.', '1600 Amphitheatre Parkway', 'Mountain View', 'CA', 'USA', '94043-1351', '+1 (650) 253-0000', '+1 (650) 253-0000', 'fharris@google.com', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "company", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (17, NOW(), NOW(), 'Jack', 'Smith', 'Microsoft Corporation', '1 Microsoft Way', 'Redmond', 'WA', 'USA', '98052-8300', '+1 (425) 882-8080', '+1 (425) 882-8081', 'jacksmith@microsoft.com', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (18, NOW(), NOW(), 'Michelle', 'Brooks', '627 Broadway', 'New York', 'NY', 'USA', '10012-2612', '+1 (212) 221-3546', '+1 (212) 221-4679', 'michelleb@aol.com', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "company", "address", "city", "state", "country", "postal_code", "phone", "fax", "email", "support_rep_id") VALUES (19, NOW(), NOW(), 'Tim', 'Goyer', 'Apple Inc.', '1 Infinite Loop', 'Cupertino', 'CA', 'USA', '95014', '+1 (408) 996-1010', '+1 (408) 996-1011', 'tgoyer@apple.com', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (20, NOW(), NOW(), 'Dan', 'Miller', '541 Del Medio Avenue', 'Mountain View', 'CA', 'USA', '94040-111', '+1 (650) 644-3358', 'dmiller@comcast.com', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (21, NOW(), NOW(), 'Kathy', 'Chase', '801 W 4th Street', 'Reno', 'NV', 'USA', '89503', '+1 (775) 223-7665', 'kachase@hotmail.com', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (22, NOW(), NOW(), 'Heather', 'Leacock', '120 S Orange Ave', 'Orlando', 'FL', 'USA', '32801', '+1 (407) 999-7788', 'hleacock@gmail.com', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (23, NOW(), NOW(), 'John', 'Gordon', '69 Salem Street', 'Boston', 'MA', 'USA', '2113', '+1 (617) 522-1333', 'johngordon22@yahoo.com', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (24, NOW(), NOW(), 'Frank', 'Ralston', '162 E Superior Street', 'Chicago', 'IL', 'USA', '60611', '+1 (312) 332-3232', 'fralston@gmail.com', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (25, NOW(), NOW(), 'Victor', 'Stevens', '319 N. Frances Street', 'Madison', 'WI', 'USA', '53703', '+1 (608) 257-0597', 'vstevens@yahoo.com', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (26, NOW(), NOW(), 'Richard', 'Cunningham', '2211 W Berry Street', 'Fort Worth', 'TX', 'USA', '76110', '+1 (817) 924-7272', 'ricunningham@hotmail.com', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (27, NOW(), NOW(), 'Patrick', 'Gray', '1033 N Park Ave', 'Tucson', 'AZ', 'USA', '85719', '+1 (520) 622-4200', 'patrick.gray@aol.com', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (28, NOW(), NOW(), 'Julia', 'Barnett', '302 S 700 E', 'Salt Lake City', 'UT', 'USA', '84102', '+1 (801) 531-7272', 'jubarnett@gmail.com', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (29, NOW(), NOW(), 'Robert', 'Brown', '796 Dundas Street West', 'Toronto', 'ON', 'Canada', 'M6J 1V1', '+1 (416) 363-8888', 'robbrown@shaw.ca', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (30, NOW(), NOW(), 'Edward', 'Francis', '230 Elgin Street', 'Ottawa', 'ON', 'Canada', 'K2P 1L7', '+1 (613) 234-3322', 'edfrancis@yachoo.ca', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (31, NOW(), NOW(), 'Martha', 'Silk', '194A Chain Lake Drive', 'Halifax', 'NS', 'Canada', 'B3S 1C5', '+1 (902) 450-0450', 'marthasilk@gmail.com', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (32, NOW(), NOW(), 'Aaron', 'Mitchell', '696 Osborne Street', 'Winnipeg', 'MB', 'Canada', 'R3L 2B9', '+1 (204) 452-6452', 'aaronmitchell@yahoo.ca', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (33, NOW(), NOW(), 'Ellie', 'Sullivan', '5112 48 Street', 'Yellowknife', 'NT', 'Canada', 'X1A 1N6', '+1 (867) 920-2233', 'ellie.sullivan@shaw.ca', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "phone", "email", "support_rep_id") VALUES (34, NOW(), NOW(), 'Joo', 'Fernandes', 'Rua da Assuno 53', 'Lisbon', 'Portugal', '+351 (213) 466-111', 'jfernandes@yahoo.pt', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "phone", "email", "support_rep_id") VALUES (35, NOW(), NOW(), 'Madalena', 'Sampaio', 'Rua dos Campees Europeus de Viena, 4350', 'Porto', 'Portugal', '+351 (225) 022-448', 'masampaio@sapo.pt', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (36, NOW(), NOW(), 'Hannah', 'Schneider', 'Tauentzienstrae 8', 'Berlin', 'Germany', '10789', '+49 030 26550280', 'hannah.schneider@yahoo.de', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (37, NOW(), NOW(), 'Fynn', 'Zimmermann', 'Berger Strae 10', 'Frankfurt', 'Germany', '60316', '+49 069 40598889', 'fzimmermann@yahoo.de', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (38, NOW(), NOW(), 'Niklas', 'Schrder', 'Barbarossastrae 19', 'Berlin', 'Germany', '10779', '+49 030 2141444', 'nschroder@surfeu.de', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (39, NOW(), NOW(), 'Camille', 'Bernard', '4, Rue Milton', 'Paris', 'France', '75009', '+33 01 49 70 65 65', 'camille.bernard@yahoo.fr', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (40, NOW(), NOW(), 'Dominique', 'Lefebvre', '8, Rue Hanovre', 'Paris', 'France', '75002', '+33 01 47 42 71 71', 'dominiquelefebvre@gmail.com', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (41, NOW(), NOW(), 'Marc', 'Dubois', '11, Place Bellecour', 'Lyon', 'France', '69002', '+33 04 78 30 30 30', 'marc.dubois@hotmail.com', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (42, NOW(), NOW(), 'Wyatt', 'Girard', '9, Place Louis Barthou', 'Bordeaux', 'France', '33000', '+33 05 56 96 96 96', 'wyatt.girard@yahoo.fr', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (43, NOW(), NOW(), 'Isabelle', 'Mercier', '68, Rue Jouvence', 'Dijon', 'France', '21000', '+33 03 80 73 66 99', 'isabelle_mercier@apple.fr', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (44, NOW(), NOW(), 'Terhi', 'Hmlinen', 'Porthaninkatu 9', 'Helsinki', 'Finland', '00530', '+358 09 870 2000', 'terhi.hamalainen@apple.fi', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "email", "support_rep_id") VALUES (45, NOW(), NOW(), 'Ladislav', 'Kovcs', 'Erzsbet krt. 58.', 'Budapest', 'Hungary', 'H-1073', 'ladislav_kovacs@apple.hu', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "phone", "email", "support_rep_id") VALUES (46, NOW(), NOW(), 'Hugh', 'O''Reilly', '3 Chatham Street', 'Dublin', 'Dublin', 'Ireland', '+353 01 6792424', 'hughoreilly@apple.ie', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (47, NOW(), NOW(), 'Lucas', 'Mancini', 'Via Degli Scipioni, 43', 'Rome', 'RM', 'Italy', '00192', '+39 06 39733434', 'lucas.mancini@yahoo.it', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (48, NOW(), NOW(), 'Johannes', 'Van der Berg', 'Lijnbaansgracht 120bg', 'Amsterdam', 'VV', 'Netherlands', '1016', '+31 020 6223130', 'johavanderberg@yahoo.nl', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (49, NOW(), NOW(), 'Stanislaw', 'Wjcik', 'Ordynacka 10', 'Warsaw', 'Poland', '00-358', '+48 22 828 37 39', 'stanislaw.wjcik@wp.pl', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (50, NOW(), NOW(), 'Enrique', 'Muoz', 'C/ San Bernardo 85', 'Madrid', 'Spain', '28015', '+34 914 454 454', 'enrique_munoz@yahoo.es', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (51, NOW(), NOW(), 'Joakim', 'Johansson', 'Celsiusg. 9', 'Stockholm', 'Sweden', '11230', '+46 08-651 52 52', 'joakim.johansson@yahoo.se', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (52, NOW(), NOW(), 'Emma', 'Jones', '202 Hoxton Street', 'London', 'United Kingdom', 'N1 5LH', '+44 020 7707 0707', 'emma_jones@hotmail.com', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (53, NOW(), NOW(), 'Phil', 'Hughes', '113 Lupus St', 'London', 'United Kingdom', 'SW1V 3EN', '+44 020 7976 5722', 'phil.hughes@gmail.com', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (54, NOW(), NOW(), 'Steve', 'Murray', '110 Raeburn Pl', 'Edinburgh ', 'United Kingdom', 'EH4 1HH', '+44 0131 315 3300', 'steve.murray@yahoo.uk', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "state", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (55, NOW(), NOW(), 'Mark', 'Taylor', '421 Bourke Street', 'Sidney', 'NSW', 'Australia', '2010', '+61 (02) 9332 3633', 'mark.taylor@yahoo.au', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (56, NOW(), NOW(), 'Diego', 'Gutirrez', '307 Macacha Gemes', 'Buenos Aires', 'Argentina', '1106', '+54 (0)11 4311 4333', 'diego.gutierrez@yahoo.ar', 4) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "phone", "email", "support_rep_id") VALUES (57, NOW(), NOW(), 'Luis', 'Rojas', 'Calle Lira, 198', 'Santiago', 'Chile', '+56 (0)2 635 4444', 'luisrojas@yahoo.cl', 5) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (58, NOW(), NOW(), 'Manoj', 'Pareek', '12,Community Centre', 'Delhi', 'India', '110017', '+91 0124 39883988', 'manoj.pareek@rediff.com', 3) ON CONFLICT DO NOTHING;
INSERT INTO sales.customer ("customer_id", "created_date", "updated_date", "first_name", "last_name", "address", "city", "country", "postal_code", "phone", "email", "support_rep_id") VALUES (59, NOW(), NOW(), 'Puja', 'Srivastava', '3,Raj Bhavan Road', 'Bangalore', 'India', '560001', '+91 080 22289999', 'puja_srivastava@yahoo.in', 3) ON CONFLICT DO NOTHING;