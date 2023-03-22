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

   
}


module.exports = mainController;
