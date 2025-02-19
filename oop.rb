# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
    @speak = "~*~ ~*~"

  end
      def say(new_speak)
        @speak = "~*~" + new_speak + "~*~"
      end
end
magic1 = Unicorn.new("Rainbow")
p magic1

magic1.say("I love you")
p magic1


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
  def initialize(name, pet)
    @name = name
    @pet = "cat"
    @thirsty = true
  end
  def drink()
    @thirsty = false

  end
end
blood1 = Vampire.new("Dracula", @pet)

blood1.drink

p blood1

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
  end
  def eat(meals)
    @is_hungry = false if meals >= 4
  end
end

friend1 = Dragon.new("Toothless", "Gauri", "Purple")

friend1.eat(2)

p friend1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
    @is_old = false
  end
  def celebrate_birthday(age, name)
    @age = age + 1
    @is_adult = true if age >= 33
    @is_old = true if age >= 101
    @has_ring = true if name == "Frodo"
  end
end
elf1 = Hobbit.new("Frodo", "king")

elf1.celebrate_birthday(101, "Frodo")

p elf1
