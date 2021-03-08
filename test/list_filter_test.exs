defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "should return a list of numbers" do
      list = ["1", "3.5", "6", "43", "banana", "6", "abc"]
      assert ListFilter.call(list) == 3
    end
  end
end
