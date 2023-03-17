import express from 'express';
import mainController from './controllers/mainController.js';

const router = express.Router();

router.get('/', mainController.homepage);


router.get('/about', (req, res) => {
  res.send('À propos');
});

export default router;
