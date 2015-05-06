# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

  # This means load this JS when the page loads
$ ->
  # Select the pins wrapper div via the #pins id, and once the images are loaded ...
  $('#pins').imagesLoaded ->
    # Call the jQuery Masonry on the pins div
    $('#pins').masonry
      itemSelector: '.box'
      isFitWidth: true

