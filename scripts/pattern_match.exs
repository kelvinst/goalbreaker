# - You: We use `=` to assign variables right!?
x = 1 # => 1

# - Me: NOPE
1 = x # => 1

# - You: Wait, WHAT? I'm assigning to 1?
# - Me: Nope, you're making the both sides of the `=` match!
# - You: But what if they can't match?
# - Me: Then this
2 = x # => ** (MatchError) no match of right hand side value: 1

# - Me: And you can make this in any type of data!
{:ok, result} = {:ok, 10}
result # => 2

[head | tail] = [1, 2, 3]
head # => 1
tail # => [2, 3]

%{first: first} = %{first: 1, last: 5}
first # => 1

%Range{first: first} = 2..10
first # => 2
