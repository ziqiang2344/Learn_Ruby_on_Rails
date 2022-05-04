#Hashes a.k.a.dictionary

samples_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {'name' => 'mashrur', 'favcolor' => 'red'}
p my_details['favcolor']  #"red"
p samples_hash['b']       #2
p samples_hash            #{"a"=>1, "b"=>2, "c"=>3}

another_hash = {a: 1, b: 2, c: 3}
p another_hash        #{:a=>1, :b=>2, :c=>3}
p another_hash[:a]    #1
p samples_hash.keys   #["a", "b", "c"]
p samples_hash.values #[1, 2, 3]

samples_hash.each do |key, value|
  puts "The class for key is #{key.class} and the value is #{value.class}"
end
#The class for key is String and the value is Integer
#The class for key is String and the value is Integer
#The class for key is String and the value is Integer

another_hash.each do |key,value|
  puts "The class for key is #{key.class} and the value is #{value.class}"
end
# The class for key is Symbol and the value is Integer
# The class for key is Symbol and the value is Integer
# The class for key is Symbol and the value is Integer

myhash = {a: 1, b: 2, c: 3, d: 4}
myhash[:e] = "Mashrur"
p myhash #{:a=>1, :b=>2, :c=>3, :d=>4, :e=>"Mashrur"}
myhash[:c] = "Ruby"
p myhash #{:a=>1, :b=>2, :c=>"Ruby", :d=>4, :e=>"Mashrur"}
myhash.each {|some_key, some_value| puts "The key is #{some_key} and the value is #{some_value}"}
myhash.each {|k, v| myhash.delete(k) if v.is_a?(String)}
p myhash #{:a=>1, :b=>2, :d=>4}