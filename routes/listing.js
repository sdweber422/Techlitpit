var express = require('express');
var router = express.Router();
var Resources = require('../databases/db.js').Resources;

/* GET users listing. */
router.get('/', function(req, res, next) {
  const page = parseInt(req.query.page || 1)
  const offset = (page - 1) * 10
  return Resources.all(offset)
  // .then( results => {
  //   const resources = results
  //   const resourceIds = results.map( result => result.id )
  //   const authors = []
  //   const categories = []
  //   resourceIds.forEach( id =>
  //     authors.push(Resources.getAuthors(id)))
  //   resourceIds.forEach( id =>
  //     categories.push(Resources.getCategories(id)))
  //   const writers = Promise.all(authors)
  //   const genres = Promise.all(categories)
  //   return Promise.all([writers, genres, resources])
  // })
  // .then( result => {
  //   const authors = result[0]
  //   const categories = result[1]
  //   const resources = result[2]
  //   console.log('authors:  ', Array.forEach(Array.forEach(authors)) );
  //   resources.forEach( resource => {
  //     resource.authors = authors.forEach( authoritative => console.log('1'))
  //     resource.categories = categories.forEach( categorical => categorical.filter( category => category.resource_id === resource.id))
  //   })
  //   return resources
  // })
  .then( results => {
    res.render('listing', { title: 'Resource listings', items: results })
  })
});

module.exports = router;
