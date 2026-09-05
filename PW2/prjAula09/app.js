const express = require('express');
const app = express();

app.use(express.static('public'));
app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: true }));

let filaSenhas = [];
let senhaPainel = 0;
let minhaSenha = 0;
let mensagem = "";

for (let i = 20; i >= 1; i--) {
    filaSenhas.unshift(i);
}

app.get('/', (req, res) => {
    const painelFormatado = senhaPainel == 0
        ? "000"
        : String(senhaPainel).padStart(3, '0');

    const minhaFormatada = minhaSenha == 0
        ? "Nenhuma"
        : String(minhaSenha).padStart(3, '0');

    res.render('index', {
        senhaAtual: painelFormatado,
        senha: minhaFormatada,
        mensagem: mensagem
    });
});

app.get('/guiche', (req, res) => {
    mensagem = "";

    if (filaSenhas.length > 0) {
        senhaPainel = filaSenhas.shift();
    } else {
        senhaPainel = 0;

        for (let i = 1; i <= 20; i++) {
            filaSenhas.push(i);
        }
    }

    res.redirect('/');
});

app.get('/guiche2', (req, res) => {
    mensagem = "";

    if (filaSenhas.length == 0) {
        mensagem = "Não há mais senhas disponíveis.";
        return res.redirect('/');
    }

    let indice = Math.floor(Math.random() * filaSenhas.length);

    minhaSenha = filaSenhas[indice];

    res.redirect('/');
});

app.get('/verificar', (req, res) => {
    if (minhaSenha == 0) {
        mensagem = "Você precisa gerar uma senha primeiro!";
    } else if (minhaSenha == senhaPainel) {
        mensagem = "Sucesso! Pode se dirigir ao guichê.";
        minhaSenha = 0;
    } else if (filaSenhas.includes(minhaSenha) == false) {
        mensagem = "Sua senha já passou! Você perdeu a vez.";
        minhaSenha = 0;
    } else {
        mensagem = `Aguarde! O painel está no ${senhaPainel} e a sua é ${minhaSenha}.`;
    }

    res.redirect('/');
});

app.listen(8081, () => {
    console.log("Server rodando na porta 8081");
});