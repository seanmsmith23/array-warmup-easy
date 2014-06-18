require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  dogs.size
end

def name_lengths(dogs)
  dogs.collect{ |dog| dog.length}
end

def reverse_dog_names(dogs)
  dogs.collect{ |dog| dog.reverse}
end

def first_three_dogs_with_each(dogs)
  empty = []
  dogs.each{ |dog| empty << dog if dog < 'N' }
  empty
end

def first_three_dogs_without_each(dogs)
  dogs[0..2]
end

def reverse_case_dog_names(dogs)
  dogs.collect{ |dog| dog.swapcase}
end

def sum_of_all_dog_name_lengths(dogs)
  empty = []
  dogs.each do |dog|
    empty << dog.length
  end
  x = 0
  number = 0
  while x < empty.length
    number += empty[x]
    x += 1
  end
  number
end

def dogs_with_long_names(dogs)
  empty = []
  dogs.each do |dog|
    if  dog.length > 4
      empty << true
    else empty << false
    end
  end
  empty
end


puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

