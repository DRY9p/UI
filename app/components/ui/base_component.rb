# frozen_string_literal: true

module Ui
  class BaseComponent < ViewComponent::Base
    def initialize(**options)
      @options = options
      super
    end

    private

    def helpers
      @helpers ||= controller.view_context
    end
  end
end
