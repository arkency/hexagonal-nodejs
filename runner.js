require('coffee-script/register');
HttpAdapter = require('./HttpAdapter');
UseCase     = require('./UseCase');
Glue        = require('./Glue');
BooksAPI    = require('./BooksAPI');
Router      = require('./Router');

// There should be a class for this all initializers...
var useCase     = new UseCase();
var httpAdapter = new HttpAdapter();
var router      = new Router();
var booksAPI    = new BooksAPI();
var glue        = new Glue(useCase, httpAdapter, router, booksAPI);

useCase.start();
