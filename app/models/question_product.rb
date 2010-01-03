class QuestionProduct < ActiveRecord::Base

  belongs_to :product
  belongs_to :question

end
