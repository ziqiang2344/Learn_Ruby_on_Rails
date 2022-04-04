#Array
a = [1,2,3,4,5,6,7,8,9]
p a         #[1,2,3,4,5,6,7,8,9]
p a.last    #9

#Range
x = 1..10
p x                #1..10
p x.class          #Range (class type)
p x.to_a           #[1,2,3,4,5,6,7,8,9,10]
p x.to_a.shuffle   #[3,7,4,9,8,1,6,5,2,10]
p x                #1..10 (remain same)
p x.to_a.shuffle!  #[4,10,5,9,3,8,1,2,7,6]
p x                #1..10

z = x.to_a.shuffle!
p z                #[6,5,2,10,7,4,1,3,9,8]

x = (1..10).to_a
p x                #[1,2,3,4,5,6,7,7,9,10]
p x.reverse        #[10,9,8,7,6,5,4,3,2,1]
p x                #[1,2,3,4,5,6,7,7,9,10]
p x.reverse!       #[10,9,8,7,6,5,4,3,2,1]
p x                #[10,9,8,7,6,5,4,3,2,1]

x = "a".."d"
p x                #"a".."d"
p x.to_a           #["a", "b", "c", "d"]
p x.to_a.shuffle   #["d", "a", "c", "b"]
y = x.to_a.shuffle
p y.length         #4

a << 10
p a                #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.last           #10
p a.first          #1
a.unshift("Qiang")
p a                #["Qiang", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.append("Qiang")  
p a                #["Qiang", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Qiang"]
a.uniq
p a                #["Qiang", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Qiang"]
a.uniq!
p a                #["Qiang", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p a.empty?              #false
b = []
p b.empty?              #true
p a.include?("Qiang")   #true
p a.include?("Lims")    #false

#push & pop
a.push("new item")
p a                     #["Qiang", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "new item"]
b = a.pop
p b                     #"new item"
p a                     #["Qiang", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p a.join                #"Qiang12345678910"
p a.join("-")           #"Qiang-1-2-3-4-5-6-7-8-9-10"
p a.join(",")           #"Qiang,1,2,3,4,5,6,7,8,9,10"

b = a.join("-")
p b.split               #["Qiang-1-2-3-4-5-6-7-8-9-10"]
p b.split("-")          #["Qiang", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

# %w return array of strings
z = %w(my name is qiang)  
p z                     #["my", "name", "is", "qiang"]
p z.each()              #<Enumerator: ["my", "name", "is", "qiang"]:each>

for i in z
  print i + " "        #my name is qiang
end

puts
z.each do |nice|
  print nice + " "     #my name is qiang
end

puts
z.each {|nice| print nice + " "}  #my name is qiang
puts 
z.each{|nice| print nice.capitalize + " "} #My Name Is Qiang
puts
z = (1..10).to_a.shuffle
p z.select {|number| number.odd?}

