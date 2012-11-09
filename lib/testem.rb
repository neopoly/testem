require 'minitest/spec'

# Aliases often used MiniTest::Spec hooks to Rails-like hooks.
#
# * +context+ is aliased to +describe+
# * +test+ is aliased to +it+
# * +setup+ is aliased to +before+
# * +teardown+ is aliased to +after+
#
# == Example
#
#   require 'minitest/autorun'
#   require 'testem'
#
#   class MyTest < Testem
#     setup do
#       # before
#     end
#
#     teardown do
#       # after
#     end
#
#     context "some context" do
#       test "me" do
#         # assertions
#       end
#     end
#   end
class Testem < MiniTest::Spec
  VERSION = "0.1.0"

  class << self
    alias :context :describe
    alias :test :it
    alias :setup :before
    alias :teardown :after
  end
end
