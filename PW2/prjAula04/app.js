const express = require("express");
const app = express();

app.use(express.static('public'));

app.set('view engine', 'ejs')


app.get("/", function(req, res) {

    const temDados = req.query.n1 && req.query.n2;


    if (temDados) {

    const n1 = Number(req.query.n1) || "valor";
    const n2 = Number(req.query.n2) || "valor";

    const soma = n1+n2;
    const sub = n1-n2;
    const multi = n1*n2;
    const div = n1/n2;

    return res.render("index", {
        numero1: n1,
        numero2: n2,
        adicao: soma,
        subtracao: sub,
        multiplicacao: multi,
        divisao: div,
        mostrarResultado: true
    });
    }

     res.render("index", {
        mostrarResultado:false
    })

    
});

app.get("/reajuste", function(req, res) {
    const valor = Number(req.query.valor);

    const reajuste = (valor*10)/100;
    const novoValor = valor+reajuste;

    res.render("reajuste", {
        valor: valor,
        reajuste: reajuste,
        novoValor: novoValor
    });
});

app.get("/aluno", function(req, res) {
    let nome = req.query.nome;
    let peso = Number(req.query.peso);
    
    res.render("aluno", {
        nome: nome,
        peso: peso
    });

});

app.listen(8081, () => {
    console.log("Servidor rodando normalmente na porta 8081")
}
    
)
