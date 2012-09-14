# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

//= require jquery.cycle.all

# add animation to the gallery photos
$('.gallery_images').cycle({ 
    fx:      'scrollLeft',
    timeout:  4000 
});