function maior(a, b, c){
    if(a > b && b > c){
        return a;
    } else if(b>a && b>c){
        return b;
    }else{
        return c;
    }
}

function menor(a, b, c){
    var r = a < b && a < c ? a : b < a && b < c ? b : c;
    return r;
}

function formatoMes(mes){
    switch (mes){
        case 1:
            console.log("Janeiro");
            break;
        case 2:
            console.log("Fevereiro");
            break;
        case 3:
            console.log("Março");
            break;
        case 4:
            console.log("Abril");
            break;
        default:
            console.log("Não implementei ainda");
    }
}

console.log(maior(2, 3, 5));
console.log(menor(2, 4, 7));
formatoMes(3)