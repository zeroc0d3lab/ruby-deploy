#!/bin/sh

DATE=`date +%Y%m%d`
ENV="production"

if [ "$ENV" = "development" ]
then
  PATH_RUBY='/home/zeroc0d3/.rbenv/shims/ruby'
  PATH_REPO='/home/zeroc0d3/ZEROC0D3LAB/ruby-deploy/deploy-capistrano'
else
  PATH_RUBY='/home/docker/.rbenv/shims/ruby'
  PATH_REPO='/home/docker/apps/current'
fi

PATH_JOB=$PATH_REPO'/jobs'
PATH_LOG=$PATH_REPO'/log'

touch $PATH_LOG'/'$DATE'_halfhours.log'
$PATH_RUBY $PATH_JOB'/check_ruby.rb' $ENV >> $PATH_LOG'/'$DATE'_halfhours.log'