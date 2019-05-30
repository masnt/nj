# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(window).on 'scroll', ->
  scrollHeight = $(document).height()
  scrollPosition = $(window).height() + $(window).scrollTop()
if (scrollHeight - scrollPosition) / scrollHeight<= 0.04
  $('.jscroll').jscroll
    contentSelector: '.products-list'
    nextSelector: 'span.next a'
return
