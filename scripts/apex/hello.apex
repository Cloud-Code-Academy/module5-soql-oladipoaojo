// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Oladipo Ojo';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

lIST<Account> acc = [SELECT Id, Name,  Description FROM Account Order By CreatedDate DESC LIMIT 5];
List<Account> acc2 = new List<Account>();
System.debug(acc);
for(Account a : acc){
    a.Description = 'This is a new description' + a.Description;
    acc2.add(a);
}
update acc2;
System.debug([SELECT Id, Name,  Description FROM Account Order By CreatedDate DESC LIMIT 5]);