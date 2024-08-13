import express from 'express'
import path from 'path'
const app = express()

app.use(express.static('public'))

// primeira rota
app.get('/primeirafofoca', function (req, res) {
    let end = path.resolve('./view/pagina1.html')
    res.sendFile(end)
})

// segunda rota
app.get('/segundafofoca', function (req, res) {
    let end = path.resolve('./view/pagina2.html')
    res.sendFile(end)
})

// terceira rota
app.get('/terceirafofoca', function (req, res) {
    let end = path.resolve('./view/pagina3.html')
    res.sendFile(end)
})

// quarta rota
app.get('/quartafofoca', function (req, res) {
    let end = path.resolve('./view/pagina4.html')
    res.sendFile(end)
})


// quinta rota
app.get('/quintafofoca', function (req, res) {
    let end = path.resolve('./view/pagina5.html')
    res.sendFile(end)
})

app.get('/html', function (req, res) {
    let end = path.resolve('./view/paginaPrincipal.html')
    res.sendFile(end)
})

app.listen(4000, ()=>{console.log("Funcionando na porta 4000")})