const fs = require('fs');
const { Pool } = require('pg');

const pool = new Pool ({
    user: 'nicole',
    password: 'sIehM7H31kx5CtIu',
    host: 'free-tier.gcp-us-central1.cockroachlabs.cloud',
    database: 'bumpy-goat-1137',
    port: '26257',
    ssl: {
        ca: fs.readFileSync('crets/cc-ca.crt').toString()
    }
});

const getUsers = (request, response) => {
    pool.query('SELECT * FROM users', (error, results)=> {
        if(error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}

module.exports = {
    getUsers
}