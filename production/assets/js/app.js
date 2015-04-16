(function() {
  var app;

  app = angular.module('app', ['ui.router', 'ngSanitize', 'restangular', 'ngRoute', 'mgcrea.ngStrap', 'ui.tree', 'angular-loading-bar']);

  app.config(function(RestangularProvider) {
    return RestangularProvider.addRequestInterceptor(function(elem, operation, what, url) {});
  });

  app.config([
    'cfpLoadingBarProvider', function(cfpLoadingBarProvider) {
      return cfpLoadingBarProvider.includeBar = false;
    }
  ]);

  console.log("Restangular Initiated");

  angular.bootstrap(document, ['app']);

}).call(this);

(function() {
  angular.module('app').config(function($stateProvider, $urlRouterProvider, $locationProvider) {
    return $urlRouterProvider.otherwise("/");
  });

}).call(this);
