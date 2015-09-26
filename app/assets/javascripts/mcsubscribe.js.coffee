# {"utf8"=>"✓", "email"=>{"address"=>"johnny@gmail.com"}, "commit"=>"send", "controller"=>"mcsubscribe", "action"=>"subscribe"}

$ ->
  $("#subscribe").click ->
    $.ajax({
      type: "POST",
      url: "/mcsubscribe/subscribe",
      data: { email: { address: $("#email").val()} },
      success:(data) ->
        console.log data
        if data.error == 'true'
          $('.staticBackground').fadeOut 600
        else
        return false
      error:(data) ->
        console.log data
        return false
    })
