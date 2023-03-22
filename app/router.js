const express = require('express');

// on importe nos controllers
const mainController = require('./controllers/mainController');

const router = express.Router();

router.get('/', mainController.homePage);
router.get('/article/:id', mainController.getOneArticle);


module.exports = router;
