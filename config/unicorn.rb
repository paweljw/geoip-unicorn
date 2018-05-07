# frozen_string_literal: true

worker_processes 2

listen 9090, tcp_nopush: true

pid 'tmp/unicorn.pid'

stderr_path 'log/unicorn.stderr.log'
stdout_path 'log/unicorn.stdout.log'

preload_app true

before_fork do |_, _|
  Geo.instance.close
end

after_fork do |_, _|
  Geo.instance.open
end
