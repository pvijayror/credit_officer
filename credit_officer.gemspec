# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{credit_officer}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Pickett"]
  s.date = %q{2011-01-06}
  s.description = %q{An upgrade/port of ActiveMerchant's credit card class}
  s.email = %q{dpickett@enlightsolutions.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "credit_officer.gemspec",
    "lib/credit_officer.rb",
    "lib/credit_officer/base.rb",
    "lib/credit_officer/credit_card.rb",
    "lib/credit_officer/month_year_pair.rb",
    "spec/credit_officer/base_spec.rb",
    "spec/credit_officer/credit_card_spec.rb",
    "spec/credit_officer/month_year_pair_spec.rb",
    "spec/credit_officer_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/active_model_shared_examples.rb",
    "spec/support/factories.rb"
  ]
  s.homepage = %q{http://github.com/dpickett/credit_officer}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{An activemodel compliant credit card validator}
  s.test_files = [
    "spec/credit_officer/base_spec.rb",
    "spec/credit_officer/credit_card_spec.rb",
    "spec/credit_officer/month_year_pair_spec.rb",
    "spec/credit_officer_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/active_model_shared_examples.rb",
    "spec/support/factories.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, [">= 3.0.3"])
      s.add_runtime_dependency(%q<luhney_bin>, [">= 0"])
      s.add_development_dependency(%q<timecop>, ["= 0.3.5"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0"])
      s.add_development_dependency(%q<factory_girl>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<remarkable_activemodel>, [">= 4.0.0.alpha4"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<reek>, ["~> 1.2.8"])
      s.add_development_dependency(%q<roodi>, ["~> 2.1.0"])
      s.add_development_dependency(%q<fuubar>, [">= 0"])
    else
      s.add_dependency(%q<activemodel>, [">= 3.0.3"])
      s.add_dependency(%q<luhney_bin>, [">= 0"])
      s.add_dependency(%q<timecop>, ["= 0.3.5"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
      s.add_dependency(%q<factory_girl>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<remarkable_activemodel>, [">= 4.0.0.alpha4"])
      s.add_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<reek>, ["~> 1.2.8"])
      s.add_dependency(%q<roodi>, ["~> 2.1.0"])
      s.add_dependency(%q<fuubar>, [">= 0"])
    end
  else
    s.add_dependency(%q<activemodel>, [">= 3.0.3"])
    s.add_dependency(%q<luhney_bin>, [">= 0"])
    s.add_dependency(%q<timecop>, ["= 0.3.5"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
    s.add_dependency(%q<factory_girl>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<remarkable_activemodel>, [">= 4.0.0.alpha4"])
    s.add_dependency(%q<yard>, ["~> 0.6.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<reek>, ["~> 1.2.8"])
    s.add_dependency(%q<roodi>, ["~> 2.1.0"])
    s.add_dependency(%q<fuubar>, [">= 0"])
  end
end

