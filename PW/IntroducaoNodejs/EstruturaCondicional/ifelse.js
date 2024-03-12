// Fazer um algoritmo que leia 3 notas de um aluno, calcular a media dele e ao final dizer 
//se esse aluno foi reprovado ou aprovado.
import inquirer from "inquirer";
import chalk from "chalk";

function Calculamedia(a, b, c){
    return (a+b+c)/3
}


inquirer
.prompt([
    {
        message: "Informe a primeira nota:",
        type: 'number',
        name: "n1"
    },
    {
        message: "Informe a segunda nota:",
        type: 'number',
        name: "n2"
    },
    {
        message: "Informe a terceira nota:",
        type: 'number',
        name: "n3"
    }
])
.then((resposta) =>{
    let media = Calculamedia(resposta.n1, resposta.n2, resposta.n3);
    console.log(chalk.blue`A média do aluno é: ${media.toFixed(2)}`);

if(media<=5){
    console.log("Aluno reprovado!");
}else if(media>=7){
    console.log("Aluno aprovado!");
}else if(media>5 && media<7){
    console.log("Aluno em recuperação!");
}else{
    console.log("Nota inválida.");
}
})



