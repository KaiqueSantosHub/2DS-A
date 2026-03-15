const express = require("express")

const app = express()

//Rota 1
app.get("/", function(req,res) {
    res.send("Hello World Gostoso! ")
})

// Rota 2
app.get("/contato", function(req,res) {
    res.send("Meu contato é kakalindo@gmail.com")
})

//Rota 3
app.get("/Login", function(req,res) {
    res.send("Você foi logado com sucesso")
})



app.listen(8081, function() {
    console.log("Servidor rodando na porta 8081")
})

