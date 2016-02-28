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

var jsexists = "it does";
$( document ).ready(function() {
  var jqueryexists = "it does";
  $('#carSearch').submit(function(e){
    e.preventDefault();
    $.ajax({
       url: "http://terminal2.expedia.com/x/cars/search?pickupdate=" + $('#session_pickupdate').val() + "&dropoffdate="+ $('#session_dropoffdate').val() + "&pickuplocation="+$('#session_pickuplocation').val() + "&dropofflocation=" + $('#session_dropofflocation').val() + "&sort=price&limit=10&a&apikey=zArxH6LB1NhEGBOiGtI4gsmCKBAMhd7C",
       xhrFields: {
          withCredentials: "expedia.com"
       } //
      })
      .done(function(response){
        console.log(response);
        //clear the div
        $('#carSearch').empty();
        for(var i=0; i<response['CarInfoList']['CarInfo'].length; i++) {
            $('#carSearch').append(response['CarInfoList']['CarInfo'][i]['CarClass']+ "  ")
            $('#carSearch').append(response['CarInfoList']['CarInfo'][i]['CarMakeModel']+ "  ")
            $('#carSearch').append(response['CarInfoList']['CarInfo'][i]['CDetailsUrl']+ "<br>")
        }
        $('#carSearch').append(response);
      })
    }) //click event
})
// var getExpediaInfo = function() {
//     var xhr = new XMLHttpRequest();
//     //subdomain = "";

//     sort = "price";
//     limit = "10";
//     apikey = "zArxH6LB1NhEGBOiGtI4gsmCKBAMhd7C";
//     var8 = "";
//     var9 = "";
//     var10 = "";
// // " + varName +"
//     fullDomain = "http://terminal2.expedia.com/x/cars/search?pickupdate=" + pickupdate + " 2016-03-21T10:00&dropoffdate=2016-03-28T16:30&pickuplocation=LAX&dropofflocation=LAX&sort=price&limit=10&a&apikey=zArxH6LB1NhEGBOiGtI4gsmCKBAMhd7C"
//     xhr.open("GET", fullDomain, true);
//     xhr.setRequestHeader('Content-Type', 'application/json');
//     xhr.setRequestHeader('Accept', 'application/json');
//       xhr.onloadend = function() {
//           var parsed = JSON.parse(this.response);
//           var userTransac = parsed['transactions'];
//       }
//     }