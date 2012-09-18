# -*- coding: utf-8 -*-

# デフォルトのキュー
# Resque::Mailer.default_queue_name = "mailer"

# # テスト時は作動しないようにする
# Resque::Mailer.excluded_environments = [:test, :cucumber]
#
# # あちこちでincludeするならAsyncMailerから継承する
# class AsyncMailer < ActionMailer::Base
#   include Resque::Mailer
# end
