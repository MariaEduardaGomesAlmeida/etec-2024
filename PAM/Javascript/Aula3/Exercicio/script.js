console.log("Escreva o número de lados da figura geométrica:");

function figuraGeometrica(numLados){
    if(numLados==1){
        console.log("Nome da Figura: Circulo");
        console.log("Área: pi * raio^2");
        console.log("Perímetro: 2*π*raio");
    }else if (numLados==3){
        console.log("Nome da Figura: Triângulo");
        console.log("Área: base* altura/2");
        console.log("Perímetro: 3*L");
    }else if (numLados==4){
        console.log("Nome da Figura: Quadrado ou Retângulo");
        console.log("Área: base*altura");
        console.log("Perímetro: 4*L");
    }else if (numLados==5){
        console.log("Nome da Figura: Pentágono");
        console.log("Área: 5*L*a");
        console.log("Perímetro: 5*L");
    }else if (numLados==6){
        console.log("Nome da Figura: Hexagono");
        console.log("Área:  6L^2 √3/4");
        console.log("Perímetro: 6*L");
    }else if (numLados==7){
        console.log("Nome da Figura: Heptágono");
        console.log("Área: 7/2 L*a");
        console.log("Perímetro: 7*L");
    }else if (numLados==8){
        console.log("Nome da Figura: Octógono");
        console.log("Área: 2(1+√2)*a^2");
        console.log("Perímetro: 8*L");
    }else if (numLados==9){
        console.log("Nome da Figura: Eneágono");
        console.log("Área: (p*a)/2");
        console.log("Perímetro: 9*L");
    }else if (numLados==10){
        console.log("Nome da Figura: Decágono");
        console.log("Área: área dos 10 triângulos multiplicado por 10 - AreaTriangulo = base*altura - AreaDecagono = AreaTriangulo*10");
        console.log("Perímetro: 10*L");
    }else{
        console.log("Não é possível escolher essa figura.");
    }
}

console.log(figuraGeometrica(4));