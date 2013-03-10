%w{ bundler foreman redis rake resque resque-status }.each do |bundler_gem|
  gem_package bundler_gem do
    gem_binary "/usr/bin/gem1.9.1"
    action :install
  end
end
