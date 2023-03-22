const dataMapper = require('../dataMapper');

const mainController = {
    homePage: async (req, res) =>{
        try {
            const products = await dataMapper.getAllProducts();
            res.render('accueil', {products});
        } catch (error) {
            res.status(500).send(error);
        }
    },

    getOneArticle: async (req, res) => {
      const targetId = req.params.id;
      const product = await dataMapper.getProductById(targetId);
      res.render('article', {product});
    },
}


module.exports = mainController;
