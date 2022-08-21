require "../config/config"

module JenniferJsonTest
  random_examples = Example.all

  if random_examples.count > 0
    puts "Example found! Let's update the JSON column"
    random_example = random_examples.first!
    puts "the original content of the column: #{random_example.random}"
    old_json_array_value = random_example.random["test"].as_a
    new_json_array_value = old_json_array_value
    new_json_array_value << JSON.parse(%("new_value#{old_json_array_value.size+1}"))
    random_example.random = JSON.parse(%({"test": #{new_json_array_value}}))
    puts "Has the example changed? #{random_example.changed?}"
    puts "the new content of the random column: #{random_example.random}"
    random_example.save
    random_example.reload

    puts "After we save, this is the value of the random column: #{random_example.random}"
  else
    puts "No example was found, let's make a new one"
    Example.create({ random: JSON.parse(%({"test": []})) })
  end
end
