var texto = 'Os cálculos deram: ';
calculo();


function calculo(){
    var num1 = 8;
    var num2 = 7;

    var resultadoSoma = num1+num2;
    var resultadoSubtracao = num1-num2;
    var resultadoMultiplicacao = num1*num2;
    var resultadoDivisao = num1/num2;

    console.log('Soma:');
    console.log(resultadoSoma);
    
    console.log('Subtração:');
    console.log(resultadoSubtracao);

    console.log('Multiplicação:');
    console.log(resultadoMultiplicacao);

    console.log('Divisão:');
    console.log(resultadoDivisao);
    
}