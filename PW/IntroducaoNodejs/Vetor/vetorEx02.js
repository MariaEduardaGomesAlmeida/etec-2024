
//contar quantos números pares ha em um vetor
import inquirer from "inquirer";


let vetor = new Array();
var numPar=0;

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


for(let i=0; i<vetor.length; i++){
    if(vetor[i]%2==0){
        numPar++;
    }
}

  

console.log("No vetor existe "+numPar+" números pares"); 
