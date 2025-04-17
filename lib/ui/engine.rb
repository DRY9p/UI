module Ui
  class Engine < ::Rails::Engine
    isolate_namespace Ui

    initializer "Ui.importmap", before: "importmap" do |app|
      app.config.importmap.paths << Engine.root.join("config/importmap.rb")
    end

    initializer "ui.autoload_paths" do |app|
      app.config.autoload_paths += %W[#{root}/app/components]
    end
  end
end
