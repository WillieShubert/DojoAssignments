var app = angular.module('app', ['ngRoute']);

app.config(function ($routeProvider) {
// Routes to load your new and edit pages with new and edit controllers attached to them!
  $routeProvider
    // when someone enters a url 'localhost:8000/#/new', load the following partial
    .when('/new', {
      templateUrl: './../views/new.html',
      controller: 'newController',
      controllerAs: 'NC'
    })
    // when someone enters a url 'localhost:8000/#/edit', load the following partial
    // the _id property will be passed into the $routeParams object as long as it's
    // $routeParams is injected
    .when('/edit/:_id', {
      templateUrl: './../views/edit.html',
      controller: 'editController',
      controllerAs: 'EC'
    })
    // when someone uses any other route than above, load the following partial
    .otherwise('/new');
});
