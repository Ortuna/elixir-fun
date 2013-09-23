defmodule BlankTest do
  use ExUnit.Case

  test "String is not blank" do
    assert Blank.blank?("value") == false
  end

  test "String is blank when empty" do
    assert Blank.blank?("") == true
  end
end
