const pgp = require('pg-promise')()
const dbName = 'LitPit'
const connectionString = `postgres://${process.env.USER}@localhost:5432/${dbName}`
const db = pgp(connectionString)

const getAllResources = 'SELECT * FROM resources LIMIT 10 OFFSET $1'



const Resources = {
  all: (offset) => {
    return db.any( getAllResources, [offset] )
  }

}

module.exports = {Resources};
