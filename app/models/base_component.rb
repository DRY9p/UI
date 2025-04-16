# frozen_string_literal: true

module Ui
  class BaseComponent < ViewComponent::Base
    def initialize(**options)
      @options = options
      super
    end

    def class_collection(*args)
      args.compact.join(" ")
    end

    def attributes
      @options.except(:class)
    end

    private

    def helpers
      @helpers ||= controller.view_context
    end
  end
end
