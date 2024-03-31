//imprimir qual de dois números é o maior



import { Console } from "console";
import http from "http";

/*CREATE A SERVER OBJECT*/
http.createServer((req, res) => {
    function calcularMaximo(num1, num2){
        return Math.max(num1, num2);
    }
    
    
    const maximo = calcularMaximo(57,52);
    res.write(`<h1>Numeros: 57, 52</h1>`)
    res.write(`<h1>Maior numero: ${maximo}</h1>`);
    

    res.end()
}).listen(5008,() => {console.log('App rodando na porta 5008')})
