class TailwindConfigGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)

  def create_tailwind_config_file
    @engines_paths = Ui::Engine.instance.tailwind_content

    template "config/tailwind.config.js", File.expand_path("../../../config/tailwind.config.js", __FILE__)
  end
end