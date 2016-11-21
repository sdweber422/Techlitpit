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
  res.render('index', { title: 'Express' })

});

router.post('/addBook', function(req, res, next) {
  const { title } = req.body
  const { description } = req.body || 'No description provided'
  const { image_link } = req.body || 'No image available'
  const { url } = req.body
  const { authors } = req.body
  const { categories } = req.body
  Resources.create(title, description, image_link, url, authors, categories).then(() => res.redirect('/'))
})

module.exports = router;
