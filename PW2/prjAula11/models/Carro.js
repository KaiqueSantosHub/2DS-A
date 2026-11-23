const mongoose = require('mongoose');

const carroSchema = new mongoose.Schema({
    id: Number,
    modelo: String,
    fabricante: String,
    valor: Number,
    anoFab: Number
});

const Carro = mongoose.model('Carro', carroSchema, 'carro');

module.exports = Carro;