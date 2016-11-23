var express = require('express');
var router = express.Router();
var Resources = require('../databases/db.js').Resources;

/* GET home page. */
router.get('/', function(req, res, next) {
  const page = parseInt(req.query.page || 1)
  const offset = (page - 1) * 10
  Resources.all(offset).then( results => { results
  })
  res.render('index', { title: 'LitPit' })

});

router.post('/addBook', function(req, res, next) {
  const { title } = req.body
  const { description } = req.body || 'No description provided'
  const { image_link } = req.body || 'No image available'
  const { url } = req.body
  var { authors } = req.body
  var { categories } = req.body
  const writers = []
  const genres = []
  console.log(req.body)
  return Resources.createResource(title, description, image_link, url)
  .then( (resource_id) => {
    if(!authors) {return Promise.resolve(authors)}
    if(!Array.isArray(authors)) {
      authors = [authors]
    }

    authors.forEach( author => {
      writers.push(Resources.createAuthor(author, resource_id.id))
    })
    return Promise.all(writers)
  })
  .then( (results) => {
    if(!categories) {return Promise.resolve(categories)}
    if(!Array.isArray(categories)) {
      categories = [categories]
    }
    categories.forEach( category => {
      genres.push(Resources.createCategory(category, results[0].resource_id))
    })
    return Promise.all(genres)
  })
  .then( () => {
    res.redirect('/')
  })
})

module.exports = router;
