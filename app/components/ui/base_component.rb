# frozen_string_literal: true

module Ui
  class BaseComponent < ViewComponent::Base
    def self.stimulus_id
      @stimulus_id ||= name.underscore
        .sub(/^ui\/(.*)\/component$/, '\1')
        .gsub("/", "--")
        .tr("_", "-")
    end

    delegate :stimulus_id, to: :class
  end
end
