var app = angular.module('app',

app.controller('friendsController', ['friendsFactory', '$scope', function(friendsFactory, $scope){

  $scope.friends = [];

  friendsFactory.showFriends(function(data){
    console.log(data);
    $scope.friends = data;
  })

  $scope.createFriend = function(){
    var friend = $scope.newFriend;
    friendsFactory.createFriend(friend, function(data){

      if(data.errors){
        $scope
      }else{
        friendsFactory.showFriends(function(data){
          $scope.friends = data;
        })
      }
    });
  }
}])
