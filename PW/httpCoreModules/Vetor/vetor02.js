//contar a quantidade de numeros pares em um vetor


import { Console } from "console";
import http from "http";

/*CREATE A SERVER OBJECT*/
http.createServer((req, res) => {
    
let vetor = [1,4,6,22,9,5];
var numPar=0;


for(let i=0; i<vetor.length; i++){
    if(vetor[i]%2==0){
        numPar++;
    }
}

res.write(`<h1>Vetor: ${vetor}</h1>`)
res.write(`<h2>No vetor existe ${numPar} numeros pares</h2>`); 

    res.end()
}).listen(5006,() => {console.log('App rodando na porta 5006')})