require('coffee-script/register');
HttpAdapter = require('./HttpAdapter');
UseCase = require('./UseCase');
Glue = require('./Glue');

var useCase = new UseCase();
// var httpAdapter = new HttpAdapter(useCase);
var httpAdapter = new HttpAdapter();
var glue = new Glue(useCase, httpAdapter);

useCase.start();
