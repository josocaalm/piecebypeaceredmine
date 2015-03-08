# :DK-BEG: override 'gem install' to enable RubyInstaller DevKit usage
Gem.pre_install do |gem_installer|
  unless gem_installer.spec.extensions.empty?
    unless ENV['PATH'].include?('C:\\Bitnami\\redmine-3.0.0-0\\DevKit\\mingw\\bin') then
      Gem.ui.say 'Temporarily enhancing PATH to include DevKit...' if Gem.configuration.verbose
      ENV['PATH'] = 'C:\\Bitnami\\redmine-3.0.0-0\\DevKit\\bin;C:\\Bitnami\\redmine-3.0.0-0\\DevKit\\mingw\\bin;' + ENV['PATH']
    end
    ENV['RI_DEVKIT'] = 'C:\\Bitnami\\redmine-3.0.0-0\\DevKit'
    ENV['CC'] = 'gcc'
    ENV['CXX'] = 'g++'
    ENV['CPP'] = 'cpp'
  end
end
# :DK-END:
