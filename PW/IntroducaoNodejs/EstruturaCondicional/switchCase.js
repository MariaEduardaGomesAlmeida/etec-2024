
//Uma loja fornece 10% de desconto para funcionários e 5% de desconto para clientes vips. Faça um programa 
//que calcule o valor total a ser pago por uma pessoa. O programa deverá ler o valor total da compra efetuada 
//e um código que identifique se o comprador é um cliente comum (1), funcionário (2) ou vip (3).
import inquirer from "inquirer";

//entrar com numero 1, 2 ou 3

var valorCompra;


inquirer
.prompt([
    {
        message: "Informe o seu código (1, 2 ou 3):",
        type: 'number',
        name: "codigoComprador"
    },
    {
        message: "Informe o preço do produto:",
        type: 'number',
        name: "precoProduto"
    }
])
.then((resposta) =>{
 

switch(resposta.codigoComprador){
    case 1:
        valorCompra = resposta.precoProduto;
        console.log("Cliente Comum. Valor total da compra: "+valorCompra.toFixed(2));
        break;
    case 2: 
        valorCompra = resposta.precoProduto-(10*resposta.precoProduto)/100;
        console.log("Funcionário. Valor total da compra: "+valorCompra.toFixed(2));
        break;
    case 3:
        valorCompra = resposta.precoProduto-(5*resposta.precoProduto)/100;
        console.log("Cliente Vip. Valor total da compra: "+valorCompra.toFixed(2));
        break;
    default:
        console.log("Código inválido");
        break;
}
})