var express = require('express');
var router = express.Router();
var Resources = require('../databases/db.js').Resources;

/* GET home page. */
router.get('/', function(req, res, next) {
  const page = parseInt(req.query.page || 1)
  const offset = (page - 1) * 10
  Resources.all(offset).then( results => {
    console.log(results)
  })
  res.render('index', { title: 'LitPit' })

});

router.post('/addBook', function(req, res, next) {
  const { title } = req.body
  const { description } = req.body || 'No description provided'
  const { image_link } = req.body || 'No image available'
  const { url } = req.body
  const { authors } = req.body
  const { categories } = req.body
  const writers = []
  const genres = []
  return Resources.createResource(title, description, image_link, url).then( (resource_id) => {
      console.log(resource_id[0], "   ", authors)
      Promise.resolve(Resources.createAuthor(authors, resource_id[0]))
    })

      // if(!authors) {return Promise.resolve(authors)}
      // return resource_id
    // .then( (resource_id) => {
    //   if(!categories) {return Promise.resolve(categories)}
    //   categories.forEach( category => {
    //     Promise.resolve(Resources.addCategory(category, resource_id))
    //   })
    // })
    .then( () => {
      res.redirect('/')
    })
})

module.exports = router;
