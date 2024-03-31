  // Fazer um algoritmo que leia 3 notas de um aluno, calcular a media dele e ao final dizer 
//se esse aluno foi reprovado ou aprovado.

import { Console } from "console";
import http from "http";

/*CREATE A SERVER OBJECT*/
http.createServer((req, res) => {

let a = 5.6, b = 4.5, c = 9


let media = (a+b+c)/3;
res.write(`<h1>Media do aluno: ${media.toFixed(2)}</h1>`);


if(media<=5){
    res.write(`<h2>Aluno reprovado!</h2>`);
}else if(media>=7){
   res.write(`<h2>Aluno aprovado!</h2>`);
}else if(media>5 && media<7){
    res.write(`<h2>Aluno em recuperacao!</h2>`);
}else{
    res.write(`<h2>Nota invalida.</h2>`);
}

res.end()

}).listen(5001,() => {console.log('App rodando na porta 5001')})