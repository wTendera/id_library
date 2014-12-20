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
    ('Paweł Arndt', 'BUB 475685', 'ul. Kolejowa 79, Warszawa', '379 892 926'),
    ('Urszula Augustyn', 'QYO 321516', 'ul. Kolorowa 65, Michałowice', '018 940 311'),
    ('Tadeusz Aziewicz', 'WEO 943503', 'ul. Słoneczna 39, Sosnowiec', '789 616 792'),
    ('Marek Biernacki', 'BRN 218665', 'ul. Kolorowa 99, Poznań', '671 349 955'),
    ('Andrzej Biernat', 'GMA 394773', 'ul. Mickiewicza 27, Kraków', '997 051 587'),
    ('Leszek Blanik', 'LEW 158997', 'ul. Krakowska 37, Zielona Góra', '306 385 543'),
    ('Joanna Bobowska', 'YLN 769428', 'ul. Wiejska 14, Kraków', '742 809 302'),
    ('Jerzy Borowczak', 'CVU 352669', 'ul. Krakowska 38, Sosnowiec', '123 559 868'),
    ('Krzysztof Brejza', 'HHR 978194', 'ul. Krasińskiego 60, Michałowice', '858 619 274'),
    ('Jacek Brzezinka', 'TOQ 506446', 'ul. Wiejska 34, Warszawa', '320 324 987'),
    ('Beata Bublewicz', 'IWB 625237', 'ul. Bociania 49, Sosnowiec', '308 306 448'),
    ('Borys Budka', 'PQI 339296', 'ul. Kolorowa 35, Warszawa', '730 080 825'),
    ('Jerzy Budnik', 'YPE 857827', 'ul. Krakowska 63, Warszawa', '166 735 845'),
    ('Bożenna Bukiewicz', 'ESX 615111', 'ul. Wiejska 38, Łódź', '230 775 868'),
    ('Renata Butryn', 'XEN 226961', 'ul. Słoneczna 2, Łódź', '508 080 125'),
    ('Jarosław Charłampowicz', 'YKL 558556', 'ul. Kolejowa 43, Poznań', '119 376 132'),
    ('Stanisław Chmielewski', 'HQD 643477', 'ul. Krakowska 12, Łódź', '808 641 294'),
    ('Janusz Cichoń', 'SQG 155560', 'ul. Słoneczna 49, Michałowice', '038 060 629'),
    ('Grażyna Ciemniak', 'CGW 695168', 'ul. Krasińskiego 23, Sosnowiec', '096 483 639'),
    ('Piotr Cieśliński', 'SVU 562513', 'ul. Krakowska 92, Poznań', '372 870 440'),
    ('Marian Cycoń', 'KNU 498562', 'ul. Bociania 58, Michałowice', '779 963 070'),
    ('Barbara Czaplicka', 'TUN 508842', 'ul. Mickiewicza 83, Warszawa', '500 594 651'),
    ('Czesław Czechyra', 'KKB 424473', 'ul. Kolorowa 17, Sosnowiec', '533 842 005'),
    ('Zofia Czernow', 'TJQ 997341', 'ul. Wiejska 81, Sosnowiec', '561 173 154'),
    ('Andrzej Czerwiński', 'LQT 721480', 'ul. Wiejska 24, Michałowice', '696 236 126'),
    ('Ewa Czeszejko-Sochacka', 'BMD 832515', 'ul. Krasińskiego 19, Warszawa', '092 871 133'),
    ('Alicja Dąbrowska', 'APB 767663', 'ul. Krakowska 54, Zielona Góra', '560 972 613'),
    ('Ewa Drozd', 'BDN 251512', 'ul. Krasińskiego 89, Łódź', '365 662 208'),
    ('Artur Dunin', 'AUM 651906', 'ul. Wiejska 51, Łódź', '225 918 978'),
    ('Zenon Durka', 'QYX 255244', 'ul. Krakowska 31, Poznań', '070 979 270'),
    ('Janusz Dzięcioł', 'XVC 710594', 'ul. Krakowska 61, Łódź', '474 269 384'),
    ('Waldy Dzikowski', 'SID 282275', 'ul. Kolejowa 84, Sosnowiec', '356 529 156'),
    ('Joanna Fabisiak', 'CSF 606217', 'ul. Wiejska 74, Warszawa', '837 481 774'),
    ('Jerzy Fedorowicz', 'QMF 185721', 'ul. Krakowska 0, Michałowice', '740 970 667'),
    ('Arkady Fiedler', 'VNJ 425061', 'ul. Krakowska 54, Łódź', '494 454 335'),
    ('Krzysztof Gadowski', 'YXY 294286', 'ul. Mickiewicza 37, Poznań', '716 733 130'),
    ('Andrzej Gałażewski', 'NCO 738432', 'ul. Bociania 21, Zielona Góra', '162 913 322'),
    ('Elżbieta Gapińska', 'UTH 418617', 'ul. Mickiewicza 61, Zielona Góra', '267 650 403'),
    ('Stanisław Gawłowski', 'YTA 821114', 'ul. Krakowska 48, Warszawa', '255 175 814'),
    ('Lidia Gądek', 'OBQ 958472', 'ul. Słoneczna 57, Sosnowiec', '856 323 136'),
    ('Magdalena Gąsior-Marek', 'BYH 295923', 'ul. Bociania 36, Michałowice', '089 126 176'),
    ('Elżbieta Gelert', 'YLB 006624', 'ul. Krakowska 51, Poznań', '883 509 002'),
    ('Artur Gierada', 'OGC 805431', 'ul. Kolorowa 59, Poznań', '696 020 461'),
    ('Czesław Gluza', 'CMS 409880', 'ul. Mickiewicza 30, Sosnowiec', '327 984 462'),
    ('Tomasz Głogowski', 'RMY 384623', 'ul. Słoneczna 65, Gdańsk', '333 631 222'),
    ('Cezary Grabarczyk', 'GYR 878091', 'ul. Krasińskiego 73, Warszawa', '404 628 315'),
    ('Mariusz Grad', 'YMG 728175', 'ul. Wiejska 15, Gdańsk', '576 999 433'),
    ('Rafał Grupiński', 'PKD 312017', 'ul. Krakowska 34, Michałowice', '522 878 488'),
    ('Andrzej Gut-Mostowy', 'ABI 999484', 'ul. Kolejowa 21, Kraków', '515 835 126'),
    ('Iwona Guzowska', 'ODB 979785', 'ul. Krasińskiego 78, Łódź', '665 340 989'),
    ('Andrzej Halicki', 'OEN 768509', 'ul. Krakowska 5, Gdańsk', '923 998 431'),
    ('Katarzyna Hall', 'IND 814722', 'ul. Krakowska 72, Poznań', '720 961 311'),
    ('Agnieszka Hanajczyk', 'IBY 292509', 'ul. Wiejska 77, Sosnowiec', '482 098 348'),
    ('Bożena Henczyca', 'LJF 228560', 'ul. Bociania 0, Poznań', '827 486 688'),
    ('Marek Hok', 'VSU 528608', 'ul. Kolejowa 41, Kraków', '519 373 917'),
    ('Teresa Hoppe', 'ULY 030991', 'ul. Słoneczna 52, Poznań', '000 386 166'),
    ('Stanisław Huskowski', 'SPE 142186', 'ul. Krasińskiego 60, Michałowice', '712 110 278'),
    ('Robert Jagła', 'IWK 438332', 'ul. Krakowska 95, Zielona Góra', '547 358 722'),
    ('Renata Janik', 'CVP 407278', 'ul. Słoneczna 90, Zielona Góra', '466 625 259'),
    ('Maria Janyska', 'VKJ 047394', 'ul. Krakowska 24, Zielona Góra', '833 848 131'),
    ('Tadeusz Jarmuziewicz', 'UUG 197289', 'ul. Wiejska 60, Kraków', '687 472 409'),
    ('Michał Jaros', 'FVS 892126', 'ul. Kolorowa 73, Poznań', '021 904 988'),
    ('Leszek Jastrzębski', 'HDG 725946', 'ul. Słoneczna 34, Sosnowiec', '848 101 437'),
    ('Roman Kaczor', 'FXJ 595390', 'ul. Kolejowa 47, Zielona Góra', '039 867 362'),
    ('Bożena Kamińska', 'JGV 419363', 'ul. Mickiewicza 54, Warszawa', '128 394 124'),
    ('Andrzej Kania', 'OSS 277445', 'ul. Krakowska 79, Zielona Góra', '088 516 808'),
    ('Grzegorz Karpiński', 'WRW 929325', 'ul. Wiejska 89, Łódź', '664 807 540'),
    ('Włodzimierz Karpiński', 'TSD 184914', 'ul. Bociania 91, Warszawa', '376 005 824'),
    ('Jan Kaźmierczak', 'YAK 664694', 'ul. Kolorowa 16, Michałowice', '429 023 425'),
    ('Małgorzata Kidawa-Błońska', 'XLL 541185', 'ul. Słoneczna 48, Kraków', '628 064 754'),
    ('Marcin Kierwiński', 'VBX 002670', 'ul. Krasińskiego 7, Warszawa', '203 070 633'),
    ('Joanna Kluzik-Rostkowska', 'WVL 296844', 'ul. Kolejowa 31, Sosnowiec', '537 019 796'),
    ('Krystyna Kłosin', 'LNU 968577', 'ul. Mickiewicza 14, Sosnowiec', '828 499 873'),
    ('Magdalena Kochan', 'CKH 178871', 'ul. Mickiewicza 11, Łódź', '844 450 407'),
    ('Brygida Kolenda-Łabuś', 'TFU 854291', 'ul. Słoneczna 65, Poznań', '875 377 300'),
    ('Agnieszka Kołacz-Leszczyńska', 'PLI 256267', 'ul. Słoneczna 60, Warszawa', '639 782 278'),
    ('Ewa Kołodziej', 'PEG 668843', 'ul. Mickiewicza 38, Kraków', '473 680 509'),
    ('Zbigniew Konwiński', 'TLG 318430', 'ul. Wiejska 9, Sosnowiec', '897 975 971'),
    ('Ewa Kopacz', 'ADL 828747', 'ul. Kolejowa 80, Michałowice', '300 160 017'),
    ('Domicela Kopaczewska', 'MVU 082113', 'ul. Wiejska 99, Sosnowiec', '197 663 130'),
    ('Leszek Korzeniowski', 'HGJ 812742', 'ul. Kolejowa 43, Zielona Góra', '504 770 445'),
    ('Roman Kosecki', 'VMU 404685', 'ul. Bociania 99, Gdańsk', '791 563 672'),
    ('Sławomir Kowalski', 'JBP 460954', 'ul. Kolejowa 69, Gdańsk', '562 639 887'),
    ('Jacek Kozaczyński', 'SXF 294645', 'ul. Mickiewicza 15, Kraków', '770 489 862'),
    ('Jerzy Kozdroń', 'ESD 575446', 'ul. Wiejska 9, Kraków', '817 932 459'),
    ('Iwona Kozłowska', 'MJP 917394', 'ul. Wiejska 87, Warszawa', '394 306 740'),
    ('Mirosław Koźlakiewicz', 'BUV 178210', 'ul. Słoneczna 21, Sosnowiec', '052 547 123'),
    ('Ligia Krajewska', 'APT 167364', 'ul. Kolorowa 39, Michałowice', '633 459 436'),
    ('Robert Kropiwnicki', 'BHB 096389', 'ul. Krakowska 17, Michałowice', '230 370 175'),
    ('Elżbieta Królikowska-Kińska', 'DML 977537', 'ul. Krasińskiego 19, Łódź', '762 127 453'),
    ('Przemysław Krysztofiak', 'MEB 978665', 'ul. Bociania 83, Łódź', '530 986 970'),
    ('Marek Krząkała', 'FYU 133644', 'ul. Krasińskiego 72, Zielona Góra', '732 895 962'),
    ('Cezary Kucharski', 'YFT 680895', 'ul. Krasińskiego 14, Warszawa', '958 586 707'),
    ('Tomasz Kulesza', 'IRK 110535', 'ul. Bociania 47, Warszawa', '157 208 200'),
    ('Stanisław Lamczyk', 'VYF 441397', 'ul. Krasińskiego 14, Michałowice', '856 483 581'),
    ('Józef Lassota', 'FQP 685855', 'ul. Krasińskiego 64, Michałowice', '525 625 965'),
    ('Tomasz Lenz', 'FEE 075401', 'ul. Krasińskiego 21, Łódź', '952 844 338'),
    ('Izabela Leszczyna', 'HAY 305051', 'ul. Kolorowa 21, Zielona Góra', '350 782 224'),
    ('Arkadiusz Litwiński', 'YXN 014805', 'ul. Słoneczna 68, Zielona Góra', '552 724 038'),
    ('Marek Łapiński', 'OXG 150863', 'ul. Krakowska 99, Gdańsk', '215 333 477'),
    ('Zofia Ławrynowicz', 'SQE 806974', 'ul. Wiejska 42, Kraków', '735 608 942'),
    ('Robert Maciaszek', 'WXU 916765', 'ul. Kolejowa 76, Zielona Góra', '451 109 330'),
    ('Beata Małecka-Libera', 'GQN 268741', 'ul. Wiejska 95, Poznań', '473 909 695'),
    ('Jagna Marczułajtis-Walczak', 'ILR 848024', 'ul. Słoneczna 38, Kraków', '897 052 739'),
    ('Katarzyna Matusik-Lipiec', 'HKG 800406', 'ul. Kolorowa 4, Kraków', '320 535 935'),
    ('Antoni Mężydło', 'SKX 627755', 'ul. Wiejska 41, Michałowice', '013 226 336'),
    ('Rajmund Miller', 'AXH 632198', 'ul. Bociania 10, Łódź', '143 200 383'),
    ('Aldona Młyńczak', 'CIO 768389', 'ul. Słoneczna 11, Gdańsk', '746 060 580'),
    ('Czesław Mroczek', 'DNM 819109', 'ul. Krakowska 74, Łódź', '888 447 208'),
    ('Izabela Mrzygłocka', 'OPH 377549', 'ul. Krasińskiego 5, Kraków', '987 434 903'),
    ('Joanna Mucha', 'KFN 333329', 'ul. Wiejska 8, Warszawa', '429 727 071'),
    ('Killion Munyama', 'OMU 047532', 'ul. Krakowska 38, Poznań', '483 504 704'),
    ('Tadeusz Naguszewski', 'RKI 922221', 'ul. Bociania 85, Łódź', '029 441 061'),
    ('Anna Nemś', 'DKR 083512', 'ul. Wiejska 61, Łódź', '846 359 483'),
    ('Sławomir Neumann', 'LYN 834959', 'ul. Kolorowa 63, Gdańsk', '881 585 758'),
    ('Dorota Niedziela', 'AJY 080392', 'ul. Mickiewicza 27, Łódź', '039 198 696'),
    ('Małgorzata Niemczyk', 'DFW 587442', 'ul. Kolejowa 70, Zielona Góra', '891 440 209'),
    ('Stefan Niesiołowski', 'OVG 170989', 'ul. Słoneczna 78, Michałowice', '352 648 648'),
    ('Tomasz Nowak', 'TJV 901063', 'ul. Kolorowa 81, Łódź', '346 588 197'),
    ('Mirosława Nykiel', 'XCW 010060', 'ul. Krasińskiego 54, Poznań', '569 569 117'),
    ('Marzena Okła-Drewnowicz', 'LIU 573467', 'ul. Bociania 89, Kraków', '246 222 676'),
    ('Janina Okrągły', 'EMR 361235', 'ul. Krasińskiego 37, Zielona Góra', '950 962 541'),
    ('Alicja Olechowska', 'KGR 501301', 'ul. Wiejska 59, Kraków', '681 059 870'),
    ('Paweł Olszewski', 'VLM 081388', 'ul. Mickiewicza 92, Sosnowiec', '857 503 022'),
    ('Maciej Orzechowski', 'PCY 769940', 'ul. Kolorowa 17, Michałowice', '091 036 642'),
    ('Andrzej Orzechowski', 'VRR 318630', 'ul. Bociania 65, Gdańsk', '023 413 405'),
    ('Konstanty Oświęcimski', 'GAH 561078', 'ul. Wiejska 73, Warszawa', '042 920 247'),
    ('Zbigniew Pacelt', 'HHH 700455', 'ul. Krasińskiego 65, Michałowice', '469 633 086'),
    ('Witold Pahl', 'HHE 842777', 'ul. Bociania 76, Gdańsk', '188 652 461'),
    ('Paweł Papke', 'IEP 866433', 'ul. Krasińskiego 94, Warszawa', '137 753 509'),
    ('Małgorzata Pępek', 'NRE 426774', 'ul. Mickiewicza 44, Poznań', '464 762 950'),
    ('Sławomir Piechota', 'WJP 968802', 'ul. Bociania 29, Łódź', '728 063 688'),
    ('Elżbieta Pierzchała', 'QUI 326320', 'ul. Krakowska 9, Poznań', '399 999 191'),
    ('Danuta Pietraszewska', 'KBO 912961', 'ul. Mickiewicza 76, Poznań', '606 471 804'),
    ('Lucjan Pietrzczyk', 'TWH 878917', 'ul. Krasińskiego 30, Poznań', '213 123 042'),
    ('Jarosław Pięta', 'YKE 787164', 'ul. Wiejska 98, Sosnowiec', '965 756 325'),
    ('Teresa Piotrowska', 'UQB 965127', 'ul. Kolejowa 20, Poznań', '832 871 975'),
    ('Kazimierz Plocke', 'MHW 425065', 'ul. Kolejowa 84, Poznań', '929 124 648'),
    ('Mirosław Pluta', 'PJO 425905', 'ul. Kolejowa 60, Poznań', '107 291 485'),
    ('Agnieszka Pomaska', 'PRB 425201', 'ul. Kolejowa 27, Michałowice', '152 824 133'),
    ('Damian Raczkowski', 'TNR 258900', 'ul. Krasińskiego 60, Michałowice', '818 059 469'),
    ('Elżbieta Radziszewska', 'FMQ 515113', 'ul. Wiejska 71, Warszawa', '986 711 300'),
    ('Grzegorz Raniewicz', 'MWK 909010', 'ul. Bociania 79, Łódź', '786 290 914'),
    ('Ireneusz Raś', 'TEY 455738', 'ul. Słoneczna 16, Michałowice', '009 677 246'),
    ('Halina Rozpondek', 'DVO 420831', 'ul. Kolorowa 53, Zielona Góra', '153 941 184'),
    ('Beata Rusinowska', 'YNQ 840666', 'ul. Mickiewicza 6, Zielona Góra', '668 953 270'),
    ('Dorota Rutkowska', 'CVL 349962', 'ul. Kolejowa 57, Sosnowiec', '144 229 719'),
    ('Jakub Rutnicki', 'VSP 310636', 'ul. Kolorowa 74, Gdańsk', '845 721 840'),
    ('Zbigniew Rynasiewicz', 'LFJ 940987', 'ul. Krasińskiego 74, Poznań', '957 584 349'),
    ('Marek Rząsa', 'TUN 857143', 'ul. Kolejowa 2, Sosnowiec', '768 221 409'),
    ('Jan Rzymełka', 'OTE 571735', 'ul. Kolejowa 98, Sosnowiec', '810 778 630'),
    ('Grzegorz Schetyna', 'PQL 057112', 'ul. Kolorowa 64, Warszawa', '523 276 103'),
    ('Krystyna Sibińska', 'GNW 082040', 'ul. Krakowska 76, Sosnowiec', '298 478 725'),
    ('Henryk Siedlaczek', 'EXQ 413099', 'ul. Bociania 82, Łódź', '461 888 782'),
    ('Radosław Sikorski', 'FQQ 424940', 'ul. Krakowska 53, Gdańsk', '858 857 891'),
    ('Krystyna Skowrońska', 'WHE 537969', 'ul. Mickiewicza 81, Gdańsk', '849 713 371'),
    ('Bożena Sławiak', 'SLJ 968241', 'ul. Słoneczna 8, Łódź', '329 387 385'),
    ('Waldemar Sługocki', 'TCA 118410', 'ul. Słoneczna 48, Michałowice', '653 125 851'),
    ('Aleksander Sosna', 'AVY 123631', 'ul. Krasińskiego 85, Warszawa', '054 927 458'),
    ('Lidia Staroń', 'EXQ 981251', 'ul. Kolejowa 85, Michałowice', '626 895 492'),
    ('Michał Stuligrosz', 'IHQ 185161', 'ul. Kolejowa 63, Zielona Góra', '512 125 440'),
    ('Wiesław Suchowiejko', 'AQJ 926313', 'ul. Krakowska 96, Poznań', '963 701 562'),
    ('Paweł Suski', 'UHS 515778', 'ul. Krasińskiego 85, Zielona Góra', '784 905 604'),
    ('Miron Sycz', 'QIG 264731', 'ul. Kolorowa 68, Sosnowiec', '207 521 043'),
    ('Michał Szczerba', 'TXO 541936', 'ul. Słoneczna 94, Sosnowiec', '259 041 103'),
    ('Grzegorz Sztolcman', 'KBF 966247', 'ul. Krasińskiego 78, Kraków', '623 856 525'),
    ('Krystyna Szumilas', 'XFC 355891', 'ul. Mickiewicza 57, Gdańsk', '164 459 060'),
    ('Bożena Szydłowska', 'YJV 132873', 'ul. Wiejska 17, Michałowice', '607 064 857'),
    ('Tomasz Szymański', 'TDJ 508716', 'ul. Kolejowa 82, Zielona Góra', '738 254 729'),
    ('Iwona Śledzińska-Katarasińska', 'GYI 712400', 'ul. Bociania 43, Zielona Góra', '789 163 559'),
    ('Marcin Święcicki', 'JGT 765699', 'ul. Mickiewicza 45, Zielona Góra', '861 106 347'),
    ('Teresa Świło', 'POW 652725', 'ul. Bociania 34, Zielona Góra', '018 654 200'),
    ('Piotr Tomański', 'UBX 749496', 'ul. Mickiewicza 47, Gdańsk', '214 974 279'),
    ('Irena Tomaszak-Zesiuk', 'NFI 497482', 'ul. Krasińskiego 86, Łódź', '723 982 510'),
    ('Jacek Tomczak', 'MNT 943932', 'ul. Wiejska 6, Warszawa', '922 737 342'),
    ('Cezary Tomczyk', 'DDQ 615604', 'ul. Mickiewicza 24, Warszawa', '762 445 483'),
    ('Tomasz Tomczykiewicz', 'JDD 522800', 'ul. Kolejowa 87, Warszawa', '374 317 814'),
    ('Aleksandra Trybuś', 'EDR 479843', 'ul. Kolorowa 74, Zielona Góra', '068 319 467'),
    ('Łukasz Tusk', 'EGY 363740', 'ul. Krakowska 36, Michałowice', '701 153 637'),
    ('Robert Tyszkiewicz', 'LHT 725639', 'ul. Kolejowa 44, Gdańsk', '170 385 173'),
    ('Piotr van', 'JYM 487233', 'ul. Mickiewicza 53, Zielona Góra', '516 432 583'),
    ('der Coghen', 'DPV 723178', 'ul. Wiejska 22, Poznań', '719 615 427'),
    ('Jan Vincent-Rostowski', 'MDH 211584', 'ul. Mickiewicza 17, Warszawa', '406 747 608'),
    ('Robert Wardzała', 'XXW 394066', 'ul. Mickiewicza 21, Poznań', '434 807 143'),
    ('Monika Wielichowska', 'QTX 606465', 'ul. Bociania 16, Łódź', '105 690 551'),
    ('Mariusz Witczak', 'WGQ 178672', 'ul. Kolejowa 33, Kraków', '897 530 684'),
    ('Norbert Wojnarowski', 'WXA 402760', 'ul. Słoneczna 73, Warszawa', '812 365 107'),
    ('Ewa Wolak', 'OTH 219832', 'ul. Wiejska 97, Poznań', '024 377 808'),
    ('Marek Wójcik', 'WYU 735690', 'ul. Wiejska 65, Poznań', '001 375 582'),
    ('Jadwiga Zakrzewska', 'EIV 443511', 'ul. Krakowska 1, Poznań', '885 008 256'),
    ('Renata Zaremba', 'ULV 323788', 'ul. Słoneczna 54, Łódź', '416 416 834'),
    ('Ryszard Zawadzki', 'BAB 605206', 'ul. Mickiewicza 33, Gdańsk', '314 596 934'),
    ('Maciej Zieliński', 'DJY 807202', 'ul. Krakowska 18, Warszawa', '174 104 912'),
    ('Wojciech Ziemniak', 'VJS 767110', 'ul. Mickiewicza 90, Warszawa', '130 659 668'),
    ('Stanisław Żmijan', 'SUP 564794', 'ul. Krakowska 24, Poznań', '676 292 625'),
    ('Ewa Żmuda-Trzebiatowska', 'EJX 298368', 'ul. Kolejowa 84, Warszawa', '351 165 076');


  SELECT add_new_specimen('Duma i uprzedzenie', '978-3-16-148410-0', 1, 5, 'soft', '{Jane Austen}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Władca Pierścieni - Drużyna Pierścienia', '123456789X', 2, 17, 'soft', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Władca Pierścieni - Dwie Wieże', '1000000001', 2, 8, 'soft', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Władca Pierścieni - Powrót Krola', '0000000000', 1, 5, 'soft', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Jane Eyre', '2000000002', 1, 5, 'soft', '{Charlotte Bronte}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Kamień Filozoficzny', '3000000003', 4, 2, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Komnata Tajemnic', '4000000004', 5, 13, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Więzień Azkabanu', '5000000005', 7, 21, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Czara Ognia', '6000000006', 1, 12, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Zakon Feniksa', '7000000007', 2, 6, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Książe Półkrwi', '8000000008', 5, 4, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Insygnia Śmierci', '9000000009', 7, 27, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Zabić drozda', '100000001X', 2, 17, 'soft', '{Harper Lee}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Biblia', '2000000010', 1, 5, 'hard', '{}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wichrowe Wzgórza', '3000000011', 2, 8, 'soft', '{Emily Bronte}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Rok 1984', '4000000012', 1, 5, 'soft', '{George Orwell}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Mroczne materie', '5000000013', 4, 2, 'soft', '{Philip Pullman}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wielkie nadzieje', '6000000014', 5, 13, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Małe kobietki', '7000000015', 7, 21, 'soft', '{Louisa M Alcott}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Tessa D’Urberville', '8000000016', 1, 12, 'soft', '{Thomas Hardy}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Paragraf 22', '9000000017', 2, 6, 'soft', '{Joseph Heller}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Dzieła zebrane Szekspira', '1000000028', 5, 4, 'soft', '{}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Rebeka', '2000000029', 7, 27, 'soft', '{Daphne Du Maurier}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Hobbit', '300000002X', 2, 17, 'soft', '{J.R.R. Tolkien}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Birdsong', '4000000020', 1, 5, 'soft', '{Sebastian Faulks}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Buszujący w zbożu', '5000000021', 2, 8, 'soft', '{J.D. Salinger}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Żona podróżnika w czasie', '6000000022', 1, 5, 'soft', '{Audrey Niffenegger}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Miasteczko Middlemarch', '7000000023', 4, 2, 'soft', '{George Eliot}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Przeminęło z wiatrem', '8000000024', 5, 13, 'soft', '{Margaret Mitchell}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wielki Gatsby', '9000000025', 7, 21, 'soft', '{Scott Fitzgerald}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Samotnia', '1000000036', 1, 12, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wojna i pokój', '2000000037', 2, 6, 'soft', '{Lew Tołstoj}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Autostopem przez Galaktykę', '3000000038', 5, 4, 'soft', '{Douglas Adams}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Znowu w Brideshead', '4000000039', 7, 27, 'soft', '{Evelyn Waugh}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Zbrodnia i kara', '500000003X', 2, 17, 'soft', '{Fiodor Dostojewski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Grona gniewu', '6000000030', 1, 5, 'soft', '{John Steinbeck}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Alicja w Krainie Czarów', '7000000031', 2, 8, 'soft', '{Lewis Carroll}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('O czym szumią wierzby', '8000000032', 1, 5, 'soft', '{Kenneth Grahame}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Anna Karenina', '9000000033', 4, 2, 'soft', '{Lew Tołstoj}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('David Copperfield', '1000000044', 5, 13, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Opowieści z Narnii', '2000000045', 7, 21, 'soft', '{C.S. Lewis}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Emma', '3000000046', 1, 12, 'soft', '{Jane Austen}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Perswazje', '4000000047', 2, 6, 'soft', '{Jane Austen}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Chłopiec z latawcem', '5000000048', 5, 4, 'soft', '{Khaled Hosseini}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Kapitan Corelli (w innym tłumaczeniu: Mandolina kapitana Corellego)', '6000000049', 7, 27, 'soft', '{Louis De Bernieres}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wyznania Gejszy', '700000004X', 2, 17, 'soft', '{Arthur Golden}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Kubuś Puchatek', '8000000040', 1, 5, 'soft', '{A.A. Milne}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Folwark zwierzęcy', '9000000041', 2, 8, 'soft', '{George Orwell}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Kod Da Vinci', '1000000052', 1, 5, 'soft', '{Dan Brown}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Sto lat samotności', '2000000053', 4, 2, 'soft', '{Gabriel Garcia Marquez}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Modlitwa za Owena', '3000000054', 5, 13, 'soft', '{John Irving}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Kobieta w bieli', '4000000055', 7, 21, 'soft', '{Wilkie Collins}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Ania z Zielonego Wzgórza', '5000000056', 1, 12, 'soft', '{L.M. Montgomery}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Z dala od zgiełku', '6000000057', 2, 6, 'soft', '{Thomas Hardy}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Opowieść podręcznej', '7000000058', 5, 4, 'soft', '{Margaret Atwood}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Władca much', '8000000059', 7, 27, 'soft', '{William Golding}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pokuta', '900000005X', 2, 17, 'soft', '{Ian McEwan}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Życie Pi', '1000000060', 1, 5, 'soft', '{Yann Martel}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Diuna', '2000000061', 2, 8, 'soft', '{Frank Herbert}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Cold Comfort Farm', '3000000062', 1, 5, 'soft', '{Stella Gibbons}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Rozważna i romantyczna', '4000000063', 4, 2, 'soft', '{Jane Austen}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pretendent do ręki', '5000000064', 5, 13, 'soft', '{Vikram Seth}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Cień wiatru', '6000000065', 7, 21, 'soft', '{Carlos Ruiz Zafon}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Opowieść o dwóch miastach', '7000000066', 1, 12, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Nowy wspaniały świat', '8000000067', 2, 6, 'soft', '{Aldous Huxley}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Dziwny przypadek psa nocną porą', '9000000068', 5, 4, 'soft', '{Mark Haddon}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Miłość w czasach zarazy', '1000000079', 7, 27, 'soft', '{Gabriel Garcia Marquez}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Myszy i ludzie', '200000007X', 2, 17, 'soft', '{John Steinbeck}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Lolita', '3000000070', 1, 5, 'soft', '{Vladimir Nabokov}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Tajemna historia', '4000000071', 2, 8, 'soft', '{Donna Tartt}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Nostalgia anioła', '5000000072', 1, 5, 'soft', '{Alice Sebold}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Hrabia Monte Christo', '6000000073', 4, 2, 'soft', '{Alexandre Dumas}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('W drodze', '7000000074', 5, 13, 'soft', '{Jack Kerouac}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Juda nieznany', '8000000075', 7, 21, 'soft', '{Thomas Hardy}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Dziennik Bridget Jones', '9000000076', 1, 12, 'soft', '{Helen Fielding}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Dzieci północy', '1000000087', 2, 6, 'soft', '{Salman Rushdie}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Moby Dick', '2000000088', 5, 4, 'soft', '{Herman Melville}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Oliver Twist', '3000000089', 7, 27, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Dracula', '400000008X', 2, 17, 'soft', '{Bram Stoker}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Tajemniczy ogród', '5000000080', 1, 5, 'soft', '{Frances Hodgson Burnett}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Zapiski z małej wyspy', '6000000081', 2, 8, 'soft', '{Bill Bryson}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Ulisses', '7000000082', 1, 5, 'soft', '{James Joyce}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Szklany klosz', '8000000083', 4, 2, 'soft', '{Sylvia Plath}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Jaskółki i Amazonki', '9000000084', 5, 13, 'soft', '{Arthur Ransome}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Germinal', '1000000095', 7, 21, 'soft', '{Emile Zola}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Targowisko próżności', '2000000096', 1, 12, 'soft', '{William Makepeace Thackeray}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Opętanie', '3000000097', 2, 6, 'soft', '{A.S. Byatt}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Opowieść wigilijna', '4000000098', 5, 4, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Atlas chmur', '5000000099', 7, 27, 'soft', '{David Mitchell}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Kolor purpury', '600000009X', 2, 17, 'soft', '{Alice Walker}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Okruchy dnia', '7000000090', 1, 5, 'soft', '{Kazuo Ishiguro}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pani Bovary', '8000000091', 2, 8, 'soft', '{Gustave Flaubert}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('A Fine Balance', '9000000092', 1, 5, 'soft', '{Rohinton Mistry}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pajęczyna Szarloty', '6000000103', 4, 2, 'soft', '{E.B. White}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pięć osób, które spotykamy w niebie', '7000000104', 5, 13, 'soft', '{Mitch Albom}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Przygody Sherlocka Holmesa', '8000000105', 7, 21, 'soft', '{Sir Arthur Conan Doyle}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('The Faraway Tree Collection', '9000000106', 1, 12, 'soft', '{Enid Blyton}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Jądro ciemności', '1000000117', 2, 6, 'soft', '{Joseph Conrad}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Mały Książę', '2000000118', 5, 4, 'soft', '{Antoine De Saint-Exupery}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Fabryka os', '3000000119', 7, 27, 'soft', '{Iain Banks}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wodnikowe Wzgórze', '400000011X', 2, 17, 'soft', '{Richard Adams}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Sprzysiężenie głupców', '5000000110', 1, 5, 'soft', '{John Kennedy Toole}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Miasteczko jak Alece Springs', '6000000111', 2, 8, 'soft', '{Nevil Shute}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Trzej muszkieterowie', '7000000112', 1, 5, 'soft', '{Alexandre Dumas}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Hamlet', '8000000113', 4, 2, 'soft', '{William Shakespeare}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Charlie i fabryka czekolady', '9000000114', 5, 13, 'soft', '{Roald Dahl}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Nędznicy', '1000000125', 7, 21, 'soft', '{Victor Hugo}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('W pustyni i w puszczy', '2000000126', 1, 12, 'soft', '{Henryk Sienkiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Krzyżacy', '3000000127', 2, 6, 'soft', '{Henryk Sienkiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Potop', '4000000128', 5, 4, 'soft', '{Henryk Sienkiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Ogniem i mieczem', '5000000129', 7, 27, 'soft', '{Henryk Sienkiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pan Wołodyjowski', '600000012X', 2, 17, 'soft', '{Henryk Sienkiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pan Tadeusz, czyli ostatni zajazd na Litwie', '7000000120', 1, 5, 'soft', '{Adam Mickiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Ten obcy', '8000000121', 2, 8, 'soft', '{Irena Jurgielewiczowa}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Krew elfów', '9000000122', 1, 5, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wieża jaskółki', '1000000133', 4, 2, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Ostatnie życzenie', '2000000134', 5, 13, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pani jeziora', '3000000135', 7, 21, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Miecz przeznaczenia', '4000000136', 1, 12, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Czas pogardy', '5000000137', 2, 6, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Chrzest ognia', '6000000138', 5, 4, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Sezon burz', '7000000139', 7, 27, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Seria niefortunnych zdarzeń', '800000013X', 2, 17, 'soft', '{Lemony Snicket}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wprowadzenie do algorytmów', '9000000130', 1, 5, 'soft', '{Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein}', '{Informatyka i matematyka}', 'Wydanie pierwsze', 'Apostolicum');


  SELECT add_new_borrow(1, 'Jaskółki i Amazonki', 5);
  SELECT add_new_borrow(6, 'Germinal', 7);
  SELECT add_new_borrow(3, 'Targowisko próżności', 1);
  SELECT add_new_borrow(5, 'Opętanie', 2);
  SELECT add_new_borrow(8, 'Opowieść wigilijna', 5);
  SELECT add_new_borrow(2, 'Atlas chmur', 7);
  SELECT add_new_borrow(2, 'Kolor purpury', 2);
  SELECT add_new_borrow(12, 'Okruchy dnia', 1);
  SELECT add_new_borrow(9, 'Pani Bovary', 2);
  SELECT add_new_borrow(21, 'A Fine Balance', 1);
  SELECT add_new_borrow(3, 'Pajęczyna Szarloty', 4);
  SELECT add_new_borrow(7, 'Pięć osób, które spotykamy w niebie', 5);
  SELECT add_new_borrow(12, 'Przygody Sherlocka Holmesa', 7);
  SELECT add_new_borrow(32, 'The Faraway Tree Collection', 1);
  SELECT add_new_borrow(34, 'Jądro ciemności', 2);
  SELECT add_new_borrow(102, 'Mały Książę', 5);
  SELECT add_new_borrow(13, 'Fabryka os', 7);
  SELECT add_new_borrow(57, 'Wodnikowe Wzgórze', 2);
  SELECT add_new_borrow(27, 'Sprzysiężenie głupców', 1);
  SELECT add_new_borrow(10, 'Miasteczko jak Alece Springs', 2);
  SELECT add_new_borrow(22, 'Trzej muszkieterowie', 1);
  SELECT add_new_borrow(33, 'Hamlet', 4);
  SELECT add_new_borrow(34, 'Charlie i fabryka czekolady', 5);
  SELECT add_new_borrow(45, 'Nędznicy', 7);
  SELECT add_new_borrow(67, 'W pustyni i w puszczy', 1);
  SELECT add_new_borrow(122, 'Krzyżacy', 2);
  SELECT add_new_borrow(18, 'Potop', 5);
  SELECT add_new_borrow(90, 'Ogniem i mieczem', 7);
  SELECT add_new_borrow(56, 'Pan Wołodyjowski', 2);
  SELECT add_new_borrow(15, 'Pan Tadeusz, czyli ostatni zajazd na Litwie', 1);
  SELECT add_new_borrow(78, 'Ten obcy', 2);
  SELECT add_new_borrow(111, 'Krew elfów', 1);
  SELECT add_new_borrow(25, 'Wieża jaskółki', 4);
  SELECT add_new_borrow(78, 'Ostatnie życzenie', 5);
  SELECT add_new_borrow(17, 'Pani jeziora', 7);
  SELECT add_new_borrow(98, 'Miecz przeznaczenia', 1);
  SELECT add_new_borrow(56, 'Czas pogardy', 2);
  SELECT add_new_borrow(57, 'Atlas chmur', 7);
  SELECT add_new_borrow(23, 'Kolor purpury', 2);
  SELECT add_new_borrow(11, 'Okruchy dnia', 1);
  SELECT add_new_borrow(99, 'Pani Bovary', 2);




  





COMMIT;