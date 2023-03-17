import db from './db_client.js';

const dataMapper = {
  async getAllProducts() {
    const result = await db.query('SELECT * FROM product');
    return result.rows;
  },

  async getProductById(id) {
    const result = await db.query('SELECT * FROM product WHERE id = $1', [id]);
    return result.rows[0];
  },

  async createProduct(product) {
    const { name, description, price, image_url, stock, category_id, subcategory_id } = product;
    const result = await db.query(
      'INSERT INTO product(name, description, price, image_url, stock, category_id, subcategory_id) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *',
      [name, description, price, image_url, stock, category_id, subcategory_id]
    );
    return result.rows[0];
  },

  async updateProduct(product) {
    const { id, name, description, price, image_url, stock, category_id, subcategory_id } = product;
    const result = await db.query(
      'UPDATE product SET name = $1, description = $2, price = $3, image_url = $4, stock = $5, category_id = $6, subcategory_id = $7 WHERE id = $8 RETURNING *',
      [name, description, price, image_url, stock, category_id, subcategory_id, id]
    );
    return result.rows[0];
  },

  async deleteProductById(id) {
    const result = await db.query('DELETE FROM product WHERE id = $1 RETURNING *', [id]);
    return result.rows[0];
  },
};

export default dataMapper;
