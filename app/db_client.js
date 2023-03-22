// 1. require le module
const pg = require('pg');

const pg_logs = JSON.parse(process.env.PG_LOGS)

// 2. Créer un client
const client = new pg.Client(pg_logs);

// 3. Connecter le client
client.connect();

// 4. Exporter le client connecté
module.exports = client;