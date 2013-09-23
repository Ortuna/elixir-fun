defmodule LastValueTest do
  use ExUnit.Case
  test "Can get the last value of a example.test" do
    assert LastValue.last("example.test") == "test"
  end

  test "Can handle multiple values" do
    assert LastValue.last("exampl.example.example.last") == "last"
  end

  test "It is nil when 'example'" do
    assert LastValue.last("example") == nil
  end

  test "handle blank string" do
    assert LastValue.last("") == nil
  end
end
