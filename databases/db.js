const pgp = require('pg-promise')()
const dbName = 'LitPit'
const connectionString = `postgres://${process.env.USER}@localhost:5432/${dbName}`
const db = pgp(connectionString)

const getAllResources = 'SELECT * FROM resources LIMIT 10 OFFSET $1'

const addResource = 'INSERT INTO resources (id, title, description, image_link, url) VALUES (DEFAULT, $1, $2, $3, $4) RETURNING *'

const addAuthor = 'INSERT INTO authors (id, name) VALUES (DEFAULT, $1) ON CONFLICT DO NOTHING; INSERT INTO resource_authors (author_id, resource_id) SELECT authors.id, resources.id FROM authors JOIN resources ON resources.id = $2 WHERE name = $1 ON CONFLICT DO NOTHING RETURNING *'

const addCategory = 'INSERT INTO categories (id, name) VALUES (DEFAULT, $1) ON CONFLICT DO NOTHING; INSERT INTO resource_categories (category_id, resource_id) SELECT categories.id, resources.id FROM categories JOIN resources ON resources.id = $2 WHERE name = $1 ON CONFLICT DO NOTHING RETURNING *'


const Resources = {
  all: (offset) => {
    return db.any( getAllResources, [offset] )
  },
  createAuthor: (author, resource_id) => {
    return db.one( addAuthor, [author, resource_id])
  },
  createCategory: (category, resource_id) => {
    return db.any( addCategory, [category, resource_id] )
  },
  createResource: (title, description, image_link, url) => {
    return db.one( addResource, [title, description, image_link, url])
  }
}


module.exports = {Resources};
