# GeoIP-Unicorn

An example app used for comparing between Ruby and Elixir in a specific use case.

## Setup

Run `download-geoip.sh` to get your GeoLite2-Country database. Review `config/unicorn.rb` to possibly dial in `worker_processes`.

## Operation

Run `bin/unicorn -c config/unicorn.rb`.