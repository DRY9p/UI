class TailwindConfigGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)

  def create_tailwind_config_file
    @root_link = Ui::Engine.root.to_s

    template "config/tailwind.config.js.erb", File.expand_path("../../../config/tailwind.config.js", __FILE__)
  end
end
