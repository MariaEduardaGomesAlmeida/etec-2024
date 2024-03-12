//inverter a ordem dos elementos de um vetor
import inquirer from "inquirer"
import chalk from "chalk";


let vetor = new Array();

for(let i=0; i<5; i++){
    
await inquirer 
.prompt([
    {
        message: `Escreva um número da posição ${i+1}: `,
        type: 'number',
        name: `atual`
    }
])
 
.then((resposta) =>{
   vetor.push(Number(resposta.atual))    
 })
}


let vetorInvertido = [];
    for (let i=5; i >= 0; i--) {
        vetorInvertido.push(vetor[i]);
    }
console.log(chalk.blue`Vetor original: `+vetor);
console.log(chalk.green`Vetor invertido: `+vetorInvertido);