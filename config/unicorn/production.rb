working_directory "/home/deploy/apps/beerme/current"
pid "tmp/pids/unicorn.pid"
stderr_path "/home/deploy/apps/beerme/current/log/unicorn.log"
stdout_path "/home/deploy/apps/beerme/current/log/unicorn.log"

listen "/tmp/unicorn.shop.sock"
worker_processes 2
timeout 30
