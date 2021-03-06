class Menu < ActiveRecord::Base
  belongs_to :category
  
  validates :title,       :presence => true, :uniqueness => true
  validates :description, :presence => true
  validates :price,       :presence => true
  validates :category_id, :presence => true
end
