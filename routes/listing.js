var express = require('express');
var router = express.Router();
var Resources = require('../databases/db.js').Resources;

/* GET users listing. */
router.get('/', function(req, res, next) {
  const page = parseInt(req.query.page || 1)
  const offset = (page - 1) * 10
  return Resources.all(offset)
  .then( items => {
    res.render('listing', { title: 'Resource listings', items: items })
  })
});

module.exports = router;
