module Ui
  class Engine < ::Rails::Engine
    isolate_namespace Ui

    initializer "Ui.importmap", before: "importmap" do |app|
      app.config.importmap.paths << Engine.root.join("config/importmap.rb")
    end
  end
end
