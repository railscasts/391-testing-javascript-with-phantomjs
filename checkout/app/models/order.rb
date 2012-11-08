class Order < ActiveRecord::Base
  attr_accessor :card_number, :card_expires_on
  attr_accessible :amount, :card_last_four, :number, :card_number, :card_expires_on

  def purchase
    self.card_last_four = card_number.to_s[-4, 4]
    save!
  end
end
