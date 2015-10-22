$(document).ready ->
  isMobile = ->
    try
      document.createEvent 'TouchEvent'
      return true
    catch e
      return false
    return

  if isMobile() == true
    $('.instaImage').click ->
      $(this).siblings().removeClass 'active'
      $(this).toggleClass 'active'
      return
  $ ->
    do ->
      if $('#email').length
        return document.getElementById('email').focus()
      return
    return
# Hide animation after email submit
  emailComplete = (response) ->
    animationsTest = (callback) ->
      # Test if ANY/ALL page animations are currently active
      testAnimationInterval = setInterval((->
        if !$.timers.length
          # any page animations finished
          clearInterval testAnimationInterval
          callback()
        return
      ), 25)
      return
    $('.emailMessage').html '<span>' + response.message + '</span>'
    $('.staticBackground').fadeOut 600
    $('.mainContent').fadeOut 600
    $('.randomBackground').fadeOut 600
    animationsTest ->
      # your callback (things to do after all animations are done)
      $('.colorBackground').css 'z-index', '5'
      return
    $('.confirmationTerminal').css 'visibility', 'visible'
    $('#email').blur()
    $('#subscribe').blur()
    console.log response

  $("#subscribe").click ->
    $.ajax({
      type: "POST",
      url: "/mcsubscribe/subscribe",
      data: { email: { address: $("#email").val()} },
      success:(data) ->
        if data.error == 0
          emailComplete(data)
        else if data.error == 1
          alert data.message
          emailComplete(data)
        else if data.error == 2
          console.log data
          alert data.message
        else if data.error == 3
          console.log data
          alert data.message
        else if data.error == 4
          console.log data
          alert data.message
        else if data.error == 5
          console.log data
          alert data.message
        else
          console.log data
          alert data.message
        return false
      error:(data) ->
        console.log data
        return false
    })


imgArray = [
  'Color-01'
  'Color-02'
  'Color-03'
  'Color-04'
  'Color-05'
]
image = undefined

my_func = ->
  image = imgArray[Math.floor(Math.random() * imgArray.length)]
  $('.randomBackground').attr 'class', 'randomBackground'
  $('.randomBackground').addClass image
  $('.staticBackground').fadeOut(100).fadeIn 300
  setTimeout (->
    my_func()
    return
  ), 7000
  # Adjust the timeout value as you like
  return

setTimeout my_func, 8000
