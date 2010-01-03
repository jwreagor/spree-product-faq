class Admin::QuestionsController < Admin::BaseController

  resource_controller

  before_filter :load_products, :only => :edit
  
  create.success.wants.html { redirect_to [:edit, :admin, @object] }
  update.success.wants.html { redirect_to [:edit, :admin, @object] }

  update.before { @object.products = [] }
  
  protected

  def load_products
    @products ||= Product.all :order => :name
  end
  
  def collection
    @collection ||= Question.paginate \
      :order => :created_at,
      :per_page => Spree::Config[:admin_products_per_page],
      :page => params[:page]
  end

end
