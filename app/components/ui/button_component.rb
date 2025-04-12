# frozen_string_literal: true

module Ui
  class ButtonComponent < ViewComponent::Base
    def initialize(label:)
      @label = label
    end
  end
end
