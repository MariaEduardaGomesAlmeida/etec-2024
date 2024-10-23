const formaForm = document.getElementById('formaForm');
const resultado = document.getElementById('resultado');

formaForm.addEventListener('submit', function(event) {
    event.preventDefault();
    const numLados = parseInt(document.getElementById('numLados').value, 10);
    const { mensagem, imagem } = figuraGeometrica(numLados);
    resultado.innerHTML = `<p>${mensagem}</p><img src="${imagem}" alt="Figura Geométrica">`;
});

function figuraGeometrica(numLados) {
    let mensagem;
    let imagem;

    if (numLados === 1) {
        mensagem = "Nome da Figura: Círculo <br> Área: π * raio² <br> Perímetro: 2 * π * raio";
        imagem = './img/circulo.png';
    } else if (numLados === 3) {
        mensagem = "Nome da Figura: Triângulo<br> Área: base * altura / 2<br> Perímetro: 3 * L";
        imagem = './img/triangulo.png';
    } else if (numLados === 4) {
        mensagem = "Nome da Figura: Quadrado ou Retângulo<br> Área: base * altura<br> Perímetro: 4 * L";
        imagem = './img/quadrado.png';
    } else if (numLados === 5) {
        mensagem = "Nome da Figura: Pentágono<br> Área: 5 * L * a<br> Perímetro: 5 * L";
        imagem = './img/pentagono.png';
    } else if (numLados === 6) {
        mensagem = "Nome da Figura: Hexágono<br> Área: 6 * L² * √3 / 4<br> Perímetro: 6 * L";
        imagem = './img/hexagono.png';
    } else if (numLados === 7) {
        mensagem = "Nome da Figura: Heptágono<br> Área: 7 / 2 * L * a<br> Perímetro: 7 * L";
        imagem = './img/heptagono.png';
    } else if (numLados === 8) {
        mensagem = "Nome da Figura: Octógono<br> Área: 2(1 + √2) * a²<br> Perímetro: 8 * L";
        imagem = './img/octagono.png';
    } else if (numLados === 9) {
        mensagem = "Nome da Figura: Eneágono<br> Área: (p * a) / 2<br> Perímetro: 9 * L";
        imagem = './img/eneagono.png';
    } else if (numLados === 10) {
        mensagem = "Nome da Figura: Decágono<br> Área: área dos 10 triângulos multiplicado por 10 - Área Triângulo = base * altura - Área Decágono = Área Triângulo * 10<br> Perímetro: 10 * L";
        imagem = './img/decagono.png';
    } else {
        mensagem = "Não é possível escolher essa figura.";
    }

    return { mensagem, imagem };
}
