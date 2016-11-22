var express = require('express');
var router = express.Router();
var Resources = require('../databases/db.js').Resources;

/* GET users listing. */
router.get('/', function(req, res, next) {
  const page = parseInt(req.query.page || 1)
  const offset = (page - 1) * 10
  Resources.all(offset).then( results => {
    res.render('listing', { title: 'Resource listings', items: results })
  })
});

module.exports = router;
