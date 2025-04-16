# frozen_string_literal: true

module Ui
  class ButtonComponent < BaseComponent
    STYLES = {
      red: %(
        bg-red-600 text-white font-medium
      ),
      green: %(
        bg-green-600 text-black font-medium
      )
    }.freeze

    MARGINS = {
      s: %(
        py-2 px-4
      ),
      m: %(
        py-4 px-6
      ),
      l: %(
        py-6 px-8
      )
    }.freeze

    COMPOSITIONS = {
      base: %(
        rounded-full shadow-md transition-all duration-200 ease-in-out transform inline-flex items-center gap-2
      )
    }.freeze

    HOVERS = {
      red: %(
        hover:bg-red-700 hover:shadow-lg hover:-translate-y-0.5
      ),
      green: %(
        hover:bg-green-700 hover:shadow-lg hover:-translate-y-0.5
      )
    }.freeze

    def initialize(
      tag: :button,
      text: nil,
      style: :red,
      margin: :s,
      composition: :base,
      hover: :red,
      **attributes
    )
      @tag = tag
      @text = text
      @style = style
      @margin = margin
      @composition = composition
      @hover = hover
      @attributes = attributes

      @attributes[:class] = [
        STYLES.fetch(@style.to_sym),
        MARGINS.fetch(@margin.to_sym),
        COMPOSITIONS.fetch(@composition.to_sym),
        HOVERS.fetch(@hover.to_sym),
        @attributes[:class]
      ].compact.join(" ")
    end

    def call
      content_tag(@tag, @text, **@attributes)
    end
  end
end
