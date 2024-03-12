//Criar um inquirer para ler as informações de uma pessoa (Nome, Idade, CPF) e apresenta-las no final.

import inquirer from "inquirer";

var nome, idade, cpf;

inquirer
.prompt([
    {
        message: "Informe o nome:",
        name: "nome"
    },
    {
        message: "Informe a idade:",
        name: "idade"
    },
    {
        message: "Informe o CPF:",
        name: "cpf"
    }
])
.then((resposta) =>{
    console.log(`Nome: ${resposta.nome}`)
    console.log(`Idade: ${resposta.idade}`)
    console.log(`CPF: ${resposta.cpf}`)
})