const pgp = require('pg-promise')()
const dbName = 'LitPit'
const connectionString = `postgres://${process.env.USER}@localhost:5432/${dbName}`
const db = pgp(connectionString)

const getAllResources = 'SELECT * FROM resources LIMIT 10 OFFSET $1'

const getAuthorsByResourceIds = 'SELECT * FROM authors JOIN resource_authors ON author_id = id WHERE resource_id IN ($1:csv)'

const getCategoriesByResourceIds = 'SELECT * FROM categories JOIN resource_categories ON category_id = id WHERE resource_id IN ($1:csv)'

const addResource = 'INSERT INTO resources (id, title, description, image_link, url) VALUES (DEFAULT, $1, $2, $3, $4) RETURNING *'

const addAuthor = 'INSERT INTO authors (id, name) VALUES (DEFAULT, $1) ON CONFLICT DO NOTHING; INSERT INTO resource_authors (author_id, resource_id) SELECT authors.id, resources.id FROM authors JOIN resources ON resources.id = $2 WHERE name = $1 ON CONFLICT DO NOTHING RETURNING *'

const addCategory = 'INSERT INTO categories (id, name) VALUES (DEFAULT, $1) ON CONFLICT DO NOTHING; INSERT INTO resource_categories (category_id, resource_id) SELECT categories.id, resources.id FROM categories JOIN resources ON resources.id = $2 WHERE name = $1 ON CONFLICT DO NOTHING RETURNING *'

const getResourceById = 'SELECT * FROM resources WHERE id = $1'


const Resources = {
  all: (offset) => {
    return db.any( getAllResources, [offset] )
    .then( results => {
      const resources = results
      const resourceIds = results.map( result => result.id )
      const authors = []
      const categories = []
      return Promise.all([Resources.getAuthors(resourceIds), Resources.getCategories(resourceIds), resources])
    })
    .then( answer => {
      const authors = answer[0]
      const categories = answer[1]
      const results = answer[2]
      console.log(results[0].title)
      results.forEach( result => {
      result.authors = authors.filter( author => author.resource_id === result.id)
      result.categories = categories.filter( category => category.resource_id === result.id)
    })
    return results
  })
},
  createAuthor: (author, resource_id) => {
    return db.one( addAuthor, [author, resource_id])
  },
  createCategory: (category, resource_id) => {
    return db.any( addCategory, [category, resource_id] )
  },
  createResource: (title, description, image_link, url) => {
    return db.one( addResource, [title, description, image_link, url])
  },
  getAuthors: (resource_id) => {
    return db.any( getAuthorsByResourceIds, [resource_id] )
  },
  getCategories: (resource_id) => {
    return db.any( getCategoriesByResourceIds, [resource_id] )
  },
  getById: (resource_id) => {
    return db.one( getResourceById, [resource_id] )
  }
}


module.exports = {Resources};
