do ($=jQuery)->
  $ ".navbar ul li a[href^='#']"
    .on "click", (e)->
      e.preventDefault()
      hash = @hash
      $("#navbar").collapse 'toggle' if $(window).width() <= 757
      $ "html, body"
        .animate
          scrollTop: $(@hash).offset().top - $(".navbar").height()
        , 300, ->
          window.location.hash = hash

