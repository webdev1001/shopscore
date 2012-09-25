jQuery ->
  resetStars()
  $(".rating span").hover (->
    toggleStar($(this))
  ), ->
    resetStars()
  $(".rating span").click (->
    $(".rating span").removeClass("active")
    $(this).addClass("active")
    $("input#order_rating").val($(this).data("rating"))
  )

resetStars = ->
  $(".rating span").removeClass("icon-star").addClass("icon-star-empty")
  $(".rating span.active").removeClass("icon-star-empty").addClass("icon-star").prevAll("span").removeClass("icon-star-empty").addClass("icon-star")

toggleStar = (element) ->
  element.parent(".rating").children("span").removeClass("icon-star").addClass("icon-star-empty")
  element.toggleClass("icon-star-empty").toggleClass("icon-star")
  element.prevAll("span").toggleClass("icon-star-empty").toggleClass("icon-star")