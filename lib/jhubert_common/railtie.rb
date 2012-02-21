require 'jhubert_common/view_helpers'

module JhubertCommon
  class Railtie < Rails::Railtie
    initializer "jhubert_common.view_helpers" do
      ActionView::Base.send :include, JhubertCommon::ViewHelpers
    end
  end
end