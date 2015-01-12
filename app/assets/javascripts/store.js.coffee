# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready page: change", -> # on load for local and remote connection
	$('.store .entry > img').click -> # apply onclick all images that are immediate children of class 'entry' 
		$(this).parent().find(':submit').click() # process click event, submit 