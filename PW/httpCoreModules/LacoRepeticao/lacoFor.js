//Desenvolva um gerador de tabuada, capaz de gerar a tabuada de qualquer número inteiro entre 
//1 a 10. O usuário deve informar de qual numero ele deseja ver a tabuada. 


import { Console } from "console";
import http from "http";

/*CREATE A SERVER OBJECT*/
http.createServer((req, res) => {
   
    let numero = 5;
    let tabuada;
    res.write(`<h1>Tabuada do ${numero}</h1>`);
    
    for(let i=1; i<11; i++){
        tabuada = i*numero;
        res.write(`<h2>${i} x ${numero} = ${tabuada}</h2>`);
    }
    

    res.end()
}).listen(5003,() => {console.log('App rodando na porta 5003')})