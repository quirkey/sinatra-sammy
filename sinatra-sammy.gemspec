# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sinatra-sammy}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aaron Quint"]
  s.date = %q{2009-06-09}
  s.description = %q{A Sinatra extension that turns a Sinatra app into a one page app using the teamwork of Sammy.}
  s.email = ["aaron@quirkey.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/sinatra/sammy.erb", "lib/sinatra/sammy.rb", "spec/sinatra_sammy_spec.rb", "spec/spec_helper.rb", "spec/test_app/config.ru", "spec/test_app/test_app.rb", "spec/test_app/views/index.haml", "spec/test_app/views/layout.haml", "spec/test_app/views/user.haml", "vendor/jquery-1.3.2.min.js", "vendor/sammy.min.js"]
  s.homepage = %q{http://code.quirkey.com/sammy}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{quirkey}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{A Sinatra extension that turns a Sinatra app into a one page app using the teamwork of Sammy.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 0.9.2"])
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<sinatra>, [">= 0.9.2"])
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 0.9.2"])
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
