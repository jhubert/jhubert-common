module JhubertCommon
  class Railtie < Rails::Railtie
    initializer "jhubert_common.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end