defmodule MyMacro do
  defmacro unless(clause, options) do
    quote do
      if(!unquote(clause), unquote(options))
    end
  end

  defmacro it(desc, block) do
    quote do
      test unquote(desc), unquote(block)
    end
  end
end
