class FaqsExtension < Spree::Extension

  version      "1.0"
  description  "Adds a FAQs section to your Spree site"
  url          "http://yourwebsite.com/faqs"

  def activate
    AppConfiguration.class_eval do
      preference :stylesheets, :string, :default => 'compiled/screen,compiled/faqs'
    end

    Product.class_eval do
      has_many :question_products
      has_many :questions, :through => :question_products
    end
    
    Admin::BaseController.class_eval do
      before_filter :add_faq_tab
      protected

      def add_faq_tab
        add_extension_admin_tab [ :questions, { :label => "FAQs" } ]
      end
    end
  end

end
