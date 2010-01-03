class FaqController < Spree::BaseController

  resource_controller :singleton

  actions :show

  protected

  def object
    @object ||= Question.all :order => :created_at
  end
  
end
