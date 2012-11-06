$(document).ready ->

  # theme switcher
  checkCookieSetStyle()
  theme_switch = $("#theme-switcher li")
  theme_switch.click ->
    stylesheet_name = $(this).attr("rel")
    $(".selected").removeClass "selected"
    $(this).addClass "selected"
    setStyleCookie "style_name", stylesheet_name, 1
    $("html").fadeOut(300, ->
      $("link").attr "href", "/stylesheets/" + stylesheet_name + ".css"
    ).fadeIn 150

  # active events in mobile webkit.
  document.addEventListener "touchstart", (->
  ), false
