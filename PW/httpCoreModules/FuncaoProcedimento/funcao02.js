
//Calcular a fatorial de um número



import { Console } from "console";
import http from "http";

/*CREATE A SERVER OBJECT*/
http.createServer((req, res) => {
    function calcularFatorial(numero){
        if(numero==1 || numero==0){
            return 1;
        }
    
        let resultado = 1;
        for(let i=2; i<=numero; i++){
            resultado*=i;
        }
    
        return resultado;
    }
    
    const fatorial = calcularFatorial(5);
    res.write(`<h1>Fatorial do numero 5: ${fatorial}</h1>`);
    
    
    res.end()
}).listen(5009,() => {console.log('App rodando na porta 5009')})




