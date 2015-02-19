# ng-toaster-rails

ng-toaster-rails wraps the [AngularJS-Toaster](https://github.com/jirikavi/AngularJS-Toaster) library in a rails engine for simple use with the asset pipeline provided by Rails 3.1 and higher. The gem includes the development (non-minified) source for ease of exploration. The asset pipeline will minify in production.

For more info on customizing the library, please refer to the [doc](https://github.com/jirikavi/AngularJS-Toaster)

## Usage

Add the following to your gemfile:

    gem 'ng-toaster-rails'

Add the following directive to your Javascript manifest file (application.js):

    //= require toaster

If not present, also require ngAnimate module

    //= require angular-animate

And the following directive to your Stylesheet manifest file (appliaction.css):

    *= require toaster

Then, just follow the [doc](https://github.com/jirikavi/AngularJS-Toaster). 
Add toaster container directive: 

```html
<toaster-container></toaster-container>
```

Prepare the call of toaster method:

```js
  angular.module('main', ['toaster'])
  .controller('myController', function($scope, toaster) {
      $scope.pop = function(){
          toaster.pop('success', "title", "text");
      };
  });
```

Call controller method on button click:

```html
<div ng-controller="myController">
    <button ng-click="pop()">Show a Toaster</button>
</div>
```

## Versioning

ng-toaster-rails 0.4.10 == AngularJS-Toaster 0.4.10

Every attempt is made to mirror the currently shipping AngularJS-Toaster version number wherever possible.
The major, minor, and patch version numbers will always represent the AngularJS-Toaster version. Should a gem
bug be discovered, a 4th version identifier will be added and incremented.
