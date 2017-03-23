console.log('friends model');
var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var friendSchema = new Schema({
  first_name: String,
  last_name: String,
  birthday: Date
});

mongoose.model('Friend', friendSchema)
