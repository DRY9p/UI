# frozen_string_literal: true

module Ui
  class Modal::Component < BaseComponent
    def initialize(title:, text:, content_text:, close_path: nil, open: false, **attributes)
      @title = title
      @text = text
      @content_text = content_text
      @close_path = close_path
      @attributes = attributes || {}
      @attributes[:open] = open
    end
  end
end
