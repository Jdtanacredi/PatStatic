# {"utf8"=>"✓", "email"=>{"address"=>"johnny@gmail.com"}, "commit"=>"send", "controller"=>"mcsubscribe", "action"=>"subscribe"}

$ ->
  $("#subscribe").click ->
    $.ajax({
      type: "POST",
      url: "/mcsubscribe/subscribe",
      data: { email: { address: $("#email").val()} },
      success:(data) ->
        console.log data
        if data.error == 0
          $('.staticBackground').fadeOut 600
          $('.colorBackground').css 'z-index', '5'

        else if data.error == 1
        else if data.error == 2
        else if data.error == 3

        else if data.error == 4

        else if data.error == 5
        else
        return false
      error:(data) ->
        console.log data
        return false
    })
#
# imgArray = [
#   'Color-01'
#   'Color-02'
#   'Color-03'
#   'Color-04'
#   'Color-05'
# ]
# image = undefined
#
# my_func = ->
#   image = imgArray[Math.floor(Math.random() * imgArray.length)]
#   console.log 'background', 'url("/assets/signup/' + image + ')"'
#   # Do The Thing Here
#   $('.randomBackground').css
#     'background': 'url("/assets/signup/' + image + '.png")'
#     'background-size': 'cover'
#     'background-repeat': 'no-repeat'
#   $('.staticBackground').fadeOut(600).fadeIn 600
#   setTimeout (->
#     my_func()
#     return
#   ), 5000
#   # Adjust the timeout value as you like
#   return
#
# setTimeout my_func, 5000
