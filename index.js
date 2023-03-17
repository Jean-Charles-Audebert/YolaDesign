import * as dotenv from 'dotenv';
dotenv.config();
import express from 'express';

import router from './app/router.js';

const app = express();
const port = process.env.PORT;

app.use(express.static('public'));


app.use('/', router);


app.listen(port, () => {
  console.log(`API demarrée sur http://localhost:${port}`);
});

