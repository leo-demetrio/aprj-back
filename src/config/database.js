console.log('.env',process.env.DATABASE_URL)

module.exports = {
    dialect: 'postgres',
    url: process.env.DATABASE_URL,
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
}



