
//Uma loja fornece 10% de desconto para funcionários e 5% de desconto para clientes vips. Faça um programa 
//que calcule o valor total a ser pago por uma pessoa. O programa deverá ler o valor total da compra efetuada 
//e um código que identifique se o comprador é um cliente comum (1), funcionário (2) ou vip (3).


import { Console } from "console";
import http from "http";

/*CREATE A SERVER OBJECT*/
http.createServer((req, res) => {
   
let valorCompra;
let codigoComprador = 3;
let precoProduto = 130;


switch(codigoComprador){
    case 1:
        valorCompra = precoProduto;
        res.write(`<h1>Preco do produto: ${precoProduto}</h1>`)
        res.write(`<h1>Codigo: ${codigoComprador}. Cliente Comum. Valor total da compra: ${valorCompra.toFixed(2)}</h1>`);
        break;
    case 2: 
        valorCompra = precoProduto-(10*precoProduto)/100;
        res.write(`<h1>Preco do produto: ${precoProduto}</h1>`)
        res.write(`<h1>Codigo: ${codigoComprador}. Funcionário. Valor total da compra: ${valorCompra.toFixed(2)}</h1>`);
        break;
    case 3:
        valorCompra = precoProduto-(5*precoProduto)/100;
        res.write(`<h1>Preco do produto: ${precoProduto}</h1>`)
        res.write(`<h1>Codigo: ${codigoComprador}. Cliente Vip. Valor total da compra: ${valorCompra.toFixed(2)}</h1>`);
        break;
    default:
        res.write(`<h1>Código inválido</h1>`);
        break;
}


    res.end()
}).listen(5002,() => {console.log('App rodando na porta 5002')})
