class Item < ActiveRecord::Base
  belongs_to :order
  
  validates :menu, :presence => true
end
