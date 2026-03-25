const express = require("express");
const app = express();

app.use(express. static('public'));

app.set("view engine", "ejs")


app.get("/reajuste", function(req, res) {

    const temDados = req.query.valor

    if (temDados) {

        let valor = Number(req.query.valor);
        let porcem = Number(req.query.porcem);

    const reajuste = (valor*porcem)/100;
    let novoValor = valor+reajuste;

    novoValor = novoValor.toLocaleString('pt-BR', {
        style: 'currency',
        currency: 'BRL'
    });

     valor = valor.toLocaleString('pt-BR', {
        style: 'currency',
        currency: 'BRL'
    });


    return res.render("reajuste", {
        valor: valor,
        reajuste: reajuste,
        novoValor: novoValor,
        porcem: porcem,
        mostrarDados: true
    });

    }

    res.render("reajuste", {
        mostrarDados: false
    })

    
});

app.get("/imc", function(req, res) {

    const temDados = req.query.peso && req.query.altura

    if(temDados) {

    let peso = Number(req.query.peso);
    let altura = Number(req.query.altura)

    alturaCm = altura/100

    if(alturaCm<=0 || peso <= 0) {
        return res.send("Valores inválidos!!! Envie valores que não seja nulos ou negativos!")
    }

    const imc = peso/(alturaCm*alturaCm)

    return res.render("imc", {
        peso: peso,
        alturaCm: altura,
        imc: imc.toFixed(2),
        mostrarDados: true
    });
    }

        res.render("imc", {
            mostrarDados: false
        });

    
});

app.get("/aluno", function(req, res) {

    const temDados = req.query.nome && req.query.n1 && req.query.n2 && req.query.n3 && req.query.n4
    
    if(temDados) {
        let nome = req.query.nome;
    const n1 = Number(req.query.n1);
    const n2 = Number(req.query.n2);
    const n3 = Number(req.query.n3);
    const n4 = Number(req.query.n4);

    const media = (n1+n2+n3+n4)/4
    
    return res.render("aluno", {
        nome: nome,
        nota1: n1,
        nota2: n2,
        nota3: n3,
        nota4: n4,
        media: media,
        mostrarDados: true
    });
    }

    res.render("aluno", {
        mostrarDados:false
    })

    

});

app.get("/pagamento", function(req, res) {

    const temDados = req.query.valor && req.query.opcao

    if (temDados) {

    const valor = Number(req.query.valor)
    const opcao = Number(req.query.opcao)
    
    let reajusteDinheiro =  valor - ((valor*15)/100) 
    let reajusteCredito =  valor - ((valor*10)/100)
    let reajusteParcelado = valor

    
    
     reajusteDinheiro = reajusteDinheiro.toLocaleString('pt-BR', {
        style: 'currency',
        currency: 'BRL'
    });

     reajusteParcelado = reajusteParcelado.toLocaleString('pt-BR', {
        style: 'currency',
        currency: 'BRL'
    });


    return res.render("pagamento", {
        valor: valor,
        opcao: opcao,
        reajusteCredito: reajusteCredito,
        reajusteDinheiro: reajusteDinheiro,
        reajusteParcelado: reajusteParcelado,
        mostrarDados: true
    });
    }

     res.render("pagamento", {
        mostrarDados: false
    });
    
});

app.listen(8081, () => {
    console.log("Servidor rodando normalmente na porta 8081")
})
