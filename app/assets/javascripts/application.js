// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap
function check_menu(id){
document.getElementById("check_"+id).checked = true;
}

function create_order(){
var selected = [];
$('input:checked').each(function() {
    selected.push($(this).attr('value'));
});
console.log(selected);
//jQuery.post( "orders" ,[ selected ] );
$.post("orders",{ids: selected} );
}