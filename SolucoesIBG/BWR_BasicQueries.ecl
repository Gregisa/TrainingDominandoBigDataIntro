IMPORT $;

// 6.5. Gere uma contagem de todos os registros nas tabelas Persons e Accounts.
accounts := COUNT($.File_Accounts.File);
persons := COUNT($.File_Persons.File);

finalSum := accounts + persons;

OUTPUT ((accounts),NAMED('All_Accounts'));
OUTPUT((persons),NAMED('All_Persons'));
OUTPUT((finalSum),NAMED('Basic_Sum'));

// 6. Gere uma saída para a tabela Persons, limitando o resultado ao ID, Last e First Name.
OUTPUT($.File_Persons.File,{id,lastname,firstname}, NAMED('Only_Id_And_Name'));

// 6.7. Gere uma saída para a tabela Acconts, limitando o resultado aos campos ReportDate, HighCredit, e Balance fields.
// O campo Accounts só está com os campos como "fileds"
//6.9. Gere um resultado para a tabela Accounts, limitando o resultado aos campos AccountNumber, LastActivityDate e
// Balance e nomeie a aba de resultado no ECL IDE "Acct_Activity"

//6.8. Gere uma saída para a tabela Pessoas, limitando o resultado ao ID, StreetAddress, City, State e ZipCode, e nomeie "Address_Info".
OUTPUT($.File_Persons.File,{ID,StreetAddress,City,State,ZipCode}, NAMED('Address_Info'));



