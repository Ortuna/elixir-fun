defmodule ExampleTest do
  use ExUnit.Case

  test "go/1 returns the default arg" do
    assert Example.go() == {:ok, 'default'}
  end

  test "go/1 returns the argument passed to it" do
    assert Example.go('Something cool') == {:ok, 'Something cool'}
  end

  test "go/1 returns an error when passed a numeber" do
    {status, _} = Example.go(1234)
    assert status  == :error
  end

  test "has importable_func from Importable" do
    assert {:yes} == Example.call_importable_func
  end
end
