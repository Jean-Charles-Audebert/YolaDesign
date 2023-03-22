const express = require('express');

// on importe nos controllers
const mainController = require('./controllers/mainController');

const router = express.Router();

router.get('/', mainController.homePage);


module.exports = router;
