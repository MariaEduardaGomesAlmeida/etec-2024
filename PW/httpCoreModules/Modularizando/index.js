import areaCircuferencia from "./area.js";
import celsiusParaFahrenheit from "./graus.js";
import verificarAnoBissexto from "./bissexto.js";
import calcularQuadrado from "./quadrado.js";

import { Console } from "console";
import http from "http";

/*CREATE A SERVER OBJECT*/
http.createServer((req, res) => {
    
res.write(`<h1>A area e de: ${areaCircuferencia(6).toFixed(2)}</h1>`);
res.write(`<h1>A conversao de celsius para fahrenheit: ${celsiusParaFahrenheit(30)}</h1>`);
res.write(`<h1>O ano 2024 e bissexto: ${verificarAnoBissexto(2024)}</h1>`);
res.write(`<h1>Quadrado: ${calcularQuadrado(5)}</h1>`);

    res.end()
}).listen(5010,() => {console.log('App rodando na porta 5010')})