# enable RubyInstaller DevKit usage as a vendorable helper library
unless ENV['PATH'].include?('C:\\Bitnami\\redmine-3.0.0-0\\DevKit\\mingw\\bin') then
  puts 'Temporarily enhancing PATH to include DevKit...'
  ENV['PATH'] = 'C:\\Bitnami\\redmine-3.0.0-0\\DevKit\\bin;C:\\Bitnami\\redmine-3.0.0-0\\DevKit\\mingw\\bin;' + ENV['PATH']
end
ENV['RI_DEVKIT'] = 'C:\\Bitnami\\redmine-3.0.0-0\\DevKit'
ENV['CC'] = 'gcc'
ENV['CXX'] = 'g++'
ENV['CPP'] = 'cpp'
