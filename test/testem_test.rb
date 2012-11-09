require 'helper'

$run = []

class TestemTest < Testem
  setup do
    $run << :setup
  end

  teardown do
    $run << :teardown
  end

  context "running" do
    test "testing" do
      $run << :testing
    end

    context "nested" do
      test "another test" do
        $run << :another
      end
    end
  end
end

MiniTest::Unit.after_tests do
  p $run

  expected = [:setup, :testing, :teardown, :setup, :another, :teardown ]

  unless expected == $run
    abort "Expected: #{expected.inspect}\n     Got: #{$run.inspect}"
  end
end
