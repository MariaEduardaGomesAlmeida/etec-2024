//imprimir qual de dois números é o maior
import inquirer from "inquirer";
import chalk from "chalk";

function calcularMaximo(num1, num2){
    return Math.max(num1, num2);
}


inquirer
.prompt([
    {
        message: chalk.blue`Escolha um número: `,
        type: 'number',
        name: "num1"
    },
    {
        message: chalk.blue`Escolha outro número: `,
        type: 'number',
        name: "num2"
    }
])
.then((resposta) =>{
    
    const maximo = calcularMaximo(resposta.num1,resposta.num2);
    console.log("O maior número é: "+maximo);

})



