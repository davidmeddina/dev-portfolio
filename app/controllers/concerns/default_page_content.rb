module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_title
  end

  def set_title
    @page_title   = 'David Medina | Portfolio'
    @seo_keywords = 'David Medina Portfolio'
  end
end