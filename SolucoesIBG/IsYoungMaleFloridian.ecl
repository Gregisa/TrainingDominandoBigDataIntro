IMPORT $;

Persons := $.File_Persons.File;

//Exercício 8b:
// 3. Crie uma definição booleana local chamada IsFloridian que testará se uma pessoa mora na Flórida.
// • Verifique sua definição de registro de pessoas para determinar o nome do campo de estado.
// • A abreviação para Florida é 'FL'
IsFloridian := Persons.state='FL';

// 4. Crie uma definição booleana local chamada IsMale que testará se o sexo de uma pessoa está marcado como masculino ( 'M').
IsMale := Persons.gender='M';

// 5. Crie uma definição booleana local chamada IsBorn80 que testará se uma pessoa nasceu após o ano de 1979.
// • Use a indexação de strings para verificar datas de nascimento após o ano de 1979. Certifique-se de também eliminar
// registros sem datas de nascimento.
IsBorn_80 := Persons.birthdate[..4]>='1980' AND Persons.birthdate != '';

// 6. Crie a definição booleana IsYoungMaleFloridian para resultar em TRUE para qualquer homem que viva na Flórida e tenha nascido após o ano de 1979.
EXPORT IsYoungMaleFloridian := IsFloridian AND IsMale AND IsBorn_80;

//IsYoungMaleFloridian é apenas um filtro boolean, por isso só pode retornar true or false, logo, é
//preciso armazenar esse filtro dentro de uma função aplicada ao arquivo persons, para assim
//executar esse filtro. É o caso no arquivo YoungMaleFloridaPersons 