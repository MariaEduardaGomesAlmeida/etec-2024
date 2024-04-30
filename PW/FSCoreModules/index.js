const http = require("http");
const fs = require("fs");
const url = require("url");

const port = 5000;

const server = http.createServer((req, res) => {
    const urlInfo = url.parse(req.url, true);
    const num = urlInfo.query.num;

    if (!num) {
        fs.readFile('index.html', (err, data) => {
            if (err) {
                res.writeHead(500, {"Content-Type": "text/plain"});
                res.end("Internal Server Error");
            } else {
                res.writeHead(200, {"Content-Type": "text/html"});
                res.write(data);
                res.end();
            }
        });
    } else {
        function calcularFatorial(num) {
            if (num == 1 || num == 0) {
                return 1;
            }

            let resultado = 1;
            for (let i = 2; i <= num; i++) {
                resultado *= i;
            }

            return resultado;
        }

        const fatorial = calcularFatorial(num);
        const fatorialHTML = `<h1>Fatorial do numero: ${fatorial}</h1>`;
        fs.appendFile('index.html', fatorialHTML, (err) => {
            if (err) {
                res.writeHead(500, {"Content-Type": "text/plain"});
                res.end("Internal Server Error");
            } else {
                res.writeHead(200, {"Content-Type": "text/html"});
                res.write(fatorialHTML);
                res.end();
            }
        });
    }
});

server.listen(port, () => {
    console.log(`Servidor rodando na porta: ${port}`);
});

