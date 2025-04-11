module Ui
  class Engine < ::Rails::Engine
    isolate_namespace Ui

    attr_accessor :tailwind_content

    initializer "Ui.importmap", before: "importmap" do |app|
      app.config.importmap.paths << Engine.root.join("config/importmap.rb")
    end

    # todo refactor to normal paths provide in tailwind.config.js
    initializer "Ui.tailwind_content" do
      @tailwind_content = [
        "#{Ui::Engine.root}/app/views/**/*",
        "#{Ui::Engine.root}/app/helpers/**/*",
        "#{Ui::Engine.root}/app/controllers/**/*",
        "#{Ui::Engine.root}/app/javascript/**/*.js"
      ]
    end
  end
end
