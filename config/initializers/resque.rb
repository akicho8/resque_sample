# -*- coding: utf-8 -*-
Resque.redis = "localhost:6379" # デフォルトなら不要

require 'resque_scheduler'
require 'resque_scheduler/server' # これがあれば resque-web にスケジュールの項目が入る
Resque.schedule = YAML.load_file('config/resque_schedule.yml') # なくてもよい
