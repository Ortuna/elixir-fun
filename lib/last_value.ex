defmodule LastValue do
  def last(string) when is_bitstring(string) do
    handle_parts String.split(string, ".")
  end

  def handle_parts(list) when length(list) == 1, do: nil
  def handle_parts(list) when is_list(list), do: last_element(list)

  def last_element(list) do
    Enum.at list, Enum.count(list)-1
  end 
end
