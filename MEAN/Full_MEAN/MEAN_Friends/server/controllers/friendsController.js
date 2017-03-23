console.log('Friends Controller')
var mongoose = require('mongoose');
var Friend = mongoose.model('Friend');

module.exports = (function(){
  return {
    index: function(req, res){
      Friend.find({}, function(err, results){
        if(err){
          res.json(err);
        }else{
          res.json(results);
        }
      })
    },
    create: function(req, res){
      var new_friend = new Friend(req.body);
      new_friend.save(function(err, results){
        if(err){
          res.json(err);
        }else{
          res.json(results);
        }
      })
    },
    show: function(req,res){
    Friend.find({_id: req.params.id}, function(err, results){
      if (err){
        res.json(err);
      }else{
        console.log('showing:', results)
        res.json(results)
      }
     })
    },
    update: function(req,res){
      Friend.update({_id: req.params.id}, req.body, function(err, results){
       if(err){
         res.json(err);
       }else{
         console.log('successfully updated profile!', results);
         res.json(results);
     }
   })
  },
    delete: function(req, res){
    Friend.remove({ _id: req.params.id }, function(err, results){
      if (err) {
        res.json(err);
      }else{
        res.json(results);
      }
    })
  }
 }
})();
