const formaForm = document.getElementById('formaForm');
const resultado = document.getElementById('resultado');

formaForm.addEventListener('submit', function(event) {
    event.preventDefault();
    const numero = parseInt(document.getElementById('numero').value, 10);
    const { mensagem } = calculoTabuada(numero);
    resultado.innerHTML = `<p>${mensagem}</p>`;
});

function calculoTabuada(numero) {
    let mensagens = []; 

    for (let i = 1; i <= 10; i++) {
        const resposta = numero * i;
        mensagens.push(`${numero} x ${i} = ${resposta}`); 
    }

    return { mensagem: mensagens.join('<br>') }; 
}
