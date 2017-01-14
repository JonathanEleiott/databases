var db = require('../db');

module.exports = {
  messages: {
    get: function (req, res) {
      console.log('req', req);
      var queryString = 'SELECT * FROM messages';
      db.dbConnection.query(queryString, function(err, rows, fields) {
        console.log('GET fields', fields);
        var rowsArr = [];
        rows = JSON.stringify(rows);
        console.log('GET rows', rows);
        res.end(rows);
      });
    }, // a function which produces all the messages

    post: function (req, res) {
      var queryString = 'INSERT INTO messages SET ?';
      db.dbConnection.query(queryString, req.body, function(err, rows, fields) {
        if (err) {
          console.log('error is ', err);
        }
        res.end();
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {

    },

    post: function (req, res) {

      var queryString = 'INSERT INTO messages SET ?';
      db.dbConnection.query(queryString, req.body, function(err, rows, fields) {
        if (err) {
          console.log('error is ', err);
        }
      });
    }
  }
};

//console.log goes to nodemon
//node mySQL query
//insert into set ?

/*

  connection.connect();
   
  var queryString = 'SELECT * FROM wp_posts';
   
  connection.query(queryString, function(err, rows, fields) {
      if (err) throw err;
   
      for (var i in rows) {
          console.log('Post Titles: ', rows[i].post_title);
      }
  });
   
  connection.end();

*/