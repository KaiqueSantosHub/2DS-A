const express = require('express');
const app = express();
const  Carro = require('./models/Carro')

app.use(express.static("public"));
app.set('view engine', 'ejs');
app.use(express.urlencoded({extended: true}));

app.use(express.json());

//MONGO DB
const mongoose = require('mongoose');
const Mongo_url = "mongodb://localhost:27017/dbCarro";
//MONGO DB

mongoose.connect(Mongo_url)
.then(() => console.log('Conectado ao MongoDB com sucesso!'))
.catch((err) => console.error('Erro ao conectar com o MongoDB:', err ));


app.get('/', (req, res) => {
    res.render('index', {
        carroByModelo: []

    })
});



app.post('/carroPesquisado', async (req, res) => {
    const carroModelo = req.body.carroModelo;
    let carroByModelo;

    if(carroModelo) {
         carroByModelo = await Carro.find({ modelo: carroModelo });
    } else {
         carroByModelo = await Carro.find();
    }

    


    res.render('index', {
        carroByModelo: carroByModelo
    })

});

app.listen(8081, ()=> {
    console.log('O servidor está rodando na porta 8081');
})