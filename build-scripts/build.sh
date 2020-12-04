#!/bin/sh

BASEDIR=$(dirname $0)
cd ${BASEDIR}/../docs
bundle install
touch Gemfile.lock
chmod a+w Gemfile.lock
bundle exec jekyll build -d ../../_site --future

