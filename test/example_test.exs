defmodule ExampleTest do
  use ExUnit.Case

  test "server go returns the default arg" do
    assert Example.go() == {:ok, 'default'}
  end

  test "server go returns the argument passed to it" do
    assert Example.go('Something cool') == {:ok, 'Something cool'}
  end

  test "server go returns an error when passed a numeber" do
    {status, _} = Example.go(1234)
    assert status   == :error
  end

end
