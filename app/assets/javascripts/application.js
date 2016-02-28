// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

//@import 'bower_ringcentral'

jason = "here"
var outside = "hi";

document.addEventListener('DOMContentLoaded', function() {
  var outside = "hi2";

})

var getAllTransactions = function() {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "http://api.ean.com", true);
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.setRequestHeader('Accept', 'application/json');
      xhr.onloadend = function() {
          var parsed = JSON.parse(this.response);
          var userTransac = parsed['transactions'];
          //showTable(getColumns(userTransac), getData(userTransac));


          var columns = [];
          var datarows = [];
          var fixedColumns = [];
          var fixedData = [];
      }
    }