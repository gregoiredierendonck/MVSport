
# Positionning funny elements
$RndmElmts = $('span.funnythings')
PositionElmts = ->
  $RndmElmts.each ->
    left = Math.floor((Math.random() * 90))
    top = Math.floor((Math.random() * 90))
    $(this).css('top': top + '%', 'left': left + '%')

# Stellar js
Stellar = ->
  if window.matchMedia('(min-width: 860px)').matches
    $ ->
      $.stellar
        horizontalScrolling: false,
        # hideDistantElements: false,
        horizontalOffset: 0,
        verticalOffset: 0,
        # responsive:true
      return
  return

# $(document).ready Stellar
$(window).load PositionElmts
$(window).load Stellar

# Google Analytics
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-69304119-3', 'auto');
  ga('send', 'pageview');

</script>
