module.exports = {
  type: 'sqlite',
  database: './database.db',
  synchronize: process.env.NODE_ENV == 'development',
}
