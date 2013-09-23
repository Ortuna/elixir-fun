defmodule MacroTest do
  use ExUnit.Case
  import MyMacro

  test "unless macro" do
    value = false
    MyMacro.unless false do
      value = true
    end
    assert value == true
  end

  it "should be true" do
    assert true == true
  end
end
