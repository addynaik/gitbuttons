require 'gitbuttons'
ActionView::Base.send(:include, GitButtons::Helpers::UrlHelpers)
