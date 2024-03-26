# frozen_string_literal: true

require_relative "lib/rails_admin_panel/version"

Gem::Specification.new do |spec|
  spec.name = "rails_admin_panel"
  spec.version = RailsAdminPanel::VERSION
  spec.authors = ["Parth Verma"]
  spec.email = ["parthverma011@gmail.com"]

  spec.summary = "RailsAdminPanel is a Ruby gem that automates the creation of customizable CRUD interfaces, streamlining the management of data entities in Rails applications. With RailsAdminPanel, developers can quickly build powerful admin panels for efficient back-office functionality."
  spec.description = "AdminGen is a versatile Ruby gem designed to simplify the process of developing admin panels within Rails applications. With AdminGen, developers can effortlessly generate customizable CRUD interfaces, enabling efficient management of data entities such as users, products, articles, and more. 

    Gone are the days of manually crafting repetitive administrative interfaces. AdminGen automates this process, significantly reducing development time and minimizing the potential for errors. By leveraging AdminGen's intuitive configuration options, developers can tailor the generated admin panels to suit their specific application requirements, ensuring a seamless integration with existing UI/UX designs and functionality."
  spec.homepage = "https://github.com/parth-verma2100/rails_admin_panel"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/parth-verma2100/rails_admin_panel"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'rails_admin', '~> 3.0'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
