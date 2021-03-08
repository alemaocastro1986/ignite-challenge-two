defmodule ListFilter do
  def call(list) do
    list
    |> Enum.map(fn str -> parse_number(str) end)
    |> Enum.filter(fn x -> is_number(x) and rem(x, 2) != 0 end)
    |> Enum.count()
  end

  def parse_number(str) do
    case Integer.parse(str) do
      # transform to integer
      {int, _rest} -> int
      # skip the value
      :error -> str
    end
  end
end
