//Faz a soma dos números de 1 a 100


import { Console } from "console";
import http from "http";

/*CREATE A SERVER OBJECT*/
http.createServer((req, res) => {
    var soma = 0;
    var num = 1;
    do {
        soma+= num;
        num++;
    } while (num <= 100);
    res.write(`<h1>Soma dos numeros de 1 a 100: ${soma}</h1>`)

    res.end()
}).listen(5004,() => {console.log('App rodando na porta 5004')})