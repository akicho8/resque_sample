# -*- coding: utf-8 -*-

# wresque_wrapper の仕様
#
#  Article.delay.run         - クラスメソッドの実行
#  Article.create!.delay.run - インスタンスメソッドの実行
#
#  ・メソッドは自由(perform以外)
#  ・delay(:queue => "xxx") 名前を付けれる
#
class Article < ActiveRecord::Base
  default_worker_queue name

  def self.run(*args)
    Rails.logger.info("Article.run(*#{args.inspect})")
    sleep(10)
  end

  def run(*args)
    Rails.logger.info("[#{id}].run(*#{args.inspect})")
    sleep(10)
  end
end
