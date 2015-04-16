angular-filereader
==================

A wrapper around the FileReader javascript API

Note: this is incomplete and merely an exercise.

I took the idea and most of the code from [http://odetocode.com/blogs/scott/archive/2013/07/03/building-a-filereader-service-for-angularjs-the-service.aspx](http://odetocode.com/blogs/scott/archive/2013/07/03/building-a-filereader-service-for-angularjs-the-service.aspx)

Install
-------

To use angular-filereader you have to:

1. install angular-filereader with bower:

    ```bower install angular-filereader```

2. In your ```index.html```, include the angular-filereader file

    <script src="bower_components/angular-filereader/angular-filereader.min.js"></script>

In your module declaration you have to include the filereader module

    var module = angular.module('yourModule', [
        ...
        'filereader',
    ]);

USAGE
-----

Inject the service in your controller

    function controller ($scope, FileReader) {

Call the readAsDataURL method with a File or Blob object. Remember that you also
have to pass the $scope.

      FileReader.readAsDataURL(file, $scope)

readAsDataURL returns a promise, so you can call then on it

        .then(function (resp) {
            // Do stuff

        }, function (err) {
            // Do stuff
        });

readAsDataUrl also broadcast the fileProgress event. You can listen for it to
check on the progress of the loading

    $scope.$on('fileProgress', function (event, data) {
        // data = {
        //   total: ...
        //   loaded: ...
        // }
    }

FAQ
---

### What's missing?

A lot. I started this project but I only needed this few bits of functionality.

Also I ripped the code from [http://odetocode.com/blogs/scott/archive/2013/07/03/building-a-filereader-service-for-angularjs-the-service.aspx](http://odetocode.com/blogs/scott/archive/2013/07/03/building-a-filereader-service-for-angularjs-the-service.aspx) and only added a few tests.

It's not like I spent months on this.

### Will it work on my customers browsers?

You can discover it on [http://caniuse.com/filereader](http://caniuse.com/filereader)

### Are there any alternatives?

Check out [ngReader](https://github.com/SparrowJang/ngFileReader)
which also has a fallback options for browsers who don't support FileReader

DEVELOPMENT
-----------

Remember to install all dependencies:

    $ npm install -g gulp  // It's like grunt but cooler
    $ npm install
    $ bower install

To launch tests simply run

    gulp karma

To build and minify simply run

    gulp build
