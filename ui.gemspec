require_relative "lib/ui/version"

Gem::Specification.new do |spec|
  spec.name        = "ui"
  spec.version     = Ui::VERSION
  spec.authors     = [ "cr9co0" ]
  spec.email       = [ "alburton32@gmail.com" ]
  spec.homepage    = "https://github.com/DRY9p/UI/tree/tailwindcss_v4_attemps"
  spec.summary     = "UI Component Library for Rails Applications"
  spec.description = "A collection of reusable UI components built with ViewComponent and Tailwindcss"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/DRY9p/UI/tree/tailwindcss_v4_attemps"
  spec.metadata.delete("allowed_push_host")

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.2"
  spec.add_dependency "view_component", ">= 3.21.0"
  spec.add_dependency "importmap-rails", ">= 2.1.0"
end
