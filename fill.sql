BEGIN;
  \connect library

  SELECT add_new_category('Biografia/autobiografia/pamiętnik', 'Literatura piękna');
  SELECT add_new_category('Fantastyka, fantasy, science fiction', 'Literatura piękna');
  SELECT add_new_category('Historyczna', 'Literatura piękna');
  SELECT add_new_category('Horror', 'Literatura piękna');
  SELECT add_new_category('Klasyka', 'Literatura piękna');
  SELECT add_new_category('Literatura młodzieżowa', 'Literatura piękna');
  SELECT add_new_category('Literatura faktu', 'Literatura piękna');
  SELECT add_new_category('Literatura współczesna', 'Literatura piękna');
  SELECT add_new_category('Poezja', 'Literatura piękna');
  SELECT add_new_category('Przygodowa', 'Literatura piękna');
  SELECT add_new_category('Publicystyka literacka i eseje', 'Literatura piękna');
  SELECT add_new_category('Romans', 'Literatura piękna');
  SELECT add_new_category('Satyra', 'Literatura piękna');
  SELECT add_new_category('Thriller/sensacja/kryminał', 'Literatura piękna');
  SELECT add_new_category('Utwór dramatyczny (dramat, komedia, tragedia)', 'Literatura piękna');
  SELECT add_new_category('Psychologiczna', 'Literatura piękna');
  SELECT add_new_category('Astronomia, astrofizyka', 'Literatura popularnonaukowa');
  SELECT add_new_category('Biznes, finanse', 'Literatura popularnonaukowa');
  SELECT add_new_category('Encyklopedie i słowniki', 'Literatura popularnonaukowa');
  SELECT add_new_category('Ezoteryka, senniki, horoskopy', 'Literatura popularnonaukowa');
  SELECT add_new_category('Filozofia i etyka', 'Literatura popularnonaukowa');
  SELECT add_new_category('Flora i fauna', 'Literatura popularnonaukowa');
  SELECT add_new_category('Literatura podróżnicza', 'Literatura popularnonaukowa');
  SELECT add_new_category('Informatyka i matematyka', 'Literatura popularnonaukowa');
  SELECT add_new_category('Historia', 'Literatura popularnonaukowa');
  SELECT add_new_category('Językoznawstwo, nauka o literaturze', 'Literatura popularnonaukowa');
  SELECT add_new_category('Nauki przyrodnicze (fizyka, chemia, biologia, itd.)', 'Literatura popularnonaukowa');
  SELECT add_new_category('Nauki społeczne (psychologia, socjologia, itd.)', 'Literatura popularnonaukowa');
  SELECT add_new_category('Popularnonaukowa', 'Literatura popularnonaukowa');
  SELECT add_new_category('Poradniki', 'Literatura popularnonaukowa');
  SELECT add_new_category('Poradniki dla rodziców', 'Literatura popularnonaukowa');
  SELECT add_new_category('Technika', 'Literatura popularnonaukowa');
  SELECT add_new_category('Interaktywne, obrazkowe, edukacyjne', 'Literatura dziecięca');
  SELECT add_new_category('Opowieści dla młodszych dzieci', 'Literatura dziecięca');
  SELECT add_new_category('Bajki', 'Literatura dziecięca');
  SELECT add_new_category('Wierszyki, piosenki', 'Literatura dziecięca');
  SELECT add_new_category('Baśnie, legendy, podania', 'Literatura dziecięca');
  SELECT add_new_category('Historie biblijne', 'Literatura dziecięca');
  SELECT add_new_category('Opowiadania i powieści', 'Literatura dziecięca');
  SELECT add_new_category('Popularnonaukowe', 'Literatura dziecięca');
  SELECT add_new_category('Pozostałe', 'Literatura dziecięca');
  SELECT add_new_category('Albumy', 'Inne');
  SELECT add_new_category('Czasopisma', 'Inne');
  SELECT add_new_category('Film/kino/telewizja', 'Inne');
  SELECT add_new_category('Hobby', 'Inne');
  SELECT add_new_category('Komiksy', 'Inne');
  SELECT add_new_category('Kulinaria, przepisy kulinarne', 'Inne');
  SELECT add_new_category('Militaria, wojskowość', 'Inne');
  SELECT add_new_category('Motoryzacja', 'Inne');
  SELECT add_new_category('Muzyka', 'Inne');
  SELECT add_new_category('Religia', 'Inne');
  SELECT add_new_category('Rękodzieło', 'Inne');
  SELECT add_new_category('Rozrywka', 'Inne');
  SELECT add_new_category('Sport', 'Inne');
  SELECT add_new_category('Sztuka', 'Inne');
  SELECT add_new_category('Teatr', 'Inne');
  SELECT add_new_category('Turystyka, mapy, atlasy', 'Inne');
  SELECT add_new_category('Zdrowie, medycyna', 'Inne');


  INSERT INTO branches(branch_name, address, phone_num)
  VALUES
    ('Stare Miasto', 'ul. Rajska 1, 31-124 Kraków', '12 375 22 00'),
    ('Grzegórzki', 'ul. Masarska 14, 33-332 Kraków', '12 431 00 68'),
    ('Prądnik Czerwony', 'ul. Dobrego Pasterza 6, 31-416 Kraków', NULL),
    ('Prądnik Biały', 'ul. Ojcowska 27, 31-344 Kraków', '797 301 011'),
    ('Krowodrza', 'ul. Kazimierza Wielkiego 112/2, 30-074 Kraków', '012 636 9591'),
    ('Bronowice', 'ul. Zarzecze 2, 30-134 Kraków', '12 632 13 75'),
    ('Zwierzyniec', 'ul. Bolesława Prusa 8, 30-117 Kraków', '012 421 5667'),
    ('Dębniki', 'ul. Praska 50, 30-322 Kraków', '012 267 0303'),
    ('Łagiewniki', 'ul. Żywiecka 11, 30-427 Kraków', '012 268 1615'),
    ('Borek Fałęcki', 'ul. Niemcewicza 5, 30-590 Kraków', NULL),
    ('Swoszowice', 'ul. Inicjatywy Lokalnej 2, 30-499 Kraków', '12 264 9076'),
    ('Podgórze Duchackie', 'ul. Ks. Tischnera 14, 30-500 Kraków', NULL),
    ('Bieżanów', 'ul. Jana Kurczaba 4, 30-868 Kraków', '12 658 2612'),
    ('Prokocim', 'ul. Dygasińskiego 1, 30-901 Kraków', NULL),
    ('Podgórze', 'Rynek Podgórski 3, 30-533 Kraków', '12 656 6222'),
    ('Czyżyny', 'Osiedle Dywizjonu 303 24, 31-874 Kraków', '12 647 6264'),
    ('Mistrzejowice', 'ul. Miśnieńska 28, 31-612 Kraków', NULL),
    ('Bieńczyce', 'Osiedle Kalinowe 14, 31-812 Kraków', '12 641 4562'),
    ('Wzgórza Krzesławickie', 'Osiedle Na Stoku 5, 31-703 Kraków', '012 645 3002'),
    ('Nowa Huta', 'Osiedle Centrum B 2, 31-927 Kraków', '12 644 7840');

  INSERT INTO publishers(publisher_name, creation_date, address, phone_num)
  VALUES
    ('Apostolicum', NULL, NULL, NULL),
    ('BIBLOS', NULL, NULL, NULL),
    ('BookRage', NULL, NULL, NULL),
    ('Centrum Badań i Innowacji Pro-Akademia', NULL, NULL, NULL),
    ('Correspondance des Arts', NULL, NULL, NULL),
    ('Czytelnia dla wszystkich', NULL, NULL, NULL),
    ('Eduintegrator', NULL, NULL, NULL),
    ('ELAY', NULL, NULL, NULL),
    ('Fundacja Instytut Wydawniczy „Książka i Prasa”', NULL, NULL, NULL),
    ('Fundacja Nasza Przyszłość', NULL, NULL, NULL),
    ('Gdański Klub Fantastyki', NULL, NULL, NULL),
    ('Grupa kapitałowa PWN', NULL, NULL, NULL),
    ('Hanami', NULL, NULL, NULL),
    ('Hejnał', NULL, NULL, NULL),
    ('Grupa Wydawnicza Helion', NULL, NULL, NULL),
    ('Instytut Wydawniczy Agape', NULL, NULL, NULL),
    ('Instytut Wydawniczy SIMP', NULL, NULL, NULL),
    ('Jacek Music', NULL, NULL, NULL),
    ('Japonica Polonica Fantastica', NULL, NULL, NULL),
    ('Książnica-Atlas', NULL, NULL, NULL),
    ('Księgarnia św. Jacka', NULL, NULL, NULL),
    ('Lupus', NULL, NULL, NULL),
    ('Marpress', NULL, NULL, NULL),
    ('Wydawnictwo Michalineum', NULL, NULL, NULL),
    ('Niezależna Oficyna Wydawnicza', NULL, NULL, NULL),
    ('Noir sur Blanc', NULL, NULL, NULL),
    ('Officyna Liberałów', NULL, NULL, NULL),
    ('Oficyna Monos', NULL, NULL, NULL),
    ('Polskie Towarzystwo Astronomiczne', NULL, NULL, NULL),
    ('Polskie Wydawnictwo Encyklopedyczne', NULL, NULL, NULL),
    ('Rewasz', NULL, NULL, NULL),
    ('Wydawnictwo Solaris', NULL, NULL, NULL),
    ('Słowo Prawdy', NULL, NULL, NULL),
    ('Sport i Turystyka', NULL, NULL, NULL),
    ('Superpress', NULL, NULL, NULL),
    ('Tajne Wojskowe Zakłady Wydawnicze', NULL, NULL, NULL),
    ('TM-Semic', NULL, NULL, NULL),
    ('Wydawnictwo Altenberga', NULL, NULL, NULL),
    ('Wydawnictwo Armoryka', NULL, NULL, NULL),
    ('Wydawnictwo Czarne', NULL, NULL, NULL),
    ('Wydawnictwo Czerwone i Czarne', NULL, NULL, NULL),
    ('Wydawnictwo im. Konstytucji 3 Maja', NULL, NULL, NULL),
    ('Wydawnictwo Kirin', NULL, NULL, NULL),
    ('Wydawnictwo Muzyczne GAMMA', NULL, NULL, NULL),
    ('Wydawnictwo Pedagogiczne Operon', NULL, NULL, NULL),
    ('Wydawnictwo Piotra Marciszuka Stentor', NULL, NULL, NULL),
    ('Wydawnictwo Politechniki Śląskiej', NULL, NULL, NULL),
    ('Wydawnictwo Replika', NULL, NULL, NULL),
    ('Wydawnictwo WARTO', NULL, NULL, NULL),
    ('Wydawnictwo Zwiastun', NULL, NULL, NULL),
    ('Zakład Piller-Neumanna', NULL, NULL, NULL),
    ('Wydawnictwo „Znaki Czasu”', NULL, NULL, NULL);

  INSERT INTO clients(client_name, document_number, address, phone_num)
  VALUES
    ('Jan Nowak',          'AVU 123231', 'Kozia Wólka 23',                 '12354213'),
    ('Aleksander Nowak',   'AVU 321331', 'Piekry 53',                      '21737213'),
    ('Jan Bąk',            'ADS 156531', 'Szczyrk 15',                     '18721092'),
    ('Marian Paździoch',   'ACC 123531', 'Zakopane 1',                     '57387423'),
    ('Ferdynand Kiepski',  'AVV 909231', 'Kraków ul. Wrocławska 12',       '23480913'),
    ('Johny Bob',          'ALP 123325', 'Kraków ul. Łojasiewicza 6',      '47536191'),
    ('Johny Deep',         'ALL 901723', 'Kraków ul. Tyniecka 127',        '09546723'),
    ('Christina Aguillera','ALL 426112', 'Raciborowice 9',                 '13645781'),
    ('Kamil But',          'AQW 897324', 'Michałowice 128',                '43587231'),
    ('Jan Wipler',         'AVU 236542', 'Leśna Dolina 23',                '34284722'),
    ('Aleksander Wielki',  'AQW 098312', 'Mistrzejowice ul. krakowska 127','53478349'),
    ('Barbara Barbara',    'AME 284243', 'Raciborowice 12',                '37638932'),
    ('Agnieszka Szop',     'AAB 942342', 'Piekary 123',                    '48593789'),
    ('Maria Kita',         'ALP 231235', 'Zakopane 55',                    '13763244');

    
  SELECT add_new_edition('Duma i uprzedzenie', '978-3-16-148410-0', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Jane Austen}' );
  SELECT add_new_edition('Władca Pierścieni - Drużyna Pierścienia', '123456789X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}' );
  SELECT add_new_edition('Władca Pierścieni - Dwie Wieże', '1000000001', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}' );
  SELECT add_new_edition('Władca Pierścieni - Powrót Krola', '0000000000', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}' );
  SELECT add_new_edition('Jane Eyre', '2000000002', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Charlotte Bronte}' );
  SELECT add_new_edition('Harry Potter i Kamień Filozoficzny', '3000000003', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}' );
  SELECT add_new_edition('Harry Potter i Komnata Tajemnic', '4000000004', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}' );
  SELECT add_new_edition('Harry Potter i Więzień Azkabanu', '5000000005', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}' );
  SELECT add_new_edition('Harry Potter i Czara Ognia', '6000000006', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}' );
  SELECT add_new_edition('Harry Potter i Zakon Feniksa', '7000000007', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}' );
  SELECT add_new_edition('Harry Potter i Książe Półkrwi', '8000000008', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}' );
  SELECT add_new_edition('Harry Potter i Insygnia Śmierci', '9000000009', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}' );
  SELECT add_new_edition('Zabić drozda', '100000001X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Harper Lee}' );
  SELECT add_new_edition('Biblia', '2000000010', 'Wydanie pierwsze', 'Apostolicum', NULL );
  SELECT add_new_edition('Wichrowe Wzgórza', '3000000011', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Emily Bronte}' );
  SELECT add_new_edition('Rok 1984', '4000000012', 'Wydanie pierwsze', 'Apostolicum', NULL, '{George Orwell}' );
  SELECT add_new_edition('Mroczne materie', '5000000013', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Philip Pullman}' );
  SELECT add_new_edition('Wielkie nadzieje', '6000000014', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Charles Dickens}' );
  SELECT add_new_edition('Małe kobietki', '7000000015', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Louisa M Alcott}' );
  SELECT add_new_edition('Tessa D’Urberville', '8000000016', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Thomas Hardy}' );
  SELECT add_new_edition('Paragraf 22', '9000000017', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Joseph Heller}' );
  SELECT add_new_edition('Dzieła zebrane Szekspira', '1000000028', 'Wydanie pierwsze', 'Apostolicum', NULL);
  SELECT add_new_edition('Rebeka', '2000000029', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Daphne Du Maurier}' );
  SELECT add_new_edition('Hobbit', '300000002X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.R.R. Tolkien}' );
  SELECT add_new_edition('Birdsong', '4000000020', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Sebastian Faulks}' );
  SELECT add_new_edition('Buszujący w zbożu', '5000000021', 'Wydanie pierwsze', 'Apostolicum', NULL, '{J.D. Salinger}' );
  SELECT add_new_edition('Żona podróżnika w czasie', '6000000022', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Audrey Niffenegger}' );
  SELECT add_new_edition('Miasteczko Middlemarch', '7000000023', 'Wydanie pierwsze', 'Apostolicum', NULL, '{George Eliot}' );
  SELECT add_new_edition('Przeminęło z wiatrem', '8000000024', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Margaret Mitchell}' );
  SELECT add_new_edition('Wielki Gatsby', '9000000025', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Scott Fitzgerald}' );
  SELECT add_new_edition('Samotnia', '1000000036', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Charles Dickens}' );
  SELECT add_new_edition('Wojna i pokój', '2000000037', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Lew Tołstoj}' );
  SELECT add_new_edition('Autostopem przez Galaktykę', '3000000038', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Douglas Adams}' );
  SELECT add_new_edition('Znowu w Brideshead', '4000000039', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Evelyn Waugh}' );
  SELECT add_new_edition('Zbrodnia i kara', '500000003X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Fiodor Dostojewski}' );
  SELECT add_new_edition('Grona gniewu', '6000000030', 'Wydanie pierwsze', 'Apostolicum', NULL, '{John Steinbeck}' );
  SELECT add_new_edition('Alicja w Krainie Czarów', '7000000031', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Lewis Carroll}' );
  SELECT add_new_edition('O czym szumią wierzby', '8000000032', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Kenneth Grahame}' );
  SELECT add_new_edition('Anna Karenina', '9000000033', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Lew Tołstoj}' );
  SELECT add_new_edition('David Copperfield', '1000000044', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Charles Dickens}' );
  SELECT add_new_edition('Opowieści z Narnii', '2000000045', 'Wydanie pierwsze', 'Apostolicum', NULL, '{C.S. Lewis}' );
  SELECT add_new_edition('Emma', '3000000046', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Jane Austen}' );
  SELECT add_new_edition('Perswazje', '4000000047', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Jane Austen}' );
  SELECT add_new_edition('Chłopiec z latawcem', '5000000048', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Khaled Hosseini}' );
  SELECT add_new_edition('Kapitan Corelli (w innym tłumaczeniu: Mandolina kapitana Corellego)', '6000000049', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Louis De Bernieres}' );
  SELECT add_new_edition('Wyznania Gejszy', '700000004X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Arthur Golden}' );
  SELECT add_new_edition('Kubuś Puchatek', '8000000040', 'Wydanie pierwsze', 'Apostolicum', NULL, '{A.A. Milne}' );
  SELECT add_new_edition('Folwark zwierzęcy', '9000000041', 'Wydanie pierwsze', 'Apostolicum', NULL, '{George Orwell}' );
  SELECT add_new_edition('Kod Da Vinci', '1000000052', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Dan Brown}' );
  SELECT add_new_edition('Sto lat samotności', '2000000053', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Gabriel Garcia Marquez}' );
  SELECT add_new_edition('Modlitwa za Owena', '3000000054', 'Wydanie pierwsze', 'Apostolicum', NULL, '{John Irving}' );
  SELECT add_new_edition('Kobieta w bieli', '4000000055', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Wilkie Collins}' );
  SELECT add_new_edition('Ania z Zielonego Wzgórza', '5000000056', 'Wydanie pierwsze', 'Apostolicum', NULL, '{L.M. Montgomery}' );
  SELECT add_new_edition('Z dala od zgiełku', '6000000057', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Thomas Hardy}' );
  SELECT add_new_edition('Opowieść podręcznej', '7000000058', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Margaret Atwood}' );
  SELECT add_new_edition('Władca much', '8000000059', 'Wydanie pierwsze', 'Apostolicum', NULL, '{William Golding}' );
  SELECT add_new_edition('Pokuta', '900000005X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Ian McEwan}' );
  SELECT add_new_edition('Życie Pi', '1000000060', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Yann Martel}' );
  SELECT add_new_edition('Diuna', '2000000061', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Frank Herbert}' );
  SELECT add_new_edition('Cold Comfort Farm', '3000000062', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Stella Gibbons}' );
  SELECT add_new_edition('Rozważna i romantyczna', '4000000063', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Jane Austen}' );
  SELECT add_new_edition('Pretendent do ręki', '5000000064', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Vikram Seth}' );
  SELECT add_new_edition('Cień wiatru', '6000000065', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Carlos Ruiz Zafon}' );
  SELECT add_new_edition('Opowieść o dwóch miastach', '7000000066', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Charles Dickens}' );
  SELECT add_new_edition('Nowy wspaniały świat', '8000000067', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Aldous Huxley}' );
  SELECT add_new_edition('Dziwny przypadek psa nocną porą', '9000000068', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Mark Haddon}' );
  SELECT add_new_edition('Miłość w czasach zarazy', '1000000079', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Gabriel Garcia Marquez}' );
  SELECT add_new_edition('Myszy i ludzie', '200000007X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{John Steinbeck}' );
  SELECT add_new_edition('Lolita', '3000000070', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Vladimir Nabokov}' );
  SELECT add_new_edition('Tajemna historia', '4000000071', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Donna Tartt}' );
  SELECT add_new_edition('Nostalgia anioła', '5000000072', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Alice Sebold}' );
  SELECT add_new_edition('Hrabia Monte Christo', '6000000073', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Alexandre Dumas}' );
  SELECT add_new_edition('W drodze', '7000000074', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Jack Kerouac}' );
  SELECT add_new_edition('Juda nieznany', '8000000075', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Thomas Hardy}' );
  SELECT add_new_edition('Dziennik Bridget Jones', '9000000076', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Helen Fielding}' );
  SELECT add_new_edition('Dzieci północy', '1000000087', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Salman Rushdie}' );
  SELECT add_new_edition('Moby Dick', '2000000088', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Herman Melville}' );
  SELECT add_new_edition('Oliver Twist', '3000000089', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Charles Dickens}' );
  SELECT add_new_edition('Dracula', '400000008X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Bram Stoker}' );
  SELECT add_new_edition('Tajemniczy ogród', '5000000080', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Frances Hodgson Burnett}' );
  SELECT add_new_edition('Zapiski z małej wyspy', '6000000081', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Bill Bryson}' );
  SELECT add_new_edition('Ulisses', '7000000082', 'Wydanie pierwsze', 'Apostolicum', NULL, '{James Joyce}' );
  SELECT add_new_edition('Szklany klosz', '8000000083', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Sylvia Plath}' );
  SELECT add_new_edition('Jaskółki i Amazonki', '9000000084', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Arthur Ransome}' );
  SELECT add_new_edition('Germinal', '1000000095', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Emile Zola}' );
  SELECT add_new_edition('Targowisko próżności', '2000000096', 'Wydanie pierwsze', 'Apostolicum', NULL, '{William Makepeace Thackeray}' );
  SELECT add_new_edition('Opętanie', '3000000097', 'Wydanie pierwsze', 'Apostolicum', NULL, '{A.S. Byatt}' );
  SELECT add_new_edition('Opowieść wigilijna', '4000000098', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Charles Dickens}' );
  SELECT add_new_edition('Atlas chmur', '5000000099', 'Wydanie pierwsze', 'Apostolicum', NULL, '{David Mitchell}' );
  SELECT add_new_edition('Kolor purpury', '600000009X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Alice Walker}' );
  SELECT add_new_edition('Okruchy dnia', '7000000090', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Kazuo Ishiguro}' );
  SELECT add_new_edition('Pani Bovary', '8000000091', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Gustave Flaubert}' );
  SELECT add_new_edition('A Fine Balance', '9000000092', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Rohinton Mistry}' );
  SELECT add_new_edition('Pajęczyna Szarloty', '6000000103', 'Wydanie pierwsze', 'Apostolicum', NULL, '{E.B. White}' );
  SELECT add_new_edition('Pięć osób, które spotykamy w niebie', '7000000104', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Mitch Albom}' );
  SELECT add_new_edition('Przygody Sherlocka Holmesa', '8000000105', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Sir Arthur Conan Doyle}' );
  SELECT add_new_edition('The Faraway Tree Collection', '9000000106', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Enid Blyton}' );
  SELECT add_new_edition('Jądro ciemności', '1000000117', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Joseph Conrad}' );
  SELECT add_new_edition('Mały Książę', '2000000118', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Antoine De Saint-Exupery}' );
  SELECT add_new_edition('Fabryka os', '3000000119', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Iain Banks}' );
  SELECT add_new_edition('Wodnikowe Wzgórze', '400000011X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Richard Adams}' );
  SELECT add_new_edition('Sprzysiężenie głupców', '5000000110', 'Wydanie pierwsze', 'Apostolicum', NULL, '{John Kennedy Toole}' );
  SELECT add_new_edition('Miasteczko jak Alece Springs', '6000000111', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Nevil Shute}' );
  SELECT add_new_edition('Trzej muszkieterowie', '7000000112', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Alexandre Dumas}' );
  SELECT add_new_edition('Hamlet', '8000000113', 'Wydanie pierwsze', 'Apostolicum', NULL, '{William Shakespeare}' );
  SELECT add_new_edition('Charlie i fabryka czekolady', '9000000114', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Roald Dahl}' );
  SELECT add_new_edition('Nędznicy', '1000000125', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Victor Hugo}' );
  SELECT add_new_edition('W pustyni i w puszczy', '2000000126', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Henryk Sienkiewicz}' );
  SELECT add_new_edition('Krzyżacy', '3000000127', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Henryk Sienkiewicz}' );
  SELECT add_new_edition('Potop', '4000000128', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Henryk Sienkiewicz}' );
  SELECT add_new_edition('Ogniem i mieczem', '5000000129', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Henryk Sienkiewicz}' );
  SELECT add_new_edition('Pan Wołodyjowski', '600000012X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Henryk Sienkiewicz}' );
  SELECT add_new_edition('Pan Tadeusz, czyli ostatni zajazd na Litwie', '7000000120', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Adam Mickiewicz}' );
  SELECT add_new_edition('Ten obcy', '8000000121', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Irena Jurgielewiczowa}' );
  SELECT add_new_edition('Krew elfów', '9000000122', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Andrzej Sapkowski}' );
  SELECT add_new_edition('Wieża jaskółki', '1000000133', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Andrzej Sapkowski}' );
  SELECT add_new_edition('Ostatnie życzenie', '2000000134', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Andrzej Sapkowski}' );
  SELECT add_new_edition('Pani jeziora', '3000000135', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Andrzej Sapkowski}' );
  SELECT add_new_edition('Miecz przeznaczenia', '4000000136', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Andrzej Sapkowski}' );
  SELECT add_new_edition('Czas pogardy', '5000000137', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Andrzej Sapkowski}' );
  SELECT add_new_edition('Chrzest ognia', '6000000138', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Andrzej Sapkowski}' );
  SELECT add_new_edition('Sezon burz', '7000000139', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Andrzej Sapkowski}' );
  SELECT add_new_edition('Seria niefortunnych zdarzeń', '800000013X', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Lemony Snicket}');
  SELECT add_new_edition('Wprowadzenie do algorytmów', '9000000130', 'Wydanie pierwsze', 'Apostolicum', NULL, '{Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein}', '{Informatyka i matematyka}' );




COMMIT;