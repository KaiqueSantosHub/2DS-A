const express = require ("express");
const app = express();

app.use(express.static('public'));

app.set('view engine', 'ejs');

app.get("/", function(req,res){
     const n1 = 8;
     const n2 = 2;

     const soma = n1+n2;

     res.render("index", {
        resultado:soma
     });
});


app.listen(8081, () => {
    console.log("Servidor rodando normalmente na porta 8081")
});


