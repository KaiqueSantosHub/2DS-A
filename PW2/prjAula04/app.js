const express = require("express");
const app = express();

app.use(express.static('public'));

app.set('view engine', 'ejs')


app.get("/", function(req, res) {
    const n1 = 8;
    const n2 =2;

    const soma = n1+n2;
    const sub = n1-n2;
    const multi = n1*n2;
    const div = n1/n2;

    res.render("index", {
        numero1: n1,
        numero2: n2,
        adicao: soma,
        subtracao: sub,
        multiplicacao: multi,
        divisao: div
    });
});

app.get("/reajuste", function(req, res) {
    const valor = 250;

    const reajuste = (valor*10)/100;
    const novoValor = valor+reajuste;

    res.render("reajuste", {
        valor: valor,
        reajuste: reajuste,
        novoValor: novoValor
    });
});

app.get("/aluno", function(req, res) {
    let nome = "José";
    let peso = 85;
    
    res.render("aluno", {
        nome: nome,
        peso: peso
    });

});

app.listen(8081, () => {
    console.log("Servidor rodando normalmente na porta 8081")
}
    
)
