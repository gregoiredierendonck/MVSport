$root = $('html')
header_height = $('#header').height()
hero_height = $('#accueil').height()
offset_val = hero_height - header_height
$navbutton = $('#navbutton')
$header = $('#header')
$header-link = $('#header a')
eventType = if document.ontouchstart != null then 'click' else 'touchstart'


# Header appear after scroll
navSlide = ->
  scroll_top = $(window).scrollTop()
  if scroll_top >= offset_val
    $header.addClass 'is-sticky'
  else
    $header.removeClass 'is-sticky'
  return

# Scroll to anchor with animation
anchorLinks = ->
  $('a[href^="#"]').on 'click', (e) ->
    e.preventDefault()
    header_height = $header.outerHeight(true)
    target = @hash
    $target = $(target)
    $('html, body').stop().animate { 'scrollTop': $target.offset().top - header_height - 20 }, 900, 'swing', ->
      location.hash = target.replace('#', '')

# Add small nav for small screen sizes
smallMenu = ->
  if $(window).width() <= 880
    $header.addClass('is-small')
  else
    $header.removeClass('is-small')

# Open and close menu
openMenu = ->
  $(document).ready ->
    $header.removeClass('is-open')
  $navbutton.click ->
    $header.toggleClass('is-open')
  $header-link.click ->
    $header.removeClass('is-open')

# Actions
$(window).scroll navSlide
$(document).ready anchorLinks
$(document).ready openMenu
$(window).resize smallMenu
$(document).ready smallMenu
