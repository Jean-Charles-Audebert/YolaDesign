const client = require('./db_client');

const dataMapper = {
  async getAllProducts() {
    const result = await client.query('SELECT * FROM product');
    return result.rows;
  },

  async getProductById(id) {
    const result = await client.query('SELECT * FROM product WHERE id = $1', [id]);
    return result.rows[0];
  },

  async createProduct(product) {
    const { name, description, price, image_url, stock, category_id, subcategory_id } = product;
    const result = await client.query(
      'INSERT INTO product(name, description, price, image_url, stock, category_id, subcategory_id) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *',
      [name, description, price, image_url, stock, category_id, subcategory_id]
    );
    return result.rows[0];
  },

  async updateProduct(product) {
    const { id, name, description, price, image_url, stock, category_id, subcategory_id } = product;
    const result = await client.query(
      'UPDATE product SET name = $1, description = $2, price = $3, image_url = $4, stock = $5, category_id = $6, subcategory_id = $7 WHERE id = $8 RETURNING *',
      [name, description, price, image_url, stock, category_id, subcategory_id, id]
    );
    return result.rows[0];
  },

  async deleteProductById(id) {
    const result = await client.query('DELETE FROM product WHERE id = $1 RETURNING *', [id]);
    return result.rows[0];
  },
  async getAllCategories(){
    const result = await client.query('SELECT * FROM categories');
    return result.rows;
  },
  async getCategoryById(id) {
    const result = await client.query('SELECT * FROM categories WHERE id = $1', [id]);
    return result.rows[0];
  },
  getNumberByCategory: async () => {
    const query = `SELECT "category_id", COUNT(*) FROM "product" GROUP BY "category_id"`;
    const result = await client.query(query);
    return result.rows;
},
};

module.exports = dataMapper;
