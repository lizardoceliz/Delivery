class Order < ActiveRecord::Base
  has_many :items
  
  validates :date,      :presence => true
  validates :custmoter, :presence => true
  t.string :address,    :presence => true
end
