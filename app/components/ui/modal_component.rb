# frozen_string_literal: true

module Ui
  class ModalComponent < BaseComponent
    def initilize(title:, close_path: nil, open: false, **attributes)
      @title = title
      @close_path = close_path
      @attributes = attributes || {}
      @attributes[:open] = open
    end
  end
end
