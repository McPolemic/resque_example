%w{ bundler foreman redis rake resque resque-status }.each do |bundler_gem|
  gem_package bundler_gem do
    action :install
  end
end
