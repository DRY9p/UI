module Ui
  class Engine < ::Rails::Engine
    isolate_namespace Ui

    initializer "ui.importmap", before: "importmap" do |app|
      app.config.importmap.paths += [ Engine.root.join("config/importmap.rb") ]
    end

    initializer "ui.assets" do |app|
      app.config.assets.paths << root.join("app/javascript")

      app.config.assets.precompile += %w[ui_manifest.js]
    end
  end
end
