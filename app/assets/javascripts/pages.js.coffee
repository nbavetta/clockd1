$.fn.extend {   
  integrateDatetimepicker: (selector)->     
    selector = selector || '.datetimepicker'     
    $(@).find(selector).datetimepicker({format: 'dd/mm/yyyy at hh:mm'}) 
} 
$(document).ready () ->   
  $('body').integrateDatetimepicker()
