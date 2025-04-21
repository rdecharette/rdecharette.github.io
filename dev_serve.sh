#!/bin/sh
set -x

JEKYLL_ENV=development bundle exec jekyll serve --config _config.yml,_config_dev.yml