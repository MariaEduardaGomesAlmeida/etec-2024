//Desenvolva um gerador de tabuada, capaz de gerar a tabuada de qualquer número inteiro entre 
//1 a 10. O usuário deve informar de qual numero ele deseja ver a tabuada. 
import inquirer from "inquirer";
import chalk from "chalk";


inquirer
.prompt([
    {
        message: chalk.blue`Escolha um número de 1 a 10 para calcular a tabuada:`,
        type: 'number',
        name: "numero"
    }
])
.then((resposta) =>{
    var tabuada;
    console.log(`Tabuada do ${resposta.numero}`);

    for(let i=1; i<11; i++){
        tabuada = i*resposta.numero;
        console.log(i+"x"+resposta.numero+" = "+tabuada);
    }

})


