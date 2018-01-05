# Well, immutability can be a pain in the butt! Like this:

# Code in ruby
[1, 2, 3, 4, 5]
  .map { |x| x + 1 }
  .map { |x| x * 2 }
  .reduce { |x, acc| x + acc } # => 40

# Same in elixir
list = Enum.map([1, 2, 3, 4, 5], fn(x) -> x + 1 end)
list = Enum.map(list, fn(x) -> x * 2 end)
Enum.reduce(list, fn(x, acc) -> x + acc end) # => 40

# Lot of attributions right? But you can do this instead if you like.
Enum.reduce(
  Enum.map(
    Enum.map(
      [1, 2, 3, 4, 5],
      fn(x) -> x + 1 end
    ),
    fn(x) -> x * 2 end
  ),
  fn(x, acc) -> x + acc end
) # => 40

# I've indented for readability, but still, pretty much unreadable code right?
# Then let's introduce the beautiful `|>` operator
[1, 2, 3, 4, 5]
|> Enum.map(fn(x) -> x + 1 end)
|> Enum.map(fn(x) -> x * 2 end)
|> Enum.reduce(fn(x, acc) -> x + acc end) # => 40

