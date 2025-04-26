module Ui
  class Engine < ::Rails::Engine
    isolate_namespace Ui

    initializer "ui.assets" do |app|
      app.config.assets.precompile += %w[ui_manifest]
    end
  end
end
