var db = require('../db');

module.exports = {
  messages: {
    get: function () {
      db.dbConnection.connect();

      db.dbConnection.end();
    }, // a function which produces all the messages

    post: function () {
      db.dbConnection.connect();

      db.dbConnection.end();
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {
      db.dbConnection.connect();

      db.dbConnection.end();
    },

    post: function (userObj) {
      // db.dbConnection();
      db.dbConnection.connect();

      var queryString = 'SELECT * FROM messages';
      db.dbConnection.query(queryString, function(err, rows, fields) {
        if (err) {
          console.log('error is ', err);
        }

        for (var i in rows) {
          console.log('Post Titles: ', rows[i].post_title);
        }
      });

      db.dbConnection.end();
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