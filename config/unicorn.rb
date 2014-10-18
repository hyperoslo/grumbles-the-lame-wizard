worker_processes (ENV['WEB_CONCURRENCY'] || 2).to_i
timeout          (ENV['WEB_TIMEOUT'] || 9001).to_i
preload_app      true

before_fork do |server, worker|
  Signal.trap "TERM" do
    puts "Unicorn master intercepting TERM and sending myself QUIT instead"
    Process.kill "QUIT", Process.pid
  end

  ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap "TERM" do
    puts "Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT"
  end

  config = ::Rails.application.config.database_configuration[::Rails.env]
  config['reaping_frequency'] = ENV['DB_REAP_FREQ'] || 10
  config['pool']              = ENV['DB_POOL'] || 5
  ActiveRecord::Base.establish_connection
end
