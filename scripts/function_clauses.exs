# And there is more! You can use patter matches on a `case`
case 1000 do
  0 -> "zero"
  {:ok, result} -> "the result: #{result}"
  %Range{first} -> "the first: #{first}"
  x when is_integer(x) -> "int: #{first}"
end # => "the first 1"

# You see that `when`? Well, that is a guard clause.
# It executes the function, and if returns true, it matches, otherwise, NEEEEXT!

# Also, you can use them in anonymal functions
fun = fn
  0 -> "zero"
  {:ok, result} -> "the result: #{result}"
  %Range{first} -> "the first: #{first}"
  x when is_integer(x) -> "int: #{first}"
end
fun.(1..5) # => "the first: 1"
fun.(0) # => "zero"

# Or in module functions
defmodule StrangeCode do
  def fun(0) do
    "zero"
  end

  def fun({:ok, result}) do
    "the result: #{result}"
  end

  def fun(%Range{first}) do
    "the first: #{first}"
  end

  def fun(x) when is_integer(x) do
    "integer: #{first}"
  end
end
StrangeCode.fun({:ok, "hi"}) # => "the result: hi"
StrangeCode.fun(1..5) # => "the first: 1"
