class Question < ActiveRecord::Base

  has_many :question_products
  has_many :products, :through => :question_products

end
