defmodule CounterTest do
  use ExUnit.Case

  test "has a value" do
    assert Counter.new.value == 0
  end

  test "can update value" do
    record = Counter.new
    assert record.value == 0
    # record = record.update_value(fn()-> 10 end)
    # assert record.value == 10
  end
end
