require('dotenv').config();

const express = require('express');

const router = require('./app/router');

const app = express();


app.set('views', './app/views');
app.set('view engine', 'ejs');

app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(express.static('./public'));

const port = process.env.PORT;

app.use(express.static('public'));


app.use(router);


app.listen(port, () => {
  console.log(`API demarrée sur http://localhost:${port}`);
});

