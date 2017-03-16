// require express, path, bodyParser, and mongoose
var express = require("express");
var path = require("path");
var app = express();
var bodyParser = require('body-parser');
var mongoose = require('mongoose');

//connect to db and create schemas with validations
mongoose.connect('mongodb://localhost/message_board_db');
var Schema = mongoose.Schema;
var MessageSchema = new mongoose.Schema({
 name: { type: String, required: true, minlength: 4 },
 message: { type: String, required: true, minlength: 4 },
 comments: [{type: Schema.Types.ObjectId, ref: 'Comment'}]
 })
var CommentSchema = new mongoose.Schema({
  _message: {type: Schema.Types.ObjectId, ref: 'Message'},
  name: { type: String, required: true, minlength: 4 },
  comment: {type: String, required: true, minlength: 4 }
  });
// set our models by passing them their respective Schemas
mongoose.model('Message', MessageSchema);
mongoose.model('Comment', CommentSchema);
// store our models in variables
var Message = mongoose.model('Message');
var Comment = mongoose.model('Comment');


mongoose.Promise = global.Promise;
// use body-parser for parsing POST data
app.use(bodyParser.urlencoded({ extended: true }));
// setting up ejs and our views folder
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');
// root route to render the index.ejs view
app.get('/', function(req, res) {
  Message.find({}).populate('comments').exec(function(err, messages) {
        if (!err) {
          console.log("Got message", messages)
          res.render("index", {message: messages});
        }
        else {
          console.log( "Messages cannot be retrieved");
          res.render("index");
        }
    })
  })
// post route for adding a user
app.post('/message', function(req, res) {
  console.log("POST DATA", req.body);
  // create a new User with the name and age corresponding to those from req.body
  var message = new Message({name: req.body.name, message: req.body.message});
  // Try to save that new user to the database (this is the method that actually inserts into the db) and run a callback function with an error (if any) from the operation.
  message.save(function(err) {
    // if there is an error console.log that something went wrong!
    if(err) {
      console.log('something went wrong');
    } else { // else console.log that we did well and then redirect to the root route
      console.log('successfully added a message!');
      res.redirect('/');
    }
  })
})

app.post('/comment/:id', function (req, res){
   Message.findOne({_id: req.params.id}, function(err, message){
       // data from form on the front end
       var comment = new Comment(req.body);
       //  set the reference like this:
       comment._message = message._id;
       // now save both to the DB
       comment.save(function(err){
               message.comments.push(comment);
               message.save(function(err){
                    if(err) {
                         console.log('Error');
                    } else {
                         res.redirect('/');
                    }
                });
        });
      });
    });

// tell the express app to listen on port 8000
app.listen(8000, function() {
 console.log("listening on port 8000");
});
