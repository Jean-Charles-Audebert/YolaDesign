import dataMapper from '../dataMapper.js';

const mainController = {

  homepage: async function(req, res, next) {
    try {
      const products = await dataMapper.getAllProducts;
      res.render('index', {products});
    } catch (error) {
      console.log(error);
      next();
    }

    res.send('Page d\'accueil');
  },

};

export default mainController;
