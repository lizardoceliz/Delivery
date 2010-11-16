class Category < ActiveRecord::Base
  has_many :menus
  
  validates :title, :presence => true, :uniqueness => true
end
