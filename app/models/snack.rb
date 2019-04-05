class Snack < ApplicationRecord

  belongs_to :machine

  validates_presence_of :name,
                        :price



  def self.average_price
    binding.pry
  end
end
