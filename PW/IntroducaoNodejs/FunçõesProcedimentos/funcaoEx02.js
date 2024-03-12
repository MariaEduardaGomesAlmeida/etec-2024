
//Calcular a fatorial de um número
import inquirer from "inquirer";
import chalk from "chalk";


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


inquirer
.prompt([
    {
        message: chalk.blue`Escolha um número para calcular a fatorial: `,
        type: 'number',
        name: "numero"
    }
])
.then((resposta) =>{
    const fatorial = calcularFatorial(resposta.numero);
    console.log("A fatorial do número é: "+fatorial);

})




