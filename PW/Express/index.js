//import modulo externo
import express from 'express'

// import modulo interno
import path from 'path'

// iniciei o express
const app = express()

app.use(express.static('public'))

// primeira rota
app.get('/primeirafofoca', function (req, res) {
    let end = path.resolve('./view/primeira.html')
    res.sendFile(end)
})

// segunda rota
app.get('/segundafofoca', function (req, res) {
    let end = path.resolve('./view/segunda.html')
    res.sendFile(end)
})

// terceira rota
app.get('/terceirafofoca', function (req, res) {
    let end = path.resolve('./view/terceira.html')
    res.sendFile(end)
})

// quarta rota
app.get('/quartafofoca', function (req, res) {
    let end = path.resolve('./view/quarta.html')
    res.sendFile(end)
})


// quinta rota
app.get('/quintafofoca', function (req, res) {
    let end = path.resolve('./view/quinta.html')
    res.sendFile(end)
})

app.get('/html', function (req, res) {
    let end = path.resolve('./view/index.html')
    res.sendFile(end)
})

app.listen(4000, ()=>{console.log("Funcionando na porta 4000")})