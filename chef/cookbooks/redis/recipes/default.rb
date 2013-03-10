package 'redis-server'

service 'redis-server' do
  supports [:status]
  action :start
end
