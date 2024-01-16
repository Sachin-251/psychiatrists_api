const mysql = require("mysql2/promise");
const dotenv = require("dotenv");
dotenv.config();

async function query(sql, params){
    const connection = await mysql.createConnection({
        host: process.env.MYSQL_HOST,
        database: process.env.MYSQL_DB,
        user: process.env.MYSQL_USER,
        password: process.env.MYSQL_PASSWORD,
    });

    const [results, ] = await connection.execute(sql, params);
    return results;
}

module.exports = query;