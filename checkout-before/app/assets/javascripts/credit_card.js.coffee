class @CreditCard
  constructor: (number) ->
    @number = number.replace(/[ -]/g, '')
  
  validNumber: ->
    total = 0
    for i in [(@number.length-1)..0]
      n = +@number[i]
      if (i+@number.length) % 2 == 0
        n = if n*2 > 9 then n*2 - 9 else n*2
      total += n
    total % 10 == 0


$.fn.validateCreditCardNumber = ->
  @each ->
    $(this).blur ->
      card = new CreditCard(@value)
      if !card.validNumber()
        $(this).next('.error').text("Invalid card number.")
      else
        $(this).next('.error').text("")
