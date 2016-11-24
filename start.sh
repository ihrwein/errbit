#!/bin/sh

if [ ! -z "$DB_BS" ]; then
    bundle exec rake errbit:bootstrap
fi

bundle exec puma -C config/puma.default.rb
