//ler as informações de uma pessoa (Nome, Idade, CPF) e apresenta-las no final.


import { Console } from "console";
import http from "http";

/*CREATE A SERVER OBJECT*/
http.createServer((req, res) => {
    
let nome = "Lucas"
let idade = 16
let cpf = 12345678912


res.write(`<h1>Nome: ${nome}</h1>`)
res.write(`<h1>Idade: ${idade}</h1>`)
res.write(`<h1>CPF: ${cpf}</h1>`)

    res.end()
}).listen(5007,() => {console.log('App rodando na porta 5007')})

