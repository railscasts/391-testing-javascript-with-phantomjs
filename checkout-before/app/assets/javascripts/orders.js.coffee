jQuery ->
  $('#order_card_number').validateCreditCardNumber()
  if $('.pagination').length
    $(window).scroll ->
      url = $('.pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $('.pagination').text("Fetching more orders...")
        $.getScript(url)
    $(window).scroll()
