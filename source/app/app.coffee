app = angular.module('app', [
  'ui.router', 'ngSanitize', 'restangular',  'ngRoute', 'mgcrea.ngStrap', 'ui.tree', 'angular-loading-bar',
])


# 'angularFileUpload'
app.config (RestangularProvider) ->
  # RestangularProvider.setBaseUrl('http://eagletest.media.test.eagleplatform.com/api/v2')

  # RestangularProvider.addResponseInterceptor (data, operation, what, url, response, deferred) ->


  RestangularProvider.addRequestInterceptor (elem, operation, what, url) ->
    # retElem = elem;
    # if operation == 'post' or operation == 'put'
    #   wrapper = {};
    #   wrapper[what.substring(0, what.length - 1)] = elem;
    #   retElem = wrapper;
    # return retElem;





app.config(['cfpLoadingBarProvider', (cfpLoadingBarProvider) ->
    cfpLoadingBarProvider.includeBar = false;
  ])


console.log("Restangular Initiated")
