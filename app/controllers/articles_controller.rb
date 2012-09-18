class ArticlesController < ApplicationController
  def index
    unless Article.exists?
      Article.create!
    end

    @results = []

    if params[:enqueue].present?
      @results << Resque.enqueue(ArticleWorker)
    end

    if params[:enqueue_in].present?
      @results << Resque.enqueue_in(10.seconds, ArticleWorker)
    end

    if params[:wresque_wrapper]
      if params[:class].present?
        @results << Article.delay.run
      end
      if params[:instance].present?
        @results << Article.first.delay.run
      end
    end

    if params[:clear_schedule]
      @results << Resque::Scheduler.clear_schedule!
    end

    if params[:resque_mailer]
      @results << Mailman.developper_notice.deliver!
    end
  end
end
