module GitButtons
  module Helpers
    module UrlHelpers
      include ActionView::Helpers
      include ActionView::Helpers::UrlHelper

      alias_method :link_to_original, :link_to unless method_defined?(:link_to_original)
      def link_to(name, options = {}, html_options = {})
        html_options[:git_button] ||= true
        if html_options[:git_button]
          html_options[:class] ||= ''
          html_options[:class] += ' minibutton'
          name = "<span>#{name}</span>"
        end
        html_options.delete :git_button
        link_to_original(name, options, html_options)
      end
    end
  end
end