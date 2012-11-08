24.times do |n|
  Order.create! number: n+1, card_last_four: 1234, amount: 19.99
end
