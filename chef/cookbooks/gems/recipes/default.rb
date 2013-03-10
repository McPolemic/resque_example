%w{ bundler redis resque resque-status }.each do |bundler_gem|
  gem_package bundler_gem do
    action :install
  end
end
