# -*- coding: utf-8 -*-

# 基本形
class ArticleWorker
  @queue = :my_que
  def self.perform(*args)
    Rails.logger.info("ArticleWorker.perform(*#{args.inspect})")
    sleep(0.5)
  end
end
