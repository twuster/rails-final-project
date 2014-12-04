var ready = function() {
  $(document).ready(function() {
    setTimeout(function(){ $('#flash_notice').css("opacity","0"); }, 3000);
  });
}

$(document).ready(ready);
$(document).on('page:load', ready);