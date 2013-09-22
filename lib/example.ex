defmodule Example do
  import Importable

  def go(main_arg // nil)

  def go(main_arg) when nil?(main_arg) do
    {:ok, 'default'}
  end

  def go(main_arg) when is_number(main_arg) do
    {:error, main_arg}
  end

  def go(main_arg) do
    {:ok, main_arg}
  end

  def call_importable_func do
    importable_func
  end
end
