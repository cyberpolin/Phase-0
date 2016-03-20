# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]
          #0     #1
# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]
# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
              #[10, [15, 20], [25,30,35], 40]

number_array.map! do|x|
  if x.kind_of?(Array)
    x.map!{|i| i+5}
  else
    x + 5
  end
end
p number_array


# Bonus:
# Working with arrays of more than two dimensions has its own unique challenges. Create a startup name generator that adds "ly" to the end of the words in each sub-array. (So if you passed in "Bit" or "Optimize" you would get "Bitly" and "Optimizely."
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

replacement = "ly"
startup_names.map! do|x|
  if x.kind_of?(Array)
    x.map! do|i|
      if i.kind_of?(Array)
        i.map! {|y| y + replacement}
      else
        i+replacement
      end
   end
  else
    x + replacement
  end
end
p startup_names

#reflection

# What are some general rules you can apply to nested arrays?
# => I guess is just to keep in mind the level of inception, and work it step by step
# What are some ways you can iterate over nested arrays?
# => from an each inside an each, a loop inside another
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# => I use map because it change the item at the same time it iterate.