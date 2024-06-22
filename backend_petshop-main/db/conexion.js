const { Pool } = require("pg")
require("dotenv").config()

const pool = new Pool({
  user: 'postgres',
  database: 'petshop',
  host: 'localhost',
  password: 'postgres',
  port:5433,
  secret: 'mysecret',
  allowExitOnIdle: true
})

module.exports = pool
