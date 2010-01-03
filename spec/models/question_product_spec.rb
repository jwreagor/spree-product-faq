require File.dirname(__FILE__) + '/../spec_helper'

describe QuestionProduct do
  before(:each) do
    @question_product = QuestionProduct.new
  end

  it "should be valid" do
    @question_product.should be_valid
  end
end
