module Ui
  module ComponentHelper
    def component(name)
      "#{name.camelcase}::Component".constantize
    end
  end
end
