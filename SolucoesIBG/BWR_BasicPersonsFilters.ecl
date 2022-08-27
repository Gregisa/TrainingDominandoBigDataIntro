IMPORT $;

// 74. Filtre e conte todas as pessoas que moram no estado da Flórida. Sua contagem esperada é 40854.
Persons := $.File_Persons.File;

OnlyFl := (Persons(Persons.state='FL'));

OUTPUT((Persons), NAMED('All_Persons'));
OUTPUT(COUNT(OnlyFl), NAMED('Florida_Persons'));

// 7.5. Filtre e conte todas as pessoas que vivem no estado da Flórida e na cidade de Miami. Sua contagem esperada é
// agora 2438.
PersonsFlMia := COUNT(Persons(Persons.state='FL',Persons.city='MIAMI'));

OUTPUT((PersonsFlMia), NAMED('Miami_Flo_Persons'));

// 7.6. Filtre e conte todas as pessoas que moram no estado da Flórida, na cidade de Miami, e tenham um código postal
// 33102. Sua contagem esperada é agora 40.
PersonsFlMia_Zip := COUNT(Persons(Persons.state='FL',Persons.city='MIAMI',Persons.zipcode='33102'));

OUTPUT((PersonsFlMia_Zip), NAMED('Zip_Miami_Flo_Persons'));

// 7.7. Filtre e conte todas as pessoas cujo nome começa com a letra 'B'. Use várias condições de filtro nesta consulta. Sua
// contagem esperada é 31193.
BegginWithB := COUNT(Persons(Persons.firstname>='B',Persons.firstname<'C'));

OUTPUT((BegginWithB), NAMED('Persons_W_B'));

// 7.8. Filtre e conte todas as pessoas cujo ano de data do arquivo é posterior a 2000. Sua contagem esperada é 687.
Before_2000 := COUNT(Persons(Persons.filedate[..4]>'2000'));

OUTPUT((Before_2000), NAMED('Files_Before_2000'));

//Exercício 8b:
// 3. Crie uma definição booleana local chamada IsFloridian que testará se uma pessoa mora na Flórida.
// • Verifique sua definição de registro de pessoas para determinar o nome do campo de estado.
// • A abreviação para Florida é 'FL'
IsFloridian := Persons.state='FL';

// 4. Crie uma definição booleana local chamada IsMale que testará se o sexo de uma pessoa está marcado como masculino ( 'M').
//IsMale := Persons.gender='M';

// 5. Crie uma definição booleana local chamada IsBorn80 que testará se uma pessoa nasceu após o ano de 1979.
// • Use a indexação de strings para verificar datas de nascimento após o ano de 1979. Certifique-se de também eliminar
// registros sem datas de nascimento.
//IsBorn_80 := Persons.birthdate[..4]>='1980' AND Persons.birthdate != '';

// 6. Crie a definição booleana IsYoungMaleFloridian para resultar em TRUE para qualquer homem que viva na Flórida e tenha nascido após o ano de 1979.
//EXPORT IsYoungMaleFloridian := IsFloridian AND IsMale AND IsBorn_80;

