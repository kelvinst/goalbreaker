# Integer
1

# Numbers
1 + 1.0 * 1 / 1.1207834
div(3, 2)
rem(3, 2)

# Atom (ruby symbols)
:atom

# Null value
nil

# Booleans
not true or true and false

# More booleans
!nil || 1 && :atom

# Assignments
num = 1

# Tuples and lists
{:ok, 10}
[1, 2, 3, 4, 5]

# Strings and charlists
"Hello world"
'Hello world'

# Maps and Structs
%{first: 1, last: 5}
%Range{first: 1, last: 5} # => 1..5 ### Syntax sugar

# Anonymal functions
add_one = fn(num) ->
  num + 1
end

add_one.(1) # => 2

# Modules and its functions
defmodule Math do
  def add_one(num) do
    num + 1
  end
end

Math.add_one(1) # => 2
