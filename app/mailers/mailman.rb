# -*- coding: utf-8 -*-
class Mailman < ActionMailer::Base # AsyncMailer
  include Resque::Mailer

  default from: "alice@localhost", to: "alice@localhost", :body => "ok", :subject => "subject"

  def developper_notice(options = {})
    mail(options.merge(:body => "a", :subject => "a"))
    Rails.logger.debug ["#{__FILE__}:#{__LINE__}", "okok"].join(" ")
    sleep(3)
  end
end
