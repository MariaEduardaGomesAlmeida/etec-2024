//inverte os elementos de um vetor

import { Console } from "console";
import http from "http";

/*CREATE A SERVER OBJECT*/
http.createServer((req, res) => {
   
let vetor = [1, 5, 4, 3, 8];
let vetorInvertido = [];

for (let i = vetor.length - 1; i >= 0; i--) {
    vetorInvertido.push(vetor[i]);
}

res.write(`<h1>Vetor original: ${vetor}</h1>`);
res.write(`<h1>Vetor invertido: ${vetorInvertido}</h1>`);

    res.end()
}).listen(5005,() => {console.log('App rodando na porta 5005')})